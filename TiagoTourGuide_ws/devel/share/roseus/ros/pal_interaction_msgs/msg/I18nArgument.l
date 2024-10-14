;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::I18nArgument)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'I18nArgument (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::I18NARGUMENT")
  (make-package "PAL_INTERACTION_MSGS::I18NARGUMENT"))

(in-package "ROS")
;;//! \htmlinclude I18nArgument.msg.html


(defclass pal_interaction_msgs::I18nArgument
  :super ros::object
  :slots (_section _key _expanded ))

(defmethod pal_interaction_msgs::I18nArgument
  (:init
   (&key
    ((:section __section) "")
    ((:key __key) "")
    ((:expanded __expanded) "")
    )
   (send-super :init)
   (setq _section (string __section))
   (setq _key (string __key))
   (setq _expanded (string __expanded))
   self)
  (:section
   (&optional __section)
   (if __section (setq _section __section)) _section)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:expanded
   (&optional __expanded)
   (if __expanded (setq _expanded __expanded)) _expanded)
  (:serialization-length
   ()
   (+
    ;; string _section
    4 (length _section)
    ;; string _key
    4 (length _key)
    ;; string _expanded
    4 (length _expanded)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _section
       (write-long (length _section) s) (princ _section s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string _expanded
       (write-long (length _expanded) s) (princ _expanded s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _section
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _section (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _expanded
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _expanded (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::I18nArgument :md5sum-) "5c584e5b757794e1616ca51692089746")
(setf (get pal_interaction_msgs::I18nArgument :datatype-) "pal_interaction_msgs/I18nArgument")
(setf (get pal_interaction_msgs::I18nArgument :definition-)
      "# section key, override the value in expanded.
# Use expanded for text that do not need expansion.
# Please note that expanded here will not be translated 
# to any language.

string section
string key
string expanded


")



(provide :pal_interaction_msgs/I18nArgument "5c584e5b757794e1616ca51692089746")


