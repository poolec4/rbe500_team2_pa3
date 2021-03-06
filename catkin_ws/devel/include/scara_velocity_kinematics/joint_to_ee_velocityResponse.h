// Generated by gencpp from file scara_velocity_kinematics/joint_to_ee_velocityResponse.msg
// DO NOT EDIT!


#ifndef SCARA_VELOCITY_KINEMATICS_MESSAGE_JOINT_TO_EE_VELOCITYRESPONSE_H
#define SCARA_VELOCITY_KINEMATICS_MESSAGE_JOINT_TO_EE_VELOCITYRESPONSE_H


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
struct joint_to_ee_velocityResponse_
{
  typedef joint_to_ee_velocityResponse_<ContainerAllocator> Type;

  joint_to_ee_velocityResponse_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , wx(0.0)
    , wy(0.0)
    , wz(0.0)  {
    }
  joint_to_ee_velocityResponse_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , wx(0.0)
    , wy(0.0)
    , wz(0.0)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _wx_type;
  _wx_type wx;

   typedef double _wy_type;
  _wy_type wy;

   typedef double _wz_type;
  _wz_type wz;





  typedef boost::shared_ptr< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> const> ConstPtr;

}; // struct joint_to_ee_velocityResponse_

typedef ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<std::allocator<void> > joint_to_ee_velocityResponse;

typedef boost::shared_ptr< ::scara_velocity_kinematics::joint_to_ee_velocityResponse > joint_to_ee_velocityResponsePtr;
typedef boost::shared_ptr< ::scara_velocity_kinematics::joint_to_ee_velocityResponse const> joint_to_ee_velocityResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator1> & lhs, const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator2> & rhs)
{
  return lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.wx == rhs.wx &&
    lhs.wy == rhs.wy &&
    lhs.wz == rhs.wz;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator1> & lhs, const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scara_velocity_kinematics

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4b0a1f9128335871daf9429e0c162294";
  }

  static const char* value(const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4b0a1f9128335871ULL;
  static const uint64_t static_value2 = 0xdaf9429e0c162294ULL;
};

template<class ContainerAllocator>
struct DataType< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scara_velocity_kinematics/joint_to_ee_velocityResponse";
  }

  static const char* value(const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 wx\n"
"float64 wy\n"
"float64 wz\n"
"\n"
;
  }

  static const char* value(const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.wx);
      stream.next(m.wy);
      stream.next(m.wz);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct joint_to_ee_velocityResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scara_velocity_kinematics::joint_to_ee_velocityResponse_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "wx: ";
    Printer<double>::stream(s, indent + "  ", v.wx);
    s << indent << "wy: ";
    Printer<double>::stream(s, indent + "  ", v.wy);
    s << indent << "wz: ";
    Printer<double>::stream(s, indent + "  ", v.wz);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCARA_VELOCITY_KINEMATICS_MESSAGE_JOINT_TO_EE_VELOCITYRESPONSE_H
