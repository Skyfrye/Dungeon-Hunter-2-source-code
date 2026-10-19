// NetBitStreamArray: fixed-size array of NetBitStream objects, one per
// transport channel. Reconstructed from libDungeonHunter2.so pseudocode.
#pragma once

#include <memory>
#include <vector>

#include "net-transport/net_bit_stream.hpp"

class NetBitStreamArray {
public:
    // 0x80e980 / 0x80e9e8 _ZN17NetBitStreamArrayC1Eii / C2Eii
    NetBitStreamArray(int count, int stream_size);
    // 0x80e6a8 / 0x80e71c _ZN17NetBitStreamArrayD1Ev / D2Ev
    ~NetBitStreamArray() = default;
    NetBitStreamArray(const NetBitStreamArray&) = delete;
    NetBitStreamArray& operator=(const NetBitStreamArray&) = delete;

    // 0x80e69c _ZN17NetBitStreamArray9GetStreamEi
    NetBitStream* GetStream(int index) const;
    // 0x80e8d0 _ZN17NetBitStreamArray15ClearAllStreamsEv
    void ClearAllStreams();
    // 0x80ed60 _ZN17NetBitStreamArray14CopyAllStreamsER12NetBitStream
    void CopyAllStreams(NetBitStream& dst) const;

private:
    std::vector<std::unique_ptr<NetBitStream>> streams_;  // +0x00 array, +0x04 count
};
