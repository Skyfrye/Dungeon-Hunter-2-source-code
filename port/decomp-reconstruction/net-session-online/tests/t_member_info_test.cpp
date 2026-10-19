#include "net-session-online/t_member_info.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // The destructor resets the id and +0x24 word. Those words cannot be read after the
    // destructor runs without undefined behaviour, so this test only checks the fields before
    // the object is destroyed, then the destructor runs at end of scope.
    {
        tMemberInfo info;
        info.SetForTest(5, 9);
        CHECK(info.MemberIdForTest() == 5);
        CHECK(info.Value24ForTest() == 9);
    }

    if (failures == 0) std::printf("t_member_info_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
