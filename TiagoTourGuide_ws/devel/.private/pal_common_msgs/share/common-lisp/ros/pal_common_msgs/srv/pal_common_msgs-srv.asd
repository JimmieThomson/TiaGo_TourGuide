
(cl:in-package :asdf)

(defsystem "pal_common_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetString" :depends-on ("_package_GetString"))
    (:file "_package_GetString" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
  ))