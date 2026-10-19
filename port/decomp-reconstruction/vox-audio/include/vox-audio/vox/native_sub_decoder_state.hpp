// Saved sub-decoder states of the native segment decoder (vox::NativeSubDecoderState and
// its PCM and IMA ADPCM variants). The base holds the words that VoxNativeSubDecoder::SetState
// and GetState copy: the playlist manager pointer, the counters, the three playlist elements
// and the three segment records. The PCM and IMA ADPCM variants only add constructors and
// destructors, which call the base constructor and destructor declared here.
#pragma once

#include <cstdint>

#include "vox-audio/vox/native_playlist.hpp"
#include "vox-audio/vox/native_sub_decoder.hpp"

namespace vox {

class NativeSubDecoderState {
public:
    // C1 0x8860dc, C2 0x88621c (reconstructed in native_subdecoder_state_base.cpp).
    explicit NativeSubDecoderState(NativePlaylistsManager* manager);
    // D1 0x88547c and D2 0x8854e8 (the same body): destroys the manager and frees it.
    // D0 0x8854cc is the deleting variant.
    virtual ~NativeSubDecoderState();

    NativePlaylistsManager* playlists_ = nullptr;  // +0x04
    std::int32_t field_08_ = 0;                    // +0x08 (copied to VoxNativeSubDecoder +0x34)
    std::int32_t field_0c_ = 0;                    // +0x0c
    std::int32_t field_10_ = 0;                    // +0x10
    std::int32_t field_14_ = 0;                    // +0x14
    std::int32_t field_18_ = 0;                    // +0x18
    std::int32_t field_1c_ = 0;                    // +0x1c
    std::int32_t field_20_ = 0;                    // +0x20
    PlaylistElement element_a_;                    // +0x24 (copied to +0x50)
    PlaylistElement element_b_;                    // +0x38 (copied to +0x64)
    PlaylistElement element_c_;                    // +0x4c (copied to +0x78)
    std::int32_t field_60_ = 0;                    // +0x60 (copied to +0x8c)
    std::int32_t field_64_ = 0;                    // +0x64 (copied to +0x90)
    std::int32_t field_68_ = 0;                    // +0x68 (copied to +0x94)
    SegmentState segments_[3];                     // +0x6c, +0xb0, +0xf4
    std::int32_t field_138_ = 0;                   // +0x138 (copied to +0x164)
    std::int32_t field_13c_ = 0;                   // +0x13c (copied to +0x168)
    bool has_data_ = false;                        // +0x140 (copied to +0x16c)
};

// PCM variant: constructors and destructors (0x888670 family, 0x8885ec family).
class NativeSubDecoderPCMState : public NativeSubDecoderState {
public:
    // C1 0x888670, C2 0x8886a4: base constructor then the PCM vtable.
    explicit NativeSubDecoderPCMState(NativePlaylistsManager* manager);
    // D1 0x8885ec, D2 0x88863c, D0 0x888620 (deleting): base destructor.
    ~NativeSubDecoderPCMState() override;
};

// IMA ADPCM variant.
class NativeSubDecoderIMAADPCMState : public NativeSubDecoderState {
public:
    // C1 0x887000, C2 0x887034: base constructor then the IMA ADPCM vtable.
    explicit NativeSubDecoderIMAADPCMState(NativePlaylistsManager* manager);
    // D1 0x886f7c, D2 0x886fcc, D0 0x886fb0 (deleting): base destructor.
    ~NativeSubDecoderIMAADPCMState() override;

    // Words 81..83 (+0x144..+0x14c): the decoding-slot flags that SetState and GetState copy.
    std::int32_t decoding_slot_used_[3] = {0, 0, 0};
};

}  // namespace vox
