
(cl:in-package :asdf)

(defsystem "mult_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "gps_msg" :depends-on ("_package_gps_msg"))
    (:file "_package_gps_msg" :depends-on ("_package"))
    (:file "imu_msg" :depends-on ("_package_imu_msg"))
    (:file "_package_imu_msg" :depends-on ("_package"))
  ))