// VoxEngineInternal frame update of the emitters and the emitter kill. UpdateEmitters
// advances the master and group fades, pushes each group's gain to its emitters, updates
// every emitter, collects the dead ones, and kills them after the read pass.
#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/gain_fade.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/priority_bank.hpp"
#include "vox-audio/vox/stream.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x86db40 _ZN3vox17VoxEngineInternal13UpdateEmittersEf
// The step is clamped to [0, 0.1] (a NaN step becomes 0). While the engine is suspended
// (suspend_count_ > 0) nothing runs. The dead-emitter list is filled under the live read
// access and drained under the write access, popping from the back as the original does.
// The result is the int of the last release in the path (each release ends in Mutex::Unlock).
int VoxEngineInternal::UpdateEmitters(float dt) {
    mutex_.Lock();
    if (suspend_count_ > 0) {
        return mutex_.Unlock();
    }
    if (dt >= 0.0f) {
        if (dt > 0.1f) {
            dt = 0.1f;
        }
    } else {
        dt = 0.0f;
    }

    Update3D();
    UpdateDSP(dt);

    // Master fade: advance while it has time left, then take its current value.
    if (master_fade_.elapsed < master_fade_.duration) {
        master_fade_.elapsed += dt;
    } else {
        master_fade_.flag = true;
    }
    const float master = CurrentOfFade(master_fade_);
    for (int group = 0; group < 32; ++group) {
        VoxGainFade& fade = group_fades_[group];
        if (fade.elapsed < fade.duration) {
            fade.elapsed += dt;
        } else {
            fade.flag = true;
        }
        group_gains_[group] = master * CurrentOfFade(fade);
    }
    mutex_.Unlock();

    emitter_access_.GetWriteAccess();
    emitter_pending_access_.GetWriteAccess();
    if (emitter_pending_.begin() != emitter_pending_.end()) {
        emitters_.Merge(&emitter_pending_);
        // Merge copies the pending entries into the live table. Detach empties the pending
        // table without deleting the objects, which now belong to emitters_.
        while (emitter_pending_.begin() != emitter_pending_.end()) {
            emitter_pending_.Detach(emitter_pending_.begin()->first);
        }
    }
    emitter_pending_access_.ReleaseWriteAccess();
    emitter_access_.ReleaseWriteAccess();

    emitter_access_.GetReadAccess();
    for (auto& entry : emitters_) {
        auto* emitter = static_cast<EmitterObj*>(entry.second);
        emitter->SetGainModifier(group_gains_[emitter->GetGroup()]);
        emitter->Update(dt);
    }
    for (auto& entry : emitters_) {
        auto* emitter = static_cast<EmitterObj*>(entry.second);
        if (emitter->ShouldDie()) {
            dead_emitters_.push_back(emitter);
        }
    }
    if (priority_bank_ != nullptr) {
        priority_bank_->Update();
    }
    int result = emitter_access_.ReleaseReadAccess();

    if (!dead_emitters_.empty()) {
        emitter_access_.GetWriteAccess();
        while (!dead_emitters_.empty()) {
            EmitterObj* dead = dead_emitters_.back();
            KillEmitter(static_cast<EmitterObj*>(emitters_.Detach(dead->id)));
            dead_emitters_.pop_back();
        }
        result = emitter_access_.ReleaseWriteAccess();
    }
    return result;
}

// 0x86e160 _ZN3vox17VoxEngineInternal11KillEmitterEPNS_10EmitterObjE
// The slot stamp is bumped (the handles to this emitter go stale), the priority bank entry is
// removed, the driver is called through slot +0x48 when the emitter has a DSP source (+0x110),
// the emitter's decoder cursor (+0x114) and its stream cursor are released, the emitter is
// unregistered from its data object, the data object is queued for release (QueueForRelease, the
// pending list at +0x6c under its mutex at +0x74), and the object is destroyed.
// Driver call (asm 0x86e190-0x86e1b4): the source word at +0x110 is loaded into r1 and tested, the
// engine's driver (+0x54c) is tested and goes to r0, and the driver's virtual slot +0x48 is called:
// DestroyDriverSource(driver, source). W2 (ASan heap-use-after-free in soak runs: the audio thread's
// DriverCallbackSourceInterface::FillBuffer read the emitter's buffer ring after CleanUp freed it): the
// _ZTVN3vox13DriverAndroidE address point is 0x993aa0, +0x40 = 0x993ae0 holds PrintDebug (0x88ee6c) and
// +0x48 = 0x993ae8 holds DestroyDriverSource (0x88f59c), and r1 carries the source. The earlier reading
// as PrintDebug left the source in the driver's mix list (and leaked it). It runs before CleanUp, so the
// driver stops mixing (under its mutex) before the buffers go.
// Cursor release (asm 0x86e1d0-0x86e2ec): the stream cursor comes from
// DecoderCursorInterface::GetStreamCursor (slot +0x30) and goes to the data object's stream
// (+0x38, slot +0x18) or is destroyed directly when there is none; the cursor goes to the data
// object's decoder (+0x3c, DestroyCursor slot +0x14) or is destroyed directly. The release runs
// only when the emitter has a data object, and only the cursor path is guarded: the listing reads
// the stream and the decoder without a null check on the data object's own pointers beyond that.
void VoxEngineInternal::KillEmitter(EmitterObj* emitter) {
    if (emitter == nullptr) {
        return;
    }
    ++data_stamps_[emitter->stamp_index_];
    if (emitter->in_bank_ && priority_bank_ != nullptr) {
        priority_bank_->RemoveEmitter(emitter->bank_, emitter);
    }
    if (emitter->dsp_source_ != nullptr && driver_ != nullptr) {  // +0x110 and +0x54c
        driver_->DestroyDriverSource(emitter->dsp_source_);       // driver vtable +0x48
    }
    emitter->CleanUp();

    data_objects_access_.GetReadAccess();
    if (DataObj* data = emitter->data_) {
        if (DecoderCursorInterface* cursor = emitter->decoder_cursor_) {  // +0x114
            if (StreamCursorInterface* stream_cursor = cursor->GetStreamCursor()) {  // slot +0x30
                if (StreamInterface* stream = data->stream_) {                       // DataObj +0x38
                    stream->DestroyCursor(stream_cursor);                            // slot +0x18
                } else {
                    Destruct(stream_cursor);
                    VoxFree(stream_cursor);
                }
            }
            if (DecoderInterface* decoder = data->decoder_) {  // DataObj +0x3c
                decoder->DestroyCursor(cursor);                // slot +0x14
            } else {
                Destruct(cursor);
                VoxFree(cursor);
            }
        }
        data->UnregisterEmitter(emitter->id);
        QueueForRelease(data);
    }
    data_objects_access_.ReleaseReadAccess();

    emitter->~EmitterObj();
    VoxFree(emitter);
}

}  // namespace vox
