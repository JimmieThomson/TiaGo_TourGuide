;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASRSrvRequest)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASRSrvRequest (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST")
  (make-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))

(in-package "ROS")
;;//! \htmlinclude ASRSrvRequest.msg.html


(intern "*ACTIVATION*" (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(shadow '*ACTIVATION* (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(defconstant pal_interaction_msgs::ASRSrvRequest::*ACTIVATION* 1)
(intern "*GRAMMAR*" (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(shadow '*GRAMMAR* (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(defconstant pal_interaction_msgs::ASRSrvRequest::*GRAMMAR* 2)
(intern "*LANGUAGE*" (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(shadow '*LANGUAGE* (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(defconstant pal_interaction_msgs::ASRSrvRequest::*LANGUAGE* 3)
(intern "*STATUS*" (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(shadow '*STATUS* (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(defconstant pal_interaction_msgs::ASRSrvRequest::*STATUS* 4)
(intern "*KWSPOTTING*" (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(shadow '*KWSPOTTING* (find-package "PAL_INTERACTION_MSGS::ASRSRVREQUEST"))
(defconstant pal_interaction_msgs::ASRSrvRequest::*KWSPOTTING* 5)

(defun pal_interaction_msgs::ASRSrvRequest-to-symbol (const)
  (cond
        ((= const 1) 'pal_interaction_msgs::ASRSrvRequest::*ACTIVATION*)
        ((= const 2) 'pal_interaction_msgs::ASRSrvRequest::*GRAMMAR*)
        ((= const 3) 'pal_interaction_msgs::ASRSrvRequest::*LANGUAGE*)
        ((= const 4) 'pal_interaction_msgs::ASRSrvRequest::*STATUS*)
        ((= const 5) 'pal_interaction_msgs::ASRSrvRequest::*KWSPOTTING*)
        (t nil)))

(defclass pal_interaction_msgs::ASRSrvRequest
  :super ros::object
  :slots (_requests _activation _model _lang ))

(defmethod pal_interaction_msgs::ASRSrvRequest
  (:init
   (&key
    ((:requests __requests) (make-array 0 :initial-element 0 :element-type :integer))
    ((:activation __activation) (instance pal_interaction_msgs::ASRActivation :init))
    ((:model __model) (instance pal_interaction_msgs::ASRLangModelMngmt :init))
    ((:lang __lang) (instance pal_interaction_msgs::ASRLanguage :init))
    )
   (send-super :init)
   (setq _requests __requests)
   (setq _activation __activation)
   (setq _model __model)
   (setq _lang __lang)
   self)
  (:requests
   (&optional __requests)
   (if __requests (setq _requests __requests)) _requests)
  (:activation
   (&rest __activation)
   (if (keywordp (car __activation))
       (send* _activation __activation)
     (progn
       (if __activation (setq _activation (car __activation)))
       _activation)))
  (:model
   (&rest __model)
   (if (keywordp (car __model))
       (send* _model __model)
     (progn
       (if __model (setq _model (car __model)))
       _model)))
  (:lang
   (&rest __lang)
   (if (keywordp (car __lang))
       (send* _lang __lang)
     (progn
       (if __lang (setq _lang (car __lang)))
       _lang)))
  (:serialization-length
   ()
   (+
    ;; int8[] _requests
    (* 1    (length _requests)) 4
    ;; pal_interaction_msgs/ASRActivation _activation
    (send _activation :serialization-length)
    ;; pal_interaction_msgs/ASRLangModelMngmt _model
    (send _model :serialization-length)
    ;; pal_interaction_msgs/ASRLanguage _lang
    (send _lang :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8[] _requests
     (write-long (length _requests) s)
     (dotimes (i (length _requests))
       (write-byte (elt _requests i) s)
       )
     ;; pal_interaction_msgs/ASRActivation _activation
       (send _activation :serialize s)
     ;; pal_interaction_msgs/ASRLangModelMngmt _model
       (send _model :serialize s)
     ;; pal_interaction_msgs/ASRLanguage _lang
       (send _lang :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8[] _requests
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _requests (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _requests i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _requests i) 127) (setf (elt _requests i) (- (elt _requests i) 256)))
     ))
   ;; pal_interaction_msgs/ASRActivation _activation
     (send _activation :deserialize buf ptr-) (incf ptr- (send _activation :serialization-length))
   ;; pal_interaction_msgs/ASRLangModelMngmt _model
     (send _model :deserialize buf ptr-) (incf ptr- (send _model :serialization-length))
   ;; pal_interaction_msgs/ASRLanguage _lang
     (send _lang :deserialize buf ptr-) (incf ptr- (send _lang :serialization-length))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::ASRSrvRequest :md5sum-) "18340721947db95a89c5d69f8dcbb2cc")
(setf (get pal_interaction_msgs::ASRSrvRequest :datatype-) "pal_interaction_msgs/ASRSrvRequest")
(setf (get pal_interaction_msgs::ASRSrvRequest :definition-)
      "# Request messages for the recognizer service.
# It is possible to request and activate task, 
# a grammar management task and language change or just
# request the current status.

# Type of request list
int8 ACTIVATION = 1
int8 GRAMMAR = 2
int8 LANGUAGE = 3
int8 STATUS = 4
int8 KWSPOTTING = 5

# Message variables
# list of requests types (several requests can be send in one single message)
int8[] requests

# Information related to each possible request
# except for status that does not need any additional info.
ASRActivation activation
ASRLangModelMngmt model
ASRLanguage lang

================================================================================
MSG: pal_interaction_msgs/ASRActivation
# Message that can be used to send activation commands to the speech recognizer.
# It is possible to activate/deactivate or pause/resume the recognizer with these commands.
# action list
int8 ACTIVATE = 1
int8 DEACTIVATE = 2
int8 PAUSE = 3
int8 RESUME = 4
int8 CALIBRATE = 5

# Message variables
int8 action


================================================================================
MSG: pal_interaction_msgs/ASRLangModelMngmt
# This message is to be used in the ASR service to manage the grammars
# makes possible to enable/disable, load/unload grammars.


# Types of action
int8 ENABLE = 1
int8 DISABLE = 2
int8 LOAD = 3
int8 UNLOAD = 4

# Message variables
# Type of action requested
int8 action

# Name of the grammar to actuate on.
string modelName

================================================================================
MSG: pal_interaction_msgs/ASRLanguage
# This message is to indicate the language
# that has to be set in the speech recognizer
string language

")



(provide :pal_interaction_msgs/ASRSrvRequest "18340721947db95a89c5d69f8dcbb2cc")


