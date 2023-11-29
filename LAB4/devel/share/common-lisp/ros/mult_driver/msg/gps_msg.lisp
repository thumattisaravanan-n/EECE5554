; Auto-generated. Do not edit!


(cl:in-package mult_driver-msg)


;//! \htmlinclude gps_msg.msg.html

(cl:defclass <gps_msg> (roslisp-msg-protocol:ros-message)
  ((Header
    :reader Header
    :initarg :Header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (Latitude
    :reader Latitude
    :initarg :Latitude
    :type cl:float
    :initform 0.0)
   (Longitude
    :reader Longitude
    :initarg :Longitude
    :type cl:float
    :initform 0.0)
   (Altitude
    :reader Altitude
    :initarg :Altitude
    :type cl:float
    :initform 0.0)
   (HDOP
    :reader HDOP
    :initarg :HDOP
    :type cl:float
    :initform 0.0)
   (UTM_easting
    :reader UTM_easting
    :initarg :UTM_easting
    :type cl:float
    :initform 0.0)
   (UTM_northing
    :reader UTM_northing
    :initarg :UTM_northing
    :type cl:float
    :initform 0.0)
   (UTC
    :reader UTC
    :initarg :UTC
    :type cl:string
    :initform "")
   (Letter
    :reader Letter
    :initarg :Letter
    :type cl:string
    :initform "")
   (Zone
    :reader Zone
    :initarg :Zone
    :type cl:integer
    :initform 0))
)

(cl:defclass gps_msg (<gps_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mult_driver-msg:<gps_msg> is deprecated: use mult_driver-msg:gps_msg instead.")))

(cl:ensure-generic-function 'Header-val :lambda-list '(m))
(cl:defmethod Header-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:Header-val is deprecated.  Use mult_driver-msg:Header instead.")
  (Header m))

(cl:ensure-generic-function 'Latitude-val :lambda-list '(m))
(cl:defmethod Latitude-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:Latitude-val is deprecated.  Use mult_driver-msg:Latitude instead.")
  (Latitude m))

(cl:ensure-generic-function 'Longitude-val :lambda-list '(m))
(cl:defmethod Longitude-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:Longitude-val is deprecated.  Use mult_driver-msg:Longitude instead.")
  (Longitude m))

(cl:ensure-generic-function 'Altitude-val :lambda-list '(m))
(cl:defmethod Altitude-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:Altitude-val is deprecated.  Use mult_driver-msg:Altitude instead.")
  (Altitude m))

(cl:ensure-generic-function 'HDOP-val :lambda-list '(m))
(cl:defmethod HDOP-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:HDOP-val is deprecated.  Use mult_driver-msg:HDOP instead.")
  (HDOP m))

(cl:ensure-generic-function 'UTM_easting-val :lambda-list '(m))
(cl:defmethod UTM_easting-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:UTM_easting-val is deprecated.  Use mult_driver-msg:UTM_easting instead.")
  (UTM_easting m))

(cl:ensure-generic-function 'UTM_northing-val :lambda-list '(m))
(cl:defmethod UTM_northing-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:UTM_northing-val is deprecated.  Use mult_driver-msg:UTM_northing instead.")
  (UTM_northing m))

(cl:ensure-generic-function 'UTC-val :lambda-list '(m))
(cl:defmethod UTC-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:UTC-val is deprecated.  Use mult_driver-msg:UTC instead.")
  (UTC m))

(cl:ensure-generic-function 'Letter-val :lambda-list '(m))
(cl:defmethod Letter-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:Letter-val is deprecated.  Use mult_driver-msg:Letter instead.")
  (Letter m))

(cl:ensure-generic-function 'Zone-val :lambda-list '(m))
(cl:defmethod Zone-val ((m <gps_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mult_driver-msg:Zone-val is deprecated.  Use mult_driver-msg:Zone instead.")
  (Zone m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_msg>) ostream)
  "Serializes a message object of type '<gps_msg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Latitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Longitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'HDOP))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UTM_easting))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'UTM_northing))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'UTC))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'UTC))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Letter))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Letter))
  (cl:let* ((signed (cl:slot-value msg 'Zone)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_msg>) istream)
  "Deserializes a message object of type '<gps_msg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Latitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Longitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HDOP) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UTM_easting) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'UTM_northing) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'UTC) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'UTC) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Letter) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Letter) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Zone) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_msg>)))
  "Returns string type for a message object of type '<gps_msg>"
  "mult_driver/gps_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_msg)))
  "Returns string type for a message object of type 'gps_msg"
  "mult_driver/gps_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_msg>)))
  "Returns md5sum for a message object of type '<gps_msg>"
  "a9fbf4a7840ca1315cfe077bc103d888")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_msg)))
  "Returns md5sum for a message object of type 'gps_msg"
  "a9fbf4a7840ca1315cfe077bc103d888")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_msg>)))
  "Returns full string definition for message of type '<gps_msg>"
  (cl:format cl:nil "Header Header~%float32 Latitude~%float32 Longitude~%float32 Altitude~%float32 HDOP~%float32 UTM_easting~%float32 UTM_northing~%string UTC~%string Letter~%int32 Zone~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_msg)))
  "Returns full string definition for message of type 'gps_msg"
  (cl:format cl:nil "Header Header~%float32 Latitude~%float32 Longitude~%float32 Altitude~%float32 HDOP~%float32 UTM_easting~%float32 UTM_northing~%string UTC~%string Letter~%int32 Zone~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_msg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Header))
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'UTC))
     4 (cl:length (cl:slot-value msg 'Letter))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_msg
    (cl:cons ':Header (Header msg))
    (cl:cons ':Latitude (Latitude msg))
    (cl:cons ':Longitude (Longitude msg))
    (cl:cons ':Altitude (Altitude msg))
    (cl:cons ':HDOP (HDOP msg))
    (cl:cons ':UTM_easting (UTM_easting msg))
    (cl:cons ':UTM_northing (UTM_northing msg))
    (cl:cons ':UTC (UTC msg))
    (cl:cons ':Letter (Letter msg))
    (cl:cons ':Zone (Zone msg))
))
