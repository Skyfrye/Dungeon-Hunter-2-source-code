// VoxEngineInternal data-object lookup, user data, reference counts, detach and the list of
// all data sources. The release queue and destruction are in voxengine_internal_data_release.cpp.
#include <cstdint>

#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x8686bc _ZN3vox17VoxEngineInternal13GetDataObjectERNS_10DataHandleE
// Partial. The original reads the handle's stamp pair (GetTimeStamp, virtual +0x10). When the
// stamp matches the engine's slot table (+0x550) and the handle has an object, the object is
// returned straight away. Otherwise the data object is looked up by id in data_objects_ (+0x08),
// then in data_pending_ (+0x28, under the data access +0x60), and the handle is updated from the
// slot table (SetTimeStamp, virtual +0x14). The port does the same. The second word written by
// SetTimeStamp is the object's slot; the original's one-argument call does not show it.
DataObj* VoxEngineInternal::GetDataObject(DataHandle& data) {
    std::uint32_t stamp = 0;
    std::uint32_t slot = 0;
    data.GetTimeStamp(stamp, slot);
    if (slot < 16 && data_stamps_[slot] == stamp && data.GetObjectPointer() != nullptr) {
        return static_cast<DataObj*>(data.GetObjectPointer());
    }
    const std::int64_t id = data.GetId();
    Handlable* found = data_objects_.Find(id);
    if (found == nullptr) {
        data_access_.GetReadAccess();
        found = data_pending_.Find(id);
        data_access_.ReleaseReadAccess();
    }
    if (found == nullptr) {
        return nullptr;
    }
    DataObj* obj = static_cast<DataObj*>(found);
    const unsigned int obj_slot = static_cast<unsigned int>(obj->slot_) & 0xFu;
    data.SetTimeStamp(data_stamps_[obj_slot], obj_slot);
    return obj;
}

// 0x8687b0 _ZN3vox17VoxEngineInternal11GetUserDataERNS_10DataHandleE
// Returns the user word as the int the signature gives: -1 without an object. The port keeps the
// word pointer-sized (DataObj::user_data_), so the value is its low 32 bits.
int VoxEngineInternal::GetUserData(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    int user = -1;
    if (DataObj* obj = GetDataObject(data)) {
        user = static_cast<int>(obj->GetUserData());
    }
    data_objects_access_.ReleaseReadAccess();
    return user;
}

// 0x8687f8 _ZN3vox17VoxEngineInternal11SetUserDataERNS_10DataHandleERNS_18DataHandleUserDataE
void VoxEngineInternal::SetUserData(DataHandle& data, DataHandleUserData& user_data) {
    data_objects_access_.GetReadAccess();
    if (DataObj* obj = GetDataObject(data)) {
        obj->SetUserData(user_data);
    }
    data_objects_access_.ReleaseReadAccess();
}

// 0x868d10 _ZN3vox17VoxEngineInternal26IncreaseDataObjectRefCountERNS_10DataHandleE
// The object's virtual +0x08 is Handlable::Retain (vtable dump).
void VoxEngineInternal::IncreaseDataObjectRefCount(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    if (DataObj* obj = GetDataObject(data)) {
        obj->Retain();
    }
    data_objects_access_.ReleaseReadAccess();
}

// 0x86ab10 _ZN3vox17VoxEngineInternal26DecreaseDataObjectRefCountERNS_10DataHandleE
// The object's virtual +0x0c is Handlable::Release. The object is then queued for release under
// the queue mutex, unless it already is.
void VoxEngineInternal::DecreaseDataObjectRefCount(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    if (DataObj* obj = GetDataObject(data)) {
        obj->Release();
        QueueForRelease(obj);
    }
    data_objects_access_.ReleaseReadAccess();
}

// 0x86a940 _ZN3vox17VoxEngineInternal16DetachDataObjectEx
// Removes the object from data_objects_ without deleting it. If it is not there, it is removed
// from data_pending_ under the write access of the data table (+0x60).
Handlable* VoxEngineInternal::DetachDataObject(std::int64_t id) {
    Handlable* result = data_objects_.Detach(id);
    if (result == nullptr) {
        data_access_.GetWriteAccess();
        result = data_pending_.Detach(id);
        data_access_.ReleaseWriteAccess();
    }
    return result;
}

// 0x86ac94 _ZN3vox17VoxEngineInternal17GetAllDataSourcesEPNS_10DataHandleEi
// Writes one handle per data object into out, first from data_objects_ (under the data object
// access, +0x54) and then from data_pending_ (under the data access, +0x60), up to max_count.
// Returns the number written. The handle for each object takes its id, the object and the
// slot's stamp.
int VoxEngineInternal::GetAllDataSources(DataHandle* out, int max_count) {
    int count = 0;
    data_objects_access_.GetReadAccess();
    for (auto it = data_objects_.begin(); it != data_objects_.end() && count < max_count; ++it) {
        DataObj* obj = static_cast<DataObj*>(it->second);
        const unsigned int slot = static_cast<unsigned int>(obj->slot_) & 0xFu;
        out[count] = DataHandle(obj->id, &VoxEngineInternal::s_voxEngineInternal, obj,
                                data_stamps_[slot], slot);
        ++count;
    }
    data_objects_access_.ReleaseReadAccess();

    data_access_.GetReadAccess();
    for (auto it = data_pending_.begin(); it != data_pending_.end() && count < max_count; ++it) {
        DataObj* obj = static_cast<DataObj*>(it->second);
        const unsigned int slot = static_cast<unsigned int>(obj->slot_) & 0xFu;
        out[count] = DataHandle(obj->id, &VoxEngineInternal::s_voxEngineInternal, obj,
                                data_stamps_[slot], slot);
        ++count;
    }
    data_access_.ReleaseReadAccess();
    return count;
}

}  // namespace vox
