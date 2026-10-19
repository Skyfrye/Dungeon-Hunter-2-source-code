// glitch::video::CMaterial: a material instance (a CMaterialRenderer plus the parameter values and render states of
// one material). Canonical definition (engine unification wave u1-video); the stand-in in glitch-core-io
// (deps/glitch_core_objects.hpp) and the forward declarations in glitch-scene-collada-gui and game/ are replaced by
// this header.
//
// CMaterial is NOT an IReferenceCounted: the reference count is its first word (+0x00), the constructor stores 0 and
// allocate (0x5cbfec) adds the first use. It has no vtable. The original object is one variable-size block, sized by
// allocate as renderer value size + 36 + 4 * techniques + render-state block size: a 0x20-byte header, the parameter
// values (IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>> is the original base class, whose
// values start at +0x20), the render-state block, and the per-technique hash words (the +0x18 pointer).
//
// Header layout (32-bit; constructors 0x5cbc70 C1 / 0x5cbe58 C2, reset 0x5cbc3c):
//   +0x00  reference count
//   +0x04  intrusive_ptr<CMaterialRenderer> (the renderer's own count, at its +0x00, is incremented)
//   +0x08  uint8, the selected technique ordinal (SStateWithoutRenderState +0; 0 after reset)
//   +0x0c  uint32, one bit per parameter block that changed since it was last used (-1 after reset)
//   +0x10  uint32, one bit per technique whose hash word is stale (-1 after reset)
//   +0x14  uint8, the technique-remap set (SStateWithoutRenderState +12; 0 after reset); getTechnique indexes the
//          driver's remap tables with it
//   +0x18  pointer to the per-technique hash words (one uint32 per technique, at the end of the block)
//   +0x1c  the material name (SSharedStringHeapEntry::SData*, count at +0x00, text at +0x04; null when unnamed)
//   +0x20  the parameter values, then the render-state block, then the hash words
//
// The parameter backends (material_parameters.hpp and the part files) address the value area through the
// IMaterialParameters<CMaterial, true> class template, which the port keeps as a separate object, not as a base.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/material_parameters.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

namespace detail::material {
// Placeholder for the material render-state block. Layout not reconstructed.
struct SRenderState {};
}  // namespace detail::material

class CMaterial {
public:
    // The first four header fields as a constructor argument (16 bytes in the original).
    struct SStateWithoutRenderState {
        uint8_t technique = 0;           // +0x00 -> CMaterial +0x08
        uint32_t dirtyParameters = 0xffffffffu;  // +0x04 -> CMaterial +0x0c
        uint32_t dirtyHashes = 0xffffffffu;      // +0x08 -> CMaterial +0x10
        uint8_t remapSet = 0;            // +0x0c -> CMaterial +0x14
    };

    // Not part of the original (which constructs only through allocate / the five-argument constructor): lets a
    // test build a material and fill the header words by hand.
    CMaterial() = default;
    // 0x5cbf78 (D1) / 0x5cc144 (D0): drops the parameters, tells the renderer's driver (IVideoDriver::onMaterialDestroyed) and releases
    // the name and the renderer.
    ~CMaterial();
    CMaterial(const CMaterial&) = delete;
    CMaterial& operator=(const CMaterial&) = delete;

    // 0x5cbc70 (C1) / 0x5cbe58 (C2): header init, parameter init and the per-technique hash seeds. Declared only (the
    // shared string heap and the parameter backends are not wired in). The destructors (0x5cbf78 / 0x5cc144) drop the
    // parameters, tell the driver (driver vtable +0x210, onMaterialDestroyed) and release the name; the port's
    // implicit destructor does none of that.
    CMaterial(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name,
              const SStateWithoutRenderState& state, const uint8_t* values, const detail::material::SRenderState* renderState);
    // 0x5cbfec / 0x5cc0a0: allocate a material of a renderer with count 1 (the second form uses a default state and the
    // renderer's default values). Declared only.
    static boost::intrusive_ptr<CMaterial> allocate(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name,
                                                    const SStateWithoutRenderState& state, const uint8_t* values,
                                                    const detail::material::SRenderState* renderState);
    static boost::intrusive_ptr<CMaterial> allocate(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name,
                                                    uint8_t technique);
    // 0x5cbd90 / 0x5cbe0c: the process-buffer-heap forms (the block comes from glitch::core::allocProcessBuffer, not
    // from operator new[]). Declared only.
    static CMaterial* allocateProcessBufferHeap(const boost::intrusive_ptr<CMaterialRenderer>& renderer, const char* name,
                                                const SStateWithoutRenderState& state, const uint8_t* values,
                                                const detail::material::SRenderState* renderState);
    CMaterial* cloneHeap(const char* name) const;
    // 0x5cc0e8: a copy with count 1. Declared only.
    boost::intrusive_ptr<CMaterial> clone(const char* name) const;
    // 0x5cbbe0 / 0x5cbc3c: copies the renderer's default values (optionally dropping the old ones first) and grabs them;
    // reset puts the header back to its post-construction state. Declared only.
    void init(const uint8_t* values, const detail::material::SRenderState* renderState, bool dropOld);
    void reset(const detail::material::SRenderState* renderState);
    // Port form of init: `source` is the parameter object the raw `values` bytes belong to (the renderer's defaults or the source
    // material of a clone). The original keeps the matrix and texture pointers inside the copied bytes and takes a use on each
    // (grabParameters); the port holds them in slot maps next to the bytes, so those are copied from `source` as well.
    void init(const uint8_t* values, const detail::material::SRenderState* renderState, bool dropOld,
              const detail::IMaterialParameters<CMaterial, true>* sourceMaterial,
              const detail::IMaterialParameters<CMaterialRenderer, false>* sourceRenderer);
    // 0x5cbba4 / 0x5cba30: release every parameter (matrices to the pool, texture and light references dropped). The port clears the
    // slot maps of those entries.
    void dropParameters();
    void dropParameter(uint16_t index);

