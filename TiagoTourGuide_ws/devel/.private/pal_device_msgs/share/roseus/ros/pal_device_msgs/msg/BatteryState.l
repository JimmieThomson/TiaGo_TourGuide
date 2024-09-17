;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::BatteryState)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'BatteryState (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::BATTERYSTATE")
  (make-package "PAL_DEVICE_MSGS::BATTERYSTATE"))

(in-package "ROS")
;;//! \htmlinclude BatteryState.msg.html


(intern "*FULL*" (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(shadow '*FULL* (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(defconstant pal_device_msgs::BatteryState::*FULL* 5)
(intern "*HIGH*" (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(shadow '*HIGH* (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(defconstant pal_device_msgs::BatteryState::*HIGH* 4)
(intern "*MEDIUM*" (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(shadow '*MEDIUM* (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(defconstant pal_device_msgs::BatteryState::*MEDIUM* 3)
(intern "*LOW*" (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(shadow '*LOW* (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(defconstant pal_device_msgs::BatteryState::*LOW* 2)
(intern "*CRITICAL_LOW*" (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(shadow '*CRITICAL_LOW* (find-package "PAL_DEVICE_MSGS::BATTERYSTATE"))
(defconstant pal_device_msgs::BatteryState::*CRITICAL_LOW* 1)

(defun pal_device_msgs::BatteryState-to-symbol (const)
  (cond
        ((= const 5) 'pal_device_msgs::BatteryState::*FULL*)
        ((= const 4) 'pal_device_msgs::BatteryState::*HIGH*)
        ((= const 3) 'pal_device_msgs::BatteryState::*MEDIUM*)
        ((= const 2) 'pal_device_msgs::BatteryState::*LOW*)
        ((= const 1) 'pal_device_msgs::BatteryState::*CRITICAL_LOW*)
        (t nil)))

(defclass pal_device_msgs::BatteryState
  :super ros::object
  :slots (_chargeState _batteryPercentage ))

(defmethod pal_device_msgs::BatteryState
  (:init
   (&key
    ((:chargeState __chargeState) 0)
    ((:batteryPercentage __batteryPercentage) 0.0)
    )
   (send-super :init)
   (setq _chargeState (round __chargeState))
   (setq _batteryPercentage (float __batteryPercentage))
   self)
  (:chargeState
   (&optional __chargeState)
   (if __chargeState (setq _chargeState __chargeState)) _chargeState)
  (:batteryPercentage
   (&optional __batteryPercentage)
   (if __batteryPercentage (setq _batteryPercentage __batteryPercentage)) _batteryPercentage)
  (:serialization-length
   ()
   (+
    ;; int8 _chargeState
    1
    ;; float32 _batteryPercentage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _chargeState
       (write-byte _chargeState s)
     ;; float32 _batteryPercentage
       (sys::poke _batteryPercentage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _chargeState
     (setq _chargeState (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _chargeState 127) (setq _chargeState (- _chargeState 256)))
   ;; float32 _batteryPercentage
     (setq _batteryPercentage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_device_msgs::BatteryState :md5sum-) "ffbf73d789e375a8bace732de9096d5f")
(setf (get pal_device_msgs::BatteryState :datatype-) "pal_device_msgs/BatteryState")
(setf (get pal_device_msgs::BatteryState :definition-)
      "byte FULL = 5
byte HIGH = 4
byte MEDIUM = 3
byte LOW = 2
byte CRITICAL_LOW = 1

#In the future we can use http://www.ros.org/doc/api/pr2_msgs/html/msg/PowerState.html

int8 chargeState
float32 batteryPercentage


")



(provide :pal_device_msgs/BatteryState "ffbf73d789e375a8bace732de9096d5f")


