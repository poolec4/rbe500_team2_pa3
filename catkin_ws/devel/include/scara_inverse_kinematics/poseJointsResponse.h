// Generated by gencpp from file scara_inverse_kinematics/poseJointsResponse.msg
// DO NOT EDIT!


#ifndef SCARA_INVERSE_KINEMATICS_MESSAGE_POSEJOINTSRESPONSE_H
#define SCARA_INVERSE_KINEMATICS_MESSAGE_POSEJOINTSRESPONSE_H


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
struct poseJointsResponse_
{
  typedef poseJointsResponse_<ContainerAllocator> Type;

  poseJointsResponse_()
    : theta1(0.0)
    , theta2(0.0)
    , d3(0.0)  {
    }
  poseJointsResponse_(const ContainerAllocator& _alloc)
    : theta1(0.0)
    , theta2(0.0)
    , d3(0.0)  {
  (void)_alloc;
    }



   typedef double _theta1_type;
  _theta1_type theta1;

   typedef double _theta2_type;
  _theta2_type theta2;

   typedef double _d3_type;
  _d3_type d3;





  typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct poseJointsResponse_

typedef ::scara_inverse_kinematics::poseJointsResponse_<std::allocator<void> > poseJointsResponse;

typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsResponse > poseJointsResponsePtr;
typedef boost::shared_ptr< ::scara_inverse_kinematics::poseJointsResponse const> poseJointsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator1> & lhs, const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.theta1 == rhs.theta1 &&
    lhs.theta2 == rhs.theta2 &&
    lhs.d3 == rhs.d3;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator1> & lhs, const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scara_inverse_kinematics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9890b1bf53393af30e276affd5468a4b";
  }

  static const char* value(const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9890b1bf53393af3ULL;
  static const uint64_t static_value2 = 0x0e276affd5468a4bULL;
};

template<class ContainerAllocator>
struct DataType< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scara_inverse_kinematics/poseJointsResponse";
  }

  static const char* value(const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 theta1\n"
"float64 theta2\n"
"float64 d3\n"
"\n"
;
  }

  static const char* value(const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.theta1);
      stream.next(m.theta2);
      stream.next(m.d3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct poseJointsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scara_inverse_kinematics::poseJointsResponse_<ContainerAllocator>& v)
  {
    s << indent << "theta1: ";
    Printer<double>::stream(s, indent + "  ", v.theta1);
    s << indent << "theta2: ";
    Printer<double>::stream(s, indent + "  ", v.theta2);
    s << indent << "d3: ";
    Printer<double>::stream(s, indent + "  ", v.d3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCARA_INVERSE_KINEMATICS_MESSAGE_POSEJOINTSRESPONSE_H
