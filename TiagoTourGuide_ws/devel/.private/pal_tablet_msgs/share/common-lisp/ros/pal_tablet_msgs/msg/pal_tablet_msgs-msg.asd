
(cl:in-package :asdf)

(defsystem "pal_tablet_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FunctionalityStatus" :depends-on ("_package_FunctionalityStatus"))
    (:file "_package_FunctionalityStatus" :depends-on ("_package"))
    (:file "RobotStatus" :depends-on ("_package_RobotStatus"))
    (:file "_package_RobotStatus" :depends-on ("_package"))
  ))