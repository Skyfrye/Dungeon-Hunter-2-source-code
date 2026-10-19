// glitch::video::CMaterialRenderer: a material type (a named set of techniques, each a list of render passes, plus the
// parameter table that materials of this type share). Canonical definition (engine unification wave u1-video);
// the stand-ins in glitch-core-io (deps/glitch_core_objects.hpp), glitch-video itself
// (material_vertex_attribute_map.hpp) and the forward declarations in glitch-scene-collada-gui and game/ are
// replaced by this header.
//
// CMaterialRenderer is NOT an IReferenceCounted: the reference count is its first word (+0x00), the constructor stores 0
// and allocate (0x5d4c48) adds the first use. It has no vtable. The original object is one variable-size block: a
// 0x28-byte header followed by the technique table, the parameter entries, the value buffer, the render passes and the
// name text (allocate sizes it as value buffer + 16 * parameters + 41 + 4 * ((3 * bindings + 1) / 2) + strlen(name)
// + 12 * techniques + 52 * passes). The port keeps the header words as members and points them at host arrays.
//
// Header layout (32-bit; constructors 0x5d3124 C2 / 0x5d36cc C1; names from the callers):
//   +0x00  reference count
//   +0x04  IVideoDriver*
//   +0x08  name (a C string at the end of the block)
//   +0x0c  uint16 id (the manager's SIDedCollection id)
//   +0x0e  uint16 parameter count (SParameterBlockHeader::count of IMaterialParameters<CMaterialRenderer>)
//   +0x10  uint8 technique count     +0x11  uint8, 1 after construction
//   +0x14  uint32 value buffer size in bytes
//   +0x18  technique table, 12-byte STechniqueEntry per technique
//   +0x1c  base of the render pass array (every technique's passes follow one another; 52 bytes each)
//   +0x20  parameter entries (SParameterBlockHeader::entries, 16 bytes each)
//   +0x24  value buffer
// The parameter accessors of IMaterialParameters<CMaterialRenderer, ISharedMemoryBlockHeader<CMaterialRenderer>> (the
// original base class, whose table is this header) are the free-function backends in material_parameters_part_d.hpp
// and material_parameters_bind_r.cpp; the port models that base as a separate class template, see NOTES.md.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/shader_parameter_def.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::core {
class SSharedString;
}  // namespace glitch::core

namespace glitch::video {

struct SShaderParameterDef;

namespace detail::material_renderer_manager {
struct STechniqueList;  // CMaterialRendererManager's technique list (0x5d3124 argument 5); defined below, after STechnique
}  // namespace detail::material_renderer_manager

// One render pass of a technique: 52 bytes in the original (the pass array element). The first 32 bytes are the
// detail::renderpass::SRenderState block; CMaterialRenderer::setRenderState compares and copies them.
struct SRenderPass {
    uint32_t stateWords[8] = {};                  // +0x00..+0x1f, the renderpass::SRenderState block
    glitch::IReferenceCounted* shader = nullptr;  // +0x20, the pass shader (counted: IReferenceCounted at +0x04)
    int* bindings = nullptr;                      // +0x24, 8 bytes per entry, process-buffer block
    const SShaderParameterBinding* unknown28 = nullptr; // +0x28, the pass's shader parameter bindings (SShaderParameterBinding, 4 bytes each; commitCurrentMaterialImpl 0x5b74e8)
    uint16_t unknown2c = 0;                       // +0x2c, the number of bindings
    uint16_t unknown2e = 0;                       // +0x2e, meaning unknown
    uint8_t flag30 = 1;                           // +0x30, one when written by addRenderPass or setRenderState

