// The owner header first: the nested record's class definition follows CMatchingGLLive's, so the owner
// must be complete before the tb header is pulled in.
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/tb/cmatching_gl_live_member_info_net_struct.hpp"

// 0x81e680 _ZN15CMatchingGLLive19MemberInfoNetStructC1Ev (C2 is not emitted; the symbol is C1 only)
// Reconstructed. The pseudocode and the assembly (0x81e6ac..0x81e6f0) show, in order:
//   1. NetStruct::NetStruct(this) -- implicit here.
//   2. *this = off_992770, i.e. the derived vptr = _ZTVN15CMatchingGLLive19MemberInfoNetStructE + 8
//      (0x992768 + 8, computed as a GOT-relative load at 0x81e6b0..0x81e6cc). The compiler's job.
//   3. A stack std::string temporary is built from "" (0x3140ec) and the NetStructString<16> member at
//      this+0x130 is built from it (0x81e5a0), then the temporary is destroyed (0x318254). Reproduced
//      by the NetStructString<16> member's constructor, whose own body is reconstructed in
//      net-transport/src/tb_transport-NetStructString-0.cpp.
//   4. NetStruct::DeclareMember(this, this+0x130) -- ONE call, so the record has exactly one declared
//      member and its bit is member 0 of the record's struct. That single call is why this record is
//      360 bytes and the base's three-member record is 432.
CMatchingGLLive::MemberInfoNetStruct::MemberInfoNetStruct() : NetStruct(), member_(std::string()) {
    DeclareMember(&member_);
}

// 0x81d1f4 _ZN15CMatchingGLLive19MemberInfoNetStructD1Ev
// Reconstructed, from the assembly rather than from the pseudocode, because the pseudocode misnames one
// of the three addresses. In order (0x81d21c..0x81d280):
//   * STR vptr = _ZTVN15CMatchingGLLive19MemberInfoNetStructE+8 into this+0x000 (0x81d21c).
//   * STR vptr = _ZTV19NetStructMemberTypeISsE+8 into this+0x130 (0x81d220), THEN
//     `ADD R0, R0, #0x150` and std::string::~string(this+0x150) (0x81d224/0x81d228): the destroyed
//     string is the NetStructString<16> member's value_ at member+0x20 = 0x130+0x20, NOT "this+0x38".
//     The previous note's "+0x38" came from the pseudocode's `(std::string *)this + 14` (14 * 4 = 0x38),
//     which is wrong: the assembly's `ADD R0, R0, #0x150` is the real operand. So the member's own
//     teardown IS reproduced here, by NetStructString<16>'s destructor (0x81d078, reconstructed in
//     net-transport/src/tb_transport-NetStructString-0.cpp).
//   * STR vptrs = _ZTV15NetStructMember+8 and _ZTV9NetStruct+8 into this+0x130 and this+0x000
//     (0x81d24c/0x81d250) -- the compiler's job.
//   * The packet-history erase (0x81d234..0x81d278), exactly the NetStruct base layout: node count at
//     +0x11C, root at +0x110, std::map header at +0x10C, left/right at +0x114/+0x118. That is
//     std::map::clear, done here when the map is not empty.
CMatchingGLLive::MemberInfoNetStruct::~MemberInfoNetStruct() {
    if (!packetHistory_.empty()) {
        packetHistory_.clear();
    }
}

// 0x81d298 _ZN15CMatchingGLLive19MemberInfoNetStructD0Ev
// Reconstructed, as D1 above: the deleting destructor is the D1 body, then CustomFree(this). The port
// has no deleting-destructor symbol, so the D0 body lives in this named helper, as the CMatchingLocal
// records' do.
void CMatchingGLLive::MemberInfoNetStruct::DeletingDestructor() {
    this->~MemberInfoNetStruct();
    CustomFree(this);
}
