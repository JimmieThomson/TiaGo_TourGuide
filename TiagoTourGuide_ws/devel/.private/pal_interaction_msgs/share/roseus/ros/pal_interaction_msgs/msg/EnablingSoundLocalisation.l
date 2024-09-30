;; Auto-generated. Do not edit!


(when (boundp 'pal_interaction_msgs::EnablingSoundLocalisation)
  (if (not (find-package "PAL_INTERACTION_MSGS"))
    (make-package "PAL_INTERACTION_MSGS"))
  (shadow 'EnablingSoundLocalisation (find-package "PAL_INTERACTION_MSGS")))
(unless (find-package "PAL_INTERACTION_MSGS::ENABLINGSOUNDLOCALISATION")
  (make-package "PAL_INTERACTION_MSGS::ENABLINGSOUNDLOCALISATION"))

(in-package "ROS")
;;//! \htmlinclude EnablingSoundLocalisation.msg.html


(defclass pal_interaction_msgs::EnablingSoundLocalisation
  :super ros::object
  :slots (_enable ))

(defmethod pal_interaction_msgs::EnablingSoundLocalisation
  (:init
   (&key
    ((:enable __enable) nil)
    )
   (send-super :init)
   (setq _enable __enable)
   self)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:serialization-length
   ()
   (+
    ;; bool _enable
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pal_interaction_msgs::EnablingSoundLocalisation :md5sum-) "8c1211af706069c994c06e00eb59ac9e")
(setf (get pal_interaction_msgs::EnablingSoundLocalisation :datatype-) "pal_interaction_msgs/EnablingSoundLocalisation")
(setf (get pal_interaction_msgs::EnablingSoundLocalisation :definition-)
      "bool enable

")



(provide :pal_interaction_msgs/EnablingSoundLocalisation "8c1211af706069c994c06e00eb59ac9e")


