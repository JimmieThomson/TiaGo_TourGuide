;; Auto-generated. Do not edit!


(when (boundp 'pal_device_msgs::LedEffectViaTopicParams)
  (if (not (find-package "PAL_DEVICE_MSGS"))
    (make-package "PAL_DEVICE_MSGS"))
  (shadow 'LedEffectViaTopicParams (find-package "PAL_DEVICE_MSGS")))
(unless (find-package "PAL_DEVICE_MSGS::LEDEFFECTVIATOPICPARAMS")
  (make-package "PAL_DEVICE_MSGS::LEDEFFECTVIATOPICPARAMS"))

(in-package "ROS")
;;//! \htmlinclude LedEffectViaTopicParams.msg.html


(defclass pal_device_msgs::LedEffectViaTopicParams
  :super ros::object
  :slots (_topic_name ))

(defmethod pal_device_msgs::LedEffectViaTopicParams
  (:init
   (&key
    ((:topic_name __topic_name) "")
    )
   (send-super :init)
   (setq _topic_name (string __topic_name))
   self)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:serialization-length
   ()
   (+
    ;; string _topic_name
    4 (length _topic_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_device_msgs::LedEffectViaTopicParams :md5sum-) "b38cc2f19f45368c2db7867751ce95a9")
(setf (get pal_device_msgs::LedEffectViaTopicParams :datatype-) "pal_device_msgs/LedEffectViaTopicParams")
(setf (get pal_device_msgs::LedEffectViaTopicParams :definition-)
      "#Topic name, must be of type pal_device_msgs/LedDataArray
string topic_name

")



(provide :pal_device_msgs/LedEffectViaTopicParams "b38cc2f19f45368c2db7867751ce95a9")


