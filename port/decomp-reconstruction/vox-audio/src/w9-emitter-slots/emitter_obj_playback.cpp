// vox::EmitterObj playback path (wave 9): the cursor-to-source pull (ProcessNonNativeData), the
// play cursor read (GetPlayCursor), the 3D parameter push (Update3D) and the debug dump
// (PrintDebug). Source slots are named from the DriverCallbackSourceInterface vtable
// (+0x24 NeedData, +0x28 UploadData, +0x1c GetByteOffset, +0x3c Set3DParameter, +0x50
// PrintDebug). Cursor slots come from the DecoderCursorInterface vtable (+0x14 DecodeRef,
// +0x18 HasData, +0x34 AllowBufferReference).
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/emitter_obj.hpp"

namespace vox {

// 0x864e28 _ZN3vox10EmitterObj10PrintDebugEv
// The original returns the Mutex::Unlock result; the port returns void like the other accessors.
void EmitterObj::PrintDebug() {
    mutex.Lock();
    if (dsp_source_ != nullptr) {
        dsp_source_->PrintDebug();  // source +0x50
    }
    mutex.Unlock();
}

// 0x863318 _ZN3vox10EmitterObj8Update3DEv
// Parameter ids in the order the original pushes them: 0 (int at +0xc0), 1..6 (floats at
// +0xc4..+0xd8), 8 position (+0x9c), 9 velocity (+0xb4), 10 direction (+0xa8). Id 7 is never pushed.
// Each id's dirty byte (+0xe0 + id) is cleared after its push. The port returns early without a
// source, so the dirty bytes stay set until a source exists (the original would call through null).
void EmitterObj::Update3D() {
    if (dsp_source_ == nullptr) {
        return;
    }
    struct Entry {
        int id;
        const void* value;
    };
    const Entry entries[] = {
        {0, &param0_},
        {1, &float_params_[0]},
        {2, &float_params_[1]},
        {3, &float_params_[2]},
        {4, &float_params_[3]},
        {5, &float_params_[4]},
        {6, &float_params_[5]},
        {8, &position_},
        {9, &velocity_},
        {10, &direction_},
    };
    for (const Entry& entry : entries) {
        if (dirty_[entry.id] != 0) {
            dsp_source_->Set3DParameter(entry.id, entry.value);  // source +0x3c
            dirty_[entry.id] = 0;
        }
    }
}

// 0x8654f8 _ZN3vox10EmitterObj13GetPlayCursorEv
// Partial, one behavioural difference in each of two paths (both read from the 0x8654f8 listing,
// which is 20 bytes: ADD R5,R0,#0x18; Lock; LDR R3,[R4,#0x24]; CMP R3,#0; MOVLE R4,#0;
// BLE loc_865564; ... Unlock ... loc_865564: MOV R0,R4; POP):
//  (1) when play_length_ (+0x24) is 0 or below the listing returns the 0.0f with the mutex still
//      locked - the BLE at 0x865518 skips the Mutex::Unlock at 0x865560, so the next Lock on this
//      emitter blocks forever. The port unlocks on that path. Reproducing the missing unlock would
//      wedge the host mutex for good, so the row stays partial.
//  (2) the listing calls the source's GetByteOffset (+0x110 -> +0x1c) with no null check, and reads
//      play_rate_ (+0x20) as the divisor with no zero test; the port returns 0 for a null source.
// The non-null path matches the listing exactly: (GetByteOffset() % play_length_) / (float)play_rate_
// with the truncated int remainder, and the source call is the only difference on that path.
float EmitterObj::GetPlayCursor() {
    mutex.Lock();
    float position = 0.0f;
    if (play_length_ > 0 && dsp_source_ != nullptr) {
        const int offset = dsp_source_->GetByteOffset();
        position = static_cast<float>(offset % play_length_) / static_cast<float>(play_rate_);
    }
    mutex.Unlock();
    return position;
}

// 0x863228 _ZN3vox10EmitterObj20ProcessNonNativeDataEf
// The float argument in the pseudocode is a leftover register: NeedData takes no argument, so dt
// is unused. The port returns 0 when the source, the cursor or the ring is missing, where the
// original would call through null. A zero buffer_count_ also returns 0 instead of dividing by it.
// Flow: the source asks for data (NeedData); the cursor has data (HasData); the ring slot at the
// read index is refilled through AllowBufferReference when empty (a refusal sets state_set_ to
// -1); DecodeRef fills the slot with buffer_chunk_bytes_; a positive count is uploaded to the
// source (UploadData) and the read index advances modulo buffer_count_. The return value is the
// number of wraps (next / count).
int EmitterObj::ProcessNonNativeData(float dt) {
    (void)dt;
    if (dsp_source_ == nullptr || decoder_cursor_ == nullptr || buffer_ring_.empty() ||
        buffer_count_ <= 0) {
        return 0;
    }
    int result = dsp_source_->NeedData();  // source +0x24
    if (result == 0) {
        return result;
    }
    if (!decoder_cursor_->HasData()) {  // cursor +0x18
        return 0;
    }
    if (buffer_ring_[buffer_read_index_] == nullptr) {
        if (!decoder_cursor_->AllowBufferReference()) {  // cursor +0x34
            state_set_ = -1;
            return 0;
        }
    }
    void*& slot = buffer_ring_[buffer_read_index_];
    result = decoder_cursor_->DecodeRef(slot, buffer_chunk_bytes_);  // cursor +0x14
    if (result > 0) {
        dsp_source_->UploadData(buffer_ring_[buffer_read_index_], result);  // source +0x28
        const int next = buffer_read_index_ + 1;
        buffer_read_index_ = next % buffer_count_;
        return next / buffer_count_;
    }
    return result;
}

// 0x866b30 _ZN3vox10EmitterObj17ProcessNativeDataEf
// Reconstructed against the 0x866b30 listing (624 bytes). The slots are the vtable slots the
// listing calls and they were checked against the DecoderNativeCursor and DriverSourceInterface
// vtables: cursor +0x1c Reset, +0x20 GetRewindLimit, +0x24 Rewind, +0x18 HasData, +0x14 DecodeRef,
// +0x10 Decode; source +0x24 NeedData, +0x14 Reset, +0x28 UploadData, +0x4c FreeDisposableData.
// The r1 the decompiler shows at the cursor +0x1c and +0x20 calls is the incoming float dt left in
// r1: the listing never loads r1 before those two, and both slots take no argument (0x8718cc and
// 0x8710d4 read only r0).
// Flow: with no interactive-state change pending and the +0x145 byte clear, the source asks for
// data (NeedData) and the shared 0x866be0 tail runs. Otherwise, when the +0x145 byte is set, the
// cursor Reset, the state-name hand-off to DecoderNativeCursor::SetInteractiveMusicState (a direct
// call in the listing), the source Reset and the two buffer counters run before the same tail. When
// the +0x145 byte is clear, the two int out-slots (seeded from that byte) take the source's
// FreeDisposableData result: the read index moves back by the released block count, the cursor
// Rewinds by the second value, and the next ring block is Decoded and Uploaded. The tail calls
// HasData, marks the state -1 when the read slot is empty, and otherwise DecodeRef/UploadData, and
// every exit clears the +0x144 flag and returns the int the listing's r0 holds.
// Deviations (host-necessitated): (a) the listing returns the register the void Rewind call leaves
// in r0 on the empty-read-slot path, an undefined value; the port returns 0 there, and Update is
// the only caller and discards the result. (b) the listing divides by buffer_count_ with no zero
// test (__aeabi_idivmod); the port returns 0 instead of dividing, because a zero divisor is a
// SIGFPE on the host.
int EmitterObj::ProcessNativeData(float dt) {
    (void)dt;
    int result;
    if (interactive_state_set_ && flag_145_ == 0) {
        // 0x866c78: ask the source which of its blocks it has finished with, rewind the cursor and
        // hand the next ring block to the cursor's decoder. Both out-slots start at the +0x145 byte,
        // as the listing's two stores to the stack words do.
        int first = flag_145_;
        int second = flag_145_;
        const int requested = decoder_cursor_->GetRewindLimit();      // cursor +0x20
        dsp_source_->FreeDisposableData(requested, first, second);    // source +0x4c
        if (second <= 0) {
            interactive_state_set_ = false;
            result = dsp_source_->NeedData();                         // source +0x24
            if (result == 0) {
                return result;
            }
        } else {
            int index = buffer_read_index_;
            if (index < first) {
                index += buffer_count_;
            }
            buffer_read_index_ = index - first;
            decoder_cursor_->Rewind(second);                          // cursor +0x24
            if (buffer_ring_[buffer_read_index_] == nullptr) {
                interactive_state_set_ = false;
                return 0;  // deviation (a): the listing's r0 here is the void Rewind call's leftover
            }
            if (dsp_source_->NeedData() == 0) {                       // source +0x24
                interactive_state_set_ = false;
                return 0;
            }
            result = decoder_cursor_->Decode(buffer_ring_[buffer_read_index_],
                                             buffer_chunk_bytes_);    // cursor +0x10
            if (result > 0) {
                dsp_source_->UploadData(buffer_ring_[buffer_read_index_], result);  // source +0x28
                buffer_fill_ = 0;                                     // +0x10c
                const int next = buffer_read_index_ + 1;
                if (buffer_count_ <= 0) {
                    interactive_state_set_ = false;
                    return 0;  // deviation (b): the listing divides by this zero divisor
                }
                buffer_read_index_ = next % buffer_count_;
                result = next / buffer_count_;
            }
            interactive_state_set_ = false;
            return result;
        }
    } else {
        if (interactive_state_set_) {
            // 0x866b6c: the +0x145 byte selects the interactive-state push.
            decoder_cursor_->Reset();                                 // cursor +0x1c
            static_cast<DecoderNativeCursor*>(decoder_cursor_)
                ->SetInteractiveMusicState(interactive_state_.c_str());
            dsp_source_->Reset();                                     // source +0x14
            buffer_fill_ = 0;                                         // +0x10c
            buffer_read_index_ = 0;                                   // +0x100
            interactive_state_set_ = false;                           // +0x144
        }
        result = dsp_source_->NeedData();                             // source +0x24
        if (result == 0) {
            return result;
        }
    }

    // The tail at 0x866be0, which the listing shares with ProcessNonNativeData (0x863228).
    result = decoder_cursor_->HasData();                              // cursor +0x18
    if (result == 0) {
        return result;
    }
    void*& slot = buffer_ring_[buffer_read_index_];
    if (slot == nullptr) {
        state_set_ = -1;                                              // +0x94
        return 0;
    }
    result = decoder_cursor_->DecodeRef(slot, buffer_chunk_bytes_);   // cursor +0x14
    if (result > 0) {
        dsp_source_->UploadData(buffer_ring_[buffer_read_index_], result);  // source +0x28
        const int next = buffer_read_index_ + 1;
        if (buffer_count_ <= 0) {
            return 0;  // deviation (b): the listing divides by this zero divisor
        }
        buffer_read_index_ = next % buffer_count_;
        return next / buffer_count_;
    }
    return result;
}

}  // namespace vox
