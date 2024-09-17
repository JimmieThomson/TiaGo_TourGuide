
(cl:in-package :asdf)

(defsystem "pal_interaction_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pal_interaction_msgs-msg
)
  :components ((:file "_package")
    (:file "ASRService" :depends-on ("_package_ASRService"))
    (:file "_package_ASRService" :depends-on ("_package"))
    (:file "GetSpeechDuration" :depends-on ("_package_GetSpeechDuration"))
    (:file "_package_GetSpeechDuration" :depends-on ("_package"))
    (:file "SoundLocalisationService" :depends-on ("_package_SoundLocalisationService"))
    (:file "_package_SoundLocalisationService" :depends-on ("_package"))
    (:file "recognizerService" :depends-on ("_package_recognizerService"))
    (:file "_package_recognizerService" :depends-on ("_package"))
  ))