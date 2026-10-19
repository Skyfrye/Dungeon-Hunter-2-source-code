// Tests the parse behind GameCenter::GetGCPlayerGroup (0x499694): the two values are written as text and read
// back with strtol on a 32-bit long. GetGCPlayerGroup itself needs the running game (PlayerManager, the
// savegames and the Flash root), so only the pure part is checked here.
#include "net-session-online/tb/gc_player_group.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    using gc_player_group::ComposeGCPlayerGroup;
    using gc_player_group::Strtol32Decimal;

    // The digits of first are followed by the digits of second, and the result is one decimal number.
    CHECK(ComposeGCPlayerGroup(1, 2) == 12);
    CHECK(ComposeGCPlayerGroup(7, 45) == 745);
    CHECK(ComposeGCPlayerGroup(100, 0) == 1000);
    CHECK(ComposeGCPlayerGroup(0, 0) == 0);
    // A negative first keeps its sign. A sign in the second text ends the number, as strtol stops there.
    CHECK(ComposeGCPlayerGroup(-5, 12) == -512);
    CHECK(ComposeGCPlayerGroup(-5, -12) == -5);
    // The 32-bit long saturates: 21474836471 gives LONG_MAX, and -21474836470 gives LONG_MIN.
    CHECK(ComposeGCPlayerGroup(2147483647, 1) == 2147483647);
    CHECK(ComposeGCPlayerGroup(-2147483647, 0) == (-2147483647 - 1));

    // Strtol32Decimal on its own: white space, sign, trailing text, no digits, and the limits.
    CHECK(Strtol32Decimal("42") == 42);
    CHECK(Strtol32Decimal("  42xyz") == 42);
    CHECK(Strtol32Decimal("+7") == 7);
    CHECK(Strtol32Decimal("-2147483648") == (-2147483647 - 1));
    CHECK(Strtol32Decimal("2147483647") == 2147483647);
    CHECK(Strtol32Decimal("2147483648") == 2147483647);
    CHECK(Strtol32Decimal("-2147483649") == (-2147483647 - 1));
    CHECK(Strtol32Decimal("99999999999999999999") == 2147483647);
    CHECK(Strtol32Decimal("") == 0);
    CHECK(Strtol32Decimal("-") == 0);
    CHECK(Strtol32Decimal("x1") == 0);

    std::printf("%s\n", failures ? "r1n-net-session-online-GameCenter-7accff-0: FAILED"
                                 : "r1n-net-session-online-GameCenter-7accff-0: ok");
    return failures != 0;
}
