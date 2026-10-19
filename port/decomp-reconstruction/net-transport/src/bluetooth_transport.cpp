#include "net-transport/bluetooth_transport.hpp"

#include "net-transport/deps/transport_manager.hpp"

bool CBluetoothReliable::s_initialized_ = false;
bool CBluetoothUnreliable::s_initialized_ = false;

// ---- CBluetoothReliable ----

// 0x828cb4 _ZN18CBluetoothReliable7GetTypeEv
int CBluetoothReliable::GetType() {
    return 4;
}

// 0x828cbc _ZN18CBluetoothReliable17CanDisconnectFromER10CNetworkId
bool CBluetoothReliable::CanDisconnectFrom(const CNetworkId& peer) {
    (void)peer;
    return false;
}

// 0x828cc4 _ZN18CBluetoothReliable10InitializeEv
// Sets the initialized flag; -1 when it is already set.
int CBluetoothReliable::Initialize() {
    if (initialized_) {
        return -1;
    }
    initialized_ = true;
    return 0;
}

// 0x828ce0 _ZN18CBluetoothReliable10DisconnectEv
// Clears the initialized flag; -1 when it was not set.
int CBluetoothReliable::Disconnect() {
    if (!initialized_) {
        return -1;
    }
    initialized_ = false;
    return 0;
}

// 0x828cfc _ZN18CBluetoothReliable11IsConnectedEv
bool CBluetoothReliable::IsConnected() {
    return false;
}

// 0x828d04 _ZN18CBluetoothReliable13IsConnectedToER10CNetworkId
bool CBluetoothReliable::IsConnectedTo(const CNetworkId& peer) {
    (void)peer;
    return false;
}

// 0x828d0c _ZN18CBluetoothReliable6IsPeerEv
bool CBluetoothReliable::IsPeer() const {
    return false;
}

// 0x828d14 _ZN18CBluetoothReliable8IsClientEv
bool CBluetoothReliable::IsClient() const {
    return false;
}

// 0x828d1c _ZN18CBluetoothReliable11IsListeningEv
// Listening only when initialized and the socket reports a server role.
bool CBluetoothReliable::IsListening() const {
    return initialized_ && socket_.IsServer() && (flags_ & 1) != 0;
}

// 0x828d5c _ZN18CBluetoothReliable14StartBroadcastEv
void CBluetoothReliable::StartBroadcast() {}

// 0x828d60 _ZN18CBluetoothReliable13StopBroadcastEv
void CBluetoothReliable::StopBroadcast() {}

// 0x828d64 _ZN18CBluetoothReliable4SendER10CNetworkIdPvi
int CBluetoothReliable::Send(const CNetworkId& peer, const void* data, int len) {
    (void)peer;
    (void)data;
    (void)len;
    return -1;
}

// 0x828d6c _ZN18CBluetoothReliable7ReceiveEv
int CBluetoothReliable::Receive() {
    return -1;
}

// 0x828d74 _ZN18CBluetoothReliable7SetModeE19_tBLUETOOTH_SESSION
void CBluetoothReliable::SetMode(int session) {
    (void)session;
}

// 0x828d78 _ZN18CBluetoothReliable18TerminateTransportEv
int CBluetoothReliable::TerminateTransport() {
    s_initialized_ = false;
    return 0;
}

// 0x82900c _ZN18CBluetoothReliableC2Ev
// 0x829330 _ZN18CBluetoothReliableC1Ev is the same body (skipped at that address).
// Reconstructed: the transport takes the default member values. The two std::string members of
// the original (address at +0x34, name at +0x50) are not modelled, as in CBluetoothUnreliable.
CBluetoothReliable::CBluetoothReliable() {
    peer_.Reset();
}

// 0x829260 _ZN18CBluetoothReliableC2Ejb
// 0x8295c4 _ZN18CBluetoothReliableC1Ejb is the same body (skipped at that address).
// Partial in the same way as CBluetoothUnreliable's constructor: the channel and listen arguments
// are not used by the pseudocode, so they are ignored.
CBluetoothReliable::CBluetoothReliable(unsigned int channel, bool listen) : CBluetoothReliable() {
    (void)channel;
    (void)listen;
}

// 0x82917c _ZN18CBluetoothReliableD1Ev
// 0x8291fc _ZN18CBluetoothReliableD2Ev is the same body (skipped at that address); 0x8291e0
// _ZN18CBluetoothReliableD0Ev is the deleting variant (skipped).
// Reconstructed: RestartBluetooth runs first, then the members are destroyed by the compiler.
CBluetoothReliable::~CBluetoothReliable() {
    CBluetoothSocket::RestartBluetooth();
}

