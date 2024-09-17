// Generated by gencpp from file pal_control_msgs/RigidBodyTrajectoryGoal.msg
// DO NOT EDIT!


#ifndef PAL_CONTROL_MSGS_MESSAGE_RIGIDBODYTRAJECTORYGOAL_H
#define PAL_CONTROL_MSGS_MESSAGE_RIGIDBODYTRAJECTORYGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <pal_control_msgs/RigidBodyTrajectoryPoint.h>

namespace pal_control_msgs
{
template <class ContainerAllocator>
struct RigidBodyTrajectoryGoal_
{
  typedef RigidBodyTrajectoryGoal_<ContainerAllocator> Type;

  RigidBodyTrajectoryGoal_()
    : header()
    , interpolation_type(0)
    , trajectory()  {
    }
  RigidBodyTrajectoryGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , interpolation_type(0)
    , trajectory(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int8_t _interpolation_type_type;
  _interpolation_type_type interpolation_type;

   typedef std::vector< ::pal_control_msgs::RigidBodyTrajectoryPoint_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::pal_control_msgs::RigidBodyTrajectoryPoint_<ContainerAllocator> >> _trajectory_type;
  _trajectory_type trajectory;





  typedef boost::shared_ptr< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> const> ConstPtr;

}; // struct RigidBodyTrajectoryGoal_

typedef ::pal_control_msgs::RigidBodyTrajectoryGoal_<std::allocator<void> > RigidBodyTrajectoryGoal;

typedef boost::shared_ptr< ::pal_control_msgs::RigidBodyTrajectoryGoal > RigidBodyTrajectoryGoalPtr;
typedef boost::shared_ptr< ::pal_control_msgs::RigidBodyTrajectoryGoal const> RigidBodyTrajectoryGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator1> & lhs, const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.interpolation_type == rhs.interpolation_type &&
    lhs.trajectory == rhs.trajectory;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator1> & lhs, const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pal_control_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "247be78fedc0f995e25248af4042dd57";
  }

  static const char* value(const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x247be78fedc0f995ULL;
  static const uint64_t static_value2 = 0xe25248af4042dd57ULL;
};

template<class ContainerAllocator>
struct DataType< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pal_control_msgs/RigidBodyTrajectoryGoal";
  }

  static const char* value(const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"Header header\n"
"\n"
"# see PolynomialInterpolatorType\n"
"int8    interpolation_type\n"
"\n"
"pal_control_msgs/RigidBodyTrajectoryPoint[]     trajectory\n"
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
"MSG: pal_control_msgs/RigidBodyTrajectoryPoint\n"
"duration                duration\n"
"\n"
"geometry_msgs/Pose      pose\n"
"geometry_msgs/Twist     velocity\n"
"geometry_msgs/Accel     acceleration\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Twist\n"
"# This expresses velocity in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"================================================================================\n"
"MSG: geometry_msgs/Accel\n"
"# This expresses acceleration in free space broken into its linear and angular parts.\n"
"Vector3  linear\n"
"Vector3  angular\n"
;
  }

  static const char* value(const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.interpolation_type);
      stream.next(m.trajectory);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RigidBodyTrajectoryGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pal_control_msgs::RigidBodyTrajectoryGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "interpolation_type: ";
    Printer<int8_t>::stream(s, indent + "  ", v.interpolation_type);
    s << indent << "trajectory[]" << std::endl;
    for (size_t i = 0; i < v.trajectory.size(); ++i)
    {
      s << indent << "  trajectory[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pal_control_msgs::RigidBodyTrajectoryPoint_<ContainerAllocator> >::stream(s, indent + "    ", v.trajectory[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // PAL_CONTROL_MSGS_MESSAGE_RIGIDBODYTRAJECTORYGOAL_H
