// VoxEngineInternal emitter lookups and user data: the data object an emitter plays, the
// user-data word of an emitter, and the detach of an emitter from the live or pending table.
#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x868f9c _ZN3vox17VoxEngineInternal7GetDataERNS_13EmitterHandleE
// A missing emitter, or one with no data object, gives the empty data handle. The read access is
// released once when the emitter is missing or has data, and twice when the emitter exists with a
// null data pointer (+0x118): the binary's two release calls at 0x869028 and 0x869030 (asm checked).
// The second release is reproduced as written, so the read count drops once more on that path.
DataHandle VoxEngineInternal::GetData(EmitterHandle& emitter) {
    emitter_access_.GetReadAccess();
    EmitterObj* obj = GetEmitterObject(emitter);
    if (obj == nullptr) {
        emitter_access_.ReleaseReadAccess();
        return DataHandle(-1, nullptr, nullptr, 0, 0);
    }
    if (obj->data_ == nullptr) {
        emitter_access_.ReleaseReadAccess();
        emitter_access_.ReleaseReadAccess();
        return DataHandle(-1, nullptr, nullptr, 0, 0);
    }
    const std::int64_t id = obj->data_->id;
    emitter_access_.ReleaseReadAccess();
    return DataHandle(id, &s_voxEngineInternal, nullptr, 0, 0);
}

// 0x86a5d0 _ZN3vox17VoxEngineInternal19DetachEmitterObjectEx
// Takes the emitter out of the live table without destroying it. Only when the id is not
// there does it look in the pending table, under the pending write access.
EmitterObj* VoxEngineInternal::DetachEmitterObject(std::int64_t id) {
    Handlable* found = emitters_.Detach(id);
    if (found == nullptr) {
        emitter_pending_access_.GetWriteAccess();
        found = emitter_pending_.Detach(id);
        emitter_pending_access_.ReleaseWriteAccess();
    }
    return static_cast<EmitterObj*>(found);
}

// 0x867608 _ZN3vox17VoxEngineInternal11SetUserDataERNS_13EmitterHandleERNS_21EmitterHandleUserDataE
// The record is read as one word: the listing passes the record to EmitterObj::SetUserData
// (0x8653c0), which loads only its first word (asm checked). The result is the int that
// AccessController::ReleaseReadAccess returns, as the binary tail-calls it.
int VoxEngineInternal::SetUserData(EmitterHandle& emitter, EmitterHandleUserData& user_data) {
    emitter_access_.GetReadAccess();
    if (EmitterObj* obj = GetEmitterObject(emitter)) {
        obj->SetUserData(user_data.word);
    }
    return emitter_access_.ReleaseReadAccess();
}

}  // namespace vox
