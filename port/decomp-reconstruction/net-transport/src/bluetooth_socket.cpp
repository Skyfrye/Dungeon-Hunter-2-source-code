#include "net-transport/bluetooth_socket.hpp"

CEventQueueBase CBluetoothSocketAbstract::s_eventQueue(100);
std::string CBluetoothSocketAbstract::s_DisplayName;

// 0x828c14 _ZN24CBluetoothSocketAbstract16SetSocketOptionsEj
int CBluetoothSocketAbstract::SetSocketOptions(unsigned int options) {
    (void)options;
    return 0;
}

// 0x828c1c _ZN24CBluetoothSocketAbstract14GetSocketErrorEv
int CBluetoothSocketAbstract::GetSocketError() {
    return 0;
}

// 0x828c24 _ZN24CBluetoothSocketAbstract10WouldBlockEv
bool CBluetoothSocketAbstract::WouldBlock() {
    return false;
}

// 0x828c2c _ZNK24CBluetoothSocketAbstract12IsConnectingEv
bool CBluetoothSocketAbstract::IsConnecting() const {
    return false;
}

// 0x828c34 _ZN24CBluetoothSocketAbstract9TerminateEv
void CBluetoothSocketAbstract::Terminate() {}

// 0x828c38 _ZN24CBluetoothSocketAbstract16UpdateConnectingEv
void CBluetoothSocketAbstract::UpdateConnecting() {}

// 0x824da8 _ZN24CBluetoothSocketAbstract21GetDeviceNameByPeerIdEj
std::string CBluetoothSocketAbstract::GetDeviceNameByPeerId(unsigned int peer) const {
    (void)peer;
    return std::string();
}

// 0x824c80 _ZN16CBluetoothSocket16RestartBluetoothEv
void CBluetoothSocket::RestartBluetooth() {}

// 0x824c84 _ZN16CBluetoothSocket22DisconnectFromAllPeersEv
int CBluetoothSocket::DisconnectFromAllPeers() {
    return 1;
}

// 0x828c3c _ZNK16CBluetoothSocket11IsConnectedEv
bool CBluetoothSocket::IsConnected() const {
    return false;
}

// 0x828c44 _ZN16CBluetoothSocket12OpenReliableESsjb
int CBluetoothSocket::OpenReliable(std::string address, unsigned int channel, bool listen) {
    (void)address;
    (void)channel;
    (void)listen;
    return 0;
}

// 0x828c4c _ZN16CBluetoothSocket14OpenUnreliableESsjb
int CBluetoothSocket::OpenUnreliable(std::string address, unsigned int channel, bool listen) {
    (void)address;
    (void)channel;
    (void)listen;
    return 0;
}

// 0x828c54 _ZN16CBluetoothSocket5CloseEv
int CBluetoothSocket::Close() {
    return 0;
}

// 0x828c5c _ZN16CBluetoothSocket7ConnectEj
int CBluetoothSocket::Connect(unsigned int peer) {
    (void)peer;
    return 0;
}

// 0x828c64 _ZN16CBluetoothSocket4SendEPKvi
int CBluetoothSocket::Send(const void* data, int len) {
    (void)data;
    (void)len;
    return 0;
}

// 0x828c6c _ZN16CBluetoothSocket6SendToEjPKvi
int CBluetoothSocket::SendTo(unsigned int peer, const void* data, int len) {
    (void)peer;
    (void)data;
    (void)len;
    return 0;
}

// 0x828c74 _ZN16CBluetoothSocket7ReceiveEPci
int CBluetoothSocket::Receive(char* buf, int len) {
    (void)buf;
    (void)len;
    return 0;
}

// 0x828c7c _ZN16CBluetoothSocket11ReceiveFromEjPci
int CBluetoothSocket::ReceiveFrom(unsigned int peer, char* buf, int len) {
    (void)peer;
    (void)buf;
    (void)len;
    return 0;
}

// 0x828c84 _ZNK16CBluetoothSocket14GetLocalPeerIdEv
unsigned int CBluetoothSocket::GetLocalPeerId() const {
    return 0;
}

// 0x828c8c _ZNK16CBluetoothSocket15GetRemotePeerIdEv
unsigned int CBluetoothSocket::GetRemotePeerId() const {
    return 0;
}

// 0x828c94 _ZNK16CBluetoothSocket6IsPeerEv
bool CBluetoothSocket::IsPeer() const {
    return false;
}

// 0x828c9c _ZNK16CBluetoothSocket8IsClientEv
bool CBluetoothSocket::IsClient() const {
    return false;
}

// 0x828ca4 _ZNK16CBluetoothSocket8IsServerEv
bool CBluetoothSocket::IsServer() const {
    return false;
}

// 0x828cac _ZN16CBluetoothSocket14StartBroadcastEv
void CBluetoothSocket::StartBroadcast() {}

// 0x828cb0 _ZN16CBluetoothSocket13StopBroadcastEv
void CBluetoothSocket::StopBroadcast() {}

// 0x828fe0 _ZNK16CBluetoothSocket19GetRemoteDeviceNameEv
std::string CBluetoothSocket::GetRemoteDeviceName() const {
    return std::string();
}
