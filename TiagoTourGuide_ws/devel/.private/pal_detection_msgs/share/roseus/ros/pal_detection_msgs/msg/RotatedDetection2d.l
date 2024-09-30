;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::RotatedDetection2d)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'RotatedDetection2d (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::ROTATEDDETECTION2D")
  (make-package "PAL_DETECTION_MSGS::ROTATEDDETECTION2D"))

(in-package "ROS")
;;//! \htmlinclude RotatedDetection2d.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::RotatedDetection2d
  :super ros::object
  :slots (_header _x _y ))

(defmethod pal_detection_msgs::RotatedDetection2d
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:x __x) (make-array 0 :initial-element 0 :element-type :integer))
    ((:y __y) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _x __x)
   (setq _y __y)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64[] _x
    (* 8    (length _x)) 4
    ;; int64[] _y
    (* 8    (length _y)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _x i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _x i)) (= (length ((elt _x i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _x i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _x i) . bv) 1) -1) s))
             ((and (class (elt _x i)) (= (length ((elt _x i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _x i) . bv) 0) s)
              (write-long (if (>= (elt _x i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _x i) s)(write-long (if (>= (elt _x i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _y
     (write-long (length _y) s)
     (dotimes (i (length _y))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _y i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _y i)) (= (length ((elt _y i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _y i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _y i) . bv) 1) -1) s))
             ((and (class (elt _y i)) (= (length ((elt _y i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _y i) . bv) 0) s)
              (write-long (if (>= (elt _y i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _y i) s)(write-long (if (>= (elt _y i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _x i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _x i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _y
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _y i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _y i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;;
   self)
  )

(setf (get pal_detection_msgs::RotatedDetection2d :md5sum-) "1696e52e0f42b73a9168aef8ceb90f0e")
(setf (get pal_detection_msgs::RotatedDetection2d :datatype-) "pal_detection_msgs/RotatedDetection2d")
(setf (get pal_detection_msgs::RotatedDetection2d :definition-)
      "## Rotated rectangle in image coordinates defined by 4 vertices

Header header

# coordinates of the vertices of a rotated rectangle
int64[] x
int64[] y



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

")



(provide :pal_detection_msgs/RotatedDetection2d "1696e52e0f42b73a9168aef8ceb90f0e")


