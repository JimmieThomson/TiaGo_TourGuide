
(cl:in-package :asdf)

(defsystem "pal_detection_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "AddTexturedObject" :depends-on ("_package_AddTexturedObject"))
    (:file "_package_AddTexturedObject" :depends-on ("_package"))
    (:file "ChangeObjectRecognizerModel" :depends-on ("_package_ChangeObjectRecognizerModel"))
    (:file "_package_ChangeObjectRecognizerModel" :depends-on ("_package"))
    (:file "Recognizer" :depends-on ("_package_Recognizer"))
    (:file "_package_Recognizer" :depends-on ("_package"))
    (:file "SelectTexturedObject" :depends-on ("_package_SelectTexturedObject"))
    (:file "_package_SelectTexturedObject" :depends-on ("_package"))
    (:file "SetDatabase" :depends-on ("_package_SetDatabase"))
    (:file "_package_SetDatabase" :depends-on ("_package"))
    (:file "StartEnrollment" :depends-on ("_package_StartEnrollment"))
    (:file "_package_StartEnrollment" :depends-on ("_package"))
    (:file "StopEnrollment" :depends-on ("_package_StopEnrollment"))
    (:file "_package_StopEnrollment" :depends-on ("_package"))
  ))