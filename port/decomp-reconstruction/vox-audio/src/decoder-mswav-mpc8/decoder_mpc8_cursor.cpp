// vox::DecoderMPC8Cursor: HasData and the sample conversions. These need no Musepack library,
// so this object links into any build; the demuxer calls are in decoder_mpc8_cursor_io.cpp.
#include "vox-audio/vox/decoder_mpc8.hpp"

namespace vox {

// Scales by 2^15, truncates toward zero and saturates to int16. NaN gives 0, as the ARM
// float-to-int conversion does.
void ConvertFloatSamplesToShort(std::int16_t* dst, const float* src, int count) {
    for (int i = 0; i < count; ++i) {
        const float scaled = src[i] * 32768.0f;
        std::int16_t out;
        if (scaled != scaled) {
            out = 0;
        } else if (scaled >= 32768.0f) {
            out = 32767;
        } else if (scaled <= -32769.0f) {
            out = -32768;
        } else {
            out = static_cast<std::int16_t>(static_cast<int>(scaled));
        }
        dst[i] = out;
    }
}

// 0x86fce8 _ZN3vox17DecoderMPC8Cursor7HasDataEv
// Without a stream there is no data. At the end of the stream a looping cursor calls Seek(0);
// that call returns -1 without moving, as in the original, so the result is still false.
// The total is the inherited parameter block's frame count (cursor +0x10, TrackParams::length_frames).
bool DecoderMPC8Cursor::HasData() {
    if (stream_ == nullptr) {
        return false;
    }
    if (sample_pos_ < static_cast<std::uint32_t>(params_.length_frames) || !loop_) {
        return sample_pos_ < static_cast<std::uint32_t>(params_.length_frames);
    }
    Seek(0);
    return sample_pos_ < static_cast<std::uint32_t>(params_.length_frames);
}

// 0x86fd58 _ZN3vox17DecoderMPC8Cursor19ConvertFloatToShortEPsPfi
void DecoderMPC8Cursor::ConvertFloatToShort(std::int16_t* dst, float* src, int count) {
    if (count > 0) {
        ConvertFloatSamplesToShort(dst, src, count);
    }
}

// 0x86fdbc _ZN3vox17DecoderMPC8Cursor19ConvertFixedToShortEPsPii
// The ARM body is a bare return (4 bytes), so there is nothing to port.
void DecoderMPC8Cursor::ConvertFixedToShort(std::int16_t* dst, std::int32_t* src, int count) {
    (void)dst;
    (void)src;
    (void)count;
}

}  // namespace vox
