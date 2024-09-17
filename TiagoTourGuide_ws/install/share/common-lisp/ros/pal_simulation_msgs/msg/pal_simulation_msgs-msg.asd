
(cl:in-package :asdf)

(defsystem "pal_simulation_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ExternalWrench" :depends-on ("_package_ExternalWrench"))
    (:file "_package_ExternalWrench" :depends-on ("_package"))
  ))