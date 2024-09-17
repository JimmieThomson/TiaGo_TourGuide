// Generated by gencpp from file pal_interaction_msgs/TtsActionGoal.msg
// DO NOT EDIT!


#ifndef PAL_INTERACTION_MSGS_MESSAGE_TTSACTIONGOAL_H
#define PAL_INTERACTION_MSGS_MESSAGE_TTSACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <pal_interaction_msgs/TtsGoal.h>

namespace pal_interaction_msgs
{
template <class ContainerAllocator>
struct TtsActionGoal_
{
  typedef TtsActionGoal_<ContainerAllocator> Type;

  TtsActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  TtsActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::pal_interaction_msgs::TtsGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct TtsActionGoal_

typedef ::pal_interaction_msgs::TtsActionGoal_<std::allocator<void> > TtsActionGoal;

typedef boost::shared_ptr< ::pal_interaction_msgs::TtsActionGoal > TtsActionGoalPtr;
typedef boost::shared_ptr< ::pal_interaction_msgs::TtsActionGoal const> TtsActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator1> & lhs, const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator1> & lhs, const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pal_interaction_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3bccf3a2c5d1d54cc7b0d11a481421eb";
  }

  static const char* value(const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3bccf3a2c5d1d54cULL;
  static const uint64_t static_value2 = 0xc7b0d11a481421ebULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_interaction_msgs/TtsActionGoal";
  }

  static const char* value(const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"TtsGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pal_interaction_msgs/TtsGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"## goal definition\n"
"\n"
"# utterance will contain indications to construct\n"
"# the text to be spoken.\n"
"# It must be specified in a section/key format \n"
"# for internationalisation. The actual text will\n"
"# be obtained from configuration files as in pal_tts_cfg pkg.\n"
" \n"
"I18nText text\n"
"TtsText rawtext\n"
"\n"
"# This is to suggest a voice name to the \n"
"# tts engine. For the same language we might have\n"
"# a variety of voices available, and this variable \n"
"# is to choose one among them. \n"
"# (not implemented yet)\n"
"string speakerName\n"
"\n"
"# Time to wait before synthesising the text itself.\n"
"# It can be used to produced delayed speech.\n"
"float64 wait_before_speaking\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pal_interaction_msgs/I18nText\n"
"# section/key is used as in examples in the pal_tts_cfg pkg.\n"
"string section\n"
"string key\n"
"\n"
"# language id, must be speficied using RFC 3066\n"
"string lang_id\n"
"\n"
"# arguments contain the values by which \n"
"# occurrences of '%s' will be replaced in the \n"
"# main text.\n"
"# This only supports up to 2 arguments and no recursion.\n"
"# However, recursion and more argumnents are\n"
"# planned to be supported in the future.\n"
"I18nArgument[] arguments\n"
"\n"
"================================================================================\n"
"MSG: pal_interaction_msgs/I18nArgument\n"
"# section key, override the value in expanded.\n"
"# Use expanded for text that do not need expansion.\n"
"# Please note that expanded here will not be translated \n"
"# to any language.\n"
"\n"
"string section\n"
"string key\n"
"string expanded\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pal_interaction_msgs/TtsText\n"
"# this message is to specify \n"
"# raw text to the TTS server. \n"
"\n"
"string text\n"
"\n"
"# Language id in RFC 3066 format\n"
"# This field is mandatory\n"
"string lang_id\n"
;
  }

  static const char* value(const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TtsActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_interaction_msgs::TtsActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::pal_interaction_msgs::TtsGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_INTERACTION_MSGS_MESSAGE_TTSACTIONGOAL_H
