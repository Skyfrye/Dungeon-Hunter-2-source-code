// Raw (uncompressed) PCM decoder and its cursor (vox::DecoderRaw, vox::DecoderRawCursor).
#pragma once

#include <cstdint>

#include "vox-audio/vox/decoder.hpp"

namespace vox {

class DecoderRawCursor final : public DecoderCursorInterface {
public:
    // vox::DecoderRawCursor::DecoderRawCursor(vox::DecoderInterface*, vox::StreamCursorInterface*)
    // C1 0x874b20, C2 0x874abc
    DecoderRawCursor(DecoderInterface* decoder, StreamCursorInterface* stream);
    // D1 0x8749dc (empty), D0 0x874dbc
    ~DecoderRawCursor() override = default;

    // 0x874c44
    int Decode(void* dst, int count) override;
    // 0x874b84
    int DecodeRef(void*& dst, int count) override;
    // 0x874cf0
    int Seek(unsigned int frame) override;
    // 0x874d3c
    bool HasData() override;
    // 0x8749e0
    bool AllowBufferReference() override;

private:
    friend struct DecoderRawCursorTestAccess;
    // params_ (+0x04..+0x13) is inherited from DecoderCursorInterface, as are decoder_,
    // stream_ and loop_ (+0x14..+0x1c).
};

class DecoderRaw final : public DecoderInterface {
public:
    // vox::DecoderRaw::DecoderRaw(vox::TrackParams*), C1 0x874a64, C2 0x874a0c.
    // A null argument leaves the parameters zeroed.
    explicit DecoderRaw(const TrackParams* params);
    // D1 0x874da4 (empty), D0 0x874da8
    ~DecoderRaw() override = default;

    // 0x8749cc: returns 0.
    int GetType() const override;
    // 0x8749d4: returns the parameter block (the original returns this+4).
    std::int32_t* GetParam() override;
    // 0x874dfc: VoxAlloc(0x20) then placement-construct a DecoderRawCursor.
    DecoderCursorInterface* CreateNewCursor(StreamCursorInterface* stream) override;
    // 0x874dd0: destroy the cursor and release its storage with VoxFree.
    void DestroyCursor(DecoderCursorInterface* cursor) override;

private:
    TrackParams params_;  // +0x04..+0x13
};

// 0x874e2c _ZN3vox16DecoderRawFactoryEPv. VoxAlloc a DecoderRaw and construct it from
// the TrackParams block passed in; returns the new object.
void* DecoderRawFactory(void* params);

}  // namespace vox
