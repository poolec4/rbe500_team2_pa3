// Generated by gencpp from file scara_pd_controller/JointControlReference.msg
// DO NOT EDIT!


#ifndef SCARA_PD_CONTROLLER_MESSAGE_JOINTCONTROLREFERENCE_H
#define SCARA_PD_CONTROLLER_MESSAGE_JOINTCONTROLREFERENCE_H

#include <ros/service_traits.h>


#include <scara_pd_controller/JointControlReferenceRequest.h>
#include <scara_pd_controller/JointControlReferenceResponse.h>


namespace scara_pd_controller
{

struct JointControlReference
{

typedef JointControlReferenceRequest Request;
typedef JointControlReferenceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct JointControlReference
} // namespace scara_pd_controller


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::scara_pd_controller::JointControlReference > {
  static const char* value()
  {
    return "b44f6d6dfe052e9be2c71ab5a76c2d68";
  }

  static const char* value(const ::scara_pd_controller::JointControlReference&) { return value(); }
};

template<>
struct DataType< ::scara_pd_controller::JointControlReference > {
  static const char* value()
  {
    return "scara_pd_controller/JointControlReference";
  }

  static const char* value(const ::scara_pd_controller::JointControlReference&) { return value(); }
};


// service_traits::MD5Sum< ::scara_pd_controller::JointControlReferenceRequest> should match
// service_traits::MD5Sum< ::scara_pd_controller::JointControlReference >
template<>
struct MD5Sum< ::scara_pd_controller::JointControlReferenceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::scara_pd_controller::JointControlReference >::value();
  }
  static const char* value(const ::scara_pd_controller::JointControlReferenceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_pd_controller::JointControlReferenceRequest> should match
// service_traits::DataType< ::scara_pd_controller::JointControlReference >
template<>
struct DataType< ::scara_pd_controller::JointControlReferenceRequest>
{
  static const char* value()
  {
    return DataType< ::scara_pd_controller::JointControlReference >::value();
  }
  static const char* value(const ::scara_pd_controller::JointControlReferenceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::scara_pd_controller::JointControlReferenceResponse> should match
// service_traits::MD5Sum< ::scara_pd_controller::JointControlReference >
template<>
struct MD5Sum< ::scara_pd_controller::JointControlReferenceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::scara_pd_controller::JointControlReference >::value();
  }
  static const char* value(const ::scara_pd_controller::JointControlReferenceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::scara_pd_controller::JointControlReferenceResponse> should match
// service_traits::DataType< ::scara_pd_controller::JointControlReference >
template<>
struct DataType< ::scara_pd_controller::JointControlReferenceResponse>
{
  static const char* value()
  {
    return DataType< ::scara_pd_controller::JointControlReference >::value();
  }
  static const char* value(const ::scara_pd_controller::JointControlReferenceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SCARA_PD_CONTROLLER_MESSAGE_JOINTCONTROLREFERENCE_H
