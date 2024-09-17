
(cl:in-package :asdf)

(defsystem "pal_motion_model_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MotionModel" :depends-on ("_package_MotionModel"))
    (:file "_package_MotionModel" :depends-on ("_package"))
    (:file "MotionModelList" :depends-on ("_package_MotionModelList"))
    (:file "_package_MotionModelList" :depends-on ("_package"))
    (:file "MotionModelMap" :depends-on ("_package_MotionModelMap"))
    (:file "_package_MotionModelMap" :depends-on ("_package"))
  ))