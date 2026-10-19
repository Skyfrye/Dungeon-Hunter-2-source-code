// IMA ADPCM sub-decoder destructors. The complete-object and deleting variants are
// compiler-generated from the body below.
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"

namespace vox {

// 0x886a20 _ZN3vox27VoxNativeSubDecoderIMAADPCMD1Ev
// Frees the three decoding buffers, the record that holds them and the pending block. The
// eight AdpcmState entries need no cleanup. The base destructor is empty.
VoxNativeSubDecoderIMAADPCM::~VoxNativeSubDecoderIMAADPCM() {
    if (decode_buffers_ != nullptr) {
        for (void*& slot : decode_buffers_->slot) {
            if (slot != nullptr) {
                VoxFree(slot);
                slot = nullptr;
            }
        }
        VoxFree(decode_buffers_);
        decode_buffers_ = nullptr;
    }
    if (pending_ != nullptr) {
        VoxFree(pending_);
        pending_ = nullptr;
    }
}

// 0x886b1c _ZN3vox27VoxNativeSubDecoderIMAADPCMD2Ev: complete-object variant, same body as D1.
// 0x886b00 _ZN3vox27VoxNativeSubDecoderIMAADPCMD0Ev: deleting variant (compiler-generated,
// runs D1 and then frees the object with the sized delete).

}  // namespace vox
