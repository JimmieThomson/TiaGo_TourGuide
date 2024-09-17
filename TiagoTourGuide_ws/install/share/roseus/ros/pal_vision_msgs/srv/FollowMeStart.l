;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::FollowMeStart)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'FollowMeStart (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::FOLLOWMESTART")
  (make-package "PAL_VISION_MSGS::FOLLOWMESTART"))
(unless (find-package "PAL_VISION_MSGS::FOLLOWMESTARTREQUEST")
  (make-package "PAL_VISION_MSGS::FOLLOWMESTARTREQUEST"))
(unless (find-package "PAL_VISION_MSGS::FOLLOWMESTARTRESPONSE")
  (make-package "PAL_VISION_MSGS::FOLLOWMESTARTRESPONSE"))

(in-package "ROS")





(defclass pal_vision_msgs::FollowMeStartRequest
  :super ros::object
  :slots (_maxSecondsTargetLost ))

(defmethod pal_vision_msgs::FollowMeStartRequest
  (:init
   (&key
    ((:maxSecondsTargetLost __maxSecondsTargetLost) 0.0)
    )
   (send-super :init)
   (setq _maxSecondsTargetLost (float __maxSecondsTargetLost))
   self)
  (:maxSecondsTargetLost
   (&optional __maxSecondsTargetLost)
   (if __maxSecondsTargetLost (setq _maxSecondsTargetLost __maxSecondsTargetLost)) _maxSecondsTargetLost)
  (:serialization-length
   ()
   (+
    ;; float32 _maxSecondsTargetLost
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _maxSecondsTargetLost
       (sys::poke _maxSecondsTargetLost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _maxSecondsTargetLost
     (setq _maxSecondsTargetLost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pal_vision_msgs::FollowMeStartResponse
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::FollowMeStartResponse
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

(defclass pal_vision_msgs::FollowMeStart
  :super ros::object
  :slots ())

(setf (get pal_vision_msgs::FollowMeStart :md5sum-) "87d3dd79b1c6acbd29fa88c4d5b58715")
(setf (get pal_vision_msgs::FollowMeStart :datatype-) "pal_vision_msgs/FollowMeStart")
(setf (get pal_vision_msgs::FollowMeStart :request) pal_vision_msgs::FollowMeStartRequest)
(setf (get pal_vision_msgs::FollowMeStart :response) pal_vision_msgs::FollowMeStartResponse)

(defmethod pal_vision_msgs::FollowMeStartRequest
  (:response () (instance pal_vision_msgs::FollowMeStartResponse :init)))

(setf (get pal_vision_msgs::FollowMeStartRequest :md5sum-) "87d3dd79b1c6acbd29fa88c4d5b58715")
(setf (get pal_vision_msgs::FollowMeStartRequest :datatype-) "pal_vision_msgs/FollowMeStartRequest")
(setf (get pal_vision_msgs::FollowMeStartRequest :definition-)
      "##
## ROS service to start followMeServer functionality. The service is named /followMeServer/start

float32 maxSecondsTargetLost 

---

")

(setf (get pal_vision_msgs::FollowMeStartResponse :md5sum-) "87d3dd79b1c6acbd29fa88c4d5b58715")
(setf (get pal_vision_msgs::FollowMeStartResponse :datatype-) "pal_vision_msgs/FollowMeStartResponse")
(setf (get pal_vision_msgs::FollowMeStartResponse :definition-)
      "##
## ROS service to start followMeServer functionality. The service is named /followMeServer/start

float32 maxSecondsTargetLost 

---

")



(provide :pal_vision_msgs/FollowMeStart "87d3dd79b1c6acbd29fa88c4d5b58715")


