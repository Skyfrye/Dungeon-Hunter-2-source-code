// The owner header first: the nested record's class definition follows CMatchingLocal's, so the owner
// must be complete before the tb header is pulled in.
#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/tb/cmatching_local_server_backup_net_struct.hpp"

// 0x806cac _ZN14CMatchingLocal21ServerBackupNetStructC1Ev
// Reconstructed. The pseudocode is the inline header store sequence for one NetStructInt<32> member
// (sizeBits 32, changeStamp 0, ackMask and sentMask -1, changeMask 0, changed false, value 0), which
// the net-transport NetStructInt<32> constructor produces, plus the base's packet history header
// (`*((_QWORD *)this + 39) = 0`, the std::map node header) and the DeclareMember call.
// The pseudocode reads the value at +0x150 before any store and clears it with SetChanged when it is
// nonzero; in C++ the member is value-initialised, so that branch cannot run. It is not a behavioural
// difference: a fresh member's change stamp is 0, so SetChanged there would only advance
// NetStruct::s_changeCounter -- the case this category has already settled (NOTES.md).
// CORRECTION of the old note: it said "the packet history at +0x10c is not initialised here in the
// original". It is: 0x806ce4 is `*((_QWORD *)this + 39) = 0`, the node-header zeroing.
CMatchingLocal::ServerBackupNetStruct::ServerBackupNetStruct() : NetStruct() {
    DeclareMember(&member_);
}

// 0x8062d0 _ZN14CMatchingLocal21ServerBackupNetStructD1Ev
// Reconstructed. The original erases the packet history tree when it is not empty and resets the
// header, which is std::map::clear on the NetStruct base's packetHistory_ (the real
// NetStruct::tPacketHistory is two 64-bit words, so clear() does the same work). The vptr stores and
// the member's inline teardown are the compiler's job.
CMatchingLocal::ServerBackupNetStruct::~ServerBackupNetStruct() {
    if (!packetHistory_.empty()) {
        packetHistory_.clear();
    }
}

// 0x806140 _ZN14CMatchingLocal21ServerBackupNetStructD0Ev
// Reconstructed. Deleting destructor: the D1 body, then CustomFree(this).
void CMatchingLocal::ServerBackupNetStruct::DeletingDestructor() {
    this->~ServerBackupNetStruct();
    CustomFree(this);
}
