
(cl:in-package :asdf)

(defsystem "pal_control_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CurrentLimit" :depends-on ("_package_CurrentLimit"))
    (:file "_package_CurrentLimit" :depends-on ("_package"))
  ))