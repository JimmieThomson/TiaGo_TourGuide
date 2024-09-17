;; Auto-generated. Do not edit!


(when (boundp 'pal_navigation_msgs::VisualLocDB)
  (if (not (find-package "PAL_NAVIGATION_MSGS"))
    (make-package "PAL_NAVIGATION_MSGS"))
  (shadow 'VisualLocDB (find-package "PAL_NAVIGATION_MSGS")))
(unless (find-package "PAL_NAVIGATION_MSGS::VISUALLOCDB")
  (make-package "PAL_NAVIGATION_MSGS::VISUALLOCDB"))

(in-package "ROS")
;;//! \htmlinclude VisualLocDB.msg.html


(defclass pal_navigation_msgs::VisualLocDB
  :super ros::object
  :slots (_documents _tree _weights ))

(defmethod pal_navigation_msgs::VisualLocDB
  (:init
   (&key
    ((:documents __documents) (make-array 0 :initial-element 0 :element-type :char))
    ((:tree __tree) (make-array 0 :initial-element 0 :element-type :char))
    ((:weights __weights) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _documents __documents)
   (setq _tree __tree)
   (setq _weights __weights)
   self)
  (:documents
   (&optional __documents)
   (if __documents (setq _documents __documents)) _documents)
  (:tree
   (&optional __tree)
   (if __tree (setq _tree __tree)) _tree)
  (:weights
   (&optional __weights)
   (if __weights (setq _weights __weights)) _weights)
  (:serialization-length
   ()
   (+
    ;; uint8[] _documents
    (* 1    (length _documents)) 4
    ;; uint8[] _tree
    (* 1    (length _tree)) 4
    ;; uint8[] _weights
    (* 1    (length _weights)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _documents
     (write-long (length _documents) s)
     (princ _documents s)
     ;; uint8[] _tree
     (write-long (length _tree) s)
     (princ _tree s)
     ;; uint8[] _weights
     (write-long (length _weights) s)
     (princ _weights s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _documents
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _documents (make-array n :element-type :char))
     (replace _documents buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _tree
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _tree (make-array n :element-type :char))
     (replace _tree buf :start2 ptr-) (incf ptr- n))
   ;; uint8[] _weights
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _weights (make-array n :element-type :char))
     (replace _weights buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get pal_navigation_msgs::VisualLocDB :md5sum-) "ecd1514e0345ae95252fcd0c3269725c")
(setf (get pal_navigation_msgs::VisualLocDB :datatype-) "pal_navigation_msgs/VisualLocDB")
(setf (get pal_navigation_msgs::VisualLocDB :definition-)
      "#Contents of the 3 binary files that contain the visual localization DB

uint8[] documents
uint8[] tree
uint8[] weights

")



(provide :pal_navigation_msgs/VisualLocDB "ecd1514e0345ae95252fcd0c3269725c")


