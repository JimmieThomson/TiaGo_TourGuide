;; Auto-generated. Do not edit!


(when (boundp 'pal_motion_model_msgs::MotionModel)
  (if (not (find-package "PAL_MOTION_MODEL_MSGS"))
    (make-package "PAL_MOTION_MODEL_MSGS"))
  (shadow 'MotionModel (find-package "PAL_MOTION_MODEL_MSGS")))
(unless (find-package "PAL_MOTION_MODEL_MSGS::MOTIONMODEL")
  (make-package "PAL_MOTION_MODEL_MSGS::MOTIONMODEL"))

(in-package "ROS")
;;//! \htmlinclude MotionModel.msg.html


(defclass pal_motion_model_msgs::MotionModel
  :super ros::object
  :slots (_heading_mean _heading_std_dev _linear_speed_mean _linear_speed_std_dev _angular_speed_mean _angular_speed_std_dev ))

(defmethod pal_motion_model_msgs::MotionModel
  (:init
   (&key
    ((:heading_mean __heading_mean) 0.0)
    ((:heading_std_dev __heading_std_dev) 0.0)
    ((:linear_speed_mean __linear_speed_mean) 0.0)
    ((:linear_speed_std_dev __linear_speed_std_dev) 0.0)
    ((:angular_speed_mean __angular_speed_mean) 0.0)
    ((:angular_speed_std_dev __angular_speed_std_dev) 0.0)
    )
   (send-super :init)
   (setq _heading_mean (float __heading_mean))
   (setq _heading_std_dev (float __heading_std_dev))
   (setq _linear_speed_mean (float __linear_speed_mean))
   (setq _linear_speed_std_dev (float __linear_speed_std_dev))
   (setq _angular_speed_mean (float __angular_speed_mean))
   (setq _angular_speed_std_dev (float __angular_speed_std_dev))
   self)
  (:heading_mean
   (&optional __heading_mean)
   (if __heading_mean (setq _heading_mean __heading_mean)) _heading_mean)
  (:heading_std_dev
   (&optional __heading_std_dev)
   (if __heading_std_dev (setq _heading_std_dev __heading_std_dev)) _heading_std_dev)
  (:linear_speed_mean
   (&optional __linear_speed_mean)
   (if __linear_speed_mean (setq _linear_speed_mean __linear_speed_mean)) _linear_speed_mean)
  (:linear_speed_std_dev
   (&optional __linear_speed_std_dev)
   (if __linear_speed_std_dev (setq _linear_speed_std_dev __linear_speed_std_dev)) _linear_speed_std_dev)
  (:angular_speed_mean
   (&optional __angular_speed_mean)
   (if __angular_speed_mean (setq _angular_speed_mean __angular_speed_mean)) _angular_speed_mean)
  (:angular_speed_std_dev
   (&optional __angular_speed_std_dev)
   (if __angular_speed_std_dev (setq _angular_speed_std_dev __angular_speed_std_dev)) _angular_speed_std_dev)
  (:serialization-length
   ()
   (+
    ;; float32 _heading_mean
    4
    ;; float32 _heading_std_dev
    4
    ;; float32 _linear_speed_mean
    4
    ;; float32 _linear_speed_std_dev
    4
    ;; float32 _angular_speed_mean
    4
    ;; float32 _angular_speed_std_dev
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _heading_mean
       (sys::poke _heading_mean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _heading_std_dev
       (sys::poke _heading_std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_speed_mean
       (sys::poke _linear_speed_mean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _linear_speed_std_dev
       (sys::poke _linear_speed_std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_speed_mean
       (sys::poke _angular_speed_mean (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angular_speed_std_dev
       (sys::poke _angular_speed_std_dev (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _heading_mean
     (setq _heading_mean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _heading_std_dev
     (setq _heading_std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_speed_mean
     (setq _linear_speed_mean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _linear_speed_std_dev
     (setq _linear_speed_std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_speed_mean
     (setq _angular_speed_mean (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angular_speed_std_dev
     (setq _angular_speed_std_dev (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_motion_model_msgs::MotionModel :md5sum-) "fe7c341575e9287349aa5851bafdbb40")
(setf (get pal_motion_model_msgs::MotionModel :datatype-) "pal_motion_model_msgs/MotionModel")
(setf (get pal_motion_model_msgs::MotionModel :definition-)
      "## Contains the 2D motion model of a robot at a specific location

#Heading direction is represented through a gaussian pdf.
float32  heading_mean
float32  heading_std_dev

#For statistics we store a pdf over the robot speeds
float32  linear_speed_mean
float32  linear_speed_std_dev
float32  angular_speed_mean
float32  angular_speed_std_dev


")



(provide :pal_motion_model_msgs/MotionModel "fe7c341575e9287349aa5851bafdbb40")


