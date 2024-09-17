;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedPreProgrammedParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedPreProgrammedParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDPREPROGRAMMEDPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDPREPROGRAMMEDPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedPreProgrammedParams.msg.html


(defclass pal_device_msgs::LedPreProgrammedParams
  :super ros::object
  :slots (_preprogrammed_id ))

(defmethod pal_device_msgs::LedPreProgrammedParams
  (:init
   (&key
    ((:preprogrammed_id __preprogrammed_id) 0)
    )
   (send-super :init)
   (setq _preprogrammed_id (round __preprogrammed_id))
   self)
  (:preprogrammed_id
   (&optional __preprogrammed_id)
   (if __preprogrammed_id (setq _preprogrammed_id __preprogrammed_id)) _preprogrammed_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _preprogrammed_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _preprogrammed_id
       (write-byte _preprogrammed_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _preprogrammed_id
     (setq _preprogrammed_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_device_msgs::LedPreProgrammedParams :md5sum-) "269ccb5728503bb2fd4261e5b289d3c1")
(setf (get pal_device_msgs::LedPreProgrammedParams :datatype-) "pal_device_msgs/LedPreProgrammedParams")
(setf (get pal_device_msgs::LedPreProgrammedParams :definition-)
      "#Id of pre-programmed effect, most likely device specific
uint8 preprogrammed_id

")



(provide :pal_device_msgs/LedPreProgrammedParams "269ccb5728503bb2fd4261e5b289d3c1")


