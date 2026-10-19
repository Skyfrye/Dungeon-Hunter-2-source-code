// Batch g1-game-app-global-f216b6-21 (<global>, part 22 of 22). Rebuilt here: seven network singleton thunks,
// GetDedicatedServer and GetTimeDT. GetMessaging is at the end of this file (the net-session-online messaging header
// now shares a translation unit with the net-transport headers: one CNetMutex, one NetBitStream). GetLocalPosition is in
// g1-game-app-global-f216b6-21_gameswf.cpp (it calls the gameswf library, which is not built into dh2_game yet). Partial
// (the libtess types are not in the tree): KillVertex. Upstream (Box2D 2.0.1, ledger only, no body here): ComputeCentroid
// and ComputeOBB. Declarations: dh2/global/net_singletons.hpp, dh2/global/GetTimeDT.hpp and dh2/global/GetLocalPosition.hpp.

#include <cstring>

#include "dh2/global/GetTimeDT.hpp"
#include "dh2/global/net_singletons.hpp"
#include "dh2/global/runtime_support.hpp"

#include "net-session-online/c_messaging.hpp"
#include "net-session-online/c_online.hpp"
#include "net-transport/connection_manager.hpp"
#include "net-transport/net_log.hpp"
#include "net-transport/net_network_emulation.hpp"
#include "net-transport/packet_manager.hpp"

// Two net-transport headers carry inline stand-in accessors with the same names as our thunks (GetOnline in
// tb/net_player_manager_deps.hpp, GetTransportMgr in transport_manager.hpp). Those stand-ins are retired in the engine
// unification wave. Until then, rename them while their headers are included, as Character.hpp does for its clashes.
#define GetOnline GetOnline_standin_net_player_manager
#include "net-transport/tb/c_net_player_manager.hpp"
#undef GetOnline

#define GetTransportMgr GetTransportMgr_standin_transport_manager
#include "net-transport/transport_manager.hpp"
#undef GetTransportMgr

// ---------------------------------------------------------------------------------------------------------------
// Network singleton thunks. Each one is a single tail branch (asm: B <Owner>::GetInstance), so each forwards to the
// owner's static accessor and is not reimplemented (TRACK-B decision 4).
// ---------------------------------------------------------------------------------------------------------------

// 0x7fbd74 GetConnectionMgr(void)
// Thunk: B CConnectionManager::GetInstance (0x7fbd54).
CConnectionManager* GetConnectionMgr() {
    return CConnectionManager::GetInstance();
}

// 0x7fd794 GetOnline(void)
// Thunk: B COnline::GetInstance (0x7fd744).
COnline* GetOnline() {
    return COnline::GetInstance();
}

// 0x80f098 GetNetLog(void)
// Thunk: B CNetLog::GetInstance (0x80f07c).
CNetLog* GetNetLog() {
    return CNetLog::GetInstance();
}

// 0x8100dc GetNetPlayerMgr(void)
// Thunk: B CNetPlayerManager::GetInstance (0x8100bc).
CNetPlayerManager* GetNetPlayerMgr() {
    return CNetPlayerManager::GetInstance();
}

// 0x8151e8 GetPacketManager(void)
// Thunk: B CPacketManager::GetInstance (0x8151c8).
CPacketManager* GetPacketManager() {
    return CPacketManager::GetInstance();
}

// 0x81aa00 GetTransportMgr(void)
// Thunk: B CTransportManager::GetInstance (0x81a9e0).
CTransportManager* GetTransportMgr() {
    return CTransportManager::GetInstance();
}

// 0x826aa4 GetNetEmul(void)
// Thunk: B CNetworkEmulation::GetInstance (0x826a84).
CNetworkEmulation* GetNetEmul() {
    return CNetworkEmulation::GetInstance();
}

// ---------------------------------------------------------------------------------------------------------------
// Dedicated-server record.
// ---------------------------------------------------------------------------------------------------------------

// The cached record (.bss, symbol s_DedicatedServerInfo). Null until GetDedicatedServer creates it.
_tDedicatedServerInfo* s_DedicatedServerInfo = nullptr;

