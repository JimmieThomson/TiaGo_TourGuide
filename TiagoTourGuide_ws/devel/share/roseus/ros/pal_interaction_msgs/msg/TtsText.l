;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::TtsText)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'TtsText (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::TTSTEXT")
  (make-package "PAL_INTERACTION_MSGS::TTSTEXT"))

(in-package "ROS")
;;//! \htmlinclude TtsText.msg.html


(defclass pal_interaction_msgs::TtsText
  :super ros::object
  :slots (_text _lang_id ))

(defmethod pal_interaction_msgs::TtsText
  (:init
   (&key
    ((:text __text) "")
    ((:lang_id __lang_id) "")
    )
   (send-super :init)
   (setq _text (string __text))
   (setq _lang_id (string __lang_id))
   self)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:lang_id
   (&optional __lang_id)
   (if __lang_id (setq _lang_id __lang_id)) _lang_id)
  (:serialization-length
   ()
   (+
    ;; string _text
    4 (length _text)
    ;; string _lang_id
    4 (length _lang_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;; string _lang_id
       (write-long (length _lang_id) s) (princ _lang_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lang_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lang_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::TtsText :md5sum-) "a42001bb3ccbf1a914b618f34087dc37")
(setf (get pal_interaction_msgs::TtsText :datatype-) "pal_interaction_msgs/TtsText")
(setf (get pal_interaction_msgs::TtsText :definition-)
      "# this message is to specify 
# raw text to the TTS server. 

string text

# Language id in RFC 3066 format
# This field is mandatory
string lang_id
")



(provide :pal_interaction_msgs/TtsText "a42001bb3ccbf1a914b618f34087dc37")


