;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASRLanguage)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASRLanguage (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRLANGUAGE")
  (make-package "PAL_INTERACTION_MSGS::ASRLANGUAGE"))

(in-package "ROS")
;;//! \htmlinclude ASRLanguage.msg.html


(defclass pal_interaction_msgs::ASRLanguage
  :super ros::object
  :slots (_language ))

(defmethod pal_interaction_msgs::ASRLanguage
  (:init
   (&key
    ((:language __language) "")
    )
   (send-super :init)
   (setq _language (string __language))
   self)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:serialization-length
   ()
   (+
    ;; string _language
    4 (length _language)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _language
       (write-long (length _language) s) (princ _language s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::ASRLanguage :md5sum-) "f9264c5bffd188939e827e658af68a0d")
(setf (get pal_interaction_msgs::ASRLanguage :datatype-) "pal_interaction_msgs/ASRLanguage")
(setf (get pal_interaction_msgs::ASRLanguage :definition-)
      "# This message is to indicate the language
# that has to be set in the speech recognizer
string language

")



(provide :pal_interaction_msgs/ASRLanguage "f9264c5bffd188939e827e658af68a0d")


