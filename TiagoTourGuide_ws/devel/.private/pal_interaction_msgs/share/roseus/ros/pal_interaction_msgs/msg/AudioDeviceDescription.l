;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::AudioDeviceDescription)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'AudioDeviceDescription (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::AUDIODEVICEDESCRIPTION")
  (make-package "PAL_INTERACTION_MSGS::AUDIODEVICEDESCRIPTION"))

(in-package "ROS")
;;//! \htmlinclude AudioDeviceDescription.msg.html


(intern "*SIGNED*" (find-package "PAL_INTERACTION_MSGS::AUDIODEVICEDESCRIPTION"))
(shadow '*SIGNED* (find-package "PAL_INTERACTION_MSGS::AUDIODEVICEDESCRIPTION"))
(defconstant pal_interaction_msgs::AudioDeviceDescription::*SIGNED* 0)
(intern "*UNSIGNED*" (find-package "PAL_INTERACTION_MSGS::AUDIODEVICEDESCRIPTION"))
(shadow '*UNSIGNED* (find-package "PAL_INTERACTION_MSGS::AUDIODEVICEDESCRIPTION"))
(defconstant pal_interaction_msgs::AudioDeviceDescription::*UNSIGNED* 1)

(defun pal_interaction_msgs::AudioDeviceDescription-to-symbol (const)
  (cond
        ((= const 0) 'pal_interaction_msgs::AudioDeviceDescription::*SIGNED*)
        ((= const 1) 'pal_interaction_msgs::AudioDeviceDescription::*UNSIGNED*)
        (t nil)))

(defclass pal_interaction_msgs::AudioDeviceDescription
  :super ros::object
  :slots (_device_name _sample_rate _sample_size _format _buffer_size _number_of_channels ))

(defmethod pal_interaction_msgs::AudioDeviceDescription
  (:init
   (&key
    ((:device_name __device_name) "")
    ((:sample_rate __sample_rate) 0)
    ((:sample_size __sample_size) 0)
    ((:format __format) 0)
    ((:buffer_size __buffer_size) 0)
    ((:number_of_channels __number_of_channels) 0)
    )
   (send-super :init)
   (setq _device_name (string __device_name))
   (setq _sample_rate (round __sample_rate))
   (setq _sample_size (round __sample_size))
   (setq _format (round __format))
   (setq _buffer_size (round __buffer_size))
   (setq _number_of_channels (round __number_of_channels))
   self)
  (:device_name
   (&optional __device_name)
   (if __device_name (setq _device_name __device_name)) _device_name)
  (:sample_rate
   (&optional __sample_rate)
   (if __sample_rate (setq _sample_rate __sample_rate)) _sample_rate)
  (:sample_size
   (&optional __sample_size)
   (if __sample_size (setq _sample_size __sample_size)) _sample_size)
  (:format
   (&optional __format)
   (if __format (setq _format __format)) _format)
  (:buffer_size
   (&optional __buffer_size)
   (if __buffer_size (setq _buffer_size __buffer_size)) _buffer_size)
  (:number_of_channels
   (&optional __number_of_channels)
   (if __number_of_channels (setq _number_of_channels __number_of_channels)) _number_of_channels)
  (:serialization-length
   ()
   (+
    ;; string _device_name
    4 (length _device_name)
    ;; uint32 _sample_rate
    4
    ;; int8 _sample_size
    1
    ;; int8 _format
    1
    ;; uint16 _buffer_size
    2
    ;; int8 _number_of_channels
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _device_name
       (write-long (length _device_name) s) (princ _device_name s)
     ;; uint32 _sample_rate
       (write-long _sample_rate s)
     ;; int8 _sample_size
       (write-byte _sample_size s)
     ;; int8 _format
       (write-byte _format s)
     ;; uint16 _buffer_size
       (write-word _buffer_size s)
     ;; int8 _number_of_channels
       (write-byte _number_of_channels s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _device_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _device_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _sample_rate
     (setq _sample_rate (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int8 _sample_size
     (setq _sample_size (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sample_size 127) (setq _sample_size (- _sample_size 256)))
   ;; int8 _format
     (setq _format (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _format 127) (setq _format (- _format 256)))
   ;; uint16 _buffer_size
     (setq _buffer_size (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8 _number_of_channels
     (setq _number_of_channels (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _number_of_channels 127) (setq _number_of_channels (- _number_of_channels 256)))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::AudioDeviceDescription :md5sum-) "e55171ed98aeb49e34453bc5efb47184")
(setf (get pal_interaction_msgs::AudioDeviceDescription :datatype-) "pal_interaction_msgs/AudioDeviceDescription")
(setf (get pal_interaction_msgs::AudioDeviceDescription :definition-)
      "# Description of an audio device.

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



(provide :pal_interaction_msgs/AudioDeviceDescription "e55171ed98aeb49e34453bc5efb47184")


