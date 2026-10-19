// Stand-in for the replicated element types (CMatching::MemberInfoNetStruct and
// CMatchingLocal::ServerBackupNetStruct), owned by another category. It has the methods
// NetStructArray calls, with no data, so the template can be instantiated on its own.
#pragma once

#include <cstdint>

#include "net-transport/net_bit_stream.hpp"

class NetStructElementStub {
public:
    bool HasDataToSend(int) { return false; }
    bool Serialize(NetBitStream&, int, int) { return false; }
    bool Load(NetBitStream&, int, int) { return false; }
    void Erase(NetBitStream&) {}
    int ProcessAcknowledgedPacket(int, int) { return 0; }
    int ProcessLostPacket(int, int) { return 0; }
};
