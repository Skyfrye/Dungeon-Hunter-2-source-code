#include "net-session-online/t_friend_info.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    tFriendInfo empty;
    CHECK(empty.Value00ForTest() == 0);
    CHECK(empty.Value1cForTest() == 0);

    tFriendInfo copy(empty);
    CHECK(copy.Value00ForTest() == 0);
    CHECK(copy.Value1cForTest() == 0);

    if (failures == 0) std::printf("all checks passed\n");
    return failures == 0 ? 0 : 1;
}
