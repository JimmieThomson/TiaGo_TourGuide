;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::FollowMeStop)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'FollowMeStop (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::FOLLOWMESTOP")
  (make-package "PAL_VISION_MSGS::FOLLOWMESTOP"))
(unless (find-package "PAL_VISION_MSGS::FOLLOWMESTOPREQUEST")
  (make-package "PAL_VISION_MSGS::FOLLOWMESTOPREQUEST"))
(unless (find-package "PAL_VISION_MSGS::FOLLOWMESTOPRESPONSE")
  (make-package "PAL_VISION_MSGS::FOLLOWMESTOPRESPONSE"))

(in-package "ROS")





(defclass pal_vision_msgs::FollowMeStopRequest
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::FollowMeStopRequest
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

(defclass pal_vision_msgs::FollowMeStopResponse
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::FollowMeStopResponse
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

(defclass pal_vision_msgs::FollowMeStop
  :super ros::object
  :slots ())

(setf (get pal_vision_msgs::FollowMeStop :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FollowMeStop :datatype-) "pal_vision_msgs/FollowMeStop")
(setf (get pal_vision_msgs::FollowMeStop :request) pal_vision_msgs::FollowMeStopRequest)
(setf (get pal_vision_msgs::FollowMeStop :response) pal_vision_msgs::FollowMeStopResponse)

(defmethod pal_vision_msgs::FollowMeStopRequest
  (:response () (instance pal_vision_msgs::FollowMeStopResponse :init)))

(setf (get pal_vision_msgs::FollowMeStopRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FollowMeStopRequest :datatype-) "pal_vision_msgs/FollowMeStopRequest")
(setf (get pal_vision_msgs::FollowMeStopRequest :definition-)
      "##
## ROS service to stop followMeServer. The service is named /followMeServer/stop

---

")

(setf (get pal_vision_msgs::FollowMeStopResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FollowMeStopResponse :datatype-) "pal_vision_msgs/FollowMeStopResponse")
(setf (get pal_vision_msgs::FollowMeStopResponse :definition-)
      "##
## ROS service to stop followMeServer. The service is named /followMeServer/stop

---

")



(provide :pal_vision_msgs/FollowMeStop "d41d8cd98f00b204e9800998ecf8427e")


