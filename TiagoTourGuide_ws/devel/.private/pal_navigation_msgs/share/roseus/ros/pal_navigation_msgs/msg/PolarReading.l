;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::PolarReading)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'PolarReading (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::POLARREADING")
  (make-package "PAL_NAVIGATION_MSGS::POLARREADING"))

(in-package "ROS")
;;//! \htmlinclude PolarReading.msg.html


(defclass pal_navigation_msgs::PolarReading
  :super ros::object
  :slots (_angle _distance ))

(defmethod pal_navigation_msgs::PolarReading
  (:init
   (&key
    ((:angle __angle) 0.0)
    ((:distance __distance) 0.0)
    )
   (send-super :init)
   (setq _angle (float __angle))
   (setq _distance (float __distance))
   self)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; float32 _angle
    4
    ;; float32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle
     (setq _angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_navigation_msgs::PolarReading :md5sum-) "817840b8f4d2300f89b98e0187dc919a")
(setf (get pal_navigation_msgs::PolarReading :datatype-) "pal_navigation_msgs/PolarReading")
(setf (get pal_navigation_msgs::PolarReading :definition-)
      "# Polar reading: a distance to a given angle
float32 angle # inradians

float32 distance # in meters


")



(provide :pal_navigation_msgs/PolarReading "817840b8f4d2300f89b98e0187dc919a")


