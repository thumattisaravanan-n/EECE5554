// Generated by gencpp from file mult_driver/gps_msg.msg
// DO NOT EDIT!


#ifndef MULT_DRIVER_MESSAGE_GPS_MSG_H
#define MULT_DRIVER_MESSAGE_GPS_MSG_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace mult_driver
{
template <class ContainerAllocator>
struct gps_msg_
{
  typedef gps_msg_<ContainerAllocator> Type;

  gps_msg_()
    : Header()
    , Latitude(0.0)
    , Longitude(0.0)
    , Altitude(0.0)
    , HDOP(0.0)
    , UTM_easting(0.0)
    , UTM_northing(0.0)
    , UTC()
    , Letter()
    , Zone(0)  {
    }
  gps_msg_(const ContainerAllocator& _alloc)
    : Header(_alloc)
    , Latitude(0.0)
    , Longitude(0.0)
    , Altitude(0.0)
    , HDOP(0.0)
    , UTM_easting(0.0)
    , UTM_northing(0.0)
    , UTC(_alloc)
    , Letter(_alloc)
    , Zone(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _Header_type;
  _Header_type Header;

   typedef float _Latitude_type;
  _Latitude_type Latitude;

   typedef float _Longitude_type;
  _Longitude_type Longitude;

   typedef float _Altitude_type;
  _Altitude_type Altitude;

   typedef float _HDOP_type;
  _HDOP_type HDOP;

   typedef float _UTM_easting_type;
  _UTM_easting_type UTM_easting;

   typedef float _UTM_northing_type;
  _UTM_northing_type UTM_northing;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _UTC_type;
  _UTC_type UTC;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _Letter_type;
  _Letter_type Letter;

   typedef int32_t _Zone_type;
  _Zone_type Zone;





  typedef boost::shared_ptr< ::mult_driver::gps_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::mult_driver::gps_msg_<ContainerAllocator> const> ConstPtr;

}; // struct gps_msg_

typedef ::mult_driver::gps_msg_<std::allocator<void> > gps_msg;

typedef boost::shared_ptr< ::mult_driver::gps_msg > gps_msgPtr;
typedef boost::shared_ptr< ::mult_driver::gps_msg const> gps_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::mult_driver::gps_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::mult_driver::gps_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::mult_driver::gps_msg_<ContainerAllocator1> & lhs, const ::mult_driver::gps_msg_<ContainerAllocator2> & rhs)
{
  return lhs.Header == rhs.Header &&
    lhs.Latitude == rhs.Latitude &&
    lhs.Longitude == rhs.Longitude &&
    lhs.Altitude == rhs.Altitude &&
    lhs.HDOP == rhs.HDOP &&
    lhs.UTM_easting == rhs.UTM_easting &&
    lhs.UTM_northing == rhs.UTM_northing &&
    lhs.UTC == rhs.UTC &&
    lhs.Letter == rhs.Letter &&
    lhs.Zone == rhs.Zone;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::mult_driver::gps_msg_<ContainerAllocator1> & lhs, const ::mult_driver::gps_msg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace mult_driver

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::mult_driver::gps_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::mult_driver::gps_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mult_driver::gps_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::mult_driver::gps_msg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mult_driver::gps_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::mult_driver::gps_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::mult_driver::gps_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9fbf4a7840ca1315cfe077bc103d888";
  }

  static const char* value(const ::mult_driver::gps_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9fbf4a7840ca131ULL;
  static const uint64_t static_value2 = 0x5cfe077bc103d888ULL;
};

template<class ContainerAllocator>
struct DataType< ::mult_driver::gps_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "mult_driver/gps_msg";
  }

  static const char* value(const ::mult_driver::gps_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::mult_driver::gps_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header Header\n"
"float32 Latitude\n"
"float32 Longitude\n"
"float32 Altitude\n"
"float32 HDOP\n"
"float32 UTM_easting\n"
"float32 UTM_northing\n"
"string UTC\n"
"string Letter\n"
"int32 Zone\n"
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
;
  }

  static const char* value(const ::mult_driver::gps_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::mult_driver::gps_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Header);
      stream.next(m.Latitude);
      stream.next(m.Longitude);
      stream.next(m.Altitude);
      stream.next(m.HDOP);
      stream.next(m.UTM_easting);
      stream.next(m.UTM_northing);
      stream.next(m.UTC);
      stream.next(m.Letter);
      stream.next(m.Zone);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct gps_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::mult_driver::gps_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::mult_driver::gps_msg_<ContainerAllocator>& v)
  {
    s << indent << "Header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.Header);
    s << indent << "Latitude: ";
    Printer<float>::stream(s, indent + "  ", v.Latitude);
    s << indent << "Longitude: ";
    Printer<float>::stream(s, indent + "  ", v.Longitude);
    s << indent << "Altitude: ";
    Printer<float>::stream(s, indent + "  ", v.Altitude);
    s << indent << "HDOP: ";
    Printer<float>::stream(s, indent + "  ", v.HDOP);
    s << indent << "UTM_easting: ";
    Printer<float>::stream(s, indent + "  ", v.UTM_easting);
    s << indent << "UTM_northing: ";
    Printer<float>::stream(s, indent + "  ", v.UTM_northing);
    s << indent << "UTC: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.UTC);
    s << indent << "Letter: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.Letter);
    s << indent << "Zone: ";
    Printer<int32_t>::stream(s, indent + "  ", v.Zone);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULT_DRIVER_MESSAGE_GPS_MSG_H
