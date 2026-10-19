// vox::DecoderStbVorbis and vox::DecoderStbVorbisCursor. The Ogg Vorbis decoding is done by
// stb_vorbis, which is upstream code and is not retyped here (see stb_vorbis_api.hpp).
#include "vox-audio/vox/decoder_stb_vorbis.hpp"

#include <new>

#include "vox-audio/vox/memory.hpp"

namespace vox {

// ---- vox::DecoderStbVorbis ----

// 0x875160 _ZN3vox16DecoderStbVorbisD1Ev (D2 0x8751bc has the same body)
DecoderStbVorbis::~DecoderStbVorbis() {
    if (handle_ != nullptr) {
        stb_vorbis_close(handle_);
    }
}

// 0x874e54 _ZN3vox16DecoderStbVorbis7GetTypeEv
int DecoderStbVorbis::GetType() const {
    return 2;
}

// 0x874e5c _ZN3vox16DecoderStbVorbis8GetParamEv
std::int32_t* DecoderStbVorbis::GetParam() {
    return nullptr;
}

// 0x8753a8 _ZN3vox16DecoderStbVorbis15CreateNewCursorEPNS_21StreamCursorInterfaceE
DecoderCursorInterface* DecoderStbVorbis::CreateNewCursor(StreamCursorInterface* stream) {
    void* mem = VoxAlloc(sizeof(DecoderStbVorbisCursor), kVoxMemHintDefault);
    if (mem == nullptr) {
        return nullptr;  // the original would store into null here
    }
    return new (mem) DecoderStbVorbisCursor(this, stream);
}

// 0x87537c _ZN3vox16DecoderStbVorbis13DestroyCursorEPNS_22DecoderCursorInterfaceE
void DecoderStbVorbis::DestroyCursor(DecoderCursorInterface* cursor) {
    if (cursor == nullptr) {
        return;
    }
    cursor->~DecoderCursorInterface();
    VoxFree(cursor);
}

// 0x8753d8 _ZN3vox23DecoderStbVorbisFactoryEPv. The original allocates 0xc bytes and
// sets the vtable and the handle word inline; the parameter is not read.
void* DecoderStbVorbisFactory(void* params) {
    (void)params;
    void* mem = VoxAlloc(sizeof(DecoderStbVorbis), kVoxMemHintDefault);
    if (mem == nullptr) {
        return nullptr;
    }
    return new (mem) DecoderStbVorbis();
}

// ---- vox::DecoderStbVorbisCursor ----

// 0x8751fc (C1) and 0x8752bc (C2) share this body.
DecoderStbVorbisCursor::DecoderStbVorbisCursor(DecoderInterface* decoder,
                                               StreamCursorInterface* stream) {
    decoder_ = decoder;
    stream_ = stream;
    int error = 0;
    handle_ = stb_vorbis_open_file(stream, 0, &error, nullptr);
    if (handle_ == nullptr) {
        params_ = TrackParams{};
        return;
    }
    const stb_vorbis_info info = stb_vorbis_get_info(handle_);
    params_.bits_per_sample = 16;
    params_.channels = info.channels;
    params_.sample_rate = info.sample_rate;
    params_.length_frames = static_cast<std::int32_t>(stb_vorbis_stream_length_in_samples(handle_));
}

// 0x8750c4 (D1) and 0x875120 (D2) share this body; 0x875104 is the deleting variant.
DecoderStbVorbisCursor::~DecoderStbVorbisCursor() {
    if (handle_ != nullptr) {
        stb_vorbis_close(handle_);
    }
}

// 0x874fec _ZN3vox22DecoderStbVorbisCursor6DecodeEPvi. Reads count bytes of interleaved
// samples (float when the bit width is 32, otherwise 16-bit). The result is in bytes.
// At the end of the stream a looping cursor seeks back to the start.
int DecoderStbVorbisCursor::Decode(void* dst, int count) {
    if (handle_ == nullptr) {
        return 0;
    }
    int frames;
    if (params_.bits_per_sample == 0x20) {
        frames = stb_vorbis_get_samples_float_interleaved(handle_, params_.channels,
                                                          static_cast<float*>(dst), count >> 2);
    } else {
        frames = stb_vorbis_get_samples_short_interleaved(handle_, params_.channels,
                                                          static_cast<short*>(dst), count >> 1);
    }
    position_ += static_cast<std::uint32_t>(frames);
    const int bytes = frames * params_.channels * (params_.bits_per_sample >> 3);
    if (frames != 0 && position_ != static_cast<std::uint32_t>(params_.length_frames)) {
        return bytes;
    }
    if (!loop_) {
        return bytes;
    }
    Seek(0);  // virtual call, as the original calls vtable slot +0x28
    return bytes;
}

// 0x874f9c _ZN3vox22DecoderStbVorbisCursor4SeekEj. Only frame 0 is accepted: the stb
// seek-start call rewinds the decoder and the position counter resets.
int DecoderStbVorbisCursor::Seek(unsigned int frame) {
    if (params_.length_frames < static_cast<std::int32_t>(frame) || frame != 0 || handle_ == nullptr) {
        return -1;
    }
    stb_vorbis_seek_start(handle_);
    position_ = 0;
    return 0;
}

// 0x874f2c _ZN3vox22DecoderStbVorbisCursor7HasDataEv. A looping cursor that reached the
// end is rewound before the answer is taken.
bool DecoderStbVorbisCursor::HasData() {
    if (stream_ == nullptr) {
        return false;
    }
    if (static_cast<std::int32_t>(position_) >= params_.length_frames && loop_) {
        Seek(0);
    }
    return position_ < static_cast<std::uint32_t>(params_.length_frames);
}

}  // namespace vox
