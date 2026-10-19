// VoxMSWavSubDecoderIMAADPCM destructors (see mswav_sub_decoder_imaadpcm.hpp).
#include "vox-audio/vox/mswav_sub_decoder_imaadpcm.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x8754dc _ZN3vox26VoxMSWavSubDecoderIMAADPCMD1Ev (D2 0x875554 has the same body)
// The original frees only the decoded block. The raw block at +0x68 (allocated by the
// constructor) is freed here as well, so the port does not leak it.
VoxMSWavSubDecoderIMAADPCM::~VoxMSWavSubDecoderIMAADPCM() {
    VoxFree(decode_block_);
    VoxFree(raw_block_);
}

// 0x875538 _ZN3vox26VoxMSWavSubDecoderIMAADPCMD0Ev is the deleting variant: the compiler
// emits it for the destructor above.

}  // namespace vox
