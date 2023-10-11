#!/usr/bin/env python3

import matplotlib.pyplot as plt
import rosbag

bag = rosbag.Bag('/home/nikhil/Desktop/EECE5554/LAB1/src/gps_driver/open.bag')
time = []
altitude = []

for topic, msg, t in bag.read_messages(topics=['/gps']):
    time.append(msg.header.stamp.secs)
    altitude.append(msg.Altitude)

bag.close()

plt.scatter(time, altitude, s=1)
plt.xlabel('Time (sec)')
plt.ylabel('Altitude (m)')
#plt.title('Altitude vs Time for open area_stationary')
plt.title('Altitude vs Time')
# plt.title('Altitude vs Time for occluded_stationary')
plt.tight_layout()
plt.show()
