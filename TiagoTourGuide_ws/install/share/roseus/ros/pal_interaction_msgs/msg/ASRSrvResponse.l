;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASRSrvResponse)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASRSrvResponse (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRSRVRESPONSE")
  (make-package "PAL_INTERACTION_MSGS::ASRSRVRESPONSE"))

(in-package "ROS")
;;//! \htmlinclude ASRSrvResponse.msg.html


(defclass pal_interaction_msgs::ASRSrvResponse
  :super ros::object
  :slots (_status _error_msg _warn_msg ))

(defmethod pal_interaction_msgs::ASRSrvResponse
  (:init
   (&key
    ((:status __status) (instance pal_interaction_msgs::ASRStatus :init))
    ((:error_msg __error_msg) "")
    ((:warn_msg __warn_msg) "")
    )
   (send-super :init)
   (setq _status __status)
   (setq _error_msg (string __error_msg))
   (setq _warn_msg (string __warn_msg))
   self)
  (:status
   (&rest __status)
   (if (keywordp (car __status))
       (send* _status __status)
     (progn
       (if __status (setq _status (car __status)))
       _status)))
  (:error_msg
   (&optional __error_msg)
   (if __error_msg (setq _error_msg __error_msg)) _error_msg)
  (:warn_msg
   (&optional __warn_msg)
   (if __warn_msg (setq _warn_msg __warn_msg)) _warn_msg)
  (:serialization-length
   ()
   (+
    ;; pal_interaction_msgs/ASRStatus _status
    (send _status :serialization-length)
    ;; string _error_msg
    4 (length _error_msg)
    ;; string _warn_msg
    4 (length _warn_msg)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_interaction_msgs/ASRStatus _status
       (send _status :serialize s)
     ;; string _error_msg
       (write-long (length _error_msg) s) (princ _error_msg s)
     ;; string _warn_msg
       (write-long (length _warn_msg) s) (princ _warn_msg s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_interaction_msgs/ASRStatus _status
     (send _status :deserialize buf ptr-) (incf ptr- (send _status :serialization-length))
   ;; string _error_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _error_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _warn_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _warn_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::ASRSrvResponse :md5sum-) "ae96a6a28fb96b873d0b448b3cf2c80c")
(setf (get pal_interaction_msgs::ASRSrvResponse :datatype-) "pal_interaction_msgs/ASRSrvResponse")
(setf (get pal_interaction_msgs::ASRSrvResponse :definition-)
      "# The status of the ASR with additional error or warning information
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
int8 number_of_channels
")



(provide :pal_interaction_msgs/ASRSrvResponse "ae96a6a28fb96b873d0b448b3cf2c80c")


