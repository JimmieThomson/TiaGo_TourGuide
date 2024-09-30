;; Auto-generated. Do not edit!


(when (boundp 'pal_detection_msgs::FaceDetection)
  (if (not (find-package "PAL_DETECTION_MSGS"))
    (make-package "PAL_DETECTION_MSGS"))
  (shadow 'FaceDetection (find-package "PAL_DETECTION_MSGS")))
(unless (find-package "PAL_DETECTION_MSGS::FACEDETECTION")
  (make-package "PAL_DETECTION_MSGS::FACEDETECTION"))

(in-package "ROS")
;;//! \htmlinclude FaceDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*EXPRESSION_NEUTRAL*" (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(shadow '*EXPRESSION_NEUTRAL* (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(defconstant pal_detection_msgs::FaceDetection::*EXPRESSION_NEUTRAL* "\"neutral\"")
(intern "*EXPRESSION_SMILE*" (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(shadow '*EXPRESSION_SMILE* (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(defconstant pal_detection_msgs::FaceDetection::*EXPRESSION_SMILE* "\"smile\"")
(intern "*EXPRESSION_RAISED_BROWS*" (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(shadow '*EXPRESSION_RAISED_BROWS* (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(defconstant pal_detection_msgs::FaceDetection::*EXPRESSION_RAISED_BROWS* "\"raised brows\"")
(intern "*EXPRESSION_EYES_AWAY*" (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(shadow '*EXPRESSION_EYES_AWAY* (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(defconstant pal_detection_msgs::FaceDetection::*EXPRESSION_EYES_AWAY* "\"eyes away\"")
(intern "*EXPRESSION_SQUINTING*" (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(shadow '*EXPRESSION_SQUINTING* (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(defconstant pal_detection_msgs::FaceDetection::*EXPRESSION_SQUINTING* "\"squinting\"")
(intern "*EXPRESSION_FROWNING*" (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(shadow '*EXPRESSION_FROWNING* (find-package "PAL_DETECTION_MSGS::FACEDETECTION"))
(defconstant pal_detection_msgs::FaceDetection::*EXPRESSION_FROWNING* "\"frowning\"")

(defun pal_detection_msgs::FaceDetection-to-symbol (const)
  (cond
        (t nil)))

(defclass pal_detection_msgs::FaceDetection
  :super ros::object
  :slots (_x _y _width _height _eyesLocated _leftEyeX _leftEyeY _rightEyeX _rightEyeY _position _name _confidence _gender _genderConfidence _expression _expression_confidence _emotion_anger_confidence _emotion_disgust_confidence _emotion_fear_confidence _emotion_happiness_confidence _emotion_neutral_confidence _emotion_sadness_confidence _emotion_surprise_confidence ))

(defmethod pal_detection_msgs::FaceDetection
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:width __width) 0)
    ((:height __height) 0)
    ((:eyesLocated __eyesLocated) nil)
    ((:leftEyeX __leftEyeX) 0)
    ((:leftEyeY __leftEyeY) 0)
    ((:rightEyeX __rightEyeX) 0)
    ((:rightEyeY __rightEyeY) 0)
    ((:position __position) (instance geometry_msgs::Point32 :init))
    ((:name __name) "")
    ((:confidence __confidence) 0.0)
    ((:gender __gender) "")
    ((:genderConfidence __genderConfidence) 0.0)
    ((:expression __expression) "")
    ((:expression_confidence __expression_confidence) 0.0)
    ((:emotion_anger_confidence __emotion_anger_confidence) 0.0)
    ((:emotion_disgust_confidence __emotion_disgust_confidence) 0.0)
    ((:emotion_fear_confidence __emotion_fear_confidence) 0.0)
    ((:emotion_happiness_confidence __emotion_happiness_confidence) 0.0)
    ((:emotion_neutral_confidence __emotion_neutral_confidence) 0.0)
    ((:emotion_sadness_confidence __emotion_sadness_confidence) 0.0)
    ((:emotion_surprise_confidence __emotion_surprise_confidence) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _width (round __width))
   (setq _height (round __height))
   (setq _eyesLocated __eyesLocated)
   (setq _leftEyeX (round __leftEyeX))
   (setq _leftEyeY (round __leftEyeY))
   (setq _rightEyeX (round __rightEyeX))
   (setq _rightEyeY (round __rightEyeY))
   (setq _position __position)
   (setq _name (string __name))
   (setq _confidence (float __confidence))
   (setq _gender (string __gender))
   (setq _genderConfidence (float __genderConfidence))
   (setq _expression (string __expression))
   (setq _expression_confidence (float __expression_confidence))
   (setq _emotion_anger_confidence (float __emotion_anger_confidence))
   (setq _emotion_disgust_confidence (float __emotion_disgust_confidence))
   (setq _emotion_fear_confidence (float __emotion_fear_confidence))
   (setq _emotion_happiness_confidence (float __emotion_happiness_confidence))
   (setq _emotion_neutral_confidence (float __emotion_neutral_confidence))
   (setq _emotion_sadness_confidence (float __emotion_sadness_confidence))
   (setq _emotion_surprise_confidence (float __emotion_surprise_confidence))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:eyesLocated
   (&optional (__eyesLocated :null))
   (if (not (eq __eyesLocated :null)) (setq _eyesLocated __eyesLocated)) _eyesLocated)
  (:leftEyeX
   (&optional __leftEyeX)
   (if __leftEyeX (setq _leftEyeX __leftEyeX)) _leftEyeX)
  (:leftEyeY
   (&optional __leftEyeY)
   (if __leftEyeY (setq _leftEyeY __leftEyeY)) _leftEyeY)
  (:rightEyeX
   (&optional __rightEyeX)
   (if __rightEyeX (setq _rightEyeX __rightEyeX)) _rightEyeX)
  (:rightEyeY
   (&optional __rightEyeY)
   (if __rightEyeY (setq _rightEyeY __rightEyeY)) _rightEyeY)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:gender
   (&optional __gender)
   (if __gender (setq _gender __gender)) _gender)
  (:genderConfidence
   (&optional __genderConfidence)
   (if __genderConfidence (setq _genderConfidence __genderConfidence)) _genderConfidence)
  (:expression
   (&optional __expression)
   (if __expression (setq _expression __expression)) _expression)
  (:expression_confidence
   (&optional __expression_confidence)
   (if __expression_confidence (setq _expression_confidence __expression_confidence)) _expression_confidence)
  (:emotion_anger_confidence
   (&optional __emotion_anger_confidence)
   (if __emotion_anger_confidence (setq _emotion_anger_confidence __emotion_anger_confidence)) _emotion_anger_confidence)
  (:emotion_disgust_confidence
   (&optional __emotion_disgust_confidence)
   (if __emotion_disgust_confidence (setq _emotion_disgust_confidence __emotion_disgust_confidence)) _emotion_disgust_confidence)
  (:emotion_fear_confidence
   (&optional __emotion_fear_confidence)
   (if __emotion_fear_confidence (setq _emotion_fear_confidence __emotion_fear_confidence)) _emotion_fear_confidence)
  (:emotion_happiness_confidence
   (&optional __emotion_happiness_confidence)
   (if __emotion_happiness_confidence (setq _emotion_happiness_confidence __emotion_happiness_confidence)) _emotion_happiness_confidence)
  (:emotion_neutral_confidence
   (&optional __emotion_neutral_confidence)
   (if __emotion_neutral_confidence (setq _emotion_neutral_confidence __emotion_neutral_confidence)) _emotion_neutral_confidence)
  (:emotion_sadness_confidence
   (&optional __emotion_sadness_confidence)
   (if __emotion_sadness_confidence (setq _emotion_sadness_confidence __emotion_sadness_confidence)) _emotion_sadness_confidence)
  (:emotion_surprise_confidence
   (&optional __emotion_surprise_confidence)
   (if __emotion_surprise_confidence (setq _emotion_surprise_confidence __emotion_surprise_confidence)) _emotion_surprise_confidence)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ;; int32 _width
    4
    ;; int32 _height
    4
    ;; bool _eyesLocated
    1
    ;; int32 _leftEyeX
    4
    ;; int32 _leftEyeY
    4
    ;; int32 _rightEyeX
    4
    ;; int32 _rightEyeY
    4
    ;; geometry_msgs/Point32 _position
    (send _position :serialization-length)
    ;; string _name
    4 (length _name)
    ;; float32 _confidence
    4
    ;; string _gender
    4 (length _gender)
    ;; float32 _genderConfidence
    4
    ;; string _expression
    4 (length _expression)
    ;; float32 _expression_confidence
    4
    ;; float32 _emotion_anger_confidence
    4
    ;; float32 _emotion_disgust_confidence
    4
    ;; float32 _emotion_fear_confidence
    4
    ;; float32 _emotion_happiness_confidence
    4
    ;; float32 _emotion_neutral_confidence
    4
    ;; float32 _emotion_sadness_confidence
    4
    ;; float32 _emotion_surprise_confidence
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;; bool _eyesLocated
       (if _eyesLocated (write-byte -1 s) (write-byte 0 s))
     ;; int32 _leftEyeX
       (write-long _leftEyeX s)
     ;; int32 _leftEyeY
       (write-long _leftEyeY s)
     ;; int32 _rightEyeX
       (write-long _rightEyeX s)
     ;; int32 _rightEyeY
       (write-long _rightEyeY s)
     ;; geometry_msgs/Point32 _position
       (send _position :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _gender
       (write-long (length _gender) s) (princ _gender s)
     ;; float32 _genderConfidence
       (sys::poke _genderConfidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _expression
       (write-long (length _expression) s) (princ _expression s)
     ;; float32 _expression_confidence
       (sys::poke _expression_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _emotion_anger_confidence
       (sys::poke _emotion_anger_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _emotion_disgust_confidence
       (sys::poke _emotion_disgust_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _emotion_fear_confidence
       (sys::poke _emotion_fear_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _emotion_happiness_confidence
       (sys::poke _emotion_happiness_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _emotion_neutral_confidence
       (sys::poke _emotion_neutral_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _emotion_sadness_confidence
       (sys::poke _emotion_sadness_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _emotion_surprise_confidence
       (sys::poke _emotion_surprise_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _eyesLocated
     (setq _eyesLocated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _leftEyeX
     (setq _leftEyeX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _leftEyeY
     (setq _leftEyeY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rightEyeX
     (setq _rightEyeX (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _rightEyeY
     (setq _rightEyeY (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point32 _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _confidence
     (setq _confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _gender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _genderConfidence
     (setq _genderConfidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _expression
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _expression (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _expression_confidence
     (setq _expression_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _emotion_anger_confidence
     (setq _emotion_anger_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _emotion_disgust_confidence
     (setq _emotion_disgust_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _emotion_fear_confidence
     (setq _emotion_fear_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _emotion_happiness_confidence
     (setq _emotion_happiness_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _emotion_neutral_confidence
     (setq _emotion_neutral_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _emotion_sadness_confidence
     (setq _emotion_sadness_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _emotion_surprise_confidence
     (setq _emotion_surprise_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pal_detection_msgs::FaceDetection :md5sum-) "6dcee331fa45e6aea891516390b9e96d")
(setf (get pal_detection_msgs::FaceDetection :datatype-) "pal_detection_msgs/FaceDetection")
(setf (get pal_detection_msgs::FaceDetection :definition-)
      "
##########################################
#
# Face detection data
#
##########################################

#####################
# Face bounding box
#####################
# coordinates of the top left corner of the box
int32 x
int32 y

# width of the box
int32 width

# height of the box
int32 height

############################
# Eyes position (if found)
############################

bool eyesLocated

int32 leftEyeX
int32 leftEyeY
int32 rightEyeX
int32 rightEyeY

#############################
# Centre of eyes 3D estimate
#############################
geometry_msgs/Point32 position


############################
# Person recognition
############################

string name
float32 confidence

############################
# Gender recognition
############################
string gender
float32 genderConfidence

############################
# Facial expression
############################
string EXPRESSION_NEUTRAL=\"neutral\"
string EXPRESSION_SMILE=\"smile\"
string EXPRESSION_RAISED_BROWS=\"raised brows\"
string EXPRESSION_EYES_AWAY=\"eyes away\"
string EXPRESSION_SQUINTING=\"squinting\"
string EXPRESSION_FROWNING=\"frowning\"
string expression
float32 expression_confidence

############################
# Facial emotion
############################
float32 emotion_anger_confidence
float32 emotion_disgust_confidence
float32 emotion_fear_confidence
float32 emotion_happiness_confidence
float32 emotion_neutral_confidence
float32 emotion_sadness_confidence
float32 emotion_surprise_confidence

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :pal_detection_msgs/FaceDetection "6dcee331fa45e6aea891516390b9e96d")


