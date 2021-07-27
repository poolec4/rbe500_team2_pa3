
(cl:in-package :asdf)

(defsystem "scara_velocity_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "VelocityControlReference" :depends-on ("_package_VelocityControlReference"))
    (:file "_package_VelocityControlReference" :depends-on ("_package"))
  ))