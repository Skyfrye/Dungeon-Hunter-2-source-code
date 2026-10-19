// VoxEngineInternal::SetInteractiveMusicState: passes a named music state to the native decoder
// cursor of an emitter whose data object is decoded by the native decoder (type 4).
#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x86764c _ZN3vox17VoxEngineInternal24SetInteractiveMusicStateERNS_13EmitterHandleEPKc
// Under the emitter read access (+0xc4): the emitter object is looked up, and the decoder is the
// data object's decoder (+0x3c) when the data object's state word (+0x50) is 0, else null (asm
// 0x867680: LDREQ the decoder, MOVNE 0). That decoder's type (vtable +0x18) must be 4 (native);
// then the emitter's cursor (+0x114, a DecoderNativeCursor) gets the name and the emitter records
// it (SetInteractiveMusicStateChange). The result is the ReleaseReadAccess int.
// Deviation, host-necessitated: the binary builds the null decoder and calls its GetType slot on
// it when the state word is not 0 (an invalid dereference there); the port skips the whole test on
// that path, so no state is passed, which is what the null decoder could have produced.
int VoxEngineInternal::SetInteractiveMusicState(EmitterHandle& emitter, const char* state) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        DataObj* data = obj->data_;
        DecoderInterface* decoder = nullptr;
        if (data != nullptr && data->state_ == 0) {
            decoder = data->decoder_;
        }
        if (decoder != nullptr && decoder->GetType() == 4) {
            auto* cursor = static_cast<DecoderNativeCursor*>(obj->decoder_cursor_);
            if (cursor != nullptr) {
                cursor->SetInteractiveMusicState(state);
                obj->SetInteractiveMusicStateChange(state);
            }
        }
    }
    return emitter_access_.ReleaseReadAccess();
}

}  // namespace vox
