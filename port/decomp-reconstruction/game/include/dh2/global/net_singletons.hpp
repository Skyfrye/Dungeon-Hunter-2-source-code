// Network singleton accessors (<global>, batch g1-game-app-global-f216b6-21). Eight of them are thunks that tail-branch
// to the owner's static GetInstance(), and GetDedicatedServer() lazily creates the dedicated-server record.
// Types are forward-declared here so that game code does not pull in the net-transport and net-session-online
// dependency headers; the definitions in game-app/src/g1-game-app-global-f216b6-21.cpp include them.
#pragma once

#include <cstdint>

class CConnectionManager;
class COnline;
class CMessaging;
class CNetLog;
class CNetPlayerManager;
class CPacketManager;
class CTransportManager;
class CNetworkEmulation;
// The dedicated-server record, 0x30 bytes (GetDedicatedServer 0x827a9c allocates 0x30 and zeroes twelve words). Only the four
// fields ParseDedicatedServerInfo (0x8279d8) writes are named by offset; the rest is unread by any recovered function.
struct _tDedicatedServerInfo {
    std::uint32_t unk_00[6];  // +0x00 .. +0x17
    std::uint32_t address;    // +0x18 inet_addr() of the host name read from the packet
    std::int16_t unk_1c;      // +0x1c first getShort of the packet
    std::int16_t unk_1e;      // +0x1e second getShort of the packet
    std::uint32_t unk_20[3];  // +0x20 .. +0x2b
    std::int32_t unk_2c;      // +0x2c getInt of the packet
};

// Thunks: each is `B <Owner>::GetInstance` in the binary, so the result is the singleton that call returns.
CConnectionManager* GetConnectionMgr();   // 0x7fbd74 -> CConnectionManager::GetInstance (0x7fbd54)
COnline* GetOnline();                     // 0x7fd794 -> COnline::GetInstance (0x7fd744)
CMessaging* GetMessaging();               // 0x80b1c0 -> CMessaging::GetInstance (0x80b16c)
CNetLog* GetNetLog();                     // 0x80f098 -> CNetLog::GetInstance (0x80f07c)
CNetPlayerManager* GetNetPlayerMgr();     // 0x8100dc -> CNetPlayerManager::GetInstance (0x8100bc)
CPacketManager* GetPacketManager();       // 0x8151e8 -> CPacketManager::GetInstance (0x8151c8)
CTransportManager* GetTransportMgr();     // 0x81aa00 -> CTransportManager::GetInstance (0x81a9e0)
CNetworkEmulation* GetNetEmul();          // 0x826aa4 -> CNetworkEmulation::GetInstance (0x826a84)

// The dedicated-server record, created on first use and zeroed (0x30 bytes). Its layout is not in the tree.
_tDedicatedServerInfo* GetDedicatedServer();  // 0x827a9c
extern _tDedicatedServerInfo* s_DedicatedServerInfo;  // the cached record, null until GetDedicatedServer runs

// The online gate: true when this is an online game, the comm lib is initialised, the local member is in a room and the net
// player manager is initialised. The binary has no function for it (the compiler inlined the test into each caller); the
// definition is game-app/src/net_gate.cpp. Callers take their single-player branch when it is false.
bool NetGateOpen();

// The byte at COnline +0x05 (COnline::IsOnlineGame()). The original reads *(GetOnline() + 5) inline at each use; the definition
// is game-app/src/net_gate.cpp.
bool GetOnlineGameFlag();
