
(cl:in-package :asdf)

(defsystem "pal_multirobot_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WifiServiceDetection" :depends-on ("_package_WifiServiceDetection"))
    (:file "_package_WifiServiceDetection" :depends-on ("_package"))
  ))