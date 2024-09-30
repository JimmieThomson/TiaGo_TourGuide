;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::DirectionOfArrival)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'DirectionOfArrival (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::DIRECTIONOFARRIVAL")
  (make-package "PAL_INTERACTION_MSGS::DIRECTIONOFARRIVAL"))

(in-package "ROS")
;;//! \htmlinclude DirectionOfArrival.msg.html


(defclass pal_interaction_msgs::DirectionOfArrival
  :super ros::object
  :slots (_doa _prob _power _metadoa ))

(defmethod pal_interaction_msgs::DirectionOfArrival
  (:init
   (&key
    ((:doa __doa) 0.0)
    ((:prob __prob) 0.0)
    ((:power __power) 0.0)
    ((:metadoa __metadoa) "")
    )
   (send-super :init)
   (setq _doa (float __doa))
   (setq _prob (float __prob))
   (setq _power (float __power))
   (setq _metadoa (string __metadoa))
   self)
  (:doa
   (&optional __doa)
   (if __doa (setq _doa __doa)) _doa)
  (:prob
   (&optional __prob)
   (if __prob (setq _prob __prob)) _prob)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:metadoa
   (&optional __metadoa)
   (if __metadoa (setq _metadoa __metadoa)) _metadoa)
  (:serialization-length
   ()
   (+
    ;; float32 _doa
    4
    ;; float32 _prob
    4
    ;; float32 _power
    4
    ;; string _metadoa
    4 (length _metadoa)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _doa
       (sys::poke _doa (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _prob
       (sys::poke _prob (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _power
       (sys::poke _power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _metadoa
       (write-long (length _metadoa) s) (princ _metadoa s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _doa
     (setq _doa (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _prob
     (setq _prob (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _power
     (setq _power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _metadoa
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _metadoa (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_interaction_msgs::DirectionOfArrival :md5sum-) "cbcea81e85fdde7bb3d71de75dea9f5c")
(setf (get pal_interaction_msgs::DirectionOfArrival :datatype-) "pal_interaction_msgs/DirectionOfArrival")
(setf (get pal_interaction_msgs::DirectionOfArrival :definition-)
      "float32 doa
float32 prob
float32 power
string metadoa

")



(provide :pal_interaction_msgs/DirectionOfArrival "cbcea81e85fdde7bb3d71de75dea9f5c")


