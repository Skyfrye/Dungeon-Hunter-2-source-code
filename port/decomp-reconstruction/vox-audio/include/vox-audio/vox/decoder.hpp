// Decoder and decoder-cursor interfaces (vox::DecoderInterface family).
#pragma once

#include <cstdint>

#include "vox-audio/vox/stream.hpp"

namespace vox {

class DecoderInterface;

// Leading 16 bytes of vox::TrackParams as the decoders copy them. The original
// struct is larger; only these four words are read by the code ported so far.
// The block is the cursor's parameter block at +0x04..+0x13: DecoderMSWavCursor's constructor
// writes channels at +0x04, the sample rate at +0x08, the bits per sample at +0x0c and the frame
// count at +0x10 (asm 0x870ac8: `STR R3, [R4,#4]` .. `STR R0, [R4,#0x10]` copy
// sub-decoder +0x10/+0x14/+0x18/+0x1c), and VoxEngineInternal::LoadDataSource reads exactly those
// four words after decoder CreateNewCursor (asm 0x86b24c: [R3,#0x10], [R3,#4], [R3,#0xc], [R3,#8]).
struct TrackParams {
    std::int32_t channels = 0;        // cursor +0x04
    std::int32_t sample_rate = 0;     // cursor +0x08 (VoxNativeSubDecoder::GetTrackParams word 2)
    std::int32_t bits_per_sample = 0; // cursor +0x0c (byte width is bits_per_sample >> 3)
    std::int32_t length_frames = 0;   // cursor +0x10: frames in the whole track
};

// Vtable slots (vptr-relative, from the concrete cursor vtables in vtables-001.json):
// +0x00/+0x04 destructors, +0x08 Init, +0x0c Shutdown, +0x10 Decode, +0x14 DecodeRef,
// +0x18 HasData, +0x1c Reset, +0x20 GetRewindLimit, +0x24 Rewind, +0x28 Seek, +0x2c SetLoop,
// +0x30 GetStreamCursor, +0x34 AllowBufferReference. Decode, HasData and Seek are pure.
class DecoderCursorInterface {
public:
    virtual ~DecoderCursorInterface() = default;                 // 0x86fb38 (D1), 0x86fdec (D0)
    // The track parameter block of the cursor (+0x04..+0x10 in the original). Every cursor type
    // keeps the block at that slot; the engine and the emitter read it here instead of calling
    // decoder GetParam, which is null for DecoderMSWav, DecoderMPC8, DecoderNative and
    // DecoderStbVorbis.
    const TrackParams& GetTrackParams() const { return params_; }
    virtual void Init() {}                                       // +0x08, 0x86fb3c
    virtual void Shutdown() {}                                   // +0x0c, 0x86fb40
    virtual int Decode(void* dst, int count) = 0;                // +0x10
    virtual int DecodeRef(void*& dst, int count);                // +0x14
    virtual bool HasData() = 0;                                  // +0x18
    virtual void Reset();                                        // +0x1c, 0x86fb5c: Seek(0)
    virtual int GetRewindLimit() { return 0; }                   // +0x20, 0x86fb74
    virtual void Rewind(int frames) { (void)frames; }            // +0x24, 0x86fb7c (empty)
    virtual int Seek(unsigned int frame) = 0;                    // +0x28
    virtual void SetLoop(bool on) { loop_ = on; }                // +0x2c, 0x86fb80
    virtual StreamCursorInterface* GetStreamCursor() { return stream_; }  // +0x30, 0x86fb88
    virtual bool AllowBufferReference() { return false; }        // +0x34, 0x86fb90

protected:
    // Track parameters of the cursor (channels, sample rate, bits, frames), +0x04..+0x13 in the
    // original. Every cursor type keeps them at this slot and writes them from its own parse step;
    // no concrete cursor declares a second copy.
    TrackParams params_;
    // Fields the base accessors read; the original keeps them in the same slots
    // for every cursor type (+0x14 decoder, +0x18 stream, +0x1c loop flag).
    DecoderInterface* decoder_ = nullptr;      // +0x14
    StreamCursorInterface* stream_ = nullptr;  // +0x18
    bool loop_ = false;                        // +0x1c
};

// Decoder vtable slots (vptr-relative): +0x00/+0x04 destructors, +0x08 Init, +0x0c Shutdown,
// +0x10 CreateNewCursor, +0x14 DestroyCursor, +0x18 GetType, +0x1c GetParam. The four pure
// slots are confirmed by the concrete DecoderNative, DecoderMPC8, DecoderMSWav and DecoderRaw
// vtables (for example DecoderNative: CreateNewCursor at +0x10, GetType at +0x18).
class DecoderInterface {
public:
    virtual ~DecoderInterface() = default;                       // 0x86fb2c (D1), 0x86fdd8 (D0)
    virtual void Init() {}                                       // +0x08, 0x86fb30
    virtual void Shutdown() {}                                   // +0x0c, 0x86fb34
    virtual DecoderCursorInterface* CreateNewCursor(StreamCursorInterface* stream) = 0;  // +0x10
    virtual void DestroyCursor(DecoderCursorInterface* cursor) = 0;  // +0x14
    virtual int GetType() const = 0;                             // +0x18 (1 MSWav, 3 MPC8, 4 Native)
    // Pointer to the four parameter words (channels, sample rate, bits, frames).
    virtual std::int32_t* GetParam() = 0;                        // +0x1c
};

}  // namespace vox
