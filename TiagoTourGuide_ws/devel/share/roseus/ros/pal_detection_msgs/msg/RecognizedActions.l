;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::RecognizedActions)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'RecognizedActions (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::RECOGNIZEDACTIONS")
  (make-package "PAL_DETECTION_MSGS::RECOGNIZEDACTIONS"))

(in-package "ROS")
;;//! \htmlinclude RecognizedActions.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_detection_msgs::RecognizedActions
  :super ros::object
  :slots (_header _action_name _u _v ))

(defmethod pal_detection_msgs::RecognizedActions
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:action_name __action_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:u __u) (make-array 0 :initial-element 0 :element-type :integer))
    ((:v __v) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _action_name __action_name)
   (setq _u __u)
   (setq _v __v)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:action_name
   (&optional __action_name)
   (if __action_name (setq _action_name __action_name)) _action_name)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _action_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _action_name)) 4
    ;; int64[] _u
    (* 8    (length _u)) 4
    ;; int64[] _v
    (* 8    (length _v)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _action_name
     (write-long (length _action_name) s)
     (dolist (elem _action_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int64[] _u
     (write-long (length _u) s)
     (dotimes (i (length _u))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _u i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _u i)) (= (length ((elt _u i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _u i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _u i) . bv) 1) -1) s))
             ((and (class (elt _u i)) (= (length ((elt _u i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _u i) . bv) 0) s)
              (write-long (if (>= (elt _u i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _u i) s)(write-long (if (>= (elt _u i) 0) 0 #xffffffff) s)))
       )
     ;; int64[] _v
     (write-long (length _v) s)
     (dotimes (i (length _v))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _v i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _v i)) (= (length ((elt _v i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _v i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _v i) . bv) 1) -1) s))
             ((and (class (elt _v i)) (= (length ((elt _v i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _v i) . bv) 0) s)
              (write-long (if (>= (elt _v i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _v i) s)(write-long (if (>= (elt _v i) 0) 0 #xffffffff) s)))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _action_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _action_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _action_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int64[] _u
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _u (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _u i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _u i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; int64[] _v
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _v (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _v i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _v i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get pal_detection_msgs::RecognizedActions :md5sum-) "e6c6e85fc615700151c9f88b60277903")
(setf (get pal_detection_msgs::RecognizedActions :datatype-) "pal_detection_msgs/RecognizedActions")
(setf (get pal_detection_msgs::RecognizedActions :definition-)
      "Header header

string[] action_name    # name of the recognized actions
int64[] u                # (u, v) are the pixel coordinates where
int64[] v                # the actions have been detected


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



(provide :pal_detection_msgs/RecognizedActions "e6c6e85fc615700151c9f88b60277903")


