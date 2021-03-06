// Generated by gencpp from file pcr/MyMsg.msg
// DO NOT EDIT!


#ifndef PCR_MESSAGE_MYMSG_H
#define PCR_MESSAGE_MYMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pcr
{
template <class ContainerAllocator>
struct MyMsg_
{
  typedef MyMsg_<ContainerAllocator> Type;

  MyMsg_()
    : message()
    , num(0)  {
    }
  MyMsg_(const ContainerAllocator& _alloc)
    : message(_alloc)
    , num(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;

   typedef int64_t _num_type;
  _num_type num;





  typedef boost::shared_ptr< ::pcr::MyMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pcr::MyMsg_<ContainerAllocator> const> ConstPtr;

}; // struct MyMsg_

typedef ::pcr::MyMsg_<std::allocator<void> > MyMsg;

typedef boost::shared_ptr< ::pcr::MyMsg > MyMsgPtr;
typedef boost::shared_ptr< ::pcr::MyMsg const> MyMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pcr::MyMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pcr::MyMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pcr::MyMsg_<ContainerAllocator1> & lhs, const ::pcr::MyMsg_<ContainerAllocator2> & rhs)
{
  return lhs.message == rhs.message &&
    lhs.num == rhs.num;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pcr::MyMsg_<ContainerAllocator1> & lhs, const ::pcr::MyMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pcr

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pcr::MyMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pcr::MyMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pcr::MyMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pcr::MyMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pcr::MyMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pcr::MyMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pcr::MyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "055a6f49e56601a803d9072993ade75d";
  }

  static const char* value(const ::pcr::MyMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x055a6f49e56601a8ULL;
  static const uint64_t static_value2 = 0x03d9072993ade75dULL;
};

template<class ContainerAllocator>
struct DataType< ::pcr::MyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pcr/MyMsg";
  }

  static const char* value(const ::pcr::MyMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pcr::MyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string message\n"
"int64 num\n"
;
  }

  static const char* value(const ::pcr::MyMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pcr::MyMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.message);
      stream.next(m.num);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MyMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pcr::MyMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pcr::MyMsg_<ContainerAllocator>& v)
  {
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
    s << indent << "num: ";
    Printer<int64_t>::stream(s, indent + "  ", v.num);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PCR_MESSAGE_MYMSG_H
