#include "net-session-online/c_matching_local.hpp"
#include "net-session-online/member_mask.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Ids 1..16 use bit 0, 17..32 use bit 1, and so on. Id 0 and negative ids give 0.
    CHECK(MemberMaskForId(0) == 0);
    CHECK(MemberMaskForId(-3) == 0);
    CHECK(MemberMaskForId(1) == 1);
    CHECK(MemberMaskForId(16) == 1);
    CHECK(MemberMaskForId(17) == 2);
    CHECK(MemberMaskForId(33) == 4);
    CHECK(MemberMaskForId(16 * 31 + 1) == static_cast<std::int32_t>(1u << 31));
    CHECK(MemberMaskForId(16 * 32 + 1) == 0);  // shift 32: ARM gives 0

    CMatchingLocal local;
    CHECK(local.GetMemberMask(17) == 2);
    CHECK(local.GetInvitationRoomId() == 0);
    // The constructor ends with Reset() (0x8074a4), which closes and hides the room (asm: both flags are
    // written with 1 on every path).
    CHECK(local.IsRoomClosed());
    CHECK(local.IsRoomHidden());
    local.SetMemberId(9);
    CHECK(local.MemberIdForTest() == 9);
    local.SetRoomFlagsForTest(true, false);
    CHECK(local.IsRoomClosed());
    CHECK(local.IsRoomHidden());               // closed flag is what the hidden test falls back to
    local.SetRoomFlagsForTest(false, true);
    CHECK(!local.IsRoomClosed());
    CHECK(local.IsRoomHidden());

    std::printf("%s\n", failures ? "c_matching_local: FAILED" : "c_matching_local: ok");
    return failures != 0;
}
