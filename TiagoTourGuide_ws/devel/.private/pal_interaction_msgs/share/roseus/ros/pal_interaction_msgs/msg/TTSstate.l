;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::TTSstate)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'TTSstate (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::TTSSTATE")
  (make-package "PAL_INTERACTION_MSGS::TTSSTATE"))

(in-package "ROS")
;;//! \htmlinclude TTSstate.msg.html


(defclass pal_interaction_msgs::TTSstate
  :super ros::object
  :slots (_isSpeaking _text ))

(defmethod pal_interaction_msgs::TTSstate
  (:init
   (&key
    ((:isSpeaking __isSpeaking) nil)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _isSpeaking __isSpeaking)
   (setq _text (string __text))
   self)
  (:isSpeaking
   (&optional (__isSpeaking :null))
   (if (not (eq __isSpeaking :null)) (setq _isSpeaking __isSpeaking)) _isSpeaking)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; bool _isSpeaking
    1
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isSpeaking
       (if _isSpeaking (write-byte -1 s) (write-byte 0 s))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isSpeaking
     (setq _isSpeaking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::TTSstate :md5sum-) "b3b6b5f485986278e907e9bb4f658e3d")
(setf (get pal_interaction_msgs::TTSstate :datatype-) "pal_interaction_msgs/TTSstate")
(setf (get pal_interaction_msgs::TTSstate :definition-)
      "bool isSpeaking
string text
")



(provide :pal_interaction_msgs/TTSstate "b3b6b5f485986278e907e9bb4f658e3d")


