// VoxEngineInternal 3D push and debug dump. Update3D sends each dirty 3D block to the
// driver, in order: general parameters 0..2, then listener position, velocity and
// orientation. PrintDebug dumps the driver, then every data object and the emitters that
// play it.
#include <algorithm>

#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x862ec0 _ZN3vox17VoxEngineInternal8Update3DEv
// The dirty flags are general_dirty_ (+0x434..+0x436) and listener_dirty_ (+0x437..+0x439).
// Each flag is cleared after its driver call. With no driver nothing is sent and the flags
// stay set.
void VoxEngineInternal::Update3D() {
    DriverInterface* driver = driver_;
    if (driver == nullptr) {
        return;
    }
    if (general_dirty_[0]) {
        driver->Set3DParameter(0, &general_3d_.param0);
        general_dirty_[0] = false;
    }
    if (general_dirty_[1]) {
        driver->Set3DParameter(1, &general_3d_.param1);
        general_dirty_[1] = false;
    }
    if (general_dirty_[2]) {
        driver->Set3DParameter(2, &general_3d_.param2);
        general_dirty_[2] = false;
    }
    if (listener_dirty_[0]) {
        driver->Set3DParameter(3, listener_position_);
        listener_dirty_[0] = false;
    }
    if (listener_dirty_[1]) {
        driver->Set3DParameter(4, listener_velocity_);
        listener_dirty_[1] = false;
    }
    if (listener_dirty_[2]) {
        // The original copies the six orientation floats into a local block before the call.
        float orientation[6];
        std::copy(listener_orientation_, listener_orientation_ + 6, orientation);
        driver->Set3DParameter(5, orientation);
        listener_dirty_[2] = false;
    }
}

// 0x867370 _ZN3vox17VoxEngineInternal10PrintDebugEv
// Read access to the data table (+0x54) is taken first, then to the emitters (+0xc4). Each
// data object's emitter list is walked under the mutex, and each id is looked up in emitters_.
void VoxEngineInternal::PrintDebug() {
    mutex_.Lock();
    if (driver_ != nullptr) {
        driver_->PrintDebug();
    }
    mutex_.Unlock();

    data_objects_access_.GetReadAccess();
    emitter_access_.GetReadAccess();
    for (auto& entry : data_objects_) {
        auto* data = static_cast<DataObj*>(entry.second);
        if (data == nullptr) {
            continue;
        }
        data->PrintDebug();
        mutex_.Lock();
        for (const auto& link : data->emitters_) {
            Handlable* emitter = emitters_.Find(link);
            if (emitter != nullptr) {
                static_cast<EmitterObj*>(emitter)->PrintDebug();
            }
        }
        mutex_.Unlock();
    }
    emitter_access_.ReleaseReadAccess();
    data_objects_access_.ReleaseReadAccess();
}

}  // namespace vox
