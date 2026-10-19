// glitch::video::CGenericBaker: the batch baker built on an IShader (the one IBatchBaker implementation). Layout from the
// constructor (0x609d28 C1, 0x609db4 C2): vtable 0x978520 at +0x00, reference count at +0x04 (stored as 0), shader at +0x08,
// vertex attribute map at +0x0c (reference counted through its first word), +0x10 halfword
// set to -1, +0x14 word zeroed. The IBatchBaker slots are declared (their bodies need CMaterial parameter blocks and the
// scene's CAppendMeshBuffer) and stop with detail::unreconstructed().
#pragma once

#include <cstdint>

#include "glitch-video/batch_baker.hpp"

namespace glitch::video {

class CGenericBaker : public IBatchBaker {
public:
    // 0x609d28 (C1) / 0x609db4 (C2). The attribute map starts unset, as the null-streams branch
    // of the CVertexAttributeMap streams constructor does.
    explicit CGenericBaker(const IShader* shader);

    // 0x609a18 (D1) / 0x609a70 (D0): releases the attribute map. Not reconstructed: the map reference is not released here.
    ~CGenericBaker() override;  // defined in src/ok1b-CGenericBaker.cpp (releases the batch material, then the attribute map)

    // ---- IBatchBaker slots ----
    void bake(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
              const CMaterial* material, uint8_t technique, const uint8_t* parameters,
              const boost::intrusive_ptr<CVertexStreams>& outStreams, CPrimitiveStream& outPrimitives,
              const CMaterial* outMaterial, const uint8_t* outParameters, const IVideoDriver* driver, uint32_t a, uint32_t b,
              uint32_t c, uint32_t d, uint32_t e, uint32_t f, uint32_t g) const override;                // +0x0c  0x60ab18
    boost::intrusive_ptr<CMaterial> getBatchMaterial(const boost::intrusive_ptr<const CMaterial>& material,
                                                     uint8_t technique) const override;                    // +0x10  0x609e40
    const boost::intrusive_ptr<CVertexAttributeMap>& getVertexAttributeMap() const override;                                     // +0x14  0x608958
    void configureAppendBuffer(const boost::intrusive_ptr<scene::CAppendMeshBuffer>& buffer) const override;  // +0x18  0x609ba4
    bool isCompatible(const boost::intrusive_ptr<const CMaterial>& material, uint8_t technique) const override;  // +0x1c  0x60a188
    // 0x609a8c: initializes the batch material's parameters from the source material. Declared only.
    void initParameters(const boost::intrusive_ptr<const CMaterial>& material, uint8_t technique) const;

    // +0x04 is IReferenceCounted::referenceCounter.
    const IShader* m_shader = nullptr;             // +0x08
    boost::intrusive_ptr<CVertexAttributeMap> m_attributeMap;  // +0x0c, counted through its first word
    uint16_t m_unknown10 = 0xffff;                 // +0x10, the id of the batch renderer in the material renderer manager (0xffff before it is made)
    boost::intrusive_ptr<CMaterial> m_batchMaterial;  // +0x14, the batch material getBatchMaterial makes (counted through its first word)
};

}  // namespace glitch::video
