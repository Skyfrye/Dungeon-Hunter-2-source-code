#include "net-transport/socket_abstract.hpp"

// 0x827b1c _ZN15CSocketAbstract6AssignEij
void CSocketAbstract::Assign(int handle, unsigned int options) {
    handle_ = handle;
    valid_ = true;
    connected_ = IsConnected();
    SetSocketOptions(options);
}