// 0x827a9c GetDedicatedServer(void)
// Asm: loads s_DedicatedServerInfo; when it is null, calls operator new(0x30, MemoryHintState 2) (_Znwj15MemoryHintState),
// zeroes all twelve words (+0x00 .. +0x2c), stores the pointer in s_DedicatedServerInfo and returns it.
// The record type has no layout in the tree (_tDedicatedServerInfo is only forward-declared, and
// ParseDedicatedServerInfo at 0x8279d8 reads it at offsets 24, 28, 30 and 44), so the whole 0x30-byte block is zeroed.
// Layout request: _tDedicatedServerInfo, size 0x30, all zero on creation.
_tDedicatedServerInfo* GetDedicatedServer() {
    if (s_DedicatedServerInfo == nullptr) {
        void* block = ::operator new(0x30u, static_cast<MemoryHintState>(2));
        std::memset(block, 0, 0x30u);
        s_DedicatedServerInfo = static_cast<_tDedicatedServerInfo*>(block);
    }
    return s_DedicatedServerInfo;
}

// ---------------------------------------------------------------------------------------------------------------
// Time step.
// ---------------------------------------------------------------------------------------------------------------

// 0x8616ac GetTimeDT(double, double)
// Asm: d = a2 - a1; the result is d unless d < 0.0, in which case it is 0.0. A NaN step is returned unchanged, because the
// comparison is false for NaN (the same compare the pseudocode makes). The double comes back in r0:r1.
double GetTimeDT(double a1, double a2) {
    const double step = a2 - a1;
    return step < 0.0 ? 0.0 : step;
}

// ---------------------------------------------------------------------------------------------------------------
// Partial and upstream functions. KillVertex has no body here (the libtess types it needs are not in the tree).
// ComputeCentroid and ComputeOBB are unmodified Box2D 2.0.1 code and are ledgered as upstream, with no body here.
// GetLocalPosition is in g1-game-app-global-f216b6-21_gameswf.cpp.
// ---------------------------------------------------------------------------------------------------------------

// 0x7dc1ec KillVertex(GLUvertex*, GLUvertex*)
// UPSTREAM: the static KillVertex of libtess (SGI GLU 9.0.0) mesh.c, line 224 of tinyxml-and-c-libs/upstream/libtess-glu-9.0.0/src/libtess/mesh.c, built
// in libdh2_vendor_libtess. The listing matches it step by step: the ring of half-edges from vDel->anEdge (+0x08) through Onext (+0x08) gets
// Org (+0x10) = newOrg, the vertex leaves the list (vNext = vDel->next at +0x00, vPrev = vDel->prev at +0x04; vNext->prev = vPrev;
// vPrev->next = vNext) and memFree (free) releases it. The symbol is file-static in the libtess translation unit, so no body is written here.

// 0x7e44f4 ComputeCentroid(b2Vec2 const*, int)
// UPSTREAM: Box2D 2.0.1, the static ComputeCentroid in Source/Collision/Shapes/b2PolygonShape.cpp of
// vendor-box2d/upstream/box2d-2.0.1 (line 44). The control flow and arithmetic match that source line by line: the triangle
// area 0.5 * cross(v[i], v[i+1]) with the reference point at the origin, the area accumulation, the area-weighted centroid
// sum with inv3 = 1.0f / 3.0f (the assembly loads that constant as MOVW/MOVT 0x3EAAAAAB), and then c *= 1.0f / area.
// Only the b2Assert calls are absent, as in a release build. With zero area (count <= 0, or a degenerate polygon) the
// result is NaN, as in upstream. The symbol is file-static in the Box2D translation unit, so no body is written here.

// 0x7e55ac ComputeOBB(b2OBB*, b2Vec2 const*, int)
// UPSTREAM: Box2D 2.0.1, the static ComputeOBB in Source/Collision/Shapes/b2PolygonShape.cpp of
// vendor-box2d/upstream/box2d-2.0.1 (line 91). The control flow and arithmetic match that source line by line (the rotating-calipers
// search over the polygon edges, the 0.95 area threshold, the rotation columns, center, and extents). Only the b2Assert
// calls are absent, as in a release build. The symbol is file-static in the Box2D translation unit, so no body is
// written here. b2OBB has the 0x20-byte layout R (b2Mat22, col1 at +0x00, col2 at +0x08), center +0x10, extents +0x18.

// 0x80b1c0 GetMessaging(void)
// Thunk: B CMessaging::GetInstance (0x80b16c).
CMessaging* GetMessaging() {
    return CMessaging::GetInstance();
}
