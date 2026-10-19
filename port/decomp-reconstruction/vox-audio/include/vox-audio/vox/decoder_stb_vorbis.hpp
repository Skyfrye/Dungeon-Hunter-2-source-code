// vox::DecoderStbVorbis and vox::DecoderStbVorbisCursor: the Ogg Vorbis decoder. The
// decoding is done by stb_vorbis (upstream, public domain; declared in stb_vorbis_api.hpp
// and not retyped here), so the cursor only maps the vox stream and the sample counters.
#pragma once

#include <cstdint>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/stb_vorbis_api.hpp"

namespace vox {

class DecoderStbVorbis : public DecoderInterface {
public:
    // The factory (0x8753d8) builds the object with the handle cleared, so the default
    // constructor only clears handle_.
    DecoderStbVorbis() = default;
    // D1 0x875160, D2 0x8751bc: closes the stb handle when one is set.
    ~DecoderStbVorbis() override;

    int GetType() const override;       // 0x874e54: returns 2
    std::int32_t* GetParam() override;  // 0x874e5c: returns null
    // 0x8753a8: allocates a cursor block and constructs the cursor on it.
    DecoderCursorInterface* CreateNewCursor(StreamCursorInterface* stream) override;
    // 0x87537c: virtual destructor, then VoxFree.
    void DestroyCursor(DecoderCursorInterface* cursor) override;

private:
    stb_vorbis* handle_ = nullptr;  // +0x04
};

class DecoderStbVorbisCursor final : public DecoderCursorInterface {
public:
    // C1 0x8751fc, C2 0x8752bc: opens the stream with stb_vorbis and reads the format.
    DecoderStbVorbisCursor(DecoderInterface* decoder, StreamCursorInterface* stream);
    // D1 0x8750c4, D2 0x875120: closes the stb handle when one is set.
    ~DecoderStbVorbisCursor() override;

    int Decode(void* dst, int count) override;  // 0x874fec
    int Seek(unsigned int frame) override;      // 0x874f9c: only frame 0 is supported
    bool HasData() override;                    // 0x874f2c

private:
    friend struct DecoderStbVorbisCursorTestAccess;
    // The parameter block (channels +0x04, sample rate +0x08, bits +0x0c, frames +0x10) is the
    // inherited DecoderCursorInterface::params_; the constructor fills it from stb_vorbis.
    stb_vorbis* handle_ = nullptr;   // +0x20
    std::uint32_t position_ = 0;     // +0x24: samples delivered so far
};

// 0x8753d8 _ZN3vox23DecoderStbVorbisFactoryEPv: VoxAlloc for a DecoderStbVorbis; the
// parameter is unused.
void* DecoderStbVorbisFactory(void* params);

}  // namespace vox