// 0x828da0 _ZN18CBluetoothReliable17AcceptConnectionsEv
// The socket check is vtable +0x5c of CBluetoothSocket, which is IsServer(). The transport type
// is the immediate 4 (MOV R0,#4 before the call; the value GetType() returns). AcceptCallback is
// static, so the call is CTransportManager::AcceptCallback(4, this). accept_enabled_ (+0x30) is
// only read here; no writer is recovered in this batch.
int CBluetoothReliable::AcceptConnections() {
    if (accept_enabled_ && socket_.IsServer() && (flags_ & 1) != 0) {
        CTransportManager::AcceptCallback(4, this);
    }
    return 0;
}

// 0x828df0 _ZN18CBluetoothReliable7ConnectER10CNetworkId
// Fails with -1 when the transport is not initialized. The vtable slot +0x28 of this class is
// IsConnectedTo(CNetworkId&), and the assembly passes the peer in r1, so IsConnectedTo(peer) is
// exact. A connected peer, or the stored peer itself, returns 0 without a copy. Otherwise the
// whole 28-byte CNetworkId is copied raw (seven words, flags included). That is a plain struct
// copy, not CNetworkId::Set, which copies only the fields the source's presence bits name.
int CBluetoothReliable::Connect(CNetworkId& peer) {
    if (!initialized_) {
        return -1;
    }
    if (IsConnectedTo(peer) || &peer == &peer_) {
        return 0;
    }
    peer_ = peer;
    return 0;
}

// 0x828e58 _ZN18CBluetoothReliable4OpenESsSsi
// The assembly stores the channel argument (r3) at +0x04 (STR R3,[R0,#4]), so channel_ is set.
// The address argument is copied into a temporary string that is freed at once; the copy has no
// observable effect and is not made. The name argument is not read. Returns 0.
int CBluetoothReliable::Open(std::string address, std::string name, int channel) {
    (void)address;
    (void)name;
    create_flags_ = static_cast<std::uint32_t>(channel);
    return 0;
}

// 0x828ec8 _ZN18CBluetoothReliable6ListenESsSs
// Forwards both strings to Open with channel 1 (MOV R3,#1 before the call) and returns its result.
int CBluetoothReliable::Listen(std::string address, std::string name) {
    return Open(address, name, 1);
}

// 0x8290dc _ZN18CBluetoothReliable16GetPeerNetworkIdEv
// The original calls CNetworkId::Reset (memset to zero, so field3 is 0), then sets presence bit 3
// (flags |= 0x8) on the returned id: SetField3(0).
CNetworkId CBluetoothReliable::GetPeerNetworkId() {
    CNetworkId id;
    id.Reset();
    id.SetField3(0);
    return id;
}

// 0x829694 _ZN18CBluetoothReliable17GetLocalNetworkIdEv
// The same body as GetPeerNetworkId.
CNetworkId CBluetoothReliable::GetLocalNetworkId() {
    CNetworkId id;
    id.Reset();
    id.SetField3(0);
    return id;
}

// 0x829400 _ZN18CBluetoothReliable6CreateESsSsi
// Allocates and constructs the transport (the allocator's memory hint is not modelled), calls
// Initialize (its return value is ignored), then Open(first, second, channel). The assembly passes
// the copy of the first argument as the address and the copy of the second as the name, so the
// order here is first, second. Returns the new transport.
CBluetoothReliable* CBluetoothReliable::Create(std::string first, std::string second, int channel) {
    auto* transport = new CBluetoothReliable();
    transport->Initialize();
    transport->Open(first, second, channel);
    return transport;
}

// 0x8294cc _ZN18CBluetoothReliable19InitializeTransportEv
// When s_initialized is clear, builds a CNetworkId with presence bit 3 (Reset, then flags |= 0x8), asks the
// transport manager for the host name of that id (vtable +0x1c, GetHostname, which the CTransportManagerImpl
// singleton implements), creates the transport with Create("Default Bluetooth Session", hostname, 1), calls
// Initialize on it, adds it to the manager and sets s_initialized. Returns 0.
int CBluetoothReliable::InitializeTransport() {
    if (!s_initialized_) {
        CNetworkId id;
        id.Reset();
        id.SetField3(0);
        const std::string name = "Default Bluetooth Session";
        const std::string host = GetTransportMgr()->GetHostname(id);
        CBluetoothReliable* transport = Create(name, host, 1);
        transport->Initialize();
        GetTransportMgr()->AddTransport(transport);
        s_initialized_ = true;
    }
    return 0;
}

