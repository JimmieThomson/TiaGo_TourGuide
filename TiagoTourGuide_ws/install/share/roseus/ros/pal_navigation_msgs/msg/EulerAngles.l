;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::EulerAngles)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'EulerAngles (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::EULERANGLES")
  (make-package "PAL_NAVIGATION_MSGS::EULERANGLES"))

(in-package "ROS")
;;//! \htmlinclude EulerAngles.msg.html


(defclass pal_navigation_msgs::EulerAngles
  :super ros::object
  :slots (_sequence _angles_in_degrees _ai _aj _ak ))

(defmethod pal_navigation_msgs::EulerAngles
  (:init
   (&key
    ((:sequence __sequence) "")
    ((:angles_in_degrees __angles_in_degrees) nil)
    ((:ai __ai) 0.0)
    ((:aj __aj) 0.0)
    ((:ak __ak) 0.0)
    )
   (send-super :init)
   (setq _sequence (string __sequence))
   (setq _angles_in_degrees __angles_in_degrees)
   (setq _ai (float __ai))
   (setq _aj (float __aj))
   (setq _ak (float __ak))
   self)
  (:sequence
   (&optional __sequence)
   (if __sequence (setq _sequence __sequence)) _sequence)
  (:angles_in_degrees
   (&optional (__angles_in_degrees :null))
   (if (not (eq __angles_in_degrees :null)) (setq _angles_in_degrees __angles_in_degrees)) _angles_in_degrees)
  (:ai
   (&optional __ai)
   (if __ai (setq _ai __ai)) _ai)
  (:aj
   (&optional __aj)
   (if __aj (setq _aj __aj)) _aj)
  (:ak
   (&optional __ak)
   (if __ak (setq _ak __ak)) _ak)
  (:serialization-length
   ()
   (+
    ;; string _sequence
    4 (length _sequence)
    ;; bool _angles_in_degrees
    1
    ;; float64 _ai
    8
    ;; float64 _aj
    8
    ;; float64 _ak
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sequence
       (write-long (length _sequence) s) (princ _sequence s)
     ;; bool _angles_in_degrees
       (if _angles_in_degrees (write-byte -1 s) (write-byte 0 s))
     ;; float64 _ai
       (sys::poke _ai (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _aj
       (sys::poke _aj (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ak
       (sys::poke _ak (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sequence
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sequence (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _angles_in_degrees
     (setq _angles_in_degrees (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _ai
     (setq _ai (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _aj
     (setq _aj (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ak
     (setq _ak (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pal_navigation_msgs::EulerAngles :md5sum-) "b41bea25ef0825fa6d2799746a51460f")
(setf (get pal_navigation_msgs::EulerAngles :datatype-) "pal_navigation_msgs/EulerAngles")
(setf (get pal_navigation_msgs::EulerAngles :definition-)
      "string sequence # as per transformations.py, e.g. 'rzyx' for standard yaw-pitch-roll
bool angles_in_degrees # true if ai, aj, ak are in degrees, otherwise they are in radians
# rotations about 1st, 2nd, 3rd axis:
float64 ai
float64 aj
float64 ak
")



(provide :pal_navigation_msgs/EulerAngles "b41bea25ef0825fa6d2799746a51460f")


