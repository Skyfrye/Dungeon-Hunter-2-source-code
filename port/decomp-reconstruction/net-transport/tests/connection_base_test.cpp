#include "net-transport/connection_base.hpp"

#include <cstdio>

#include "net-transport/default_data_packet.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // The base GLXPlayerSocket has no transport: BeginConnect returns 0, so connect() moves to the
    // failed state and returns 0.
    char host[] = "lobby.example";
    Connection conn(host, 9000);
    CHECK(!conn.isConnected());
    CHECK(conn.connect() == 0);
    CHECK(conn.connect() == 0);

    // With no host the connect fails at once.
    Connection no_host(nullptr, 0);
    CHECK(no_host.connect() == 0);

    // A packet queued while the link is down is dropped.
    CHECK(conn.addOutgoingPacket(new DefaultDataPacket()) == 0);

    // Incoming packets are queued in order and handed out once, each to its caller.
    CHECK(conn.getNextIncomingPacket() == nullptr);
    auto* first = new DefaultDataPacket();
    auto* second = new DefaultDataPacket();
    // The result is the old tail, or the connection itself for an empty queue (the register the original leaves).
    CHECK(conn.addIncomingPacket(first) == static_cast<int>(reinterpret_cast<std::uintptr_t>(&conn)));
    CHECK(conn.addIncomingPacket(second) == static_cast<int>(reinterpret_cast<std::uintptr_t>(first)));
    CHECK(conn.addIncomingPacket(nullptr) == static_cast<int>(reinterpret_cast<std::uintptr_t>(&conn)));
    DataPacket* out = conn.getNextIncomingPacket();
    CHECK(out == first);
    delete out;
    out = conn.getNextIncomingPacket();
    CHECK(out == second);
    delete out;
    CHECK(conn.getNextIncomingPacket() == nullptr);

    // Once connected, the send goes to the socket (Poll, then SendBytes). The base socket has no
    // transport: Poll reports -1, so sendData returns with the packet still queued and the send time
    // is not updated (the original does the same when select fails). The request sends keep a retry copy.
    conn.set_connected(true);
    CHECK(conn.isConnected());
    CHECK(conn.sendLoginPackage(host) == 0);
    CHECK(conn.sendFinishGamePackage() == 0);
    CHECK(conn.getTimeOfLastReqest() >= 0);
    conn.sendRetryData();
    conn.sendData();

    // Packets without a payload build and queue as the original does.
    CHECK(conn.sendCreateSessionPackage(host, nullptr, 3) == 0);
    CHECK(conn.sendListSessionsAllPackage(1, 2) == 0);
    CHECK(conn.sendFinishConnectionPackage() >= 0);
    CHECK(conn.sendKickOutPlayerPackage(nullptr) == static_cast<int>(reinterpret_cast<std::uintptr_t>(&conn)));

    // Only a non-null name is stored.
    conn.setName(host);
    conn.setName(nullptr);

    // No send has succeeded, so the last send time is still 0 and the keep-alive is due.
    CHECK(conn.keepConnectionAlive());

    // Disconnect clears the link and the retry copy, and is safe to repeat.
    conn.disconnect();
    CHECK(!conn.isConnected());
    CHECK(conn.getTimeOfLastReqest() == 0);
    conn.disconnect();

    // The base class is usable through the DataPacket interface (virtual destruction).
    std::printf("%s\n", failures ? "connection_base: FAILED" : "connection_base: ok");
    return failures ? 1 : 0;
}
