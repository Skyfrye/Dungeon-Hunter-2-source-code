#include "net-transport/connection.hpp"
#include "net-transport/deps/transport_test_support.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // The connection reaches the transport manager singleton (GetTransportMgr), so one is installed.
    transport_test_support::InstallInitialized();

    // A new connection is not to the server: its key (-14531089) differs from the stand-in key 0.
    CConnection conn;
    CHECK(!conn.IsToServer());
    CHECK(!conn.PrintStatistics());

    // Connect stores the matching key, so a key of 0 makes the peer the server.
    CNetworkId peer;
    peer.Reset();
    CHECK(conn.Connect(0, peer) == 0);
    CHECK(conn.IsToServer());
    CHECK(conn.PrintStatistics());

    // Accept stores the key too, and the connection is then ready for the handshake.
    CConnection accepted;
    CHECK(accepted.Accept(3, peer, 42) == 0);
    CHECK(!accepted.IsToServer());

    // Disconnect is idempotent and returns 0.
    CHECK(conn.Disconnect() == 0);
    CHECK(conn.Disconnect() == 0);
    CHECK(conn.Send(1, "x", 1) == 0);

    // Clocks and statistics run without a transport (all stand-ins return zero).
    tMsgPing ping{7, 0, 0};
    conn.SetLastRecvTime();
    conn.ProcessPing(ping);
    conn.ReportStatistic(8, -5);
    conn.ReportStatistic(8, 12);
    CDataStats<int> sink[9];
    conn.MergeStatistics(sink);
    conn.Ping();
    conn.CheckForLag(1000);
    conn.SendKeepAlive(1000);
    conn.SendConnectRequest();
    conn.SendConnectResponse();
    conn.SendConnectFinalize();
    conn.ProcessConnectResponse(peer);
    conn.ProcessConnectFinalize(peer);
    conn.Update();
    CHECK(conn.Timeout() == 0);

    std::printf("%s\n", failures ? "connection: FAILED" : "connection: ok");
    return failures ? 1 : 0;
}
