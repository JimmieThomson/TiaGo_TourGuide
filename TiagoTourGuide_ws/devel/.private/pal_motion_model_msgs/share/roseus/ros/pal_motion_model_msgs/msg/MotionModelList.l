;; Auto-generated. Do not edit!


(when (boundp 'pal_motion_model_msgs::MotionModelList)
  (if (not (find-package "PAL_MOTION_MODEL_MSGS"))
    (make-package "PAL_MOTION_MODEL_MSGS"))
  (shadow 'MotionModelList (find-package "PAL_MOTION_MODEL_MSGS")))
(unless (find-package "PAL_MOTION_MODEL_MSGS::MOTIONMODELLIST")
  (make-package "PAL_MOTION_MODEL_MSGS::MOTIONMODELLIST"))

(in-package "ROS")
;;//! \htmlinclude MotionModelList.msg.html


(defclass pal_motion_model_msgs::MotionModelList
  :super ros::object
  :slots (_models ))

(defmethod pal_motion_model_msgs::MotionModelList
  (:init
   (&key
    ((:models __models) ())
    )
   (send-super :init)
   (setq _models __models)
   self)
  (:models
   (&rest __models)
   (if (keywordp (car __models))
       (send* _models __models)
     (progn
       (if __models (setq _models (car __models)))
       _models)))
  (:serialization-length
   ()
   (+
    ;; pal_motion_model_msgs/MotionModel[] _models
    (apply #'+ (send-all _models :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pal_motion_model_msgs/MotionModel[] _models
     (write-long (length _models) s)
     (dolist (elem _models)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pal_motion_model_msgs/MotionModel[] _models
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _models (let (r) (dotimes (i n) (push (instance pal_motion_model_msgs::MotionModel :init) r)) r))
     (dolist (elem- _models)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pal_motion_model_msgs::MotionModelList :md5sum-) "f24b8d6d6a0a1542de28f172c2da67ff")
(setf (get pal_motion_model_msgs::MotionModelList :datatype-) "pal_motion_model_msgs/MotionModelList")
(setf (get pal_motion_model_msgs::MotionModelList :definition-)
      "#list of motion models learnt in a specific place

MotionModel[] models




================================================================================
MSG: pal_motion_model_msgs/MotionModel
## Contains the 2D motion model of a robot at a specific location

#Heading direction is represented through a gaussian pdf.
float32  heading_mean
float32  heading_std_dev

#For statistics we store a pdf over the robot speeds
float32  linear_speed_mean
float32  linear_speed_std_dev
float32  angular_speed_mean
float32  angular_speed_std_dev


")



(provide :pal_motion_model_msgs/MotionModelList "f24b8d6d6a0a1542de28f172c2da67ff")


