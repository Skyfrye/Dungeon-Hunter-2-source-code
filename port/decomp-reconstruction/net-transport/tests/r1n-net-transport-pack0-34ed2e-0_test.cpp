// Test for batch r1n-net-transport-pack0-34ed2e-0 (net-transport redo pass).
// Covers: CDataStats<int> GetSum and GetAverage (newest-first walk, window, integer average),
// the connection key that CConnection::Update compares (address, field2 and field3 terms), and the
// sync no-op calls. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>

#include "net-transport/c_data_stats.hpp"
#include "net-transport/connection.hpp"
#include "net-transport/deps/transport_test_support.hpp"
#include "net-transport/net_bit_stream.hpp"
#include "net-transport/net_network_id.hpp"
#include "net-transport/sync.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Builds a CNetworkId through CNetworkId::Load: the flags word, then field2 when flag bit 2 is set and
// field3 when flag bit 3 is set (address records are not used here).
static CNetworkId MakeId(std::uint32_t flags, std::uint32_t field2, std::uint32_t field3) {
    NetBitStream writer(0x100);
    writer.WriteU32(flags, 32);
    if ((flags & 4) != 0) {
        writer.WriteU32(field2, 32);
    }
    if ((flags & 8) != 0) {
        writer.WriteU32(field3, 32);
    }
    char bytes[64] = {};
    const std::uint32_t length = (writer.WritePosition() + 7) >> 3;
    writer.GetBuffer(bytes, length);
    NetBitStream reader(0x100);
    reader.WriteByteArray(bytes, length);
    CNetworkId id;
    id.Load(reader);
    return id;
}

// 0x825be8 GetSum and 0x825388 GetAverage. Samples are stamped with clock() when added, so the test
// adds them within the same second and uses the window 1.0 (1000000 ticks).
static void TestStats() {
    CDataStats<int> empty;
    CHECK(empty.GetSum() == 0);
    CHECK(empty.GetAverage(0.0f) == 0);

    CDataStats<int> stats;
    stats.AddData(10);
    stats.AddData(20);
    stats.AddData(30);
    CHECK(stats.GetSum() == 60);
    CHECK(stats.GetAverage(0.0f) == 20);  // window 0 includes every sample
    CHECK(stats.GetAverage(1.0f) == 20);  // all samples are newer than one second

    // Integer division: (1 + 2) / 2 == 1.
    CDataStats<int> pair;
    pair.AddData(1);
    pair.AddData(2);
    CHECK(pair.GetAverage(0.0f) == 1);
}

// The connected test in CConnection::Update: KeyOf(peer) == KeyOf(handshake) moves the state from 2 to 4.
// The key includes address, field2 (flag bit 2) and field3 (flag bit 3) terms, so a field that differs
// keeps the connection at state 2.
static void TestConnectionKey() {
    CNetworkId peer = MakeId(4, 5, 0);
    CNetworkId same_field2 = MakeId(4, 5, 0);
    CNetworkId other_field2 = MakeId(4, 6, 0);

    CConnection matched;
    matched.Connect(0, peer);
    CHECK(matched.State() == 2);
    matched.ProcessConnectFinalize(same_field2);
    matched.Update();
    CHECK(matched.State() == 4);

    CConnection mismatched;
    mismatched.Connect(0, peer);
    mismatched.ProcessConnectFinalize(other_field2);
    mismatched.Update();
    CHECK(mismatched.State() == 2);

    // field3 (flag bit 3) on its own.
    CNetworkId peer3 = MakeId(8, 0, 1);
    CNetworkId same_field3 = MakeId(8, 0, 1);
    CNetworkId other_field3 = MakeId(8, 0, 2);
    CConnection field3_matched;
    field3_matched.Connect(0, peer3);
    field3_matched.ProcessConnectFinalize(same_field3);
    field3_matched.Update();
    CHECK(field3_matched.State() == 4);

    CConnection field3_mismatched;
    field3_mismatched.Connect(0, peer3);
    field3_mismatched.ProcessConnectFinalize(other_field3);
    field3_mismatched.Update();
    CHECK(field3_mismatched.State() == 2);
}

// 0x80e2e4 Wait, 0x80e2e8 Release, 0x80e33c..0x80e348 the CReadWriteLock methods. The original bodies are
// `bx lr`, so the calls must return at once and have no effect.
static void TestSyncNoops() {
    CSemaphore sem(1);
    sem.Wait();
    sem.Release(2);
    CReadWriteLock rw;
    rw.LockWrite();
    rw.UnlockWrite();
    rw.LockRead();
    rw.UnlockRead();
    CHECK(true);
}

int main() {
    transport_test_support::InstallInitialized();  // CConnection reaches the transport manager singleton
    TestStats();
    TestConnectionKey();
    TestSyncNoops();
    if (failures != 0) {
        std::printf("%d failure(s)\n", failures);
        return 1;
    }
    std::printf("r1n-net-transport-pack0-34ed2e-0 tests passed\n");
    return 0;
}
