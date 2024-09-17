
(cl:in-package :asdf)

(defsystem "pal_motion_model_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pal_motion_model_msgs-msg
)
  :components ((:file "_package")
    (:file "GetMotionMap" :depends-on ("_package_GetMotionMap"))
    (:file "_package_GetMotionMap" :depends-on ("_package"))
  ))