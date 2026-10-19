// VoxEngineInternal data release: the queue of data objects waiting for the update loop, marking
// data objects for release by group, and destroying a data object with its emitters, decoder and
// stream. The update loop that drains the queue is not ported.
#include <cstdint>
#include <utility>
#include <vector>

#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/stream.hpp"
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// Queues the object on data_queue_ (the original's 12-byte list node, here a std::list entry)
// under the queue mutex (+0x74). The +0x4c flag (queued_) keeps an object on the queue once.
void VoxEngineInternal::QueueForRelease(DataObj* data) {
    data_queue_mutex_.Lock();
    if (!data->queued_) {
        data->queued_ = true;
        data_queue_.push_back(data);
    }
    data_queue_mutex_.Unlock();
}

// 0x868c88 _ZN3vox17VoxEngineInternal17ReleaseDatasourceERNS_10DataHandleE
// Marks the handle's object for release: NeedToDie, then the queue. Under the data object
// read access (+0x54).
void VoxEngineInternal::ReleaseDatasource(DataHandle& data) {
    data_objects_access_.GetReadAccess();
    if (DataObj* obj = GetDataObject(data)) {
        obj->NeedToDie();
        QueueForRelease(obj);
    }
    data_objects_access_.ReleaseReadAccess();
}

// 0x86a034 _ZN3vox17VoxEngineInternal17ReleaseDatasourceEj
// For every data object in data_objects_ (under +0x54) and then data_pending_ (under +0x60) whose
// group bits contain id: NeedToDie, then the queue.
void VoxEngineInternal::ReleaseDatasource(unsigned int id) {
    data_objects_access_.GetReadAccess();
    for (auto it = data_objects_.begin(); it != data_objects_.end(); ++it) {
        DataObj* obj = static_cast<DataObj*>(it->second);
        if (obj->IsGroup(id)) {
            obj->NeedToDie();
            QueueForRelease(obj);
        }
    }
    data_objects_access_.ReleaseReadAccess();

    data_access_.GetReadAccess();
    for (auto it = data_pending_.begin(); it != data_pending_.end(); ++it) {
        DataObj* obj = static_cast<DataObj*>(it->second);
        if (obj->IsGroup(id)) {
            obj->NeedToDie();
            QueueForRelease(obj);
        }
    }
    data_access_.ReleaseReadAccess();
}

// 0x86a628 _ZN3vox17VoxEngineInternal17ReleaseDatasourceEPNS_7DataObjE
// Destroys one data object. The stamp slot's counter goes up first, so handles to it stop
// matching. Every emitter the object owns is detached (under the emitter write access +0xc4)
// and killed through the engine's virtual KillEmitter (+0x20). The decoder and the stream are
// then destroyed, and the object itself. The emitters are taken from a copy of the list, last
// entry first, as the original takes the list's tail each time. DetachEmitterObject is declared
// but not reconstructed yet.
void VoxEngineInternal::ReleaseDatasource(DataObj* data) {
    if (data == nullptr) {
        return;
    }
    ++data_stamps_[static_cast<unsigned int>(data->slot_) & 0xFu];

    std::vector<std::int64_t> emitters(data->emitters_.begin(), data->emitters_.end());
    for (auto it = emitters.rbegin(); it != emitters.rend(); ++it) {
        emitter_access_.GetWriteAccess();
        EmitterObj* detached = DetachEmitterObject(*it);
        emitter_access_.ReleaseWriteAccess();
        KillEmitter(detached);
    }

    if (DecoderInterface* decoder = data->decoder_) {  // +0x3c
        Destruct(decoder);
        VoxFree(decoder);
    }
    if (StreamInterface* stream = data->stream_) {  // +0x38
        Destruct(stream);
        VoxFree(stream);
    }
    Destruct(data);
    VoxFree(data);
}

// 0x86a710 _ZN3vox17VoxEngineInternal21_ReleaseAllDatasourceEv
// Releases every object in data_objects_, then in data_pending_, and empties both trees. The
// objects are freed by ReleaseDatasource, so the containers only drop their entries (Detach, not
// Clear, which would delete them a second time).
void VoxEngineInternal::_ReleaseAllDatasource() {
    std::vector<std::int64_t> ids;
    for (auto& entry : data_objects_) {
        ids.push_back(entry.first);
    }
    for (std::int64_t id : ids) {
        if (Handlable* h = data_objects_.Find(id)) {
            ReleaseDatasource(static_cast<DataObj*>(h));
        }
    }
    for (std::int64_t id : ids) {
        data_objects_.Detach(id);
    }

    ids.clear();
    for (auto& entry : data_pending_) {
        ids.push_back(entry.first);
    }
    for (std::int64_t id : ids) {
        if (Handlable* h = data_pending_.Find(id)) {
            ReleaseDatasource(static_cast<DataObj*>(h));
        }
    }
    for (std::int64_t id : ids) {
        data_pending_.Detach(id);
    }
}

}  // namespace vox
