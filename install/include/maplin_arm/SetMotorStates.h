// Generated by gencpp from file maplin_arm/SetMotorStates.msg
// DO NOT EDIT!


#ifndef MAPLIN_ARM_MESSAGE_SETMOTORSTATES_H
#define MAPLIN_ARM_MESSAGE_SETMOTORSTATES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <maplin_arm/MotorState.h>

namespace maplin_arm
{
template <class ContainerAllocator>
struct SetMotorStates_
{
  typedef SetMotorStates_<ContainerAllocator> Type;

  SetMotorStates_()
    : header()
    , motorStates()  {
    }
  SetMotorStates_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , motorStates(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::maplin_arm::MotorState_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::maplin_arm::MotorState_<ContainerAllocator> >::other >  _motorStates_type;
  _motorStates_type motorStates;





  typedef boost::shared_ptr< ::maplin_arm::SetMotorStates_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::maplin_arm::SetMotorStates_<ContainerAllocator> const> ConstPtr;

}; // struct SetMotorStates_

typedef ::maplin_arm::SetMotorStates_<std::allocator<void> > SetMotorStates;

typedef boost::shared_ptr< ::maplin_arm::SetMotorStates > SetMotorStatesPtr;
typedef boost::shared_ptr< ::maplin_arm::SetMotorStates const> SetMotorStatesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::maplin_arm::SetMotorStates_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::maplin_arm::SetMotorStates_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace maplin_arm

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'maplin_arm': ['/home/roshenac/Desktop/makeitmove/src/maplin_arm/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::maplin_arm::SetMotorStates_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::maplin_arm::SetMotorStates_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::maplin_arm::SetMotorStates_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "56722fcd842fbf3dbe76bd48941f870f";
  }

  static const char* value(const ::maplin_arm::SetMotorStates_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x56722fcd842fbf3dULL;
  static const uint64_t static_value2 = 0xbe76bd48941f870fULL;
};

template<class ContainerAllocator>
struct DataType< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "maplin_arm/SetMotorStates";
  }

  static const char* value(const ::maplin_arm::SetMotorStates_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
MotorState[] motorStates\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: maplin_arm/MotorState\n\
int32 motorIdx\n\
int32 motorState\n\
";
  }

  static const char* value(const ::maplin_arm::SetMotorStates_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.motorStates);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SetMotorStates_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::maplin_arm::SetMotorStates_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::maplin_arm::SetMotorStates_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "motorStates[]" << std::endl;
    for (size_t i = 0; i < v.motorStates.size(); ++i)
    {
      s << indent << "  motorStates[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::maplin_arm::MotorState_<ContainerAllocator> >::stream(s, indent + "    ", v.motorStates[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MAPLIN_ARM_MESSAGE_SETMOTORSTATES_H
