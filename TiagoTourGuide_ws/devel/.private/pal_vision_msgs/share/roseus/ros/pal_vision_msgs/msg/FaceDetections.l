;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::FaceDetections)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'FaceDetections (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::FACEDETECTIONS")
  (make-package "PAL_VISION_MSGS::FACEDETECTIONS"))

(in-package "ROS")
;;//! \htmlinclude FaceDetections.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::FaceDetections
  :super ros::object
  :slots (_header _imgID _faces ))

(defmethod pal_vision_msgs::FaceDetections
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:imgID __imgID) 0)
    ((:faces __faces) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _imgID (round __imgID))
   (setq _faces __faces)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:imgID
   (&optional __imgID)
   (if __imgID (setq _imgID __imgID)) _imgID)
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _imgID
    4
    ;; pal_vision_msgs/FaceDetection[] _faces
    (apply #'+ (send-all _faces :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _imgID
       (write-long _imgID s)
     ;; pal_vision_msgs/FaceDetection[] _faces
     (write-long (length _faces) s)
     (dolist (elem _faces)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _imgID
     (setq _imgID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; pal_vision_msgs/FaceDetection[] _faces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces (let (r) (dotimes (i n) (push (instance pal_vision_msgs::FaceDetection :init) r)) r))
     (dolist (elem- _faces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_vision_msgs::FaceDetections :md5sum-) "d5cd88065d95055a47408f1591427874")
(setf (get pal_vision_msgs::FaceDetections :datatype-) "pal_vision_msgs/FaceDetections")
(setf (get pal_vision_msgs::FaceDetections :definition-)
      "## Contains data relative to the detection of the faces of persons in an image

Header header

uint32                           imgID    #image sequence ID in which the faces have been detected. Images are published in /person/image
pal_vision_msgs/FaceDetection[]  faces



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: pal_vision_msgs/FaceDetection
## Contains data relative to the detection of the face of a person

geometry_msgs/Point        position3D         # 3D position of the person face projected on the ground plane, expressed in the robot frame /base_link
pal_vision_msgs/Rectangle  imageBoundingBox   # bounding box of the face in the image
float32[]                  hog                # HOG descriptor of the face





================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: pal_vision_msgs/Rectangle
## Rectangle defined by a point, its width and height
# corresponds to the openCV struct : CvRect

# coordinates of the top left corner of the box
int64 x
int64 y

# wigth of the box
int64 width

# height of the box
int64 height

")



(provide :pal_vision_msgs/FaceDetections "d5cd88065d95055a47408f1591427874")