    // 0x5e1064 / 0x5e1670: attribute (de)serializers. Not reconstructed (the IAttributes vtable is core-io's).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
};
// Earlier waves called the pass array element SRendererParameterBlock (an opaque 52-byte buffer).
using SRendererParameterBlock = SRenderPass;

// One technique entry of a renderer: 12 bytes in the original.
// The binary's name is glitch::video::STechnique (CColladaSkinTechnique::checkAvailability takes a `STechnique const&`);
// STechniqueEntry stays as an alias for the code that grew up with the old name.
struct STechnique {
    void* name = nullptr;                    // +0x00, the technique name (SSharedStringHeapEntry::SData*, count at +0x00)
    uint8_t passCount = 0;                   // +0x04, number of render passes of the technique
    uint8_t flag05 = 0;                      // +0x05, zero at creation (makeTechnique 0x5dc824 writes node +0x0d = 0); meaning unknown
    const SRenderPass* passes = nullptr;     // +0x08, first render pass of the technique
};
using STechniqueEntry = STechnique;

namespace detail::material_renderer_manager {
// The std::list<STechnique, SProcessBufferAllocator> of the creation state (SCreationState +0x08): nodes of 0x14 bytes, next at
// +0x00, prev at +0x04, the STechnique payload at +0x08 (makeTechnique 0x5dc824 allocates 0x14). The list head is a node of its own
// whose payload is never read (the original's head is only next/prev; the port's is a whole node).
struct STechniqueNode {
    STechniqueNode* next = nullptr;  // +0x00
    STechniqueNode* prev = nullptr;  // +0x04
    STechnique technique;            // +0x08
};
struct STechniqueList {
    STechniqueList() { head.next = head.prev = &head; }
    STechniqueList(const STechniqueList&) = delete;
    STechniqueList& operator=(const STechniqueList&) = delete;
    STechniqueNode head;  // end sentinel
    STechniqueNode* begin() const { return head.next; }
    const STechniqueNode* end() const { return &head; }
    bool empty() const { return head.next == &head; }
};
}  // namespace detail::material_renderer_manager

class CMaterialRenderer {
public:
    // Not part of the original (which constructs only through the ten-argument constructor / allocate): lets a test
    // build a renderer and fill the header words by hand.
    CMaterialRenderer() = default;
    CMaterialRenderer(const CMaterialRenderer&) = delete;
    CMaterialRenderer& operator=(const CMaterialRenderer&) = delete;
    // 0x5d4aa0 (D1): drops the global parameters the passes bound, the pass shaders and the names of the techniques and parameters.
    // Only a renderer built by the constructor below does that; a default-constructed one (tests) owns nothing.
    ~CMaterialRenderer();

    // 0x5d3124 (C2) / 0x5d36cc (C1): lays out the block, copies the technique list and the render passes (grabbing
    // their shaders and the global parameters they bind), the parameter entries and the name, and zeroes the value
    // buffer. Declared only (the technique list, the shader parameter table and the global parameter manager are
    // not reconstructed). The destructors (0x5d4aa0 / 0x5d4d8c) drop the parameters, the pass shaders and the bound
    // global parameters; the port's implicit destructor does none of that.
    CMaterialRenderer(IVideoDriver* driver, uint16_t id, const char* name,
                      const detail::material_renderer_manager::STechniqueList& techniques, uint16_t passTotal,
                      uint16_t parameterCount, const SShaderParameterDef* const* parameters,
                      uint32_t valueBufferSize, uint16_t bindingCount, const uint16_t* bindingIds);
    // 0x5d4c48: sizes and allocates the block, constructs the renderer in it and returns it with count 1. Declared only.
    static boost::intrusive_ptr<CMaterialRenderer> allocate(
        IVideoDriver* driver, uint16_t id, const char* name,
        const detail::material_renderer_manager::STechniqueList& techniques, uint16_t parameterCount,
        const SShaderParameterDef* const* parameters, uint32_t valueBufferSize, uint16_t bindingCount,
        const uint16_t* bindingIds);

    // 0x5d3034: copies the first 32 bytes of state into the pass element (flag byte at +0x30 set to 1) unless they
    // already match. Returns the word at state +0x10 when it copies, 0 otherwise (as the original does).
    int32_t setRenderState(uint8_t technique, uint8_t pass, const detail::renderpass::SRenderState& state);

