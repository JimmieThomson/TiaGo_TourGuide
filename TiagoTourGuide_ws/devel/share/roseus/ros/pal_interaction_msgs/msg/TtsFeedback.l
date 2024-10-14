;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::TtsFeedback)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'TtsFeedback (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK")
  (make-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TtsFeedback.msg.html


(intern "*TTS_EVENT_INITIALIZATION*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_INITIALIZATION* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_INITIALIZATION* 1)
(intern "*TTS_EVENT_SHUTDOWN*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_SHUTDOWN* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_SHUTDOWN* 2)
(intern "*TTS_EVENT_SYNCHRONIZATION*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_SYNCHRONIZATION* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_SYNCHRONIZATION* 4)
(intern "*TTS_EVENT_FINISHED_PLAYING_UTTERANCE*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_FINISHED_PLAYING_UTTERANCE* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_FINISHED_PLAYING_UTTERANCE* 8)
(intern "*TTS_EVENT_MARK*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_MARK* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_MARK* 16)
(intern "*TTS_EVENT_STARTED_PLAYING_WORD*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_STARTED_PLAYING_WORD* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_STARTED_PLAYING_WORD* 32)
(intern "*TTS_EVENT_FINISHED_PLAYING_PHRASE*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_FINISHED_PLAYING_PHRASE* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_FINISHED_PLAYING_PHRASE* 64)
(intern "*TTS_EVENT_FINISHED_PLAYING_SENTENCE*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_FINISHED_PLAYING_SENTENCE* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_FINISHED_PLAYING_SENTENCE* 128)
(intern "*TTS_EVENT_VISEME*" (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(shadow '*TTS_EVENT_VISEME* (find-package "PAL_INTERACTION_MSGS::TTSFEEDBACK"))
(defconstant pal_interaction_msgs::TtsFeedback::*TTS_EVENT_VISEME* 256)

(defun pal_interaction_msgs::TtsFeedback-to-symbol (const)
  (cond
        ((= const 1) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_INITIALIZATION*)
        ((= const 2) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_SHUTDOWN*)
        ((= const 4) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_SYNCHRONIZATION*)
        ((= const 8) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_FINISHED_PLAYING_UTTERANCE*)
        ((= const 16) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_MARK*)
        ((= const 32) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_STARTED_PLAYING_WORD*)
        ((= const 64) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_FINISHED_PLAYING_PHRASE*)
        ((= const 128) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_FINISHED_PLAYING_SENTENCE*)
        ((= const 256) 'pal_interaction_msgs::TtsFeedback::*TTS_EVENT_VISEME*)
        (t nil)))

(defclass pal_interaction_msgs::TtsFeedback
  :super ros::object
  :slots (_event_type _timestamp _text_said _next_word _viseme_id _marks ))

(defmethod pal_interaction_msgs::TtsFeedback
  (:init
   (&key
    ((:event_type __event_type) 0)
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:text_said __text_said) "")
    ((:next_word __next_word) "")
    ((:viseme_id __viseme_id) "")
    ((:marks __marks) (instance pal_interaction_msgs::TtsMark :init))
    )
   (send-super :init)
   (setq _event_type (round __event_type))
   (setq _timestamp __timestamp)
   (setq _text_said (string __text_said))
   (setq _next_word (string __next_word))
   (setq _viseme_id (string __viseme_id))
   (setq _marks __marks)
   self)
  (:event_type
   (&optional __event_type)
   (if __event_type (setq _event_type __event_type)) _event_type)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:text_said
   (&optional __text_said)
   (if __text_said (setq _text_said __text_said)) _text_said)
  (:next_word
   (&optional __next_word)
   (if __next_word (setq _next_word __next_word)) _next_word)
  (:viseme_id
   (&optional __viseme_id)
   (if __viseme_id (setq _viseme_id __viseme_id)) _viseme_id)
  (:marks
   (&rest __marks)
   (if (keywordp (car __marks))
       (send* _marks __marks)
     (progn
       (if __marks (setq _marks (car __marks)))
       _marks)))
  (:serialization-length
   ()
   (+
    ;; uint16 _event_type
    2
    ;; time _timestamp
    8
    ;; string _text_said
    4 (length _text_said)
    ;; string _next_word
    4 (length _next_word)
    ;; string _viseme_id
    4 (length _viseme_id)
    ;; pal_interaction_msgs/TtsMark _marks
    (send _marks :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _event_type
       (write-word _event_type s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; string _text_said
       (write-long (length _text_said) s) (princ _text_said s)
     ;; string _next_word
       (write-long (length _next_word) s) (princ _next_word s)
     ;; string _viseme_id
       (write-long (length _viseme_id) s) (princ _viseme_id s)
     ;; pal_interaction_msgs/TtsMark _marks
       (send _marks :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _event_type
     (setq _event_type (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _text_said
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text_said (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _next_word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _next_word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _viseme_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _viseme_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; pal_interaction_msgs/TtsMark _marks
     (send _marks :deserialize buf ptr-) (incf ptr- (send _marks :serialization-length))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::TtsFeedback :md5sum-) "05870cd8b62fcb00e76ae3889c0ed8f1")
(setf (get pal_interaction_msgs::TtsFeedback :datatype-) "pal_interaction_msgs/TtsFeedback")
(setf (get pal_interaction_msgs::TtsFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
## feedback

# Everytime one of the following events occuring
# during the synthesis process a feedback message
# will be published.
# Only TTS_EVENT_STARTED_PLAYING_WORD and 
# TTS_EVENT_MARK are implemented now.

uint16 TTS_EVENT_INITIALIZATION = 1
uint16 TTS_EVENT_SHUTDOWN = 2
uint16 TTS_EVENT_SYNCHRONIZATION = 4
uint16 TTS_EVENT_FINISHED_PLAYING_UTTERANCE = 8
uint16 TTS_EVENT_MARK = 16
uint16 TTS_EVENT_STARTED_PLAYING_WORD = 32
uint16 TTS_EVENT_FINISHED_PLAYING_PHRASE = 64
uint16 TTS_EVENT_FINISHED_PLAYING_SENTENCE = 128
uint16 TTS_EVENT_VISEME = 256

# Store the event type and can be used
# to filter messages depending on the type of 
# events we are interested in

uint16 event_type

# Time since the begining of the synthesis
# at which the event occured.

time timestamp

# Text said until now, 
# it will contain the current word in case of WORD events

string text_said

# Next word to be pronounced
# (not implemented)
string next_word

string viseme_id

# Everytime a mark like this one
# <mark name=\"markname\"/> is present in the text
# a MARK event will be generated with the 'name' 
# argument value as mark id. Other fields
# different from the mark_id are not implemented.

TtsMark marks


================================================================================
MSG: pal_interaction_msgs/TtsMark
# id will contain the value of name argument in the <mark/>
# tags when they are placed in synthesised text.
# Filling keys and value is not implemented yet.
string id
string[] keys
string[] value
")



(provide :pal_interaction_msgs/TtsFeedback "05870cd8b62fcb00e76ae3889c0ed8f1")


