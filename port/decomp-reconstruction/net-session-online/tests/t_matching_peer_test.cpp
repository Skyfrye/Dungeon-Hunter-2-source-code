#include "net-session-online/t_matching_peer.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Default construction: zero fields, empty name, reset address.
    tMatchingPeer empty;
    CHECK(empty.memberId == 0);
    CHECK(empty.lastSeenMs == 0);
    CHECK(empty.name.empty());
    CHECK(!empty.address.IsEqual(CNetworkId{}));  // no presence bit in common (binary: IsEqual needs one)

    // Copy keeps every field, including the address bytes and the name.
    tMatchingPeer source;
    source.memberId = 42;
    source.lastSeenMs = 1000;
    source.rank = 7;
    source.timeOffset = -5;
    source.name = "room.server";
    source.address.SetAddress0(0xAB, 0);
    tMatchingPeer copy(source);
    CHECK(copy.memberId == 42);
    CHECK(copy.lastSeenMs == 1000);
    CHECK(copy.rank == 7);
    CHECK(copy.timeOffset == -5);
    CHECK(copy.name == "room.server");
    CHECK(copy.address.IsEqual(source.address));
    { std::uint16_t lo = 0; std::uint32_t hi = 0; copy.address.GetAddress0(lo, hi); CHECK(lo == 0xAB); }

    // The copy is independent of the source.
    source.name = "changed";
    CHECK(copy.name == "room.server");

    std::printf("%s\n", failures ? "t_matching_peer: FAILED" : "t_matching_peer: ok");
    return failures != 0;
}
