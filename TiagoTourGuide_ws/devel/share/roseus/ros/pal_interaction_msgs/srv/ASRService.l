;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASRService)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASRService (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRSERVICE")
  (make-package "PAL_INTERACTION_MSGS::ASRSERVICE"))
(unless (find-package "PAL_INTERACTION_MSGS::ASRSERVICEREQUEST")
  (make-package "PAL_INTERACTION_MSGS::ASRSERVICEREQUEST"))
(unless (find-package "PAL_INTERACTION_MSGS::ASRSERVICERESPONSE")
  (make-package "PAL_INTERACTION_MSGS::ASRSERVICERESPONSE"))

(in-package "ROS")





(defclass pal_interaction_msgs::ASRServiceRequest
  :super ros::object
  :slots (_request ))

(defmethod pal_interaction_msgs::ASRServiceRequest
  (:init
   (&key
    ((:request __request) (instance pal_interaction_msgs::ASRSrvRequest :init))
    )
   (send-super :init)
   (setq _request __request)
   self)
  (:request
   (&rest __request)
   (if (keywordp (car __request))
       (send* _request __request)
     (progn
       (if __request (setq _request (car __request)))
       _request)))
  (:serialization-length
   ()
   (+
    ;; pal_interaction_msgs/ASRSrvRequest _request
    (send _request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_interaction_msgs/ASRSrvRequest _request
       (send _request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_interaction_msgs/ASRSrvRequest _request
     (send _request :deserialize buf ptr-) (incf ptr- (send _request :serialization-length))
   ;;
   self)
  )

(defclass pal_interaction_msgs::ASRServiceResponse
  :super ros::object
  :slots (_response ))

(defmethod pal_interaction_msgs::ASRServiceResponse
  (:init
   (&key
    ((:response __response) (instance pal_interaction_msgs::ASRSrvResponse :init))
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&rest __response)
   (if (keywordp (car __response))
       (send* _response __response)
     (progn
       (if __response (setq _response (car __response)))
       _response)))
  (:serialization-length
   ()
   (+
    ;; pal_interaction_msgs/ASRSrvResponse _response
    (send _response :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_interaction_msgs/ASRSrvResponse _response
       (send _response :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_interaction_msgs/ASRSrvResponse _response
     (send _response :deserialize buf ptr-) (incf ptr- (send _response :serialization-length))
   ;;
   self)
  )

(defclass pal_interaction_msgs::ASRService
  :super ros::object
  :slots ())

(setf (get pal_interaction_msgs::ASRService :md5sum-) "f43b49712181a29a41dc6f7687806c53")
(setf (get pal_interaction_msgs::ASRService :datatype-) "pal_interaction_msgs/ASRService")
(setf (get pal_interaction_msgs::ASRService :request) pal_interaction_msgs::ASRServiceRequest)
(setf (get pal_interaction_msgs::ASRService :response) pal_interaction_msgs::ASRServiceResponse)

(defmethod pal_interaction_msgs::ASRServiceRequest
  (:response () (instance pal_interaction_msgs::ASRServiceResponse :init)))

(setf (get pal_interaction_msgs::ASRServiceRequest :md5sum-) "f43b49712181a29a41dc6f7687806c53")
(setf (get pal_interaction_msgs::ASRServiceRequest :datatype-) "pal_interaction_msgs/ASRServiceRequest")
(setf (get pal_interaction_msgs::ASRServiceRequest :definition-)
      "pal_interaction_msgs/ASRSrvRequest request

================================================================================
MSG: pal_interaction_msgs/ASRSrvRequest
# Request messages for the recognizer service.
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
---
pal_interaction_msgs/ASRSrvResponse response


================================================================================
MSG: pal_interaction_msgs/ASRSrvResponse
# The status of the ASR with additional error or warning information
ASRStatus status
string error_msg
string warn_msg

================================================================================
MSG: pal_interaction_msgs/ASRStatus
# The status of the ASR
# if it is active then active=true
bool active

# the current language 
string language

# the current enabled grammar
string enabled_grammar

# the current acoustic models
string acoustic_env

# A description of the audio device the 
# recognizer is taking audio from.
AudioDeviceDescription device

================================================================================
MSG: pal_interaction_msgs/AudioDeviceDescription
# Description of an audio device.

int8 SIGNED = 0
int8 UNSIGNED = 1


# name of the device (usually a portaudio name)
string device_name

# sample rate of the acquired audio signal
uint32 sample_rate

# sample size in bits
int8 sample_size

# format can be SIGNED or UNSIGNED
int8 format

# buffer size used to acquire data.
uint16 buffer_size

# number of recorded channels
")

(setf (get pal_interaction_msgs::ASRServiceResponse :md5sum-) "f43b49712181a29a41dc6f7687806c53")
(setf (get pal_interaction_msgs::ASRServiceResponse :datatype-) "pal_interaction_msgs/ASRServiceResponse")
(setf (get pal_interaction_msgs::ASRServiceResponse :definition-)
      "pal_interaction_msgs/ASRSrvRequest request

================================================================================
MSG: pal_interaction_msgs/ASRSrvRequest
# Request messages for the recognizer service.
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
---
pal_interaction_msgs/ASRSrvResponse response


================================================================================
MSG: pal_interaction_msgs/ASRSrvResponse
# The status of the ASR with additional error or warning information
ASRStatus status
string error_msg
string warn_msg

================================================================================
MSG: pal_interaction_msgs/ASRStatus
# The status of the ASR
# if it is active then active=true
bool active

# the current language 
string language

# the current enabled grammar
string enabled_grammar

# the current acoustic models
string acoustic_env

# A description of the audio device the 
# recognizer is taking audio from.
AudioDeviceDescription device

================================================================================
MSG: pal_interaction_msgs/AudioDeviceDescription
# Description of an audio device.

int8 SIGNED = 0
int8 UNSIGNED = 1


# name of the device (usually a portaudio name)
string device_name

# sample rate of the acquired audio signal
uint32 sample_rate

# sample size in bits
int8 sample_size

# format can be SIGNED or UNSIGNED
int8 format

# buffer size used to acquire data.
uint16 buffer_size

# number of recorded channels
")



(provide :pal_interaction_msgs/ASRService "f43b49712181a29a41dc6f7687806c53")


