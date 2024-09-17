
(cl:in-package :asdf)

(defsystem "pal_device_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pal_device_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CancelEffect" :depends-on ("_package_CancelEffect"))
    (:file "_package_CancelEffect" :depends-on ("_package"))
    (:file "ShutdownAndWakeUpRobot" :depends-on ("_package_ShutdownAndWakeUpRobot"))
    (:file "_package_ShutdownAndWakeUpRobot" :depends-on ("_package"))
    (:file "TimedBlinkEffect" :depends-on ("_package_TimedBlinkEffect"))
    (:file "_package_TimedBlinkEffect" :depends-on ("_package"))
    (:file "TimedColourEffect" :depends-on ("_package_TimedColourEffect"))
    (:file "_package_TimedColourEffect" :depends-on ("_package"))
    (:file "TimedFadeEffect" :depends-on ("_package_TimedFadeEffect"))
    (:file "_package_TimedFadeEffect" :depends-on ("_package"))
  ))