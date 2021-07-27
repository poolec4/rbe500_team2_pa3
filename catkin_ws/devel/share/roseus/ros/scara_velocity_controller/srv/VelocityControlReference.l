;; Auto-generated. Do not edit!


(when (boundp 'scara_velocity_controller::VelocityControlReference)
  (if (not (find-package "SCARA_VELOCITY_CONTROLLER"))
    (make-package "SCARA_VELOCITY_CONTROLLER"))
  (shadow 'VelocityControlReference (find-package "SCARA_VELOCITY_CONTROLLER")))
(unless (find-package "SCARA_VELOCITY_CONTROLLER::VELOCITYCONTROLREFERENCE")
  (make-package "SCARA_VELOCITY_CONTROLLER::VELOCITYCONTROLREFERENCE"))
(unless (find-package "SCARA_VELOCITY_CONTROLLER::VELOCITYCONTROLREFERENCEREQUEST")
  (make-package "SCARA_VELOCITY_CONTROLLER::VELOCITYCONTROLREFERENCEREQUEST"))
(unless (find-package "SCARA_VELOCITY_CONTROLLER::VELOCITYCONTROLREFERENCERESPONSE")
  (make-package "SCARA_VELOCITY_CONTROLLER::VELOCITYCONTROLREFERENCERESPONSE"))

(in-package "ROS")





(defclass scara_velocity_controller::VelocityControlReferenceRequest
  :super ros::object
  :slots (_x_dot _y_dot _z_dot ))

(defmethod scara_velocity_controller::VelocityControlReferenceRequest
  (:init
   (&key
    ((:x_dot __x_dot) 0.0)
    ((:y_dot __y_dot) 0.0)
    ((:z_dot __z_dot) 0.0)
    )
   (send-super :init)
   (setq _x_dot (float __x_dot))
   (setq _y_dot (float __y_dot))
   (setq _z_dot (float __z_dot))
   self)
  (:x_dot
   (&optional __x_dot)
   (if __x_dot (setq _x_dot __x_dot)) _x_dot)
  (:y_dot
   (&optional __y_dot)
   (if __y_dot (setq _y_dot __y_dot)) _y_dot)
  (:z_dot
   (&optional __z_dot)
   (if __z_dot (setq _z_dot __z_dot)) _z_dot)
  (:serialization-length
   ()
   (+
    ;; float64 _x_dot
    8
    ;; float64 _y_dot
    8
    ;; float64 _z_dot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x_dot
       (sys::poke _x_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y_dot
       (sys::poke _y_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z_dot
       (sys::poke _z_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x_dot
     (setq _x_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y_dot
     (setq _y_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z_dot
     (setq _z_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_velocity_controller::VelocityControlReferenceResponse
  :super ros::object
  :slots (_success ))

(defmethod scara_velocity_controller::VelocityControlReferenceResponse
  (:init
   (&key
    ((:success __success) 0.0)
    )
   (send-super :init)
   (setq _success (float __success))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; float64 _success
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _success
       (sys::poke _success (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _success
     (setq _success (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_velocity_controller::VelocityControlReference
  :super ros::object
  :slots ())

(setf (get scara_velocity_controller::VelocityControlReference :md5sum-) "a2dcd12186fef25175dd209ccf6b3de3")
(setf (get scara_velocity_controller::VelocityControlReference :datatype-) "scara_velocity_controller/VelocityControlReference")
(setf (get scara_velocity_controller::VelocityControlReference :request) scara_velocity_controller::VelocityControlReferenceRequest)
(setf (get scara_velocity_controller::VelocityControlReference :response) scara_velocity_controller::VelocityControlReferenceResponse)

(defmethod scara_velocity_controller::VelocityControlReferenceRequest
  (:response () (instance scara_velocity_controller::VelocityControlReferenceResponse :init)))

(setf (get scara_velocity_controller::VelocityControlReferenceRequest :md5sum-) "a2dcd12186fef25175dd209ccf6b3de3")
(setf (get scara_velocity_controller::VelocityControlReferenceRequest :datatype-) "scara_velocity_controller/VelocityControlReferenceRequest")
(setf (get scara_velocity_controller::VelocityControlReferenceRequest :definition-)
      "float64 x_dot
float64 y_dot
float64 z_dot
---
float64 success
")

(setf (get scara_velocity_controller::VelocityControlReferenceResponse :md5sum-) "a2dcd12186fef25175dd209ccf6b3de3")
(setf (get scara_velocity_controller::VelocityControlReferenceResponse :datatype-) "scara_velocity_controller/VelocityControlReferenceResponse")
(setf (get scara_velocity_controller::VelocityControlReferenceResponse :definition-)
      "float64 x_dot
float64 y_dot
float64 z_dot
---
float64 success
")



(provide :scara_velocity_controller/VelocityControlReference "a2dcd12186fef25175dd209ccf6b3de3")


