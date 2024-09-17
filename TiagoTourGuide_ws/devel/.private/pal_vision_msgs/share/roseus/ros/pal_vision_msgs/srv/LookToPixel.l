;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::LookToPixel)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'LookToPixel (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::LOOKTOPIXEL")
  (make-package "PAL_VISION_MSGS::LOOKTOPIXEL"))
(unless (find-package "PAL_VISION_MSGS::LOOKTOPIXELREQUEST")
  (make-package "PAL_VISION_MSGS::LOOKTOPIXELREQUEST"))
(unless (find-package "PAL_VISION_MSGS::LOOKTOPIXELRESPONSE")
  (make-package "PAL_VISION_MSGS::LOOKTOPIXELRESPONSE"))

(in-package "ROS")





(defclass pal_vision_msgs::LookToPixelRequest
  :super ros::object
  :slots (_x _y ))

(defmethod pal_vision_msgs::LookToPixelRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pal_vision_msgs::LookToPixelResponse
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::LookToPixelResponse
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

(defclass pal_vision_msgs::LookToPixel
  :super ros::object
  :slots ())

(setf (get pal_vision_msgs::LookToPixel :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get pal_vision_msgs::LookToPixel :datatype-) "pal_vision_msgs/LookToPixel")
(setf (get pal_vision_msgs::LookToPixel :request) pal_vision_msgs::LookToPixelRequest)
(setf (get pal_vision_msgs::LookToPixel :response) pal_vision_msgs::LookToPixelResponse)

(defmethod pal_vision_msgs::LookToPixelRequest
  (:response () (instance pal_vision_msgs::LookToPixelResponse :init)))

(setf (get pal_vision_msgs::LookToPixelRequest :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get pal_vision_msgs::LookToPixelRequest :datatype-) "pal_vision_msgs/LookToPixelRequest")
(setf (get pal_vision_msgs::LookToPixelRequest :definition-)
      "## Service message to make the robot look towards a direction defined by a pixel of its left camera
## The service is implemented in personServer at /personServer/lookToPixel
##
## The parameters of the service are the pixel coordinates (x,y) expressed relative to the image width and height. 
## For instance, if the service is called with (x,y) = (1, 0) then the robot will look the right side; if (x,y) = (0.5, 0.5) the robot
## will look forward; if (0.5, 1) the robot will look downwards; etc.

float32 x
float32 y
---


")

(setf (get pal_vision_msgs::LookToPixelResponse :md5sum-) "ff8d7d66dd3e4b731ef14a45d38888b6")
(setf (get pal_vision_msgs::LookToPixelResponse :datatype-) "pal_vision_msgs/LookToPixelResponse")
(setf (get pal_vision_msgs::LookToPixelResponse :definition-)
      "## Service message to make the robot look towards a direction defined by a pixel of its left camera
## The service is implemented in personServer at /personServer/lookToPixel
##
## The parameters of the service are the pixel coordinates (x,y) expressed relative to the image width and height. 
## For instance, if the service is called with (x,y) = (1, 0) then the robot will look the right side; if (x,y) = (0.5, 0.5) the robot
## will look forward; if (0.5, 1) the robot will look downwards; etc.

float32 x
float32 y
---


")



(provide :pal_vision_msgs/LookToPixel "ff8d7d66dd3e4b731ef14a45d38888b6")


