;; Auto-generated. Do not edit!


(when (boundp 'mult_driver::convert_to_quaternion)
  (if (not (find-package "MULT_DRIVER"))
    (make-package "MULT_DRIVER"))
  (shadow 'convert_to_quaternion (find-package "MULT_DRIVER")))
(unless (find-package "MULT_DRIVER::CONVERT_TO_QUATERNION")
  (make-package "MULT_DRIVER::CONVERT_TO_QUATERNION"))
(unless (find-package "MULT_DRIVER::CONVERT_TO_QUATERNIONREQUEST")
  (make-package "MULT_DRIVER::CONVERT_TO_QUATERNIONREQUEST"))
(unless (find-package "MULT_DRIVER::CONVERT_TO_QUATERNIONRESPONSE")
  (make-package "MULT_DRIVER::CONVERT_TO_QUATERNIONRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mult_driver::convert_to_quaternionRequest
  :super ros::object
  :slots (_euler_angles ))

(defmethod mult_driver::convert_to_quaternionRequest
  (:init
   (&key
    ((:euler_angles __euler_angles) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _euler_angles __euler_angles)
   self)
  (:euler_angles
   (&rest __euler_angles)
   (if (keywordp (car __euler_angles))
       (send* _euler_angles __euler_angles)
     (progn
       (if __euler_angles (setq _euler_angles (car __euler_angles)))
       _euler_angles)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3 _euler_angles
    (send _euler_angles :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3 _euler_angles
       (send _euler_angles :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3 _euler_angles
     (send _euler_angles :deserialize buf ptr-) (incf ptr- (send _euler_angles :serialization-length))
   ;;
   self)
  )

(defclass mult_driver::convert_to_quaternionResponse
  :super ros::object
  :slots (_quaternion ))

(defmethod mult_driver::convert_to_quaternionResponse
  (:init
   (&key
    ((:quaternion __quaternion) (instance geometry_msgs::Quaternion :init))
    )
   (send-super :init)
   (setq _quaternion __quaternion)
   self)
  (:quaternion
   (&rest __quaternion)
   (if (keywordp (car __quaternion))
       (send* _quaternion __quaternion)
     (progn
       (if __quaternion (setq _quaternion (car __quaternion)))
       _quaternion)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Quaternion _quaternion
    (send _quaternion :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Quaternion _quaternion
       (send _quaternion :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Quaternion _quaternion
     (send _quaternion :deserialize buf ptr-) (incf ptr- (send _quaternion :serialization-length))
   ;;
   self)
  )

(defclass mult_driver::convert_to_quaternion
  :super ros::object
  :slots ())

(setf (get mult_driver::convert_to_quaternion :md5sum-) "48653d5a466e82f3531a42dc323eefb0")
(setf (get mult_driver::convert_to_quaternion :datatype-) "mult_driver/convert_to_quaternion")
(setf (get mult_driver::convert_to_quaternion :request) mult_driver::convert_to_quaternionRequest)
(setf (get mult_driver::convert_to_quaternion :response) mult_driver::convert_to_quaternionResponse)

(defmethod mult_driver::convert_to_quaternionRequest
  (:response () (instance mult_driver::convert_to_quaternionResponse :init)))

(setf (get mult_driver::convert_to_quaternionRequest :md5sum-) "48653d5a466e82f3531a42dc323eefb0")
(setf (get mult_driver::convert_to_quaternionRequest :datatype-) "mult_driver/convert_to_quaternionRequest")
(setf (get mult_driver::convert_to_quaternionRequest :definition-)
      "geometry_msgs/Vector3 euler_angles


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

geometry_msgs/Quaternion quaternion

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get mult_driver::convert_to_quaternionResponse :md5sum-) "48653d5a466e82f3531a42dc323eefb0")
(setf (get mult_driver::convert_to_quaternionResponse :datatype-) "mult_driver/convert_to_quaternionResponse")
(setf (get mult_driver::convert_to_quaternionResponse :definition-)
      "geometry_msgs/Vector3 euler_angles


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

geometry_msgs/Quaternion quaternion

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :mult_driver/convert_to_quaternion "48653d5a466e82f3531a42dc323eefb0")


