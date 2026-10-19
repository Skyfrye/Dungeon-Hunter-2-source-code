// glitch::video::CNullShader: the shader stub of the null driver. Derives from IShader (0x44 bytes).
// Layout of the original object (32-bit, 0x50 bytes): IShader, then
//   +0x44  hash value (uint32)   +0x48  uint8, the hash is stale   +0x4c  uint32 shader size
// IShader +0x40 (the id) and +0x38 (the vertex attribute mask) are the base's members. Vtable 0x98b1b0: the IShader slots with
// +0x0c (thunk 0x6e05e8) / +0x10 (0x6e05d0) / +0x14 (0x6e0554) overridden, and three slots the class adds:
//   +0x18 bindShader() const (0x6e0558)  +0x1c getHashValue() const (0x6e0590)  +0x20 getShaderSize() const (0x6e0570)
#pragma once

#include <cstdint>

#include "glitch-video/shader_attributes.hpp"

namespace glitch::video {

class CNullDriver;

class CNullShader : public IShader {
public:
    CNullShader(CNullDriver* driver);                                    // 0x6e0670 (C1), 0x6e06b8 (C2)
    CNullShader(uint16_t id, const char* name, CNullDriver* driver);     // 0x6e0700 (C1), 0x6e0744 (C2)
    ~CNullShader() override;                                              // 0x6e05ec (D1), 0x6e063c (D2)

    // ---- vtable slots ----
    void serializeAttributes(io::IAttributes* attributes) const override;  // +0x0c  0x6e05e8, a thunk to IShader's
    void deserializeAttributes(io::IAttributes* attributes) override;      // +0x10  0x6e05d0
    void releaseDriverSpecificResources() override;                         // +0x14  0x6e0554
    virtual void bindShader() const;                                        // +0x18  0x6e0558
    virtual uint32_t getHashValue() const;                                  // +0x1c  0x6e0590
    virtual uint32_t getShaderSize() const;                                 // +0x20  0x6e0570

    void updateHash() const;                // 0x6e055c

    mutable uint32_t m_hashValue = 0;       // +0x44, written by updateHash
    mutable bool m_hashDirty = false;       // +0x48, cleared by updateHash
    mutable uint32_t m_shaderSize = 0;      // +0x4c, returned by getShaderSize
};

}  // namespace glitch::video
