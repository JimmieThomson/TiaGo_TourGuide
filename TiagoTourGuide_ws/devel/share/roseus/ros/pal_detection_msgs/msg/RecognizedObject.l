;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::RecognizedObject)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'RecognizedObject (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::RECOGNIZEDOBJECT")
  (make-package "PAL_DETECTION_MSGS::RECOGNIZEDOBJECT"))

(in-package "ROS")
;;//! \htmlinclude RecognizedObject.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass pal_detection_msgs::RecognizedObject
  :super ros::object
  :slots (_object_class _confidence _bounding_box ))

(defmethod pal_detection_msgs::RecognizedObject
  (:init
   (&key
    ((:object_class __object_class) "")
    ((:confidence __confidence) 0.0)
    ((:bounding_box __bounding_box) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _object_class (string __object_class))
   (setq _confidence (float __confidence))
   (setq _bounding_box __bounding_box)
   self)
  (:object_class
   (&optional __object_class)
   (if __object_class (setq _object_class __object_class)) _object_class)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:bounding_box
   (&rest __bounding_box)
   (if (keywordp (car __bounding_box))
       (send* _bounding_box __bounding_box)
     (progn
       (if __bounding_box (setq _bounding_box (car __bounding_box)))
       _bounding_box)))
  (:serialization-length
   ()
   (+
    ;; string _object_class
    4 (length _object_class)
    ;; float32 _confidence
    4
    ;; sensor_msgs/RegionOfInterest _bounding_box
    (send _bounding_box :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_class
       (write-long (length _object_class) s) (princ _object_class s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_msgs/RegionOfInterest _bounding_box
       (send _bounding_box :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_class
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_class (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _bounding_box
     (send _bounding_box :deserialize buf ptr-) (incf ptr- (send _bounding_box :serialization-length))
   ;;
   self)
  )

(setf (get pal_detection_msgs::RecognizedObject :md5sum-) "ac3fbc481abe751cad38199e3707858d")
(setf (get pal_detection_msgs::RecognizedObject :datatype-) "pal_detection_msgs/RecognizedObject")
(setf (get pal_detection_msgs::RecognizedObject :definition-)
      "# Contains information about the class of a found object, along with its confidence and ROI of detection

# class: The respective class type of the found object
string object_class

# confidence: how sure you are it is that object and not another one.
# It is between 0 and 1 and the closer to one it is the better
float32 confidence

# bounding_box: The region of the image, where the object is found
sensor_msgs/RegionOfInterest bounding_box

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

")



(provide :pal_detection_msgs/RecognizedObject "ac3fbc481abe751cad38199e3707858d")


