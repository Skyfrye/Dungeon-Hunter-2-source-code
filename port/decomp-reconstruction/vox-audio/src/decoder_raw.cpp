// Raw PCM decoder (vox::DecoderRaw, vox::DecoderRawCursor).
#include "vox-audio/vox/decoder_raw.hpp"

#include <new>

#include "vox-audio/vox/memory.hpp"

namespace vox {

namespace {


void CopyParams(TrackParams& dst, const std::int32_t* src) {
    dst.channels = src[0];
    dst.sample_rate = src[1];
    dst.bits_per_sample = src[2];
    dst.length_frames = src[3];
}

}  // namespace

// 0x874b20 / 0x874abc
DecoderRawCursor::DecoderRawCursor(DecoderInterface* decoder, StreamCursorInterface* stream) {
    decoder_ = decoder;
    stream_ = stream;
    CopyParams(params_, decoder->GetParam());
}

// 0x874c44. Reads until count bytes are filled or the stream stops producing.
// When looping, an end of stream rewinds the stream to offset 0 and reading
// continues. A failed rewind ends the read early.
int DecoderRawCursor::Decode(void* dst, int count) {
    auto* out = static_cast<std::uint8_t*>(dst);
    int total = 0;
    while (count > total) {
        const int got = stream_->Read(out + total, count - total);
        if (got <= 0) {
            break;
        }
        total += got;
        if (!loop_ || !stream_->EndOfStream()) {
            continue;
        }
        if (stream_->Seek(0, 0) != 0) {
            break;
        }
    }
    return total;
}

// 0x874b84. Uses a buffer reference when the stream allows one, otherwise
// dispatches to the virtual Decode.
int DecoderRawCursor::DecodeRef(void*& dst, int count) {
    if (!stream_->AllowBufferReference()) {
        return Decode(dst, count);
    }
    auto* ref = static_cast<std::uint8_t*>(dst);
    const int got = stream_->ReadRef(ref, count);
    dst = ref;
    if (loop_ && stream_->EndOfStream()) {
        // Result of this rewind is ignored by the original.
        stream_->Seek(0, 0);
    }
    return got;
}

// 0x874cf0. Seeks the stream to frame * channels * (bits >> 3). Returns -1 when
// frame is past the decoder length, otherwise 0 (the stream's result is ignored).
int DecoderRawCursor::Seek(unsigned int frame) {
    if (static_cast<std::uint32_t>(params_.length_frames) < frame) {
        return -1;
    }
    const std::uint32_t bytes_per_frame =
        static_cast<std::uint32_t>(params_.channels) *
        static_cast<std::uint32_t>(params_.bits_per_sample >> 3);
    const std::uint32_t offset = frame * bytes_per_frame;
    stream_->Seek(static_cast<int>(offset), 0);
    return 0;
}

// 0x874d3c. Without looping, data exists until the stream reports end of stream.
// With looping, an exhausted stream is rewound first.
bool DecoderRawCursor::HasData() {
    if (loop_ && stream_->EndOfStream()) {
        // Original calls the virtual at vtable +0x28 with 0; mapped to Seek(0).
        Seek(0);
    }
    return !stream_->EndOfStream();
}

// 0x8749e0
bool DecoderRawCursor::AllowBufferReference() {
    return stream_ != nullptr && stream_->AllowBufferReference();
}

// 0x874a64 / 0x874a0c
DecoderRaw::DecoderRaw(const TrackParams* params) {
    if (params != nullptr) {
        params_ = *params;
    }
}

// 0x8749cc
int DecoderRaw::GetType() const {
    return 0;
}

// 0x8749d4
std::int32_t* DecoderRaw::GetParam() {
    return &params_.channels;
}

// 0x874dfc
DecoderCursorInterface* DecoderRaw::CreateNewCursor(StreamCursorInterface* stream) {
    // The original allocates 0x20 bytes (32-bit layout). sizeof is used here so the
    // 64-bit object fits; the cursor no longer fits in 0x20 once the base fields are added.
    void* mem = VoxAlloc(sizeof(DecoderRawCursor), kVoxMemHintDefault);
    return new (mem) DecoderRawCursor(this, stream);
}

// 0x874dd0
void DecoderRaw::DestroyCursor(DecoderCursorInterface* cursor) {
    if (cursor == nullptr) {
        return;
    }
    cursor->~DecoderCursorInterface();
    VoxFree(cursor);
}

}  // namespace vox

namespace vox {

// 0x874e2c _ZN3vox16DecoderRawFactoryEPv (ARM: VoxAlloc(0x14), then the C1 constructor
// 0x874a64 with the params block; the object pointer is returned).
void* DecoderRawFactory(void* params) {
    void* mem = VoxAlloc(sizeof(DecoderRaw), kVoxMemHintDefault);
    if (mem == nullptr) {
        return nullptr;
    }
    return new (mem) DecoderRaw(static_cast<const TrackParams*>(params));
}

}  // namespace vox
