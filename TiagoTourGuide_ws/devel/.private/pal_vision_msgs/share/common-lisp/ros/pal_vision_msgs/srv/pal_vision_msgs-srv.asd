
(cl:in-package :asdf)

(defsystem "pal_vision_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "FaceTrackingStart" :depends-on ("_package_FaceTrackingStart"))
    (:file "_package_FaceTrackingStart" :depends-on ("_package"))
    (:file "FaceTrackingStop" :depends-on ("_package_FaceTrackingStop"))
    (:file "_package_FaceTrackingStop" :depends-on ("_package"))
    (:file "FollowMeStart" :depends-on ("_package_FollowMeStart"))
    (:file "_package_FollowMeStart" :depends-on ("_package"))
    (:file "FollowMeStop" :depends-on ("_package_FollowMeStop"))
    (:file "_package_FollowMeStop" :depends-on ("_package"))
    (:file "LookToPixel" :depends-on ("_package_LookToPixel"))
    (:file "_package_LookToPixel" :depends-on ("_package"))
  ))