// EmitterHandle and DataHandle: reference handling for handles on engine objects.
#include "vox-audio/vox/engine_handles.hpp"

#include "vox-audio/vox/handlable.hpp"
#include "vox-audio/vox/voxengine_internal.hpp"

namespace vox {

// 0x868098 _ZN3vox13EmitterHandleC1ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
// 0x86812c _ZN3vox13EmitterHandleC2ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
// Stores the stamp, the object and the engine. With an engine that is live, a null
// object asks the engine to count a new reference; a non-null object is retained.
EmitterHandle::EmitterHandle(std::int64_t id, VoxEngineInternal** engine, Handlable* object,
                             std::uint32_t first_stamp, std::uint32_t second_stamp)
    : engine_(engine), handlable_(object) {
    id_ = id;
    stamp_[0] = first_stamp;
    stamp_[1] = second_stamp;
    object_ = object;
    if (engine != nullptr && *engine != nullptr) {
        if (object == nullptr) {
            (*engine)->IncreaseEmitterObjectRefCount(*this);
        } else {
            object->Retain();
        }
    }
}

// 0x8681c0 _ZN3vox13EmitterHandleC1ERKS0_ (reconstructed)
// 0x868250 _ZN3vox13EmitterHandleC2ERKS0_ (reconstructed, same body)
// Copies every word and counts a reference through the engine when one is live.
EmitterHandle::EmitterHandle(const EmitterHandle& other)
    : Handle(other), engine_(other.engine_), handlable_(other.handlable_) {
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->IncreaseEmitterObjectRefCount(*this);
    }
}

// 0x868324 _ZN3vox13EmitterHandleaSERKS0_ (reconstructed)
// Releases the old engine reference, copies the other handle, and counts the new one.
EmitterHandle& EmitterHandle::operator=(const EmitterHandle& other) {
    if (this == &other) {
        return *this;
    }
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->DecreaseEmitterObjectRefCount(*this);
    }
    engine_ = other.engine_;
    id_ = other.id_;
    stamp_[0] = other.stamp_[0];
    stamp_[1] = other.stamp_[1];
    object_ = other.object_;
    handlable_ = other.handlable_;
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->IncreaseEmitterObjectRefCount(*this);
    }
    return *this;
}

// 0x8683ac _ZN3vox13EmitterHandleD1Ev, 0x868418 _ZN3vox13EmitterHandleD2Ev
// Releases the engine reference when an engine is live.
EmitterHandle::~EmitterHandle() {
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->DecreaseEmitterObjectRefCount(*this);
    }
}

// 0x8683fc _ZN3vox13EmitterHandleD0Ev: deleting variant emitted by the compiler.

// 0x868d54 _ZN3vox10DataHandleC1ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
// 0x868de8 _ZN3vox10DataHandleC2ExPPNS_17VoxEngineInternalEPNS_9HandlableEjj
DataHandle::DataHandle(std::int64_t id, VoxEngineInternal** engine, Handlable* object,
                       std::uint32_t first_stamp, std::uint32_t second_stamp)
    : engine_(engine), handlable_(object) {
    id_ = id;
    stamp_[0] = first_stamp;
    stamp_[1] = second_stamp;
    object_ = object;
    if (engine != nullptr && *engine != nullptr) {
        if (object == nullptr) {
            (*engine)->IncreaseDataObjectRefCount(*this);
        } else {
            object->Retain();
        }
    }
}

// 0x868e7c _ZN3vox10DataHandleC1ERKS0_
// 0x868f0c _ZN3vox10DataHandleC2ERKS0_
DataHandle::DataHandle(const DataHandle& other)
    : Handle(other), engine_(other.engine_), handlable_(other.handlable_) {
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->IncreaseDataObjectRefCount(*this);
    }
}

// 0x86aba0 _ZN3vox10DataHandleaSERKS0_
DataHandle& DataHandle::operator=(const DataHandle& other) {
    if (this == &other) {
        return *this;
    }
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->DecreaseDataObjectRefCount(*this);
    }
    engine_ = other.engine_;
    id_ = other.id_;
    stamp_[0] = other.stamp_[0];
    stamp_[1] = other.stamp_[1];
    object_ = other.object_;
    handlable_ = other.handlable_;
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->IncreaseDataObjectRefCount(*this);
    }
    return *this;
}

// 0x86ac28 _ZN3vox10DataHandleD1Ev, 0x86b968 _ZN3vox10DataHandleD2Ev
DataHandle::~DataHandle() {
    if (engine_ != nullptr && *engine_ != nullptr) {
        (*engine_)->DecreaseDataObjectRefCount(*this);
    }
}

// 0x86ac78 _ZN3vox10DataHandleD0Ev: deleting variant emitted by the compiler.

}  // namespace vox
