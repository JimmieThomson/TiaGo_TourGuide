;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::SelectTexturedObject)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'SelectTexturedObject (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::SELECTTEXTUREDOBJECT")
  (make-package "PAL_DETECTION_MSGS::SELECTTEXTUREDOBJECT"))
(unless (find-package "PAL_DETECTION_MSGS::SELECTTEXTUREDOBJECTREQUEST")
  (make-package "PAL_DETECTION_MSGS::SELECTTEXTUREDOBJECTREQUEST"))
(unless (find-package "PAL_DETECTION_MSGS::SELECTTEXTUREDOBJECTRESPONSE")
  (make-package "PAL_DETECTION_MSGS::SELECTTEXTUREDOBJECTRESPONSE"))

(in-package "ROS")





(defclass pal_detection_msgs::SelectTexturedObjectRequest
  :super ros::object
  :slots (_imageFullPathFileName _width _height ))

(defmethod pal_detection_msgs::SelectTexturedObjectRequest
  (:init
   (&key
    ((:imageFullPathFileName __imageFullPathFileName) "")
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _imageFullPathFileName (string __imageFullPathFileName))
   (setq _width (float __width))
   (setq _height (float __height))
   self)
  (:imageFullPathFileName
   (&optional __imageFullPathFileName)
   (if __imageFullPathFileName (setq _imageFullPathFileName __imageFullPathFileName)) _imageFullPathFileName)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _imageFullPathFileName
    4 (length _imageFullPathFileName)
    ;; float64 _width
    8
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _imageFullPathFileName
       (write-long (length _imageFullPathFileName) s) (princ _imageFullPathFileName s)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _imageFullPathFileName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _imageFullPathFileName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pal_detection_msgs::SelectTexturedObjectResponse
  :super ros::object
  :slots (_result ))

(defmethod pal_detection_msgs::SelectTexturedObjectResponse
  (:init
   (&key
    ((:result __result) nil)
    )
   (send-super :init)
   (setq _result __result)
   self)
  (:result
   (&optional (__result :null))
   (if (not (eq __result :null)) (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _result
       (if _result (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _result
     (setq _result (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pal_detection_msgs::SelectTexturedObject
  :super ros::object
  :slots ())

(setf (get pal_detection_msgs::SelectTexturedObject :md5sum-) "faf29785b500c6c5f79cbce8786d0710")
(setf (get pal_detection_msgs::SelectTexturedObject :datatype-) "pal_detection_msgs/SelectTexturedObject")
(setf (get pal_detection_msgs::SelectTexturedObject :request) pal_detection_msgs::SelectTexturedObjectRequest)
(setf (get pal_detection_msgs::SelectTexturedObject :response) pal_detection_msgs::SelectTexturedObjectResponse)

(defmethod pal_detection_msgs::SelectTexturedObjectRequest
  (:response () (instance pal_detection_msgs::SelectTexturedObjectResponse :init)))

(setf (get pal_detection_msgs::SelectTexturedObjectRequest :md5sum-) "faf29785b500c6c5f79cbce8786d0710")
(setf (get pal_detection_msgs::SelectTexturedObjectRequest :datatype-) "pal_detection_msgs/SelectTexturedObjectRequest")
(setf (get pal_detection_msgs::SelectTexturedObjectRequest :definition-)
      "# This service message allows specifying to the texture_detector node
# which object it must look for.
#

string imageFullPathFileName # image filename including full path and file extension (always .png)
                             # The file must exist in the computer where the texture_detector node
                             # is running. The image must contain a frontal view of a planar textured object.
float64 width                # width of the planar object in meters. Set to 0 if no pose estimation is required.
float64 height               # height of the planar object in meters. Set to 0 if no pose estimation is required.
---
bool result                  # returns true if the texture_detector node has been able to load the given image filename

")

(setf (get pal_detection_msgs::SelectTexturedObjectResponse :md5sum-) "faf29785b500c6c5f79cbce8786d0710")
(setf (get pal_detection_msgs::SelectTexturedObjectResponse :datatype-) "pal_detection_msgs/SelectTexturedObjectResponse")
(setf (get pal_detection_msgs::SelectTexturedObjectResponse :definition-)
      "# This service message allows specifying to the texture_detector node
# which object it must look for.
#

string imageFullPathFileName # image filename including full path and file extension (always .png)
                             # The file must exist in the computer where the texture_detector node
                             # is running. The image must contain a frontal view of a planar textured object.
float64 width                # width of the planar object in meters. Set to 0 if no pose estimation is required.
float64 height               # height of the planar object in meters. Set to 0 if no pose estimation is required.
---
bool result                  # returns true if the texture_detector node has been able to load the given image filename

")



(provide :pal_detection_msgs/SelectTexturedObject "faf29785b500c6c5f79cbce8786d0710")


