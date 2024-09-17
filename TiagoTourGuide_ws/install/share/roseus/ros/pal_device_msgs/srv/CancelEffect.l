;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::CancelEffect)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'CancelEffect (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::CANCELEFFECT")
  (make-package "PAL_DEVICE_MSGS::CANCELEFFECT"))
(unless (find-package "PAL_DEVICE_MSGS::CANCELEFFECTREQUEST")
  (make-package "PAL_DEVICE_MSGS::CANCELEFFECTREQUEST"))
(unless (find-package "PAL_DEVICE_MSGS::CANCELEFFECTRESPONSE")
  (make-package "PAL_DEVICE_MSGS::CANCELEFFECTRESPONSE"))

(in-package "ROS")





(defclass pal_device_msgs::CancelEffectRequest
  :super ros::object
  :slots (_effectId ))

(defmethod pal_device_msgs::CancelEffectRequest
  (:init
   (&key
    ((:effectId __effectId) 0)
    )
   (send-super :init)
   (setq _effectId (round __effectId))
   self)
  (:effectId
   (&optional __effectId)
   (if __effectId (setq _effectId __effectId)) _effectId)
  (:serialization-length
   ()
   (+
    ;; uint32 _effectId
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _effectId
       (write-long _effectId s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _effectId
     (setq _effectId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pal_device_msgs::CancelEffectResponse
  :super ros::object
  :slots ())

(defmethod pal_device_msgs::CancelEffectResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pal_device_msgs::CancelEffect
  :super ros::object
  :slots ())

(setf (get pal_device_msgs::CancelEffect :md5sum-) "f6602e24c29b84632fa113b15b20645d")
(setf (get pal_device_msgs::CancelEffect :datatype-) "pal_device_msgs/CancelEffect")
(setf (get pal_device_msgs::CancelEffect :request) pal_device_msgs::CancelEffectRequest)
(setf (get pal_device_msgs::CancelEffect :response) pal_device_msgs::CancelEffectResponse)

(defmethod pal_device_msgs::CancelEffectRequest
  (:response () (instance pal_device_msgs::CancelEffectResponse :init)))

(setf (get pal_device_msgs::CancelEffectRequest :md5sum-) "f6602e24c29b84632fa113b15b20645d")
(setf (get pal_device_msgs::CancelEffectRequest :datatype-) "pal_device_msgs/CancelEffectRequest")
(setf (get pal_device_msgs::CancelEffectRequest :definition-)
      "#Id of the effect, used to cancel an effect
uint32 effectId
---
# True if effect was canceled, false if effectId doesn't exist or has already been canceled

")

(setf (get pal_device_msgs::CancelEffectResponse :md5sum-) "f6602e24c29b84632fa113b15b20645d")
(setf (get pal_device_msgs::CancelEffectResponse :datatype-) "pal_device_msgs/CancelEffectResponse")
(setf (get pal_device_msgs::CancelEffectResponse :definition-)
      "#Id of the effect, used to cancel an effect
uint32 effectId
---
# True if effect was canceled, false if effectId doesn't exist or has already been canceled

")



(provide :pal_device_msgs/CancelEffect "f6602e24c29b84632fa113b15b20645d")


