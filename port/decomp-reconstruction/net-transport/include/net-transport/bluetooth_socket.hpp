// CBluetoothSocket and its abstract base. The original Android build has no Bluetooth
// stack behind these: most bodies return constants, and the port keeps those constants.
// Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout: CBluetoothSocketAbstract holds a std::string at +0x04 (the device
// name, libstdc++ internals not modelled). CBluetoothSocket adds no members.
#pragma once

#include <cstdint>
#include <string>

#include "net-session-online/c_event_queue_base.hpp"

class CBluetoothSocketAbstract {
public:
    virtual ~CBluetoothSocketAbstract() = default;     // 0x828fac _ZN24CBluetoothSocketAbstractD1Ev
    virtual int SetSocketOptions(unsigned int options);  // 0x828c14 _ZN24CBluetoothSocketAbstract16SetSocketOptionsEj
    virtual int GetSocketError();                        // 0x828c1c _ZN24CBluetoothSocketAbstract14GetSocketErrorEv
    virtual bool WouldBlock();                           // 0x828c24 _ZN24CBluetoothSocketAbstract10WouldBlockEv
    virtual bool IsConnecting() const;                   // 0x828c2c _ZNK24CBluetoothSocketAbstract12IsConnectingEv
    virtual void Terminate();                            // 0x828c34 _ZN24CBluetoothSocketAbstract9TerminateEv
    virtual void UpdateConnecting();                     // 0x828c38 _ZN24CBluetoothSocketAbstract16UpdateConnectingEv
    // Always the empty string in the original, whatever the peer.
    std::string GetDeviceNameByPeerId(unsigned int peer) const;  // 0x824da8 _ZN24CBluetoothSocketAbstract21GetDeviceNameByPeerIdEj

    // The socket layer's event queue (CEventQueue<..., 100>; ids 0x1xxxxxx) read by CMatchingBluetooth::ProcessEvents.
    static CEventQueueBase s_eventQueue;
    // The name this device announces over Bluetooth (set by CMatchingBluetooth).
    static std::string s_DisplayName;

private:
    std::string device_name_;                            // +0x04
};

class CBluetoothSocket : public CBluetoothSocketAbstract {
public:
    ~CBluetoothSocket() override = default;              // 0x828f78 _ZN16CBluetoothSocketD1Ev

    static void RestartBluetooth();                      // 0x824c80 _ZN16CBluetoothSocket16RestartBluetoothEv
    static int DisconnectFromAllPeers();                 // 0x824c84 _ZN16CBluetoothSocket22DisconnectFromAllPeersEv

    bool IsConnected() const;                            // 0x828c3c _ZNK16CBluetoothSocket11IsConnectedEv
    int OpenReliable(std::string address, unsigned int channel, bool listen);    // 0x828c44
    int OpenUnreliable(std::string address, unsigned int channel, bool listen);  // 0x828c4c
    int Close();                                         // 0x828c54 _ZN16CBluetoothSocket5CloseEv
    int Connect(unsigned int peer);                      // 0x828c5c _ZN16CBluetoothSocket7ConnectEj
    int Send(const void* data, int len);                 // 0x828c64 _ZN16CBluetoothSocket4SendEPKvi
    int SendTo(unsigned int peer, const void* data, int len);  // 0x828c6c _ZN16CBluetoothSocket6SendToEjPKvi
    int Receive(char* buf, int len);                     // 0x828c74 _ZN16CBluetoothSocket7ReceiveEPci
    int ReceiveFrom(unsigned int peer, char* buf, int len);    // 0x828c7c _ZN16CBluetoothSocket11ReceiveFromEjPci
    unsigned int GetLocalPeerId() const;                 // 0x828c84 _ZNK16CBluetoothSocket14GetLocalPeerIdEv
    unsigned int GetRemotePeerId() const;                // 0x828c8c _ZNK16CBluetoothSocket15GetRemotePeerIdEv
    bool IsPeer() const;                                 // 0x828c94 _ZNK16CBluetoothSocket6IsPeerEv
    bool IsClient() const;                               // 0x828c9c _ZNK16CBluetoothSocket8IsClientEv
    bool IsServer() const;                               // 0x828ca4 _ZNK16CBluetoothSocket8IsServerEv
    void StartBroadcast();                               // 0x828cac _ZN16CBluetoothSocket14StartBroadcastEv
    void StopBroadcast();                                // 0x828cb0 _ZN16CBluetoothSocket13StopBroadcastEv
    std::string GetRemoteDeviceName() const;             // 0x828fe0 _ZNK16CBluetoothSocket19GetRemoteDeviceNameEv
};