// ---- CBluetoothUnreliable ----

// 0x8296bc _ZN20CBluetoothUnreliable7GetTypeEv
int CBluetoothUnreliable::GetType() {
    return 3;
}

// 0x8296c4 _ZN20CBluetoothUnreliable17CanDisconnectFromER10CNetworkId
bool CBluetoothUnreliable::CanDisconnectFrom(const CNetworkId& peer) {
    (void)peer;
    return false;
}

// 0x8296cc _ZN20CBluetoothUnreliable10InitializeEv
int CBluetoothUnreliable::Initialize() {
    if (initialized_) {
        return -1;
    }
    initialized_ = true;
    return 0;
}

// 0x8296e8 _ZN20CBluetoothUnreliable10DisconnectEv
int CBluetoothUnreliable::Disconnect() {
    if (!initialized_) {
        return -1;
    }
    initialized_ = false;
    return 0;
}

// 0x829704 _ZN20CBluetoothUnreliable11IsConnectedEv
bool CBluetoothUnreliable::IsConnected() {
    return false;
}

// 0x82970c _ZN20CBluetoothUnreliable13IsConnectedToER10CNetworkId
bool CBluetoothUnreliable::IsConnectedTo(const CNetworkId& peer) {
    (void)peer;
    return false;
}

// 0x829714 _ZN20CBluetoothUnreliable6IsPeerEv
bool CBluetoothUnreliable::IsPeer() const {
    return false;
}

// 0x82971c _ZN20CBluetoothUnreliable8IsClientEv
bool CBluetoothUnreliable::IsClient() const {
    return false;
}

// 0x829724 _ZN20CBluetoothUnreliable11IsListeningEv
bool CBluetoothUnreliable::IsListening() const {
    return initialized_ && socket_.IsServer() && (flags_ & 1) != 0;
}

// 0x829764 _ZN20CBluetoothUnreliable14StartBroadcastEv
void CBluetoothUnreliable::StartBroadcast() {}

// 0x829768 _ZN20CBluetoothUnreliable13StopBroadcastEv
void CBluetoothUnreliable::StopBroadcast() {}

// 0x82976c _ZN20CBluetoothUnreliable4SendER10CNetworkIdPvi
int CBluetoothUnreliable::Send(const CNetworkId& peer, const void* data, int len) {
    (void)peer;
    (void)data;
    (void)len;
    return -1;
}

// 0x829774 _ZN20CBluetoothUnreliable7ReceiveEv
int CBluetoothUnreliable::Receive() {
    return -1;
}

// 0x82977c _ZN20CBluetoothUnreliable7SetModeE19_tBLUETOOTH_SESSION
void CBluetoothUnreliable::SetMode(int session) {
    (void)session;
}

// 0x829780 _ZN20CBluetoothUnreliable18TerminateTransportEv
int CBluetoothUnreliable::TerminateTransport() {
    s_initialized_ = false;
    return 0;
}

// 0x829980 _ZN20CBluetoothUnreliableC2Ev
// 0x829c2c _ZN20CBluetoothUnreliableC1Ev is the same body (skipped at that address).
// Reconstructed: the peer id is reset and the other members take their defaults (flags 0, the
// initialized and accept flags false). The two std::string members of the original (device
// name copies at +0x34 and +0x50) are not modelled: they are always empty here.
CBluetoothUnreliable::CBluetoothUnreliable() {
    peer_.Reset();
}

// 0x829b5c _ZN20CBluetoothUnreliableC2Ejb
// 0x829ecc _ZN20CBluetoothUnreliableC1Ejb is the same body (skipped at that address).
// Reconstructed: the assembly overwrites both argument registers before reading them, so the
// channel and listen arguments are unused. The body is the default constructor's (see above).
// The initialized flag (+0x68) is not written here either; the port default (false) applies.
CBluetoothUnreliable::CBluetoothUnreliable(unsigned int channel, bool listen) : CBluetoothUnreliable() {
    (void)channel;
    (void)listen;
}

// 0x829a78 _ZN20CBluetoothUnreliableD1Ev
// 0x829af8 _ZN20CBluetoothUnreliableD2Ev is the same body (skipped at that address).
// Reconstructed: RestartBluetooth runs first, then the members are destroyed by the compiler.
CBluetoothUnreliable::~CBluetoothUnreliable() {
    CBluetoothSocket::RestartBluetooth();
}

