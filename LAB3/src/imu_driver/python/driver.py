#!/usr/bin/python3

import rospy
import serial
from sensor_msgs.msg import Imu, MagneticField
from geometry_msgs.msg import Vector3
from imu_driver.msg import imu_msg
from imu_driver.srv import *
import math

class IMU_Node():
    
    def __init__(self):
        
        rospy.init_node("IMU_Node")
        
        try:
            port = rospy.get_param('/port', '/dev/ttyUSB0')
        except rospy.ROSException:
            rospy.logerr("Parameter '/port' not defined. Using default port '/dev/ttyUSB0'.")
            port = '/dev/ttyUSB0'

        pub = rospy.Publisher("/imu", imu_msg, queue_size=100)
        
        self.imu_data = imu_msg()
        self.imu_data.Header.frame_id = "IMU1_Frame"
        self.imu_data.IMU.header.frame_id = "IMU1_Frame"
        self.imu_data.MagField.header.frame_id = "IMU1_Frame"

        self.euler_angles = Vector3()

        try:
            ser = self.open_serial_port(port)
        except rospy.ROSInterruptException:
            pass  # Handle ROS interrupt exception if needed
        except Exception as e:
            rospy.logerr(f"An unexpected error occurred: {e}")
            exit()
        
        while not rospy.is_shutdown():

            raw_data = ser.readline().decode()
            self.imu_data.raw = raw_data

            raw_data = raw_data.split()

            self.imu_data.Header.stamp = rospy.Time.now()
            self.imu_data.IMU.header.stamp = self.imu_data.Header.stamp
            self.imu_data.MagField.header.stamp = self.imu_data.Header.stamp

            try:
                self.euler_angles.x = float(raw_data[3]) * math.pi / 180
                self.euler_angles.y = float(raw_data[2]) * math.pi / 180
                self.euler_angles.z = float(raw_data[1]) * math.pi / 180
                
                self.imu_data.IMU.orientation = self.get_quaternions()

                self.imu_data.IMU.linear_acceleration.x = float(raw_data[7])
                self.imu_data.IMU.linear_acceleration.y = float(raw_data[8])
                self.imu_data.IMU.linear_acceleration.z = float(raw_data[9])

                self.imu_data.MagField.magnetic_field.x = float(raw_data[4])
                self.imu_data.MagField.magnetic_field.y = float(raw_data[5])
                self.imu_data.MagField.magnetic_field.z = float(raw_data[6])

                self.imu_data.IMU.angular_velocity.x = float(raw_data[10])
                self.imu_data.IMU.angular_velocity.y = float(raw_data[11])
                self.imu_data.IMU.angular_velocity.z = float(raw_data[12][:-5])

            except Exception as e:
                rospy.logerr(f"Error processing IMU data: {e}")
                continue

            pub.publish(self.imu_data)
        
        ser.close()

    def open_serial_port(self, port, timeout=60):
        start_time = rospy.Time.now()

        while rospy.Time.now() - start_time < rospy.Duration(timeout) and not rospy.is_shutdown():
            try:
                ser = serial.Serial(port, 115200, timeout=3)
                rospy.loginfo(f"Serial port {port} opened successfully.")
                return ser
            except serial.SerialException:
                rospy.logwarn(f"Error! NO SIGNAL")
                rospy.sleep(1.0)

        rospy.logerr(f"Timeout ({timeout} seconds) reached. Unable to open {port}. Exiting.")
        rospy.signal_shutdown("Serial port timeout")
        exit()

    def get_quaternions(self):
        rospy.wait_for_service("convert_to_quaternion")

        try:
            get_quat = rospy.ServiceProxy("convert_to_quaternion", convert_to_quaternion)
            quat = get_quat(self.euler_angles)
            return quat.quaternion
        except rospy.ServiceException as e:
            rospy.logerr(f"Service call failed: {e}")

if __name__ == '__main__':
    IMU_Node()
