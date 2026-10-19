// Test support for CMessaging, CMessage and their callers. The constructor and destructor register and
// unregister packet slot 1 with CPacketManager (net-transport/src/packet_manager.cpp), and CMessage reads
// the matching object through CMatching::Get (defined with the matching provider in glx_320e98.cpp).
// Linking those files pulls in the transport and every matching class, so a messaging test binary uses
// these weak stand-ins instead. A binary that links the real files uses them, because a strong definition
// replaces a weak one at link time. The stand-ins record nothing: CMatching::Get returns the object that the
// test installed with CMatching::Set. The weak attribute needs GCC or MinGW.
#pragma once

#if defined(__GNUC__)
#include "net-session-online/deps/matching.hpp"
#include "net-transport/packet_manager.hpp"

__attribute__((weak)) CMatching* CMatching::s_Matching = nullptr;

__attribute__((weak)) CMatching* CMatching::Get() { return s_Matching; }

// The base class's out-of-line members that a test matching object does not override. The test's
// matching class overrides the virtual calls the messaging code makes (IsServer, GetRoomMask and the
// member id functions), so these bodies are not reached.
__attribute__((weak)) CMatching::CMatching() {}

__attribute__((weak)) std::int32_t CMatching::WritePacketData(std::int32_t a2, std::int32_t a3,
                                                              NetBitStream& stream) {
    (void)a2;
    (void)a3;
    (void)stream;
    return 0;
}

// The vtable of CMatching is emitted in the translation unit that defines its key function (the first
// out-of-line virtual, WritePacketData above), so this file emits it and needs the out-of-line virtuals it
// refers to. The test's matching class overrides IsServer and GetRoomMask.
__attribute__((weak)) bool CMatching::IsServer() const { return false; }

__attribute__((weak)) std::uint32_t CMatching::GetRoomMask() const { return 0; }

__attribute__((weak)) int CMatching::Update() { return 0; }

__attribute__((weak)) int CMatching::Initialize(int memberCapacity) {
    (void)memberCapacity;
    return 0;
}

__attribute__((weak)) int CPacketManager::RegisterPacketSlot(PACKET_SLOTS slot,
                                                             bool (*write)(int, int, NetBitStream&),
                                                             void (*read)(int, int, NetBitStream&),
                                                             void (*ack)(int, int), void (*lost)(int, int)) {
    (void)slot;
    (void)write;
    (void)read;
    (void)ack;
    (void)lost;
    return 0;
}

__attribute__((weak)) int CPacketManager::UnregisterPacketSlot(PACKET_SLOTS slot) {
    (void)slot;
    return 0;
}
#endif
