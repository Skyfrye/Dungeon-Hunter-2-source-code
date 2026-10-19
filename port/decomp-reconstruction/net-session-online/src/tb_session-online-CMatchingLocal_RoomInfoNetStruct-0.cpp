// The owner header first: the nested record's class definition follows CMatchingLocal's, so the owner
// must be complete before the tb header is pulled in.
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/tb/cmatching_local_room_info_net_struct.hpp"

// 0x806964 _ZN14CMatchingLocal17RoomInfoNetStructC1Ev
// Reconstructed. The pseudocode is the inline header store sequence for four members, which the
// net-transport member constructors produce exactly (NetStructBool: sizeBits 1, stamp 0,
// ackMask/sentMask -1, changeMask 0, changed false, value byte after the base; NetStructInt<32>:
// sizeBits 32, same masks, value at +0x20 of the member). In order:
//   member 1 (+0x130, bool): the value byte at +0x14d is read first; when set it is stored 0 and
//     SetChanged runs.
//   member 2 (+0x150, bool): same, value byte at +0x16d.
//   member 3 (+0x170, NetStructInt<32>): the value at +0x190 is read; when nonzero it is stored 0 and
//     SetChanged runs.
//   member 4 (+0x198, NetStructInt<32>): same, value at +0x1b8.
//   then DeclareMember for 1, 2, 3, 4 in that order.
// The four "read before any store" branches cannot run in C++ (the members are value-initialised), and
// that is not a behavioural difference: a fresh member's change stamp is 0, so SetChanged there would
// only advance NetStruct::s_changeCounter -- the case this category has already settled (NOTES.md,
// SetCharacterXP / SetCharacterNumPotions). The packet history map at +0x10c is default-constructed
// empty by the NetStruct base, as the original does with `*((_QWORD *)this + 39) = 0`.
CMatchingLocal::RoomInfoNetStruct::RoomInfoNetStruct() : NetStruct() {
    DeclareMember(&unk130_);
    DeclareMember(&unk150_);
    DeclareMember(&unk170_);
    DeclareMember(&unk198_);
}

// 0x8061bc _ZN14CMatchingLocal17RoomInfoNetStructD1Ev
// Reconstructed. The original erases the packet history tree when it is not empty and resets the
// header, which is std::map::clear on the NetStruct base's packetHistory_ (the real
// NetStruct::tPacketHistory is two 64-bit words, so clear() does the same work). The vptr stores and
// the four members' inline teardown are the compiler's job.
CMatchingLocal::RoomInfoNetStruct::~RoomInfoNetStruct() {
    if (!packetHistory_.empty()) {
        packetHistory_.clear();
    }
}

// 0x80623c _ZN14CMatchingLocal17RoomInfoNetStructD0Ev
// Reconstructed, as D1 above: the deleting destructor is the D1 body, then CustomFree(this).
void CMatchingLocal::RoomInfoNetStruct::DeletingDestructor() {
    this->~RoomInfoNetStruct();
    CustomFree(this);
}
