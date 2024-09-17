;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::FaceTrackingStart)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'FaceTrackingStart (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::FACETRACKINGSTART")
  (make-package "PAL_VISION_MSGS::FACETRACKINGSTART"))
(unless (find-package "PAL_VISION_MSGS::FACETRACKINGSTARTREQUEST")
  (make-package "PAL_VISION_MSGS::FACETRACKINGSTARTREQUEST"))
(unless (find-package "PAL_VISION_MSGS::FACETRACKINGSTARTRESPONSE")
  (make-package "PAL_VISION_MSGS::FACETRACKINGSTARTRESPONSE"))

(in-package "ROS")





(defclass pal_vision_msgs::FaceTrackingStartRequest
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::FaceTrackingStartRequest
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

(defclass pal_vision_msgs::FaceTrackingStartResponse
  :super ros::object
  :slots ())

(defmethod pal_vision_msgs::FaceTrackingStartResponse
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

(defclass pal_vision_msgs::FaceTrackingStart
  :super ros::object
  :slots ())

(setf (get pal_vision_msgs::FaceTrackingStart :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FaceTrackingStart :datatype-) "pal_vision_msgs/FaceTrackingStart")
(setf (get pal_vision_msgs::FaceTrackingStart :request) pal_vision_msgs::FaceTrackingStartRequest)
(setf (get pal_vision_msgs::FaceTrackingStart :response) pal_vision_msgs::FaceTrackingStartResponse)

(defmethod pal_vision_msgs::FaceTrackingStartRequest
  (:response () (instance pal_vision_msgs::FaceTrackingStartResponse :init)))

(setf (get pal_vision_msgs::FaceTrackingStartRequest :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FaceTrackingStartRequest :datatype-) "pal_vision_msgs/FaceTrackingStartRequest")
(setf (get pal_vision_msgs::FaceTrackingStartRequest :definition-)
      "##
## ROS service to enable head tracking in personServer. The service is named /personServer/faceTracking/start

---

")

(setf (get pal_vision_msgs::FaceTrackingStartResponse :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get pal_vision_msgs::FaceTrackingStartResponse :datatype-) "pal_vision_msgs/FaceTrackingStartResponse")
(setf (get pal_vision_msgs::FaceTrackingStartResponse :definition-)
      "##
## ROS service to enable head tracking in personServer. The service is named /personServer/faceTracking/start

---

")



(provide :pal_vision_msgs/FaceTrackingStart "d41d8cd98f00b204e9800998ecf8427e")


