// glitch::video::IShader: the shader base class. Canonical definition (engine unification wave u1-video); the
// stand-in in glitch-core-io (deps/glitch_core_objects.hpp) and the forward declarations elsewhere are replaced by
// this header. Holds the vertex attribute definitions, the per-stage parameter lists and the shader id.
//
// Layout of the original object (32-bit; constructors 0x5e4a4c C1 / 0x5e4ae0 C2; the object is 0x44 bytes, CGLSLShader
// adds 0x44..0x50 and CNullShader reuses +0x40 / +0x38):
//   +0x00  vptr (vtable 0x9781d0, six slots, below)
//   +0x04  reference count; the constructor stores 0
//   +0x08  IVideoDriver*
//   +0x0c  std::string name (STLport, 0x18 bytes: inline buffer +0x0c, finish +0x1c, start +0x20)
//   +0x24  SShaderVertexAttributeDef array (8 bytes each)
//   +0x28  stage 0 record: SShaderParameterDef array, then two uint16 (+0x2c, +0x2e = count)
//   +0x30  stage 1 record: SShaderParameterDef array, then two uint16 (+0x34, +0x36 = count)
//   +0x38  vertex attribute mask
//   +0x3c  uint8 vertex attribute def count     +0x3d  uint8, 0xff after construction
//   +0x3e  uint8, 1 after construction          +0x40  uint16 shader id
//
// Vtable (tools/decomp_vtable.py glitch::video::IShader; +0x14 is named from the CGLSLShader / CNullShader overrides):
//   +0x00 ~IShader (D1 0x5e49e8, D2 0x5e4f04; D0 0x5e4c18)   +0x04 deleting destructor
//   +0x08 onDelete (IReferenceCounted)
//   +0x0c serializeAttributes(IAttributes*) const   +0x10 deserializeAttributes(IAttributes*)
//   +0x14 releaseDriverSpecificResources() (pure in the base)
#pragma once

#include <cstdint>
#include <string>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/shader_parameter_def.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

// 8-byte entry in the original (SShaderVertexAttributeDef).
struct SShaderVertexAttributeDef {
    const glitch::core::detail::SSharedStringData* name = nullptr;  // +0x00, the attribute's name (a shared string; its text is +0x04)
    uint16_t attribute = 0;    // +0x04, E_VERTEX_ATTRIBUTE
    uint16_t index = 0;        // +0x06 ("Index")

    // 0x5e4e64: a group named after the attribute with its Type (a choice name) and Index.
    void serializeAttributes(io::IAttributes* attributes) const;
    // 0x5e4c34: reads the Type and Index back.
    void deserializeAttributes(io::IAttributes* attributes);
};

// Per-stage parameter list (8 bytes in the original: pointer, halfword, halfword count).
struct SShaderStageParameters {
    SShaderParameterDef* parameters = nullptr;  // +0x00 of the record
    uint16_t field04 = 0;                       // +0x04, not identified
    uint16_t count = 0;                         // +0x06, number of parameter defs
};

class IShader : public glitch::IReferenceCounted {
public:
    // 0x5e4a4c (C1) / 0x5e4ae0 (C2): stores the driver, the name and the id; the count is 0.
    IShader(uint16_t id, const char* name, IVideoDriver* driver);
    // 0x5e49e8 (D1) / 0x5e4f04 (D2) / 0x5e4c18 (D0): tells the driver the shader is gone (IVideoDriver
    // onShaderDestroyed, vtable +0x214), then frees the name.
    ~IShader() override;

    // ---- vtable slots after the IReferenceCounted ones ----
    // 0x5e5188 / 0x5e4f68: the name, the vertex attribute definitions, the vertex attribute mask and the two stages' parameter
    // definitions as attributes (groups "Vertex Attributes", "Stage 0", "Stage 1", "Parameters").
    virtual void serializeAttributes(io::IAttributes* attributes) const;  // +0x0c
    virtual void deserializeAttributes(io::IAttributes* attributes);      // +0x10
    virtual void releaseDriverSpecificResources() = 0;                    // +0x14

    // ---- non-virtual members ----
    // 0x5e48e4: index of the parameter with the given type in stage's list, 0xffff when absent.
    // Stage 2 and above are not identified in the original and always return 0xffff here.
    uint32_t getParameterID(E_SHADER_PARAMETER_TYPE parameterType, uint32_t stage, uint16_t index) const;
    // 0x5e4b74: lookup by name (the name is looked up in the shared string heap without creating it, then compared by identity).
    uint32_t getParameterID(const char* name, uint32_t stage, uint16_t index) const
        asm("_ZNK6glitch5video7IShader14getParameterIDEPKcNS0_14E_SHADER_STAGEEt");
    // 0x5e4998: the shader manager's batch baker for this shader (IShaderManager::getBatchBaker with the id).
    boost::intrusive_ptr<IBatchBaker> getBatchBaker() const;
    // 0x5e49b8: the same through IShaderManager::removeBatchBaker. Declared only.
    void removeBatchBaker() const;
    // 0x5e4940: index of the first definition with the attribute, 0xff when absent.
    uint32_t getVertexAttributeDefIndex(E_VERTEX_ATTRIBUTE attribute) const;

    // +0x04 is IReferenceCounted::referenceCounter.
    IVideoDriver* m_driver = nullptr;                              // +0x08
    std::string m_name;                                           // +0x0c
    SShaderVertexAttributeDef* m_vertexAttributeDefs = nullptr;   // +0x24
    SShaderStageParameters m_stageParameters[2];                  // +0x28, +0x30 (stages 0 and 1)
    uint32_t m_vertexAttributeMask = 0;                           // +0x38, written by (de)serialize
    uint8_t m_vertexAttributeDefCount = 0;                        // +0x3c
    uint8_t m_unknown3d = 0xff;                                   // +0x3d, set to 0xff by the ctor
    uint8_t m_unknown3e = 1;                                      // +0x3e, set to 1 by the ctor
    uint16_t m_id = 0;                                            // +0x40, shader id
};

}  // namespace glitch::video
