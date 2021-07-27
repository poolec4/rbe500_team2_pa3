
(cl:in-package :asdf)

(defsystem "scara_velocity_kinematics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ee_to_joint_velocity" :depends-on ("_package_ee_to_joint_velocity"))
    (:file "_package_ee_to_joint_velocity" :depends-on ("_package"))
    (:file "joint_to_ee_velocity" :depends-on ("_package_joint_to_ee_velocity"))
    (:file "_package_joint_to_ee_velocity" :depends-on ("_package"))
  ))