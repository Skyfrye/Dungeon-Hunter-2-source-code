#include "net-session-online/c_online_impl.hpp"

#include "net-transport/transport_manager.hpp"

// 0x825068 _ZN11COnlineImpl13GetPlayerNameEv
// When the transport manager is initialized, the name is its local host name (virtual at vtable +0x20,
// GetLocalhostname, returned through the hidden result). Otherwise it is "PLAYER".
std::string COnlineImpl::GetPlayerName() const {
    if (CTransportManager::IsInitialized()) {
        return GetTransportMgr()->GetLocalhostname();
    }
    return "PLAYER";
}