    // 0x5cef08: the id of the first parameter entry at or after `index` whose type word (+0x04) is `type`;
    // 0xffff when none. Defined in src/tb_video-glitch_video_CMaterialRenderer-0.cpp. E_SHADER_PARAMETER_TYPE
    // is the int32_t alias of video_types.hpp, so the port emits ...getParameterIDEit where the original's
    // symbol is ...getParameterIDENS0_23E_SHADER_PARAMETER_TYPEEt (armdiff's param_drift, as for
    // IShader::getParameterID 0x5e48e4).
    uint16_t getParameterID(E_SHADER_PARAMETER_TYPE type, uint16_t index) const;
    // 0x5d308c: the same over the parameter NAMES: the entry's +0x00 handle (SParameterEntry::name) is a
    // shared-string name, compared with the text of the name looked up in the heap. Defined in
    // src/tb_video-glitch_video_CMaterialRenderer-0.cpp. The entries are the SShaderParameterDef records
    // the renderer was built from (the constructor 0x5d3124 copies each one and takes a use on its +0x00).
    uint16_t getParameterID(const char* name, uint16_t index) const;
    // 0x5d4714: technique id for a name; 255 when absent. Defined in
    // src/tb_video-glitch_video_CMaterialRenderer-0.cpp.
    uint8_t getTechniqueID(const char* name) const;
    // 0x5d3f14: number of lights a pass of a technique binds. Declared only.
    uint32_t getBindedLightCount(uint8_t technique, uint8_t pass) const;

    // 0x5d66f4 / 0x5d7378: attribute (de)serializers. Not reconstructed (the IAttributes vtable is core-io's).
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const;

    mutable uint32_t m_refCount = 0;                       // +0x00, intrusive reference count
    IVideoDriver* m_driver = nullptr;                      // +0x04
    const char* m_name = nullptr;                          // +0x08
    uint16_t m_id = 0;                                     // +0x0c
    uint16_t m_parameterCount = 0;                         // +0x0e
    uint8_t m_techniqueCount = 0;                          // +0x10, number of techniques (totalMapCount reads the last entry)
    uint8_t m_flag11 = 1;                                  // +0x11
    uint32_t m_valueBufferSize = 0;                        // +0x14
    STechniqueEntry* m_techniques = nullptr;               // +0x18, technique table (12-byte entries)
    const SRenderPass* m_passBase = nullptr;               // +0x1c, base of the render pass array
    // +0x20 parameter entries, +0x24 value buffer, and the typed accessors over them: the original base class
    // IMaterialParameters<CMaterialRenderer, ISharedMemoryBlockHeader<CMaterialRenderer>>. The port keeps it as this member:
    // parameters.headerForTest() holds the count (+0x0e) and the entry array (+0x20), parameters.valueBuffer() the value
    // buffer (+0x24), whose bytes are the default values of every material of this renderer (CMaterial::init copies them).
    detail::IMaterialParameters<CMaterialRenderer, false> parameters;

    // Port storage. The original lays the header, the technique table, the parameter entries, the value buffer, the passes, the binding
    // ids and records and the name text out in ONE block (see the header comment); the port keeps them in these arrays and points the
    // header words at them. Filled by the constructor 0x5d3124 only.
    bool m_constructed = false;
    std::vector<STechnique> m_techniqueStorage;
    std::vector<SRenderPass> m_passStorage;
    std::vector<detail::SParameterEntry> m_entryStorage;
    std::vector<uint8_t> m_valueStorage;
    std::vector<uint16_t> m_bindingIdStorage;                // per pass, the 16-bit parameter id of each shader parameter (bit 15: global)
    std::vector<SShaderParameterBinding> m_bindingRecords;   // per pass, the 4-byte records built from the ids
    std::string m_nameStorage;
};

// The original's inline count updates (CMaterialRenderer keeps its count at +0x00, not in IReferenceCounted).
inline void intrusive_ptr_add_ref(const CMaterialRenderer* p) { ++p->m_refCount; }
inline void intrusive_ptr_release(const CMaterialRenderer* p) {
    if (p->m_refCount-- == 1) delete p;  // the original runs ~CMaterialRenderer (0x5d4aa0) then LC_API_FREE_0
}

}  // namespace glitch::video
