;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::FaceTrackingStop)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'FaceTrackingStop (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::FACETRACKINGSTOP")
  (make-package "PAL_VISION_MSGS::FACETRACKINGSTOP"))
(unless (find-package "PAL_VISION_MSGS::FACETRACKINGSTOPREQUEST")
  (make-package "PAL_VISION_MSGS::FACETRACKINGSTOPREQUEST"))
(unless (find-package "PAL_VISION_MSGS::FACETRACKINGSTOPRESPONSE")
  (make-package "PAL_VISION_MSGS::FACETRACKINGSTOPRESPONSE"))

(in-package "ROS")





(defclass pal_vision_msgs::FaceTrackingStopRequest
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::FaceTrackingStopRequest
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

(defclass pal_vision_msgs::FaceTrackingStopResponse
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::FaceTrackingStopResponse
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

(defclass pal_vision_msgs::FaceTrackingStop
  :super ros::object
  :slots ())

(setf (get pal_vision_msgs::FaceTrackingStop :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FaceTrackingStop :datatype-) "pal_vision_msgs/FaceTrackingStop")
(setf (get pal_vision_msgs::FaceTrackingStop :request) pal_vision_msgs::FaceTrackingStopRequest)
(setf (get pal_vision_msgs::FaceTrackingStop :response) pal_vision_msgs::FaceTrackingStopResponse)

(defmethod pal_vision_msgs::FaceTrackingStopRequest
  (:response () (instance pal_vision_msgs::FaceTrackingStopResponse :init)))

(setf (get pal_vision_msgs::FaceTrackingStopRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FaceTrackingStopRequest :datatype-) "pal_vision_msgs/FaceTrackingStopRequest")
(setf (get pal_vision_msgs::FaceTrackingStopRequest :definition-)
      "##
## ROS service to disable head tracking in personServer. The service is named /personServer/faceTracking/stop

---

")

(setf (get pal_vision_msgs::FaceTrackingStopResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FaceTrackingStopResponse :datatype-) "pal_vision_msgs/FaceTrackingStopResponse")
(setf (get pal_vision_msgs::FaceTrackingStopResponse :definition-)
      "##
## ROS service to disable head tracking in personServer. The service is named /personServer/faceTracking/stop

---

")



(provide :pal_vision_msgs/FaceTrackingStop "d41d8cd98f00b204e9800998ecf8427e")


