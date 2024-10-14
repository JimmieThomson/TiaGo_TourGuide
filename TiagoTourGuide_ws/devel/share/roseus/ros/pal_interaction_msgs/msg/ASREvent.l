;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASREvent)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASREvent (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASREVENT")
  (make-package "PAL_INTERACTION_MSGS::ASREVENT"))

(in-package "ROS")
;;//! \htmlinclude ASREvent.msg.html


(intern "*EVENT_UNDEFINED*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*EVENT_UNDEFINED* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*EVENT_UNDEFINED* -1)
(intern "*EVENT_LISTEN_STATE*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*EVENT_LISTEN_STATE* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*EVENT_LISTEN_STATE* 1)
(intern "*EVENT_RECOGNIZED_UTT*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*EVENT_RECOGNIZED_UTT* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*EVENT_RECOGNIZED_UTT* 2)
(intern "*EVENT_ASR_ACTIVATION*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*EVENT_ASR_ACTIVATION* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*EVENT_ASR_ACTIVATION* 3)
(intern "*EVENT_FAILED_DECODING*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*EVENT_FAILED_DECODING* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*EVENT_FAILED_DECODING* 4)
(intern "*LISTEN_UNDEFINED*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*LISTEN_UNDEFINED* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*LISTEN_UNDEFINED* 20)
(intern "*LISTEN_CALIBRATION*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*LISTEN_CALIBRATION* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*LISTEN_CALIBRATION* 21)
(intern "*LISTEN_WAITING_FOR_SPEECH*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*LISTEN_WAITING_FOR_SPEECH* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*LISTEN_WAITING_FOR_SPEECH* 22)
(intern "*LISTEN_SPEECH_DETECTED*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*LISTEN_SPEECH_DETECTED* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*LISTEN_SPEECH_DETECTED* 23)
(intern "*LISTEN_END_OF_SPEECH*" (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(shadow '*LISTEN_END_OF_SPEECH* (find-package "PAL_INTERACTION_MSGS::ASREVENT"))
(defconstant pal_interaction_msgs::ASREvent::*LISTEN_END_OF_SPEECH* 24)

(defun pal_interaction_msgs::ASREvent-to-symbol (const)
  (cond
        ((= const -1) 'pal_interaction_msgs::ASREvent::*EVENT_UNDEFINED*)
        ((= const 1) 'pal_interaction_msgs::ASREvent::*EVENT_LISTEN_STATE*)
        ((= const 2) 'pal_interaction_msgs::ASREvent::*EVENT_RECOGNIZED_UTT*)
        ((= const 3) 'pal_interaction_msgs::ASREvent::*EVENT_ASR_ACTIVATION*)
        ((= const 4) 'pal_interaction_msgs::ASREvent::*EVENT_FAILED_DECODING*)
        ((= const 20) 'pal_interaction_msgs::ASREvent::*LISTEN_UNDEFINED*)
        ((= const 21) 'pal_interaction_msgs::ASREvent::*LISTEN_CALIBRATION*)
        ((= const 22) 'pal_interaction_msgs::ASREvent::*LISTEN_WAITING_FOR_SPEECH*)
        ((= const 23) 'pal_interaction_msgs::ASREvent::*LISTEN_SPEECH_DETECTED*)
        ((= const 24) 'pal_interaction_msgs::ASREvent::*LISTEN_END_OF_SPEECH*)
        (t nil)))

(defclass pal_interaction_msgs::ASREvent
  :super ros::object
  :slots (_event_id _listen_state _recognized_utterance _active ))

(defmethod pal_interaction_msgs::ASREvent
  (:init
   (&key
    ((:event_id __event_id) 0)
    ((:listen_state __listen_state) 0)
    ((:recognized_utterance __recognized_utterance) (instance pal_interaction_msgs::asrresult :init))
    ((:active __active) nil)
    )
   (send-super :init)
   (setq _event_id (round __event_id))
   (setq _listen_state (round __listen_state))
   (setq _recognized_utterance __recognized_utterance)
   (setq _active __active)
   self)
  (:event_id
   (&optional __event_id)
   (if __event_id (setq _event_id __event_id)) _event_id)
  (:listen_state
   (&optional __listen_state)
   (if __listen_state (setq _listen_state __listen_state)) _listen_state)
  (:recognized_utterance
   (&rest __recognized_utterance)
   (if (keywordp (car __recognized_utterance))
       (send* _recognized_utterance __recognized_utterance)
     (progn
       (if __recognized_utterance (setq _recognized_utterance (car __recognized_utterance)))
       _recognized_utterance)))
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:serialization-length
   ()
   (+
    ;; int8 _event_id
    1
    ;; int8 _listen_state
    1
    ;; pal_interaction_msgs/asrresult _recognized_utterance
    (send _recognized_utterance :serialization-length)
    ;; bool _active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _event_id
       (write-byte _event_id s)
     ;; int8 _listen_state
       (write-byte _listen_state s)
     ;; pal_interaction_msgs/asrresult _recognized_utterance
       (send _recognized_utterance :serialize s)
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _event_id
     (setq _event_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _event_id 127) (setq _event_id (- _event_id 256)))
   ;; int8 _listen_state
     (setq _listen_state (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _listen_state 127) (setq _listen_state (- _listen_state 256)))
   ;; pal_interaction_msgs/asrresult _recognized_utterance
     (send _recognized_utterance :deserialize buf ptr-) (incf ptr- (send _recognized_utterance :serialization-length))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_interaction_msgs::ASREvent :md5sum-) "e26dacd12290ffb6af0944d5b6ae9ffd")
(setf (get pal_interaction_msgs::ASREvent :datatype-) "pal_interaction_msgs/ASREvent")
(setf (get pal_interaction_msgs::ASREvent :definition-)
      "# ASR result messages used by RosRecognizerServer
# This message are published in the ASR event topic.
# The kind of events that are published are the following ones:
## Event types to be published.
int8 EVENT_UNDEFINED          = -1
int8 EVENT_LISTEN_STATE       = 1
int8 EVENT_RECOGNIZED_UTT     = 2
int8 EVENT_ASR_ACTIVATION     = 3
int8 EVENT_FAILED_DECODING    = 4

# 1-> The ASR changed its listening state.
# 2-> The ASR recognized a full uterance and published the result
# 3-> The ASR has been activated/deactivated
# 4-> The ASR tried to regcognise an utterance unsuccesfuly

# These are the possible listening states published when event_id = LISTENING_STATE

## Listen states
int8 LISTEN_UNDEFINED = 20
int8 LISTEN_CALIBRATION = 21
int8 LISTEN_WAITING_FOR_SPEECH = 22
int8 LISTEN_SPEECH_DETECTED = 23
int8 LISTEN_END_OF_SPEECH = 24

# 21-> Audio calibration is taking place
# 22-> Some speech has been detected.
# 23-> The ASR is waiting for someone to start speaking.
# 24-> The end of an utterance has been found, and will start decoding it.

##  Message variables

# The event type published.
int8 event_id

# The listening state of the ASR
int8 listen_state

# The recognized result in case of event_id = EVENT_RECOGNIZED_UTT
# Also it contains a best-guess in case of event_id = EVENT_FAILED_DECODING
asrresult recognized_utterance


# The current state of the recognizer (activated/deactivated)
bool active

================================================================================
MSG: pal_interaction_msgs/asrresult
## Message that containes the recognized utterance.
## Confidence values
int8 CONFIDENCE_UNDEFINED = -1
int8 CONFIDENCE_POOR = 1
int8 CONFIDENCE_LOW  = 2
int8 CONFIDENCE_GOOD = 3
int8 CONFIDENCE_MAX  = 4

# ASR result messages used by RosRecognizerServer

# text recognized
string text

# confidence with values from POOR to MAX
int8 confidence

# start and end of the recognizer uterance.
time start
time end

# list of recognized tags
# key value pairs of strings extracted from the text
# given the action tags placed in the grammar.
actiontag[] tags

================================================================================
MSG: pal_interaction_msgs/actiontag
# Action tag contaings the key/value information genertated by parsing the recognised text with a JSGF grammar 

string key
string value
")



(provide :pal_interaction_msgs/ASREvent "e26dacd12290ffb6af0944d5b6ae9ffd")


