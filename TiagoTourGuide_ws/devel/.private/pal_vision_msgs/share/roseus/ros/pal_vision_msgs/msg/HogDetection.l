;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::HogDetection)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'HogDetection (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::HOGDETECTION")
  (make-package "PAL_VISION_MSGS::HOGDETECTION"))

(in-package "ROS")
;;//! \htmlinclude HogDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::HogDetection
  :super ros::object
  :slots (_imageBoundingBox _direction _hog _principalEigenVectorRGB _rgbClusterCenters _rgbDescriptor1 _rgbDescriptor2 ))

(defmethod pal_vision_msgs::HogDetection
  (:init
   (&key
    ((:imageBoundingBox __imageBoundingBox) (instance pal_vision_msgs::Rectangle :init))
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:hog __hog) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:principalEigenVectorRGB __principalEigenVectorRGB) (instance std_msgs::ColorRGBA :init))
    ((:rgbClusterCenters __rgbClusterCenters) ())
    ((:rgbDescriptor1 __rgbDescriptor1) (make-array 0 :initial-element 0 :element-type :integer))
    ((:rgbDescriptor2 __rgbDescriptor2) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _imageBoundingBox __imageBoundingBox)
   (setq _direction __direction)
   (setq _hog __hog)
   (setq _principalEigenVectorRGB __principalEigenVectorRGB)
   (setq _rgbClusterCenters __rgbClusterCenters)
   (setq _rgbDescriptor1 __rgbDescriptor1)
   (setq _rgbDescriptor2 __rgbDescriptor2)
   self)
  (:imageBoundingBox
   (&rest __imageBoundingBox)
   (if (keywordp (car __imageBoundingBox))
       (send* _imageBoundingBox __imageBoundingBox)
     (progn
       (if __imageBoundingBox (setq _imageBoundingBox (car __imageBoundingBox)))
       _imageBoundingBox)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:hog
   (&optional __hog)
   (if __hog (setq _hog __hog)) _hog)
  (:principalEigenVectorRGB
   (&rest __principalEigenVectorRGB)
   (if (keywordp (car __principalEigenVectorRGB))
       (send* _principalEigenVectorRGB __principalEigenVectorRGB)
     (progn
       (if __principalEigenVectorRGB (setq _principalEigenVectorRGB (car __principalEigenVectorRGB)))
       _principalEigenVectorRGB)))
  (:rgbClusterCenters
   (&rest __rgbClusterCenters)
   (if (keywordp (car __rgbClusterCenters))
       (send* _rgbClusterCenters __rgbClusterCenters)
     (progn
       (if __rgbClusterCenters (setq _rgbClusterCenters (car __rgbClusterCenters)))
       _rgbClusterCenters)))
  (:rgbDescriptor1
   (&optional __rgbDescriptor1)
   (if __rgbDescriptor1 (setq _rgbDescriptor1 __rgbDescriptor1)) _rgbDescriptor1)
  (:rgbDescriptor2
   (&optional __rgbDescriptor2)
   (if __rgbDescriptor2 (setq _rgbDescriptor2 __rgbDescriptor2)) _rgbDescriptor2)
  (:serialization-length
   ()
   (+
    ;; pal_vision_msgs/Rectangle _imageBoundingBox
    (send _imageBoundingBox :serialization-length)
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; float32[] _hog
    (* 4    (length _hog)) 4
    ;; std_msgs/ColorRGBA _principalEigenVectorRGB
    (send _principalEigenVectorRGB :serialization-length)
    ;; std_msgs/ColorRGBA[] _rgbClusterCenters
    (apply #'+ (send-all _rgbClusterCenters :serialization-length)) 4
    ;; uint32[] _rgbDescriptor1
    (* 4    (length _rgbDescriptor1)) 4
    ;; uint32[] _rgbDescriptor2
    (* 4    (length _rgbDescriptor2)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_vision_msgs/Rectangle _imageBoundingBox
       (send _imageBoundingBox :serialize s)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; float32[] _hog
     (write-long (length _hog) s)
     (dotimes (i (length _hog))
       (sys::poke (elt _hog i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; std_msgs/ColorRGBA _principalEigenVectorRGB
       (send _principalEigenVectorRGB :serialize s)
     ;; std_msgs/ColorRGBA[] _rgbClusterCenters
     (write-long (length _rgbClusterCenters) s)
     (dolist (elem _rgbClusterCenters)
       (send elem :serialize s)
       )
     ;; uint32[] _rgbDescriptor1
     (write-long (length _rgbDescriptor1) s)
     (dotimes (i (length _rgbDescriptor1))
       (write-long (elt _rgbDescriptor1 i) s)
       )
     ;; uint32[] _rgbDescriptor2
     (write-long (length _rgbDescriptor2) s)
     (dotimes (i (length _rgbDescriptor2))
       (write-long (elt _rgbDescriptor2 i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_vision_msgs/Rectangle _imageBoundingBox
     (send _imageBoundingBox :deserialize buf ptr-) (incf ptr- (send _imageBoundingBox :serialization-length))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; float32[] _hog
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hog (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _hog i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; std_msgs/ColorRGBA _principalEigenVectorRGB
     (send _principalEigenVectorRGB :deserialize buf ptr-) (incf ptr- (send _principalEigenVectorRGB :serialization-length))
   ;; std_msgs/ColorRGBA[] _rgbClusterCenters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rgbClusterCenters (let (r) (dotimes (i n) (push (instance std_msgs::ColorRGBA :init) r)) r))
     (dolist (elem- _rgbClusterCenters)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _rgbDescriptor1
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rgbDescriptor1 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rgbDescriptor1 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _rgbDescriptor2
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rgbDescriptor2 (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _rgbDescriptor2 i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get pal_vision_msgs::HogDetection :md5sum-) "33e1731149b6e078eff6e4b55c75f260")
(setf (get pal_vision_msgs::HogDetection :datatype-) "pal_vision_msgs/HogDetection")
(setf (get pal_vision_msgs::HogDetection :definition-)
      "## Contains data relative to the detection of a person using the HOG descriptor

pal_vision_msgs/Rectangle  imageBoundingBox         # bounding box of image region in which the person has been detected
geometry_msgs/Vector3      direction                # unitary vector expressing in what direction wrt the robot base frame the person is
float32[]                  hog                      # HOG descriptor of the person region
std_msgs/ColorRGBA         principalEigenVectorRGB  # Eigen vector (remember this is an unitary vector) corresponding to the maximum eigen value of all the RGB values in the person region. 
std_msgs/ColorRGBA[]       rgbClusterCenters        # RGB cluster centers of the person region in the image obtained using k-means. The rgb components are expressed in [0..1]
uint32[]                   rgbDescriptor1           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 1)
uint32[]                   rgbDescriptor2           # Descriptor based on binarized RGB gradients between adjacent image blocks (version 2)




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

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

")



(provide :pal_vision_msgs/HogDetection "33e1731149b6e078eff6e4b55c75f260")


