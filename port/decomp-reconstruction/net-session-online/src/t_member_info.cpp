#include "net-session-online/t_member_info.hpp"

// 0x821dbc _ZN11tMemberInfoD1Ev
// Reconstructed. The body sets the id to -1 and the +0x24 int to 0, then releases the value
// string's buffer. The original does that release inline (CustomFree above 0x80 bytes, the
// node allocator below); here std::string's own destructor runs after this body and does the
// same release, so the STL allocator split is not reproduced.
tMemberInfo::~tMemberInfo() {
    value24_ = 0;
    memberId_ = -1;
}
