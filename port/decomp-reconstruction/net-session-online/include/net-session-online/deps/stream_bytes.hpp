// The bytes of a NetBitStream as the original hands them to the packet send calls: the written
// bits rounded up to whole bytes (NetBitStream::GetBuffer copies BytesFor(write position)).
#pragma once

#include <cstdint>
#include <vector>

#include "net-transport/net_bit_stream.hpp"

inline std::vector<std::uint8_t> StreamBytes(NetBitStream& stream) {
    const std::uint32_t bytes = (stream.WritePosition() + 7) / 8;
    std::vector<std::uint8_t> out(bytes);
    if (bytes != 0) {
        stream.GetBuffer(reinterpret_cast<char*>(out.data()), bytes);
    }
    return out;
}
