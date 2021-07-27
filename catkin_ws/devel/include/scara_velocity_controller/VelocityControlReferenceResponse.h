// Generated by gencpp from file scara_velocity_controller/VelocityControlReferenceResponse.msg
// DO NOT EDIT!


#ifndef SCARA_VELOCITY_CONTROLLER_MESSAGE_VELOCITYCONTROLREFERENCERESPONSE_H
#define SCARA_VELOCITY_CONTROLLER_MESSAGE_VELOCITYCONTROLREFERENCERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace scara_velocity_controller
{
template <class ContainerAllocator>
struct VelocityControlReferenceResponse_
{
  typedef VelocityControlReferenceResponse_<ContainerAllocator> Type;

  VelocityControlReferenceResponse_()
    : success(0.0)  {
    }
  VelocityControlReferenceResponse_(const ContainerAllocator& _alloc)
    : success(0.0)  {
  (void)_alloc;
    }



   typedef double _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct VelocityControlReferenceResponse_

typedef ::scara_velocity_controller::VelocityControlReferenceResponse_<std::allocator<void> > VelocityControlReferenceResponse;

typedef boost::shared_ptr< ::scara_velocity_controller::VelocityControlReferenceResponse > VelocityControlReferenceResponsePtr;
typedef boost::shared_ptr< ::scara_velocity_controller::VelocityControlReferenceResponse const> VelocityControlReferenceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator1> & lhs, const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator1> & lhs, const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace scara_velocity_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d4af43e792493e358c51b0904556e73b";
  }

  static const char* value(const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd4af43e792493e35ULL;
  static const uint64_t static_value2 = 0x8c51b0904556e73bULL;
};

template<class ContainerAllocator>
struct DataType< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "scara_velocity_controller/VelocityControlReferenceResponse";
  }

  static const char* value(const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 success\n"
;
  }

  static const char* value(const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VelocityControlReferenceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::scara_velocity_controller::VelocityControlReferenceResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<double>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SCARA_VELOCITY_CONTROLLER_MESSAGE_VELOCITYCONTROLREFERENCERESPONSE_H