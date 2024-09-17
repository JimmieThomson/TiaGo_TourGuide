;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedGroup)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedGroup (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDGROUP")
  (make-package "PAL_DEVICE_MSGS::LEDGROUP"))

(in-package "ROS")
;;//! \htmlinclude LedGroup.msg.html


(intern "*LEFT_EAR*" (find-package "PAL_DEVICE_MSGS::LEDGROUP"))
(shadow '*LEFT_EAR* (find-package "PAL_DEVICE_MSGS::LEDGROUP"))
(defconstant pal_device_msgs::LedGroup::*LEFT_EAR* 1)
(intern "*RIGHT_EAR*" (find-package "PAL_DEVICE_MSGS::LEDGROUP"))
(shadow '*RIGHT_EAR* (find-package "PAL_DEVICE_MSGS::LEDGROUP"))
(defconstant pal_device_msgs::LedGroup::*RIGHT_EAR* 2)

(defun pal_device_msgs::LedGroup-to-symbol (const)
  (cond
        ((= const 1) 'pal_device_msgs::LedGroup::*LEFT_EAR*)
        ((= const 2) 'pal_device_msgs::LedGroup::*RIGHT_EAR*)
        (t nil)))

(defclass pal_device_msgs::LedGroup
  :super ros::object
  :slots (_ledMask ))

(defmethod pal_device_msgs::LedGroup
  (:init
   (&key
    ((:ledMask __ledMask) 0)
    )
   (send-super :init)
   (setq _ledMask (round __ledMask))
   self)
  (:ledMask
   (&optional __ledMask)
   (if __ledMask (setq _ledMask __ledMask)) _ledMask)
  (:serialization-length
   ()
   (+
    ;; uint32 _ledMask
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _ledMask
       (write-long _ledMask s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _ledMask
     (setq _ledMask (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_device_msgs::LedGroup :md5sum-) "a87b0156a2b27c0d0853663fb5884fe4")
(setf (get pal_device_msgs::LedGroup :datatype-) "pal_device_msgs/LedGroup")
(setf (get pal_device_msgs::LedGroup :definition-)
      "byte LEFT_EAR = 1
byte RIGHT_EAR = 2

#OR-mask of the selected leds
uint32 ledMask

")



(provide :pal_device_msgs/LedGroup "a87b0156a2b27c0d0853663fb5884fe4")


