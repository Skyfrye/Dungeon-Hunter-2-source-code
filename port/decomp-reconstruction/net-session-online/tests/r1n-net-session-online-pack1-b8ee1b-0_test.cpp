// Tests for batch r1n-net-session-online-pack1-b8ee1b-0: CMatchingBluetooth::GenerateBluetoothDeviceName
// (the "|m=" and "|i_<n>=" fields) and CXPlayerManager::Init (the flag, the error code and the
// services that stay absent when the server-config status is not 1).
#include <cstdio>
#include <string>

#include "net-session-online/c_matching_bluetooth.hpp"
#include "room_test_helpers.hpp"
#include "net-session-online/cxplayer_manager.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static void TestDeviceName() {
    // No active int attribute: only the member id field.
    tMatchingPeer peer;
    peer.memberId = 7;
    CHECK(CMatchingBluetooth::GenerateBluetoothDeviceName(peer) == "|m=7|");

    // Active int attributes 1, 3 and 7 are written in order. Attribute 0 and 2 inactive ones are skipped.
    peer.roomAttributes.SetAttributeInt(RoomInt(7), 70);
    peer.roomAttributes.SetAttributeInt(RoomInt(3), 30);
    peer.roomAttributes.SetAttributeInt(RoomInt(1), 10);
    CHECK(CMatchingBluetooth::GenerateBluetoothDeviceName(peer) == "|m=7|i_1=10|i_3=30|i_7=70|");

    // Member id is written with %d, so negative ids keep their sign.
    peer.memberId = -2;
    CHECK(CMatchingBluetooth::GenerateBluetoothDeviceName(peer) == "|m=-2|i_1=10|i_3=30|i_7=70|");
}

static void TestCXPlayerManagerInit() {
    // Init runs once. The server-config status is -1 when the GGI is zero (the default), so no login
    // or leaderboard service is created and the state is not changed to 4.
    CXPlayerManager manager;
    CHECK(manager.StateForTest() == 0);
    manager.Init();
    CHECK(manager.StateForTest() == 0);
    CHECK(manager.IsLoggedIn() == 0);
    manager.Init();  // second call is a no-op
    CHECK(manager.StateForTest() == 0);
}

int main() {
    TestDeviceName();
    TestCXPlayerManagerInit();
    std::printf("%s\n", failures ? "r1n-net-session-online-pack1-b8ee1b-0: FAILED" : "r1n-net-session-online-pack1-b8ee1b-0: ok");
    return failures == 0 ? 0 : 1;
}
