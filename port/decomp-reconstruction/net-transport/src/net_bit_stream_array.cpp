#include "net-transport/net_bit_stream_array.hpp"

// 0x80e9e8 _ZN17NetBitStreamArrayC2Eii
// 0x80e980 _ZN17NetBitStreamArrayC1Eii
NetBitStreamArray::NetBitStreamArray(int count, int stream_size) {
    for (int i = 0; i < count; ++i) {
        streams_.push_back(std::make_unique<NetBitStream>(static_cast<std::uint32_t>(stream_size)));
    }
}

// 0x80e69c _ZN17NetBitStreamArray9GetStreamEi
NetBitStream* NetBitStreamArray::GetStream(int index) const {
    return streams_[static_cast<std::size_t>(index)].get();
}

// 0x80e8d0 _ZN17NetBitStreamArray15ClearAllStreamsEv
void NetBitStreamArray::ClearAllStreams() {
    for (auto& stream : streams_) {
        stream->Reset();
    }
}

// 0x80ed60 _ZN17NetBitStreamArray14CopyAllStreamsER12NetBitStream
void NetBitStreamArray::CopyAllStreams(NetBitStream& dst) const {
    for (const auto& stream : streams_) {
        dst.WriteStream(*stream);
    }
}
