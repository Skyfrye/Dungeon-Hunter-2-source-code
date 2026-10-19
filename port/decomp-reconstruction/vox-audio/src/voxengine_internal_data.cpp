// VoxEngineInternal data source forwarders: each takes the data read access (+0x54),
// looks the DataObj up from the handle and reads or writes one field. When the lookup
// fails, the getters return the default shown per function and the setters do nothing.
// GetDataObject is declared but not reconstructed yet.
#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x86883c _ZN3vox17VoxEngineInternal6GetUidERNS_10DataHandleE
int VoxEngineInternal::GetUid(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    int uid = -1;
    if (DataObj* obj = GetDataObject(data)) {
        uid = obj->uid_;
    }
    data_objects_access_.ReleaseReadAccess();
    return uid;
}

// 0x86887c _ZN3vox17VoxEngineInternal6SetUidERNS_10DataHandleEi
void VoxEngineInternal::SetUid(DataHandle& data, int uid) {
    data_objects_access_.GetReadAccess();
    if (DataObj* obj = GetDataObject(data)) {
        obj->uid_ = uid;
    }
    data_objects_access_.ReleaseReadAccess();
}

// 0x8688b8 _ZN3vox17VoxEngineInternal17SetPriorityBankIdERNS_10DataHandleEi
void VoxEngineInternal::SetPriorityBankId(DataHandle& data, int bank) {
    data_objects_access_.GetReadAccess();
    if (DataObj* obj = GetDataObject(data)) {
        obj->priority_bank_id_ = bank;
    }
    data_objects_access_.ReleaseReadAccess();
}

// 0x8688f4 _ZN3vox17VoxEngineInternal11GetDurationERNS_10DataHandleE
std::uint32_t VoxEngineInternal::GetDuration(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    std::uint32_t duration = 0;
    if (DataObj* obj = GetDataObject(data)) {
        duration = obj->GetDuration();
    }
    data_objects_access_.ReleaseReadAccess();
    return duration;
}

// 0x86893c _ZN3vox17VoxEngineInternal7IsValidERNS_10DataHandleE
int VoxEngineInternal::IsValid(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    int valid = GetDataObject(data) != nullptr ? 1 : 0;
    data_objects_access_.ReleaseReadAccess();
    return valid;
}

// 0x868978 _ZN3vox17VoxEngineInternal7IsReadyERNS_10DataHandleE
int VoxEngineInternal::IsReady(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    int ready = 0;
    if (DataObj* obj = GetDataObject(data)) {
        ready = obj->IsReady() ? 1 : 0;
    }
    data_objects_access_.ReleaseReadAccess();
    return ready;
}

// 0x869314 _ZN3vox17VoxEngineInternal19GetFreeDataObjectIdEv
// Write access to the data table (+0x54), then the next free id from the data object
// HandlableContainer (+0x08).
std::int64_t VoxEngineInternal::GetFreeDataObjectId() {
    data_objects_access_.GetWriteAccess();
    std::int64_t id = data_objects_.GetFreeHandleId();
    data_objects_access_.ReleaseWriteAccess();
    return id;
}

}  // namespace vox
