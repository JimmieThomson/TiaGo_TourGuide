;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::GetSpeechDuration)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'GetSpeechDuration (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::GETSPEECHDURATION")
  (make-package "PAL_INTERACTION_MSGS::GETSPEECHDURATION"))
(unless (find-package "PAL_INTERACTION_MSGS::GETSPEECHDURATIONREQUEST")
  (make-package "PAL_INTERACTION_MSGS::GETSPEECHDURATIONREQUEST"))
(unless (find-package "PAL_INTERACTION_MSGS::GETSPEECHDURATIONRESPONSE")
  (make-package "PAL_INTERACTION_MSGS::GETSPEECHDURATIONRESPONSE"))

(in-package "ROS")





(defclass pal_interaction_msgs::GetSpeechDurationRequest
  :super ros::object
  :slots (_text _rawtext ))

(defmethod pal_interaction_msgs::GetSpeechDurationRequest
  (:init
   (&key
    ((:text __text) (instance pal_interaction_msgs::I18nText :init))
    ((:rawtext __rawtext) (instance pal_interaction_msgs::TtsText :init))
    )
   (send-super :init)
   (setq _text __text)
   (setq _rawtext __rawtext)
   self)
  (:text
   (&rest __text)
   (if (keywordp (car __text))
       (send* _text __text)
     (progn
       (if __text (setq _text (car __text)))
       _text)))
  (:rawtext
   (&rest __rawtext)
   (if (keywordp (car __rawtext))
       (send* _rawtext __rawtext)
     (progn
       (if __rawtext (setq _rawtext (car __rawtext)))
       _rawtext)))
  (:serialization-length
   ()
   (+
    ;; pal_interaction_msgs/I18nText _text
    (send _text :serialization-length)
    ;; pal_interaction_msgs/TtsText _rawtext
    (send _rawtext :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_interaction_msgs/I18nText _text
       (send _text :serialize s)
     ;; pal_interaction_msgs/TtsText _rawtext
       (send _rawtext :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_interaction_msgs/I18nText _text
     (send _text :deserialize buf ptr-) (incf ptr- (send _text :serialization-length))
   ;; pal_interaction_msgs/TtsText _rawtext
     (send _rawtext :deserialize buf ptr-) (incf ptr- (send _rawtext :serialization-length))
   ;;
   self)
  )

(defclass pal_interaction_msgs::GetSpeechDurationResponse
  :super ros::object
  :slots (_ok _words _word_durations ))

(defmethod pal_interaction_msgs::GetSpeechDurationResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:words __words) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:word_durations __word_durations) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _words __words)
   (setq _word_durations __word_durations)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:word_durations
   (&optional __word_durations)
   (if __word_durations (setq _word_durations __word_durations)) _word_durations)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; string[] _words
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _words)) 4
    ;; duration[] _word_durations
    (* 8    (length _word_durations)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; string[] _words
     (write-long (length _words) s)
     (dolist (elem _words)
       (write-long (length elem) s) (princ elem s)
       )
     ;; duration[] _word_durations
     (write-long (length _word_durations) s)
     (dotimes (i (length _word_durations))
       (write-long (send (elt _word_durations i) :sec) s) (write-long (send (elt _word_durations i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _words
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _words (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _words i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; duration[] _word_durations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _word_durations (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _word_durations)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass pal_interaction_msgs::GetSpeechDuration
  :super ros::object
  :slots ())

(setf (get pal_interaction_msgs::GetSpeechDuration :md5sum-) "d04aea620ba3493798f087eca950ddd3")
(setf (get pal_interaction_msgs::GetSpeechDuration :datatype-) "pal_interaction_msgs/GetSpeechDuration")
(setf (get pal_interaction_msgs::GetSpeechDuration :request) pal_interaction_msgs::GetSpeechDurationRequest)
(setf (get pal_interaction_msgs::GetSpeechDuration :response) pal_interaction_msgs::GetSpeechDurationResponse)

(defmethod pal_interaction_msgs::GetSpeechDurationRequest
  (:response () (instance pal_interaction_msgs::GetSpeechDurationResponse :init)))

(setf (get pal_interaction_msgs::GetSpeechDurationRequest :md5sum-) "d04aea620ba3493798f087eca950ddd3")
(setf (get pal_interaction_msgs::GetSpeechDurationRequest :datatype-) "pal_interaction_msgs/GetSpeechDurationRequest")
(setf (get pal_interaction_msgs::GetSpeechDurationRequest :definition-)
      "# Same logic as Tts.action goal
# If text is specified with section and key, it will be used for computing the duration
# otherwise rawtext will be used  (even if empty)
I18nText text
TtsText rawtext

================================================================================
MSG: pal_interaction_msgs/I18nText
# section/key is used as in examples in the pal_tts_cfg pkg.
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


================================================================================
MSG: pal_interaction_msgs/TtsText
# this message is to specify 
# raw text to the TTS server. 

string text

# Language id in RFC 3066 format
# This field is mandatory
---
bool ok
string[] words
duration[] word_durations

")

(setf (get pal_interaction_msgs::GetSpeechDurationResponse :md5sum-) "d04aea620ba3493798f087eca950ddd3")
(setf (get pal_interaction_msgs::GetSpeechDurationResponse :datatype-) "pal_interaction_msgs/GetSpeechDurationResponse")
(setf (get pal_interaction_msgs::GetSpeechDurationResponse :definition-)
      "# Same logic as Tts.action goal
# If text is specified with section and key, it will be used for computing the duration
# otherwise rawtext will be used  (even if empty)
I18nText text
TtsText rawtext

================================================================================
MSG: pal_interaction_msgs/I18nText
# section/key is used as in examples in the pal_tts_cfg pkg.
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


================================================================================
MSG: pal_interaction_msgs/TtsText
# this message is to specify 
# raw text to the TTS server. 

string text

# Language id in RFC 3066 format
# This field is mandatory
---
bool ok
string[] words
duration[] word_durations

")



(provide :pal_interaction_msgs/GetSpeechDuration "d04aea620ba3493798f087eca950ddd3")


