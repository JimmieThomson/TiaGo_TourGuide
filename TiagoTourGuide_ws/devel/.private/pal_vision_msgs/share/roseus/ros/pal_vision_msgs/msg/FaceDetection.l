;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::FaceDetection)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'FaceDetection (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::FACEDETECTION")
  (make-package "PAL_VISION_MSGS::FACEDETECTION"))

(in-package "ROS")
;;//! \htmlinclude FaceDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass pal_vision_msgs::FaceDetection
  :super ros::object
  :slots (_position3D _imageBoundingBox _hog ))

(defmethod pal_vision_msgs::FaceDetection
  (:init
   (&key
    ((:position3D __position3D) (instance geometry_msgs::Point :init))
    ((:imageBoundingBox __imageBoundingBox) (instance pal_vision_msgs::Rectangle :init))
    ((:hog __hog) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _position3D __position3D)
   (setq _imageBoundingBox __imageBoundingBox)
   (setq _hog __hog)
   self)
  (:position3D
   (&rest __position3D)
   (if (keywordp (car __position3D))
       (send* _position3D __position3D)
     (progn
       (if __position3D (setq _position3D (car __position3D)))
       _position3D)))
  (:imageBoundingBox
   (&rest __imageBoundingBox)
   (if (keywordp (car __imageBoundingBox))
       (send* _imageBoundingBox __imageBoundingBox)
     (progn
       (if __imageBoundingBox (setq _imageBoundingBox (car __imageBoundingBox)))
       _imageBoundingBox)))
  (:hog
   (&optional __hog)
   (if __hog (setq _hog __hog)) _hog)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position3D
    (send _position3D :serialization-length)
    ;; pal_vision_msgs/Rectangle _imageBoundingBox
    (send _imageBoundingBox :serialization-length)
    ;; float32[] _hog
    (* 4    (length _hog)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position3D
       (send _position3D :serialize s)
     ;; pal_vision_msgs/Rectangle _imageBoundingBox
       (send _imageBoundingBox :serialize s)
     ;; float32[] _hog
     (write-long (length _hog) s)
     (dotimes (i (length _hog))
       (sys::poke (elt _hog i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position3D
     (send _position3D :deserialize buf ptr-) (incf ptr- (send _position3D :serialization-length))
   ;; pal_vision_msgs/Rectangle _imageBoundingBox
     (send _imageBoundingBox :deserialize buf ptr-) (incf ptr- (send _imageBoundingBox :serialization-length))
   ;; float32[] _hog
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hog (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _hog i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get pal_vision_msgs::FaceDetection :md5sum-) "bf1d543fd0ed58f92521046e9c5f942a")
(setf (get pal_vision_msgs::FaceDetection :datatype-) "pal_vision_msgs/FaceDetection")
(setf (get pal_vision_msgs::FaceDetection :definition-)
      "## Contains data relative to the detection of the face of a person

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



(provide :pal_vision_msgs/FaceDetection "bf1d543fd0ed58f92521046e9c5f942a")


