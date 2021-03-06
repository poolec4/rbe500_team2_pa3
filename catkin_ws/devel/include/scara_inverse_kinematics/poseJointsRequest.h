// Generated by gencpp from file scara_inverse_kinematics/poseJointsRequest.msg
// DO NOT EDIT!


#ifndef SCARA_INVERSE_KINEMATICS_MESSAGE_POSEJOINTSREQUEST_H
#define SCARA_INVERSE_KINEMATICS_MESSAGE_POSEJOINTSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace scara_inverse_kinematics
{
template <class ContainerAllocator>
struct poseJointsRequest_
{
  typedef poseJointsRequest_<ContainerAllocator> Type;

  poseJointsRequest_()
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
    }
  poseJointsRequest_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;





  typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct poseJointsRequest_

typedef ::scara_inverse_kinematics::poseJointsRequest_<std::allocator<void> > poseJointsRequest;

typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsRequest > poseJointsRequestPtr;
typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsRequest const> poseJointsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator1> & lhs, const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator1> & lhs, const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scara_inverse_kinematics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4a842b65f413084dc2b10fb484ea7f17";
  }

  static const char* value(const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4a842b65f413084dULL;
  static const uint64_t static_value2 = 0xc2b10fb484ea7f17ULL;
};

template<class ContainerAllocator>
struct DataType< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scara_inverse_kinematics/poseJointsRequest";
  }

  static const char* value(const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct poseJointsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scara_inverse_kinematics::poseJointsRequest_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCARA_INVERSE_KINEMATICS_MESSAGE_POSEJOINTSREQUEST_H
