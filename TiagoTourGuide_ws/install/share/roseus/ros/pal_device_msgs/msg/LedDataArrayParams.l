;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedDataArrayParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedDataArrayParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDDATAARRAYPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDDATAARRAYPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedDataArrayParams.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_device_msgs::LedDataArrayParams
  :super ros::object
  :slots (_data ))

(defmethod pal_device_msgs::LedDataArrayParams
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/ColorRGBA[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/ColorRGBA[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/ColorRGBA[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_device_msgs::LedDataArrayParams :md5sum-) "61714ccdbab6d68e5c7a3305a077f115")
(setf (get pal_device_msgs::LedDataArrayParams :datatype-) "pal_device_msgs/LedDataArrayParams")
(setf (get pal_device_msgs::LedDataArrayParams :definition-)
      "#Data of the effect, each element in the array represents a led, 
#length should match device led count
#For devices with no RGB option, just the alpha channel will be used
std_msgs/ColorRGBA[] data

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_device_msgs/LedDataArrayParams "61714ccdbab6d68e5c7a3305a077f115")


