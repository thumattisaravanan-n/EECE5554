// Generated by gencpp from file mult_driver/convert_to_quaternionResponse.msg
// DO NOT EDIT!


#ifndef MULT_DRIVER_MESSAGE_CONVERT_TO_QUATERNIONRESPONSE_H
#define MULT_DRIVER_MESSAGE_CONVERT_TO_QUATERNIONRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Quaternion.h>

namespace mult_driver
{
template <class ContainerAllocator>
struct convert_to_quaternionResponse_
{
  typedef convert_to_quaternionResponse_<ContainerAllocator> Type;

  convert_to_quaternionResponse_()
    : quaternion()  {
    }
  convert_to_quaternionResponse_(const ContainerAllocator& _alloc)
    : quaternion(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _quaternion_type;
  _quaternion_type quaternion;





  typedef boost::shared_ptr< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> const> ConstPtr;

}; // struct convert_to_quaternionResponse_

typedef ::mult_driver::convert_to_quaternionResponse_<std::allocator<void> > convert_to_quaternionResponse;

typedef boost::shared_ptr< ::mult_driver::convert_to_quaternionResponse > convert_to_quaternionResponsePtr;
typedef boost::shared_ptr< ::mult_driver::convert_to_quaternionResponse const> convert_to_quaternionResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator1> & lhs, const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator2> & rhs)
{
  return lhs.quaternion == rhs.quaternion;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator1> & lhs, const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mult_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c3d2506862045c1ddfbe5c9ef23688f4";
  }

  static const char* value(const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc3d2506862045c1dULL;
  static const uint64_t static_value2 = 0xdfbe5c9ef23688f4ULL;
};

template<class ContainerAllocator>
struct DataType< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mult_driver/convert_to_quaternionResponse";
  }

  static const char* value(const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"geometry_msgs/Quaternion quaternion\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.quaternion);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct convert_to_quaternionResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mult_driver::convert_to_quaternionResponse_<ContainerAllocator>& v)
  {
    s << indent << "quaternion: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.quaternion);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULT_DRIVER_MESSAGE_CONVERT_TO_QUATERNIONRESPONSE_H
