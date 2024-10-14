;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::I18nText)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'I18nText (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::I18NTEXT")
  (make-package "PAL_INTERACTION_MSGS::I18NTEXT"))

(in-package "ROS")
;;//! \htmlinclude I18nText.msg.html


(defclass pal_interaction_msgs::I18nText
  :super ros::object
  :slots (_section _key _lang_id _arguments ))

(defmethod pal_interaction_msgs::I18nText
  (:init
   (&key
    ((:section __section) "")
    ((:key __key) "")
    ((:lang_id __lang_id) "")
    ((:arguments __arguments) ())
    )
   (send-super :init)
   (setq _section (string __section))
   (setq _key (string __key))
   (setq _lang_id (string __lang_id))
   (setq _arguments __arguments)
   self)
  (:section
   (&optional __section)
   (if __section (setq _section __section)) _section)
  (:key
   (&optional __key)
   (if __key (setq _key __key)) _key)
  (:lang_id
   (&optional __lang_id)
   (if __lang_id (setq _lang_id __lang_id)) _lang_id)
  (:arguments
   (&rest __arguments)
   (if (keywordp (car __arguments))
       (send* _arguments __arguments)
     (progn
       (if __arguments (setq _arguments (car __arguments)))
       _arguments)))
  (:serialization-length
   ()
   (+
    ;; string _section
    4 (length _section)
    ;; string _key
    4 (length _key)
    ;; string _lang_id
    4 (length _lang_id)
    ;; pal_interaction_msgs/I18nArgument[] _arguments
    (apply #'+ (send-all _arguments :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _section
       (write-long (length _section) s) (princ _section s)
     ;; string _key
       (write-long (length _key) s) (princ _key s)
     ;; string _lang_id
       (write-long (length _lang_id) s) (princ _lang_id s)
     ;; pal_interaction_msgs/I18nArgument[] _arguments
     (write-long (length _arguments) s)
     (dolist (elem _arguments)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _section
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _section (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _key
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _key (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lang_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lang_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; pal_interaction_msgs/I18nArgument[] _arguments
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arguments (let (r) (dotimes (i n) (push (instance pal_interaction_msgs::I18nArgument :init) r)) r))
     (dolist (elem- _arguments)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::I18nText :md5sum-) "855c0cd82eb6837b039ea45087975cc2")
(setf (get pal_interaction_msgs::I18nText :datatype-) "pal_interaction_msgs/I18nText")
(setf (get pal_interaction_msgs::I18nText :definition-)
      "# section/key is used as in examples in the pal_tts_cfg pkg.
string section
string key

# language id, must be speficied using RFC 3066
string lang_id

# arguments contain the values by which 
# occurrences of '%s' will be replaced in the 
# main text.
# This only supports up to 2 arguments and no recursion.
# However, recursion and more argumnents are
# planned to be supported in the future.
I18nArgument[] arguments

================================================================================
MSG: pal_interaction_msgs/I18nArgument
# section key, override the value in expanded.
# Use expanded for text that do not need expansion.
# Please note that expanded here will not be translated 
# to any language.

string section
string key
string expanded


")



(provide :pal_interaction_msgs/I18nText "855c0cd82eb6837b039ea45087975cc2")


