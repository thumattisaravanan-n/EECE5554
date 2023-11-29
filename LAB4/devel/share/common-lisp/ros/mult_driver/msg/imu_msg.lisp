; Auto-generated. Do not edit!


(cl:in-package mult_driver-msg)


;//! \htmlinclude imu_msg.msg.html

(cl:defclass <imu_msg> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (IMU
    :reader IMU
    :initarg :IMU
    :type sensor_msgs-msg:Imu
    :initform (cl:make-instance 'sensor_msgs-msg:Imu))
   (MagField
    :reader MagField
    :initarg :MagField
    :type sensor_msgs-msg:MagneticField
    :initform (cl:make-instance 'sensor_msgs-msg:MagneticField))
   (raw
    :reader raw
    :initarg :raw
    :type cl:string
    :initform ""))
)

(cl:defclass imu_msg (<imu_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mult_driver-msg:<imu_msg> is deprecated: use mult_driver-msg:imu_msg instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <imu_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:Header-val is deprecated.  Use mult_driver-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'IMU-val :lambda-list '(m))
(cl:defmethod IMU-val ((m <imu_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:IMU-val is deprecated.  Use mult_driver-msg:IMU instead.")
  (IMU m))

(cl:ensure-generic-function 'MagField-val :lambda-list '(m))
(cl:defmethod MagField-val ((m <imu_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:MagField-val is deprecated.  Use mult_driver-msg:MagField instead.")
  (MagField m))

(cl:ensure-generic-function 'raw-val :lambda-list '(m))
(cl:defmethod raw-val ((m <imu_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:raw-val is deprecated.  Use mult_driver-msg:raw instead.")
  (raw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_msg>) ostream)
  "Serializes a message object of type '<imu_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'IMU) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'MagField) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'raw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'raw))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_msg>) istream)
  "Deserializes a message object of type '<imu_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'IMU) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'MagField) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'raw) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'raw) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_msg>)))
  "Returns string type for a message object of type '<imu_msg>"
  "mult_driver/imu_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_msg)))
  "Returns string type for a message object of type 'imu_msg"
  "mult_driver/imu_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_msg>)))
  "Returns md5sum for a message object of type '<imu_msg>"
  "adf4a68813b79eebfd5a91db0f9b4d2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_msg)))
  "Returns md5sum for a message object of type 'imu_msg"
  "adf4a68813b79eebfd5a91db0f9b4d2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_msg>)))
  "Returns full string definition for message of type '<imu_msg>"
  (cl:format cl:nil "Header Header~%sensor_msgs/Imu IMU~%sensor_msgs/MagneticField MagField~%string raw~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/MagneticField~% # Measurement of the Magnetic Field vector at a specific location.~%~% # If the covariance of the measurement is known, it should be filled in~% # (if all you know is the variance of each measurement, e.g. from the datasheet,~% #just put those along the diagonal)~% # A covariance matrix of all zeros will be interpreted as \"covariance unknown\",~% # and to use the data a covariance will have to be assumed or gotten from some~% # other source~%~%~% Header header                        # timestamp is the time the~%                                      # field was measured~%                                      # frame_id is the location and orientation~%                                      # of the field measurement~%~% geometry_msgs/Vector3 magnetic_field # x, y, and z components of the~%                                      # field vector in Tesla~%                                      # If your sensor does not output 3 axes,~%                                      # put NaNs in the components not reported.~%~% float64[9] magnetic_field_covariance # Row major about x, y, z axes~%                                      # 0 is interpreted as variance unknown~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_msg)))
  "Returns full string definition for message of type 'imu_msg"
  (cl:format cl:nil "Header Header~%sensor_msgs/Imu IMU~%sensor_msgs/MagneticField MagField~%string raw~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/Imu~%# This is a message to hold data from an IMU (Inertial Measurement Unit)~%#~%# Accelerations should be in m/s^2 (not in g's), and rotational velocity should be in rad/sec~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the ~%# variance of each measurement, e.g. from the datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements (e.g. your IMU doesn't produce an orientation ~%# estimate), please set element 0 of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the first element of each ~%# covariance matrix, and disregard the associated estimate.~%~%Header header~%~%geometry_msgs/Quaternion orientation~%float64[9] orientation_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 angular_velocity~%float64[9] angular_velocity_covariance # Row major about x, y, z axes~%~%geometry_msgs/Vector3 linear_acceleration~%float64[9] linear_acceleration_covariance # Row major x, y z ~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/MagneticField~% # Measurement of the Magnetic Field vector at a specific location.~%~% # If the covariance of the measurement is known, it should be filled in~% # (if all you know is the variance of each measurement, e.g. from the datasheet,~% #just put those along the diagonal)~% # A covariance matrix of all zeros will be interpreted as \"covariance unknown\",~% # and to use the data a covariance will have to be assumed or gotten from some~% # other source~%~%~% Header header                        # timestamp is the time the~%                                      # field was measured~%                                      # frame_id is the location and orientation~%                                      # of the field measurement~%~% geometry_msgs/Vector3 magnetic_field # x, y, and z components of the~%                                      # field vector in Tesla~%                                      # If your sensor does not output 3 axes,~%                                      # put NaNs in the components not reported.~%~% float64[9] magnetic_field_covariance # Row major about x, y, z axes~%                                      # 0 is interpreted as variance unknown~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'IMU))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'MagField))
     4 (cl:length (cl:slot-value msg 'raw))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_msg
    (cl:cons ':Header (Header msg))
    (cl:cons ':IMU (IMU msg))
    (cl:cons ':MagField (MagField msg))
    (cl:cons ':raw (raw msg))
))
