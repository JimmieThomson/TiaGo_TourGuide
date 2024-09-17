// Generated by gencpp from file pal_detection_msgs/ChangeObjectRecognizerModel.msg
// DO NOT EDIT!


#ifndef PAL_DETECTION_MSGS_MESSAGE_CHANGEOBJECTRECOGNIZERMODEL_H
#define PAL_DETECTION_MSGS_MESSAGE_CHANGEOBJECTRECOGNIZERMODEL_H

#include <ros/service_traits.h>


#include <pal_detection_msgs/ChangeObjectRecognizerModelRequest.h>
#include <pal_detection_msgs/ChangeObjectRecognizerModelResponse.h>


namespace pal_detection_msgs
{

struct ChangeObjectRecognizerModel
{

typedef ChangeObjectRecognizerModelRequest Request;
typedef ChangeObjectRecognizerModelResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ChangeObjectRecognizerModel
} // namespace pal_detection_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModel > {
  static const char* value()
  {
    return "772f7a8423ea945bf501239102bf9c1e";
  }

  static const char* value(const ::pal_detection_msgs::ChangeObjectRecognizerModel&) { return value(); }
};

template<>
struct DataType< ::pal_detection_msgs::ChangeObjectRecognizerModel > {
  static const char* value()
  {
    return "pal_detection_msgs/ChangeObjectRecognizerModel";
  }

  static const char* value(const ::pal_detection_msgs::ChangeObjectRecognizerModel&) { return value(); }
};


// service_traits::MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModelRequest> should match
// service_traits::MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModel >
template<>
struct MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModelRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModel >::value();
  }
  static const char* value(const ::pal_detection_msgs::ChangeObjectRecognizerModelRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pal_detection_msgs::ChangeObjectRecognizerModelRequest> should match
// service_traits::DataType< ::pal_detection_msgs::ChangeObjectRecognizerModel >
template<>
struct DataType< ::pal_detection_msgs::ChangeObjectRecognizerModelRequest>
{
  static const char* value()
  {
    return DataType< ::pal_detection_msgs::ChangeObjectRecognizerModel >::value();
  }
  static const char* value(const ::pal_detection_msgs::ChangeObjectRecognizerModelRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModelResponse> should match
// service_traits::MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModel >
template<>
struct MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModelResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pal_detection_msgs::ChangeObjectRecognizerModel >::value();
  }
  static const char* value(const ::pal_detection_msgs::ChangeObjectRecognizerModelResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pal_detection_msgs::ChangeObjectRecognizerModelResponse> should match
// service_traits::DataType< ::pal_detection_msgs::ChangeObjectRecognizerModel >
template<>
struct DataType< ::pal_detection_msgs::ChangeObjectRecognizerModelResponse>
{
  static const char* value()
  {
    return DataType< ::pal_detection_msgs::ChangeObjectRecognizerModel >::value();
  }
  static const char* value(const ::pal_detection_msgs::ChangeObjectRecognizerModelResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PAL_DETECTION_MSGS_MESSAGE_CHANGEOBJECTRECOGNIZERMODEL_H