    // 0x35364c: hash code of the current technique. A dirty bit forces a refresh first.
    uint32_t getHashCode() const;
    // 0x3537b0: same technique and equal parameters.
    bool operator==(const CMaterial& other) const;
    // 0x3537e4: orders by hash code, then by the technique's parameter count, then by compare().
    bool operator<(const CMaterial& other) const;
    // 0x5aa4a8: clears one parameter dirty bit. The original returns a pointer that the decompiler
    // could not tie to a value, so this port returns void.
    void unsetParametersDirty(uint8_t parameterIndex);

    // 0x5c5d7c: the render-state block size for a renderer. The original returns 0.
    uint32_t getRenderStateBlockSize(const CMaterialRenderer&);
    // 0x5c5d84: no body in the original.
    void setRenderStateInternal(uint8_t, uint8_t, const detail::material::SRenderState&);

    // Helpers used by the functions above.
    // 0x5c5d34: the technique index selected for this material. Partial, see the .cpp.
    int32_t getTechnique() const;
    // updateHashCode (0x5c5fd8), updateParametersHashCode (0x5c5d88) and updateRenderStateHashCode (0x5c5fa4): refresh a
    // cached hash.
    void updateHashCode(uint8_t technique) const;
    void updateParametersHashCode(uint8_t parameterIndex) const;
    void updateRenderStateHashCode(uint8_t technique) const;
    // equals (0x353684), compare (0x5ca3fc) and areParametersEqual (0x5ca72c): parameter comparisons for one technique pair.
    bool equals(uint8_t technique, const CMaterial& other, uint8_t otherTechnique) const;
    bool compare(uint8_t technique, uint8_t parameterCount, const CMaterial& other, uint8_t otherTechnique) const;
    bool areParametersEqual(uint8_t technique, uint8_t parameterCount, const CMaterial& other, uint8_t otherTechnique) const;
    // Pass count of a technique: the byte at +4 of the 12-byte technique entry, which the renderer keeps at renderer+0x18.
    uint8_t getTechniqueParameterCount(int32_t technique) const;

    // 0x5cda48 / 0x5ce460: attribute (de)serializers. Not reconstructed (the IAttributes vtable is core-io's).
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options);
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const;

    mutable uint32_t m_refCount = 0;                       // +0x00
    boost::intrusive_ptr<CMaterialRenderer> m_renderer;    // +0x04, renderer whose technique table is read
    uint8_t m_technique = 0;                               // +0x08, selected technique ordinal; the fallback result of getTechnique
    uint32_t m_dirtyParameters = 0;                        // +0x0c, one bit per parameter that changed
    mutable uint32_t m_dirtyHashes = 0;                    // +0x10, one bit per technique whose hash is stale
    uint8_t m_remapSet = 0;                                // +0x14, index into the owner's remap tables in getTechnique
    mutable uint32_t* m_hashCodes = nullptr;               // +0x18, one hash word per technique
    void* m_name = nullptr;                                // +0x1c, SSharedStringHeapEntry::SData* (count at +0x00, text at +0x04)
    // The variable-size tail of the original block, kept as vectors: the parameter values (+0x20), and the per-technique hash words
    // (m_hashCodes points into m_hashStorage). A name is a shared string in the original; the port keeps its text.
    std::vector<uint8_t> m_values;                         // +0x20
    std::vector<uint32_t> m_hashStorage;                   // end of the block
    std::string m_nameText;                                // text of the +0x1c entry
    bool m_hasName = false;                                // the +0x1c entry is non-null

    // IMaterialParameters<CMaterial, ISharedMemoryBlockHeader<CMaterial>>: in the original the base class of CMaterial (its values start at
    // +0x20, its parameter table is the renderer's, reached through +0x04). The port keeps the base as this member; its dirty words
    // stand for +0x0c / +0x10. A material that is constructed from a renderer attaches the renderer's table with attachParameters
    // (header with count and entries, the value area). Without a table every parameter write reports failure, as for a renderer
    // without parameters.
    detail::IMaterialParameters<CMaterial, true> parameters;
    void attachParameters(detail::SParameterBlockHeader* header, uint8_t* values) {
        parameters.setBlockForTest(header);
        parameters.setValueBuffer(values);
        parameters.linkDirtyWords(&m_dirtyParameters, &m_dirtyHashes);
    }
};

// The original's inline count updates (CMaterial keeps its count at +0x00, not in IReferenceCounted).
inline void intrusive_ptr_add_ref(const CMaterial* p) { ++p->m_refCount; }
inline void intrusive_ptr_release(const CMaterial* p) {
    if (p->m_refCount-- == 1) delete p;  // the original runs ~CMaterial (0x5cbf78) then LC_API_FREE_0
}

}  // namespace glitch::video
