// NetStructArray is a template (include/net-transport/net_struct_array.hpp). The two real
// instantiations use element types from other categories, so this file instantiates the
// template on the stand-in element to check that every member compiles.
#include "net-transport/net_struct_array.hpp"

#include "net-transport/deps/net_struct_element.hpp"

template class NetStructArray<NetStructElementStub, 32>;
