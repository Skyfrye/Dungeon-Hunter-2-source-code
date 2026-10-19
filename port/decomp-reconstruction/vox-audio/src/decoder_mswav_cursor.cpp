// vox::DecoderMSWavCursor forwarders to the WAV sub-decoder at +0x24. Without a
// sub-decoder, Decode returns 0, Seek returns -1, HasData returns false and SetLoop does
// nothing.
#include "vox-audio/vox/decoder_mswav_cursor.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x8709d8 _ZN3vox18DecoderMSWavCursorD1Ev (same body as D2 0x870a48)
// The sub-decoder is destroyed through its virtual destructor and its storage is released
// with VoxFree, as the original does.
DecoderMSWavCursor::~DecoderMSWavCursor() {
    if (sub_decoder_ != nullptr) {
        sub_decoder_->~VoxMSWavSubDecoder();
        VoxFree(sub_decoder_);
    }
}

// 0x87057c _ZN3vox18DecoderMSWavCursor6DecodeEPvi
int DecoderMSWavCursor::Decode(void* dst, int count) {
    if (sub_decoder_ != nullptr) {
        return sub_decoder_->Decode(dst, count);
    }
    return 0;
}

// 0x8705a8 _ZN3vox18DecoderMSWavCursor4SeekEj
int DecoderMSWavCursor::Seek(unsigned int frame) {
    if (sub_decoder_ != nullptr) {
        return sub_decoder_->Seek(frame);
    }
    return -1;
}

// 0x8705d4 _ZN3vox18DecoderMSWavCursor7SetLoopEb
void DecoderMSWavCursor::SetLoop(bool on) {
    if (sub_decoder_ != nullptr) {
        sub_decoder_->loop_ = on;
    }
}

// 0x8705e4 _ZN3vox18DecoderMSWavCursor7HasDataEv
bool DecoderMSWavCursor::HasData() {
    if (sub_decoder_ != nullptr) {
        return sub_decoder_->HasData();
    }
    return false;
}

}  // namespace vox
