// vox::Handle: a 64-bit id with a timestamp pair and an object pointer.
// Layout: +0x00 vtable, +0x08 id (64-bit), +0x10 timestamp[0], +0x14 timestamp[1],
// +0x18 object pointer.
#pragma once

#include <cstdint>

namespace vox {

class Handle {
public:
    Handle() = default;
    virtual ~Handle();

    std::int64_t GetId() const { return id_; }                       // 0x3691e8
    void* GetObjectPointer() const { return object_; }               // 0x3691f4
    void GetTimeStamp(std::uint32_t& first, std::uint32_t& second) const;  // 0x3691fc
    void SetTimeStamp(std::uint32_t first, std::uint32_t second);    // 0x369210

    bool operator==(const Handle& other) const;                      // 0x863110

protected:
    std::int64_t id_ = 0;            // +0x08
    std::uint32_t stamp_[2] = {};    // +0x10, +0x14
    void* object_ = nullptr;         // +0x18
};

}  // namespace vox