// 0x8297f8 _ZN20CBluetoothUnreliable7ConnectER10CNetworkId
// Reconstructed. Fails with -1 when the transport is not initialized. A peer that is already
// connected, or the stored peer itself, returns 0 without a copy. Otherwise the peer is stored.
// The original calls IsConnectedTo through vtable +0x28; the call is direct here.
int CBluetoothUnreliable::Connect(CNetworkId& peer) {
    if (!initialized_) {
        return -1;
    }
    if (IsConnectedTo(peer) || &peer == &peer_) {
        return 0;
    }
    peer_.Set(peer);
    return 0;
}

// 0x8297a8 _ZN20CBluetoothUnreliable17AcceptConnectionsEv
// Calls CTransportManager::AcceptCallback(3, this) when accept_enabled_ (+0x30) is set, the socket
// reports a server role (vtable +0x5c of CBluetoothSocket, IsServer()) and the listening bit is set.
// The callback is a static call in the original (no GetTransportMgr() call). Returns 0.
// The constructors clear accept_enabled_; no recovered code sets it.
int CBluetoothUnreliable::AcceptConnections() {
    if (accept_enabled_ && socket_.IsServer() && (flags_ & 1) != 0) {
        CTransportManager::AcceptCallback(3, this);
    }
    return 0;
}

// 0x829860 _ZN20CBluetoothUnreliable4OpenESsSsi
// Stores the int argument in the +0x04 field (channel_). The address is copied into a temporary
// that is freed at once, and the name is never read, so neither has an effect. Returns 0.
int CBluetoothUnreliable::Open(std::string address, std::string name, int channel) {
    (void)address;
    (void)name;
    create_flags_ = static_cast<std::uint32_t>(channel);
    return 0;
}

// 0x8298d0 _ZN20CBluetoothUnreliable6ListenESsSs
// Calls Open with the two strings and channel 1 (the constant is in the fourth argument register
// in the assembly). Returns Open's result.
int CBluetoothUnreliable::Listen(std::string address, std::string name) {
    return Open(address, name, 1);
}

// 0x829a50 _ZN20CBluetoothUnreliable16GetPeerNetworkIdEv
// The assembly resets the id, writes field2 = 0 and sets its presence bit (flags 0x4): SetField2(0).
CNetworkId CBluetoothUnreliable::GetPeerNetworkId() {
    CNetworkId id;
    id.Reset();
    id.SetField2(0);
    return id;
}

// 0x829f9c _ZN20CBluetoothUnreliable17GetLocalNetworkIdEv
// The same body as GetPeerNetworkId (asm checked).
CNetworkId CBluetoothUnreliable::GetLocalNetworkId() {
    CNetworkId id;
    id.Reset();
    id.SetField2(0);
    return id;
}

// 0x829cfc _ZN20CBluetoothUnreliable6CreateESsSsi
// Reconstructed: builds a transport with the default constructor, initialises it, opens it with
// the arguments in order (first, second, channel) and returns it. The operator new memory hint of
// the original is not reproduced.
CBluetoothUnreliable* CBluetoothUnreliable::Create(std::string first, std::string second, int channel) {
    auto* transport = new CBluetoothUnreliable();
    transport->Initialize();
    transport->Open(first, second, channel);
    return transport;
}

// 0x829dc8 _ZN20CBluetoothUnreliable19InitializeTransportEv
// While s_initialized is clear: resets a CNetworkId and sets its presence bit 0x4; makes the name "Default
// Bluetooth Session"; takes the host name from the transport manager's vtable +0x1c (GetHostname); calls
// Create(name, hostname, 1); adds the transport to the manager; calls GetLocalNetworkId through the new
// object's vtable +0x18 and discards the result; then sets s_initialized. Unlike the reliable class there
// is no separate Initialize call. Returns 0.
int CBluetoothUnreliable::InitializeTransport() {
    if (!s_initialized_) {
        CNetworkId id;
        id.Reset();
        id.SetField2(0);
        const std::string name = "Default Bluetooth Session";
        const std::string host = GetTransportMgr()->GetHostname(id);
        CBluetoothUnreliable* transport = Create(name, host, 1);
        GetTransportMgr()->AddTransport(transport);
        (void)transport->GetLocalNetworkId();  // vtable +0x18, result discarded
        s_initialized_ = true;
    }
    return 0;
}
