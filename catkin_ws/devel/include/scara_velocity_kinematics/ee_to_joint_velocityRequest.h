// Generated by gencpp from file scara_velocity_kinematics/ee_to_joint_velocityRequest.msg
// DO NOT EDIT!


#ifndef SCARA_VELOCITY_KINEMATICS_MESSAGE_EE_TO_JOINT_VELOCITYREQUEST_H
#define SCARA_VELOCITY_KINEMATICS_MESSAGE_EE_TO_JOINT_VELOCITYREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace scara_velocity_kinematics
{
template <class ContainerAllocator>
struct ee_to_joint_velocityRequest_
{
  typedef ee_to_joint_velocityRequest_<ContainerAllocator> Type;

  ee_to_joint_velocityRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , th1(0.0)
    , th2(0.0)
    , d3(0.0)  {
    }
  ee_to_joint_velocityRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , th1(0.0)
    , th2(0.0)
    , d3(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _th1_type;
  _th1_type th1;

   typedef double _th2_type;
  _th2_type th2;

   typedef double _d3_type;
  _d3_type d3;





  typedef boost::shared_ptr< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ee_to_joint_velocityRequest_

typedef ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<std::allocator<void> > ee_to_joint_velocityRequest;

typedef boost::shared_ptr< ::scara_velocity_kinematics::ee_to_joint_velocityRequest > ee_to_joint_velocityRequestPtr;
typedef boost::shared_ptr< ::scara_velocity_kinematics::ee_to_joint_velocityRequest const> ee_to_joint_velocityRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator1> & lhs, const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.th1 == rhs.th1 &&
    lhs.th2 == rhs.th2 &&
    lhs.d3 == rhs.d3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator1> & lhs, const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scara_velocity_kinematics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5e8fbceb24cd8040d60bcfb9dd0da3de";
  }

  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5e8fbceb24cd8040ULL;
  static const uint64_t static_value2 = 0xd60bcfb9dd0da3deULL;
};

template<class ContainerAllocator>
struct DataType< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scara_velocity_kinematics/ee_to_joint_velocityRequest";
  }

  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 th1\n"
"float64 th2\n"
"float64 d3\n"
;
  }

  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.th1);
      stream.next(m.th2);
      stream.next(m.d3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ee_to_joint_velocityRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scara_velocity_kinematics::ee_to_joint_velocityRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "th1: ";
    Printer<double>::stream(s, indent + "  ", v.th1);
    s << indent << "th2: ";
    Printer<double>::stream(s, indent + "  ", v.th2);
    s << indent << "d3: ";
    Printer<double>::stream(s, indent + "  ", v.d3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCARA_VELOCITY_KINEMATICS_MESSAGE_EE_TO_JOINT_VELOCITYREQUEST_H
