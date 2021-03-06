// Generated by gencpp from file scara_velocity_kinematics/ee_to_joint_velocity.msg
// DO NOT EDIT!


#ifndef SCARA_VELOCITY_KINEMATICS_MESSAGE_EE_TO_JOINT_VELOCITY_H
#define SCARA_VELOCITY_KINEMATICS_MESSAGE_EE_TO_JOINT_VELOCITY_H

#include <ros/service_traits.h>


#include <scara_velocity_kinematics/ee_to_joint_velocityRequest.h>
#include <scara_velocity_kinematics/ee_to_joint_velocityResponse.h>


namespace scara_velocity_kinematics
{

struct ee_to_joint_velocity
{

typedef ee_to_joint_velocityRequest Request;
typedef ee_to_joint_velocityResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct ee_to_joint_velocity
} // namespace scara_velocity_kinematics


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocity > {
  static const char* value()
  {
    return "f7f9e62736547771aaa406fc9f3bb3cf";
  }

  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocity&) { return value(); }
};

template<>
struct DataType< ::scara_velocity_kinematics::ee_to_joint_velocity > {
  static const char* value()
  {
    return "scara_velocity_kinematics/ee_to_joint_velocity";
  }

  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocity&) { return value(); }
};


// service_traits::MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocityRequest> should match
// service_traits::MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocity >
template<>
struct MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocityRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocity >::value();
  }
  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocityRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_velocity_kinematics::ee_to_joint_velocityRequest> should match
// service_traits::DataType< ::scara_velocity_kinematics::ee_to_joint_velocity >
template<>
struct DataType< ::scara_velocity_kinematics::ee_to_joint_velocityRequest>
{
  static const char* value()
  {
    return DataType< ::scara_velocity_kinematics::ee_to_joint_velocity >::value();
  }
  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocityRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocityResponse> should match
// service_traits::MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocity >
template<>
struct MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocityResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scara_velocity_kinematics::ee_to_joint_velocity >::value();
  }
  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocityResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_velocity_kinematics::ee_to_joint_velocityResponse> should match
// service_traits::DataType< ::scara_velocity_kinematics::ee_to_joint_velocity >
template<>
struct DataType< ::scara_velocity_kinematics::ee_to_joint_velocityResponse>
{
  static const char* value()
  {
    return DataType< ::scara_velocity_kinematics::ee_to_joint_velocity >::value();
  }
  static const char* value(const ::scara_velocity_kinematics::ee_to_joint_velocityResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCARA_VELOCITY_KINEMATICS_MESSAGE_EE_TO_JOINT_VELOCITY_H
