#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/deps/matching_queue.hpp"

// 0x807c70 _ZN14CMatchingLocal10InitializeEi
// Re-verified against the 16-instruction asm: CMatching::Initialize(arg); `LDRB R5,[R6,#0xC]; CMP R5,#0;
// BNE loc_807CF0` -- the registration block runs only when the initialized byte (+0x0c) is ZERO, and the
// function returns 0 either way. Inside: RegisterPacketType(2, 2, sBroadcastPacketReceiverCallback),
// RegisterPacketType(3, 1, sBroadcastPacketReceiverCallback), RegisterPacketType(4, 1,
// sPacketReceiverCallback), Reset(), then internal event 0x800001 (AddEvent with a null payload and size
// 0 -- the asm's R2/R3 are the zero byte). Every step of the body matches.
// Correction of the previous note: it said "Nothing in this port sets initialized_ (+0x0c) to true yet" --
// the base CMatching::Initialize (0x7ff85c) has since been reconstructed and does set it, and the base's
// own remaining gaps (the packet-manager registration and the room-attributes calls) are recorded in its
// row, not here.
std::int32_t CMatchingLocal::Initialize(std::int32_t arg) {
    CMatching::Initialize(arg);
    if (!initialized_) {
        CConnectionManager::GetInstance()->RegisterPacketType(2, 2, &CMatchingLocal::sBroadcastPacketReceiverCallback);
        CConnectionManager::GetInstance()->RegisterPacketType(3, 1, &CMatchingLocal::sBroadcastPacketReceiverCallback);
        CConnectionManager::GetInstance()->RegisterPacketType(4, 1, &CMatchingLocal::sPacketReceiverCallback);
        Reset();
        MatchingInternalEventQueue().AddEvent(8388609, nullptr, 0);  // 0x800001
    }
    return 0;
}

// 0x80605c _ZN14CMatchingLocal9TerminateEv
// Partial: the base CMatching::Terminate() runs as in the original, but the base has no body in the port
// (0x7ff5a0 is partial), so it does nothing here.
std::int32_t CMatchingLocal::Terminate() {
    if (initialized_) {
        initialized_ = false;
        CMatching::Terminate();
        CConnectionManager::GetInstance()->UnregisterPacketType(2);
        CConnectionManager::GetInstance()->UnregisterPacketType(3);
        CConnectionManager::GetInstance()->UnregisterPacketType(4);
    }
    return 0;
}

// 0x806098 _ZN14CMatchingLocal9PingRoomsEv
std::int32_t CMatchingLocal::PingRooms() {
    MatchingInternalEventQueue().AddEvent(8388624, nullptr, 0);  // 0x800010
    return 0;
}
