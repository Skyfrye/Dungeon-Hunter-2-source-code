// vox::DecoderMPC8: the Musepack (SV8) decoder and its cursor. CreateNewCursor (vtable slot
// +0x10) allocates a DecoderMPC8Cursor with VoxAlloc and constructs it in place, which is what
// makes the decoder concrete, as the binary's vtable has it.
#pragma once

#include <cstdint>

#include "vox-audio/deps/mpc_reader.hpp"
#include "vox-audio/vox/decoder.hpp"

struct mpc_demux;  // libmpcdec demuxer (deps/mpc_demux.hpp), global namespace as in the library

namespace vox {

// Creation parameters. The constructor reads only the first word.
struct DecoderMPC8Params {
    std::int32_t first = 0;  // +0x00
};

class DecoderMPC8Cursor;

class DecoderMPC8: public DecoderInterface {
public:
    // C1 0x86fcb0, C2 0x86fc78. A null parameter block leaves the value at -1.
    explicit DecoderMPC8(const DecoderMPC8Params* params);
    ~DecoderMPC8() override;  // D1 0x86fdc0 (empty); D0 0x86fdc4 is compiler-generated

    int GetType() const override;          // 0x86fb98: returns 3
    std::int32_t* GetParam() override;     // 0x86fba0: returns null

    // 0x870160: a cursor (null is ignored) is destroyed through its virtual destructor and its
    // storage released with VoxFree, as the original does.
    void DestroyCursor(DecoderCursorInterface* cursor) override;

    // 0x8704ac _ZN3vox11DecoderMPC815CreateNewCursorEPNS_21StreamCursorInterfaceE (vtable +0x10):
    // VoxAlloc then the cursor constructor. Returns null when the allocation fails, where the
    // original constructs through the null pointer. Defined in decoder_mpc8_cursor_create.cpp.
    DecoderCursorInterface* CreateNewCursor(StreamCursorInterface* stream) override;

private:
    friend class DecoderMPC8Cursor;
    std::int32_t param_ = -1;              // +0x04
};

// The free-function spelling of the same body (0x8704ac), for callers that hold a DecoderMPC8*.
// Returns null when the storage cannot be allocated.
DecoderMPC8Cursor* CreateDecoderMPC8Cursor(DecoderMPC8* decoder, StreamCursorInterface* stream);

// vox::DecoderMPC8Cursor: reads a Musepack stream through the libmpcdec demuxer and hands out
// 16-bit or float PCM. The pure conversions (HasData, ConvertFloatToShort) need no library;
// the constructor, destructor, Seek and Decode call the demuxer (see decoder_mpc8_cursor_io.cpp).
// Layout, original 32-bit offsets: +0x04 channels, +0x08 sample rate, +0x0c bits per sample,
// +0x10 total sample frames, +0x14 decoder, +0x18 stream, +0x1c loop, +0x20 position, +0x24
// frames in the buffer, +0x28 position in the buffer, +0x2c demuxer, +0x30 reader, +0x48 PCM
// buffer (0x4800 bytes).
class DecoderMPC8Cursor : public DecoderCursorInterface {
public:
    // C1 0x87018c, C2 0x87031c. The decoder is read for its parameter (sample rate override).
    DecoderMPC8Cursor(DecoderMPC8* decoder, StreamCursorInterface* stream);
    // D1 0x8700a4, D2 0x870110. D0 0x8700f4 is the compiler's deleting variant.
    ~DecoderMPC8Cursor() override;

    int Decode(void* dst, int bytes) override;      // 0x86fe38
    int Seek(unsigned int sample) override;         // 0x86fe00
    bool HasData() override;                        // 0x86fce8

    // 0x86fd58 _ZN3vox17DecoderMPC8Cursor19ConvertFloatToShortEPsPfi
    void ConvertFloatToShort(std::int16_t* dst, float* src, int count);
    // 0x86fdbc _ZN3vox17DecoderMPC8Cursor19ConvertFixedToShortEPsPii (empty in the original)
    void ConvertFixedToShort(std::int16_t* dst, std::int32_t* src, int count);

private:
    // The parameter block (channels, sample rate, bits, total sample frames) is the inherited
    // DecoderCursorInterface::params_ at +0x04..+0x10, as the layout note above says: no concrete
    // cursor declares a second copy.
    std::uint32_t sample_pos_ = 0;            // +0x20, sample frames returned so far
    std::int32_t buffer_frames_ = 0;          // +0x24, frames the demuxer decoded last
    std::int32_t buffer_pos_ = 0;             // +0x28, next frame to return from the buffer
    mpc_demux* demux_ = nullptr;              // +0x2c
    mpc_reader_t reader_;                     // +0x30, the reader handed to the demuxer
    float* pcm_buffer_ = nullptr;             // +0x48, 0x4800 bytes of float samples
};

// Converts float samples (scaled by 2^15, truncated, saturated to int16) as the original's
// ConvertFloatToShort loop does. Exposed for tests; the member above calls it.
void ConvertFloatSamplesToShort(std::int16_t* dst, const float* src, int count);

}  // namespace vox
