// vox::EmitterObj DSP name hand-off and cleanup. SetDSPParameter copies the name into the
// pending slot (+0xf0); UpdateDSP (emitter_obj_state.cpp) moves it into the slot in use (+0xec).
#include <cstring>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x866acc _ZN3vox10EmitterObj15SetDSPParameterEiPv
// Reconstructed against the 0x866acc listing. Only parameter 0 is handled: Lock, strlen of the
// value, and when the length is above 0 the old pending copy (+0xf0) is VoxFree'd, VoxAlloc
// (length + 1) stores the new pointer there, and strcpy fills it when the allocation succeeded.
// Every path returns the Mutex::Unlock int.
// Deviation (host-necessitated): a null value makes the listing call strlen on null (a fault); the
// port takes the length as 0 and skips the copy.
int EmitterObj::SetDSPParameter(int param, void* value) {
    mutex.Lock();
    if (param == 0) {
        const char* name = static_cast<const char*>(value);
        const std::size_t length = name != nullptr ? std::strlen(name) : 0;
        if (length > 0) {
            VoxFree(dsp_pending_);
            dsp_pending_ = VoxAlloc(length + 1);
            if (dsp_pending_ != nullptr) {
                std::strcpy(static_cast<char*>(dsp_pending_), name);
            }
        }
    }
    return mutex.Unlock();
}

// 0x863954 _ZN3vox10EmitterObj7CleanUpEv
// Reconstructed against the 0x863954 listing: when the decoder cursor (+0x114) exists and its
// AllowBufferReference (cursor +0x34) returns false, every ring entry at +0xf4 (count +0x104) is
// VoxFree'd when non-null; then the DSP buffer (+0xec) and the pending DSP name (+0xf0) are freed
// when non-null. The ring array itself is not freed here (the destructor does that).
// Deviation (host-necessitated): the listing leaves the freed ring entries and both name pointers
// set, so a second CleanUp double-frees; the port nulls each pointer it frees.
void EmitterObj::CleanUp() {
    if (decoder_cursor_ != nullptr && !buffer_ring_.empty() &&
        !decoder_cursor_->AllowBufferReference()) {
        for (int i = 0; i < buffer_count_; ++i) {
            if (buffer_ring_[i] != nullptr) {
                VoxFree(buffer_ring_[i]);
                buffer_ring_[i] = nullptr;
            }
        }
    }
    VoxFree(dsp_buffer_);
    dsp_buffer_ = nullptr;
    VoxFree(dsp_pending_);
    dsp_pending_ = nullptr;
}

}  // namespace vox
