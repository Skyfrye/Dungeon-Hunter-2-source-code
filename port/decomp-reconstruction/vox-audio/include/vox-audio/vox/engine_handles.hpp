// vox::EmitterHandle and vox::DataHandle: handles that hold a reference on an
// engine object. Both derive from vox::Handle (+0x08 id, +0x10 stamp, +0x18 object)
// and add the engine pointer at +0x1c and a second object pointer at +0x20.
// Copying or destroying a handle adjusts the engine's reference count through
// VoxEngineInternal, which is declared but not defined yet (see NOTES.md).
#pragma once

#include <cstdint>

#include "vox-audio/vox/handle.hpp"
#include "vox-audio/vox/voxengine_types.hpp"

namespace vox {

class Handlable;
class VoxEngineInternal;

class EmitterHandle : public Handle {
public:
    // EmitterHandle(long long, VoxEngineInternal**, Handlable*, unsigned, unsigned).
    // C1 0x868098, C2 0x86812c.
    EmitterHandle(std::int64_t id, VoxEngineInternal** engine, Handlable* object,
                  std::uint32_t first_stamp, std::uint32_t second_stamp);
    // Copy constructor. C1 0x8681c0, C2 0x868250.
    EmitterHandle(const EmitterHandle& other);
    // Copy assignment. 0x868324.
    EmitterHandle& operator=(const EmitterHandle& other);
    // D1 0x8683ac, D2 0x868418, D0 0x8683fc (deleting).
    ~EmitterHandle() override;

private:
    VoxEngineInternal** engine_ = nullptr;  // +0x1c
    Handlable* handlable_ = nullptr;        // +0x20
};

class DataHandle : public Handle {
public:
    // DataHandle(long long, VoxEngineInternal**, Handlable*, unsigned, unsigned).
    // C1 0x868d54, C2 0x868de8.
    DataHandle(std::int64_t id, VoxEngineInternal** engine, Handlable* object,
               std::uint32_t first_stamp, std::uint32_t second_stamp);
    // Copy constructor. C1 0x868e7c, C2 0x868f0c.
    DataHandle(const DataHandle& other);
    // Copy assignment. 0x86aba0.
    DataHandle& operator=(const DataHandle& other);
    // D1 0x86ac28, D2 0x86b968, D0 0x86ac78 (deleting).
    ~DataHandle() override;

private:
    VoxEngineInternal** engine_ = nullptr;  // +0x1c
    Handlable* handlable_ = nullptr;        // +0x20
};

}  // namespace vox
