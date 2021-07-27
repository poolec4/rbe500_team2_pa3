;; Auto-generated. Do not edit!


(when (boundp 'scara_velocity_kinematics::ee_to_joint_velocity)
  (if (not (find-package "SCARA_VELOCITY_KINEMATICS"))
    (make-package "SCARA_VELOCITY_KINEMATICS"))
  (shadow 'ee_to_joint_velocity (find-package "SCARA_VELOCITY_KINEMATICS")))
(unless (find-package "SCARA_VELOCITY_KINEMATICS::EE_TO_JOINT_VELOCITY")
  (make-package "SCARA_VELOCITY_KINEMATICS::EE_TO_JOINT_VELOCITY"))
(unless (find-package "SCARA_VELOCITY_KINEMATICS::EE_TO_JOINT_VELOCITYREQUEST")
  (make-package "SCARA_VELOCITY_KINEMATICS::EE_TO_JOINT_VELOCITYREQUEST"))
(unless (find-package "SCARA_VELOCITY_KINEMATICS::EE_TO_JOINT_VELOCITYRESPONSE")
  (make-package "SCARA_VELOCITY_KINEMATICS::EE_TO_JOINT_VELOCITYRESPONSE"))

(in-package "ROS")





(defclass scara_velocity_kinematics::ee_to_joint_velocityRequest
  :super ros::object
  :slots (_x _y _z _th1 _th2 _d3 ))

(defmethod scara_velocity_kinematics::ee_to_joint_velocityRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:th1 __th1) 0.0)
    ((:th2 __th2) 0.0)
    ((:d3 __d3) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _th1 (float __th1))
   (setq _th2 (float __th2))
   (setq _d3 (float __d3))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:th1
   (&optional __th1)
   (if __th1 (setq _th1 __th1)) _th1)
  (:th2
   (&optional __th2)
   (if __th2 (setq _th2 __th2)) _th2)
  (:d3
   (&optional __d3)
   (if __d3 (setq _d3 __d3)) _d3)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _th1
    8
    ;; float64 _th2
    8
    ;; float64 _d3
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _th1
       (sys::poke _th1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _th2
       (sys::poke _th2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3
       (sys::poke _d3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _th1
     (setq _th1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _th2
     (setq _th2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d3
     (setq _d3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_velocity_kinematics::ee_to_joint_velocityResponse
  :super ros::object
  :slots (_th1_dot _th2_dot _d3_dot ))

(defmethod scara_velocity_kinematics::ee_to_joint_velocityResponse
  (:init
   (&key
    ((:th1_dot __th1_dot) 0.0)
    ((:th2_dot __th2_dot) 0.0)
    ((:d3_dot __d3_dot) 0.0)
    )
   (send-super :init)
   (setq _th1_dot (float __th1_dot))
   (setq _th2_dot (float __th2_dot))
   (setq _d3_dot (float __d3_dot))
   self)
  (:th1_dot
   (&optional __th1_dot)
   (if __th1_dot (setq _th1_dot __th1_dot)) _th1_dot)
  (:th2_dot
   (&optional __th2_dot)
   (if __th2_dot (setq _th2_dot __th2_dot)) _th2_dot)
  (:d3_dot
   (&optional __d3_dot)
   (if __d3_dot (setq _d3_dot __d3_dot)) _d3_dot)
  (:serialization-length
   ()
   (+
    ;; float64 _th1_dot
    8
    ;; float64 _th2_dot
    8
    ;; float64 _d3_dot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _th1_dot
       (sys::poke _th1_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _th2_dot
       (sys::poke _th2_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _d3_dot
       (sys::poke _d3_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _th1_dot
     (setq _th1_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _th2_dot
     (setq _th2_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _d3_dot
     (setq _d3_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass scara_velocity_kinematics::ee_to_joint_velocity
  :super ros::object
  :slots ())

(setf (get scara_velocity_kinematics::ee_to_joint_velocity :md5sum-) "f7f9e62736547771aaa406fc9f3bb3cf")
(setf (get scara_velocity_kinematics::ee_to_joint_velocity :datatype-) "scara_velocity_kinematics/ee_to_joint_velocity")
(setf (get scara_velocity_kinematics::ee_to_joint_velocity :request) scara_velocity_kinematics::ee_to_joint_velocityRequest)
(setf (get scara_velocity_kinematics::ee_to_joint_velocity :response) scara_velocity_kinematics::ee_to_joint_velocityResponse)

(defmethod scara_velocity_kinematics::ee_to_joint_velocityRequest
  (:response () (instance scara_velocity_kinematics::ee_to_joint_velocityResponse :init)))

(setf (get scara_velocity_kinematics::ee_to_joint_velocityRequest :md5sum-) "f7f9e62736547771aaa406fc9f3bb3cf")
(setf (get scara_velocity_kinematics::ee_to_joint_velocityRequest :datatype-) "scara_velocity_kinematics/ee_to_joint_velocityRequest")
(setf (get scara_velocity_kinematics::ee_to_joint_velocityRequest :definition-)
      "float64 x
float64 y
float64 z
float64 th1
float64 th2
float64 d3
---
float64 th1_dot
float64 th2_dot
float64 d3_dot



")

(setf (get scara_velocity_kinematics::ee_to_joint_velocityResponse :md5sum-) "f7f9e62736547771aaa406fc9f3bb3cf")
(setf (get scara_velocity_kinematics::ee_to_joint_velocityResponse :datatype-) "scara_velocity_kinematics/ee_to_joint_velocityResponse")
(setf (get scara_velocity_kinematics::ee_to_joint_velocityResponse :definition-)
      "float64 x
float64 y
float64 z
float64 th1
float64 th2
float64 d3
---
float64 th1_dot
float64 th2_dot
float64 d3_dot



")



(provide :scara_velocity_kinematics/ee_to_joint_velocity "f7f9e62736547771aaa406fc9f3bb3cf")


