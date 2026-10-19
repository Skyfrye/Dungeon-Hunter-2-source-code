#include "net-session-online/c_matching_gl_live.hpp"
#include "net-transport/net_bit_stream.hpp"

// 0x821188 _ZN15CMatchingGLLive31BroadcastPacketReceiverCallbackER10CNetworkIdPci
// The first byte of the packet selects the handler: 1 is a server message and 2 is a client
// message. The binary reads the byte as signed (LDRSB); 1 and 2 are the same either way, and any other
// value does nothing. The body matches the Hex-Rays pseudocode and the assembly (the stream is built from
// the size, SetBuffer, one byte read, dispatch, then the stream is destroyed).
// Partial through the callee: ProcessServerMessage (0x821110) is a stub (it cannot unserialize the room
// attributes yet), so a server message is read and then nothing is added. ProcessClientMessage is empty in
// the binary as well, so type 2 is exact.
void CMatchingGLLive::BroadcastPacketReceiverCallback(CNetworkId& from, char* data, int size) {
    NetBitStream stream(static_cast<std::uint32_t>(size));
    stream.SetBuffer(data, static_cast<std::uint32_t>(size));
    std::uint8_t messageType = 0;
    stream.ReadByteArray(&messageType, 1);
    if (messageType == 1) {
        ProcessServerMessage(from, stream);
    } else if (messageType == 2) {
        ProcessClientMessage(from, stream);
    }
}
