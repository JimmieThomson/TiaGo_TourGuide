;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::NiceMapTransformation)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'NiceMapTransformation (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::NICEMAPTRANSFORMATION")
  (make-package "PAL_NAVIGATION_MSGS::NICEMAPTRANSFORMATION"))

(in-package "ROS")
;;//! \htmlinclude NiceMapTransformation.msg.html


(defclass pal_navigation_msgs::NiceMapTransformation
  :super ros::object
  :slots (_x _y _rotYawRad _scale ))

(defmethod pal_navigation_msgs::NiceMapTransformation
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:rotYawRad __rotYawRad) 0.0)
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _rotYawRad (float __rotYawRad))
   (setq _scale (float __scale))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:rotYawRad
   (&optional __rotYawRad)
   (if __rotYawRad (setq _rotYawRad __rotYawRad)) _rotYawRad)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _rotYawRad
    8
    ;; float64 _scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotYawRad
       (sys::poke _rotYawRad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotYawRad
     (setq _rotYawRad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _scale
     (setq _scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pal_navigation_msgs::NiceMapTransformation :md5sum-) "af4c7e65074d9c380c082e0485e8868c")
(setf (get pal_navigation_msgs::NiceMapTransformation :datatype-) "pal_navigation_msgs/NiceMapTransformation")
(setf (get pal_navigation_msgs::NiceMapTransformation :definition-)
      "float64 x 
float64 y
float64 rotYawRad # Yaw rotation in rads
float64 scale


")



(provide :pal_navigation_msgs/NiceMapTransformation "af4c7e65074d9c380c082e0485e8868c")


