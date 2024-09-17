;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::ASRStatus)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'ASRStatus (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ASRSTATUS")
  (make-package "PAL_INTERACTION_MSGS::ASRSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ASRStatus.msg.html


(defclass pal_interaction_msgs::ASRStatus
  :super ros::object
  :slots (_active _language _enabled_grammar _acoustic_env _device ))

(defmethod pal_interaction_msgs::ASRStatus
  (:init
   (&key
    ((:active __active) nil)
    ((:language __language) "")
    ((:enabled_grammar __enabled_grammar) "")
    ((:acoustic_env __acoustic_env) "")
    ((:device __device) (instance pal_interaction_msgs::AudioDeviceDescription :init))
    )
   (send-super :init)
   (setq _active __active)
   (setq _language (string __language))
   (setq _enabled_grammar (string __enabled_grammar))
   (setq _acoustic_env (string __acoustic_env))
   (setq _device __device)
   self)
  (:active
   (&optional (__active :null))
   (if (not (eq __active :null)) (setq _active __active)) _active)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:enabled_grammar
   (&optional __enabled_grammar)
   (if __enabled_grammar (setq _enabled_grammar __enabled_grammar)) _enabled_grammar)
  (:acoustic_env
   (&optional __acoustic_env)
   (if __acoustic_env (setq _acoustic_env __acoustic_env)) _acoustic_env)
  (:device
   (&rest __device)
   (if (keywordp (car __device))
       (send* _device __device)
     (progn
       (if __device (setq _device (car __device)))
       _device)))
  (:serialization-length
   ()
   (+
    ;; bool _active
    1
    ;; string _language
    4 (length _language)
    ;; string _enabled_grammar
    4 (length _enabled_grammar)
    ;; string _acoustic_env
    4 (length _acoustic_env)
    ;; pal_interaction_msgs/AudioDeviceDescription _device
    (send _device :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; string _language
       (write-long (length _language) s) (princ _language s)
     ;; string _enabled_grammar
       (write-long (length _enabled_grammar) s) (princ _enabled_grammar s)
     ;; string _acoustic_env
       (write-long (length _acoustic_env) s) (princ _acoustic_env s)
     ;; pal_interaction_msgs/AudioDeviceDescription _device
       (send _device :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _enabled_grammar
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _enabled_grammar (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _acoustic_env
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _acoustic_env (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; pal_interaction_msgs/AudioDeviceDescription _device
     (send _device :deserialize buf ptr-) (incf ptr- (send _device :serialization-length))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::ASRStatus :md5sum-) "b05e32d6465a052804ec3f6d853dbe61")
(setf (get pal_interaction_msgs::ASRStatus :datatype-) "pal_interaction_msgs/ASRStatus")
(setf (get pal_interaction_msgs::ASRStatus :definition-)
      "# The status of the ASR
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



(provide :pal_interaction_msgs/ASRStatus "b05e32d6465a052804ec3f6d853dbe61")


