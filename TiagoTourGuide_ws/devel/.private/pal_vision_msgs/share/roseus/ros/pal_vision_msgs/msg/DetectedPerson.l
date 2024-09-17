;; Auto-generated. Do not edit!


(when (boundp 'pal_vision_msgs::DetectedPerson)
  (if (not (find-package "PAL_VISION_MSGS"))
    (make-package "PAL_VISION_MSGS"))
  (shadow 'DetectedPerson (find-package "PAL_VISION_MSGS")))
(unless (find-package "PAL_VISION_MSGS::DETECTEDPERSON")
  (make-package "PAL_VISION_MSGS::DETECTEDPERSON"))

(in-package "ROS")
;;//! \htmlinclude DetectedPerson.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_vision_msgs::DetectedPerson
  :super ros::object
  :slots (_header _objectId _boxColour _confidence _position3D _box _faceBox ))

(defmethod pal_vision_msgs::DetectedPerson
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objectId __objectId) 0)
    ((:boxColour __boxColour) (instance std_msgs::ColorRGBA :init))
    ((:confidence __confidence) 0.0)
    ((:position3D __position3D) (instance geometry_msgs::Point :init))
    ((:box __box) (instance pal_vision_msgs::Rectangle :init))
    ((:faceBox __faceBox) (instance pal_vision_msgs::Rectangle :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objectId (round __objectId))
   (setq _boxColour __boxColour)
   (setq _confidence (float __confidence))
   (setq _position3D __position3D)
   (setq _box __box)
   (setq _faceBox __faceBox)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objectId
   (&optional __objectId)
   (if __objectId (setq _objectId __objectId)) _objectId)
  (:boxColour
   (&rest __boxColour)
   (if (keywordp (car __boxColour))
       (send* _boxColour __boxColour)
     (progn
       (if __boxColour (setq _boxColour (car __boxColour)))
       _boxColour)))
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:position3D
   (&rest __position3D)
   (if (keywordp (car __position3D))
       (send* _position3D __position3D)
     (progn
       (if __position3D (setq _position3D (car __position3D)))
       _position3D)))
  (:box
   (&rest __box)
   (if (keywordp (car __box))
       (send* _box __box)
     (progn
       (if __box (setq _box (car __box)))
       _box)))
  (:faceBox
   (&rest __faceBox)
   (if (keywordp (car __faceBox))
       (send* _faceBox __faceBox)
     (progn
       (if __faceBox (setq _faceBox (car __faceBox)))
       _faceBox)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _objectId
    8
    ;; std_msgs/ColorRGBA _boxColour
    (send _boxColour :serialization-length)
    ;; float64 _confidence
    8
    ;; geometry_msgs/Point _position3D
    (send _position3D :serialization-length)
    ;; pal_vision_msgs/Rectangle _box
    (send _box :serialization-length)
    ;; pal_vision_msgs/Rectangle _faceBox
    (send _faceBox :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _objectId
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _objectId (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _objectId) (= (length (_objectId . bv)) 2)) ;; bignum
              (write-long (ash (elt (_objectId . bv) 0) 0) s)
              (write-long (ash (elt (_objectId . bv) 1) -1) s))
             ((and (class _objectId) (= (length (_objectId . bv)) 1)) ;; big1
              (write-long (elt (_objectId . bv) 0) s)
              (write-long (if (>= _objectId 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _objectId s)(write-long (if (>= _objectId 0) 0 #xffffffff) s)))
     ;; std_msgs/ColorRGBA _boxColour
       (send _boxColour :serialize s)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _position3D
       (send _position3D :serialize s)
     ;; pal_vision_msgs/Rectangle _box
       (send _box :serialize s)
     ;; pal_vision_msgs/Rectangle _faceBox
       (send _faceBox :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _objectId
#+(or :alpha :irix6 :x86_64)
      (setf _objectId (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _objectId (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; std_msgs/ColorRGBA _boxColour
     (send _boxColour :deserialize buf ptr-) (incf ptr- (send _boxColour :serialization-length))
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _position3D
     (send _position3D :deserialize buf ptr-) (incf ptr- (send _position3D :serialization-length))
   ;; pal_vision_msgs/Rectangle _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;; pal_vision_msgs/Rectangle _faceBox
     (send _faceBox :deserialize buf ptr-) (incf ptr- (send _faceBox :serialization-length))
   ;;
   self)
  )

(setf (get pal_vision_msgs::DetectedPerson :md5sum-) "f5d598391f8f6fb6645fe7d38b2e7101")
(setf (get pal_vision_msgs::DetectedPerson :datatype-) "pal_vision_msgs/DetectedPerson")
(setf (get pal_vision_msgs::DetectedPerson :definition-)
      "## Contains data relative to the detection of a person

Header header

# ID associated to a detected person by the personServer
int64 objectId

# colour associated to the detected person by the personServer
# values from the personServer are in [0-255]
std_msgs/ColorRGBA boxColour

# detection confidence
float64 confidence

# 3D position of the person projected on the ground plane, expressed in the world frame
geometry_msgs/Point  position3D

# rectangular zone of the image that contains the person detected
pal_vision_msgs/Rectangle box

# rectangular zone of the image that may contain the face of the person detected
# if no face has been detected, faceBox = Rectangle(0, 0, 0, 0)
pal_vision_msgs/Rectangle faceBox


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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

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



(provide :pal_vision_msgs/DetectedPerson "f5d598391f8f6fb6645fe7d38b2e7101")


