;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::Highways)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'Highways (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::HIGHWAYS")
  (make-package "PAL_NAVIGATION_MSGS::HIGHWAYS"))

(in-package "ROS")
;;//! \htmlinclude Highways.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pal_navigation_msgs::Highways
  :super ros::object
  :slots (_points _directional _line_width _name ))

(defmethod pal_navigation_msgs::Highways
  (:init
   (&key
    ((:points __points) ())
    ((:directional __directional) (instance std_msgs::Bool :init))
    ((:line_width __line_width) (instance std_msgs::Float32 :init))
    ((:name __name) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _points __points)
   (setq _directional __directional)
   (setq _line_width __line_width)
   (setq _name __name)
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:directional
   (&rest __directional)
   (if (keywordp (car __directional))
       (send* _directional __directional)
     (progn
       (if __directional (setq _directional (car __directional)))
       _directional)))
  (:line_width
   (&rest __line_width)
   (if (keywordp (car __line_width))
       (send* _line_width __line_width)
     (progn
       (if __line_width (setq _line_width (car __line_width)))
       _line_width)))
  (:name
   (&rest __name)
   (if (keywordp (car __name))
       (send* _name __name)
     (progn
       (if __name (setq _name (car __name)))
       _name)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; std_msgs/Bool _directional
    (send _directional :serialization-length)
    ;; std_msgs/Float32 _line_width
    (send _line_width :serialization-length)
    ;; std_msgs/String _name
    (send _name :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; std_msgs/Bool _directional
       (send _directional :serialize s)
     ;; std_msgs/Float32 _line_width
       (send _line_width :serialize s)
     ;; std_msgs/String _name
       (send _name :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/Bool _directional
     (send _directional :deserialize buf ptr-) (incf ptr- (send _directional :serialization-length))
   ;; std_msgs/Float32 _line_width
     (send _line_width :deserialize buf ptr-) (incf ptr- (send _line_width :serialization-length))
   ;; std_msgs/String _name
     (send _name :deserialize buf ptr-) (incf ptr- (send _name :serialization-length))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::Highways :md5sum-) "ea8a17a2c3e3e85a215276d3571fb184")
(setf (get pal_navigation_msgs::Highways :datatype-) "pal_navigation_msgs/Highways")
(setf (get pal_navigation_msgs::Highways :definition-)
      "# Poi (Point of interest)

geometry_msgs/Point[] points

std_msgs/Bool         directional

std_msgs/Float32      line_width

std_msgs/String       name
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/String
string data

")



(provide :pal_navigation_msgs/Highways "ea8a17a2c3e3e85a215276d3571fb184")


