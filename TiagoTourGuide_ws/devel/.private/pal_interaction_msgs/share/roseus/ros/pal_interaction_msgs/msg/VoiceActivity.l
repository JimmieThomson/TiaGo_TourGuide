;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::VoiceActivity)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'VoiceActivity (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::VOICEACTIVITY")
  (make-package "PAL_INTERACTION_MSGS::VOICEACTIVITY"))

(in-package "ROS")
;;//! \htmlinclude VoiceActivity.msg.html


(defclass pal_interaction_msgs::VoiceActivity
  :super ros::object
  :slots (_isSpeech ))

(defmethod pal_interaction_msgs::VoiceActivity
  (:init
   (&key
    ((:isSpeech __isSpeech) nil)
    )
   (send-super :init)
   (setq _isSpeech __isSpeech)
   self)
  (:isSpeech
   (&optional (__isSpeech :null))
   (if (not (eq __isSpeech :null)) (setq _isSpeech __isSpeech)) _isSpeech)
  (:serialization-length
   ()
   (+
    ;; bool _isSpeech
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSpeech
       (if _isSpeech (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSpeech
     (setq _isSpeech (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_interaction_msgs::VoiceActivity :md5sum-) "6ec045a05170c3f88f25da9af745836f")
(setf (get pal_interaction_msgs::VoiceActivity :datatype-) "pal_interaction_msgs/VoiceActivity")
(setf (get pal_interaction_msgs::VoiceActivity :definition-)
      "bool isSpeech

")



(provide :pal_interaction_msgs/VoiceActivity "6ec045a05170c3f88f25da9af745836f")


