;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::audiosignal)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'audiosignal (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::AUDIOSIGNAL")
  (make-package "PAL_INTERACTION_MSGS::AUDIOSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude audiosignal.msg.html


(defclass pal_interaction_msgs::audiosignal
  :super ros::object
  :slots (_channel0 _channel1 ))

(defmethod pal_interaction_msgs::audiosignal
  (:init
   (&key
    ((:channel0 __channel0) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:channel1 __channel1) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _channel0 __channel0)
   (setq _channel1 __channel1)
   self)
  (:channel0
   (&optional __channel0)
   (if __channel0 (setq _channel0 __channel0)) _channel0)
  (:channel1
   (&optional __channel1)
   (if __channel1 (setq _channel1 __channel1)) _channel1)
  (:serialization-length
   ()
   (+
    ;; float64[] _channel0
    (* 8    (length _channel0)) 4
    ;; float64[] _channel1
    (* 8    (length _channel1)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _channel0
     (write-long (length _channel0) s)
     (dotimes (i (length _channel0))
       (sys::poke (elt _channel0 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _channel1
     (write-long (length _channel1) s)
     (dotimes (i (length _channel1))
       (sys::poke (elt _channel1 i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _channel0
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel0 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channel0 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _channel1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel1 (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channel1 i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::audiosignal :md5sum-) "9406f94b261ed2ebad808e7af5b61907")
(setf (get pal_interaction_msgs::audiosignal :datatype-) "pal_interaction_msgs/audiosignal")
(setf (get pal_interaction_msgs::audiosignal :definition-)
      "float64[] channel0
float64[] channel1

")



(provide :pal_interaction_msgs/audiosignal "9406f94b261ed2ebad808e7af5b61907")


