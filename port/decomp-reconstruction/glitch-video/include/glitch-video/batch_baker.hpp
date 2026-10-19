// glitch::video::IBatchBaker: the interface the driver uses to merge draw calls that share a shader into one batch
// (IVideoDriver +0x128, IShader::getBatchBaker). Canonical definition (engine unification wave u1-video);
// CGenericBaker (generic_baker.hpp) is its one implementation.
//
// Vtable (tools/decomp_vtable.py glitch::video::IBatchBaker, five pure slots after the IReferenceCounted ones; the
// names and signatures are those of the CGenericBaker overrides 0x60ab18..0x60a188):
//   +0x00 ~IBatchBaker (0x608870)  +0x04 deleting destructor  +0x08 onDelete
//   +0x0c bake(...)  +0x10 getBatchMaterial(material, technique) const  +0x14 getVertexAttributeMap() const
//   +0x18 configureAppendBuffer(buffer) const  +0x1c isCompatible(material, technique) const
#pragma once

#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::scene {
class CAppendMeshBuffer;
}  // namespace glitch::scene

namespace glitch::video {

class IBatchBaker : public glitch::IReferenceCounted {
public:
    ~IBatchBaker() override = default;  // 0x608870 (D1), 0x6088b0 (D0)

    // +0x0c: bakes one draw into the batch streams; the seven trailing counts are the stream and index offsets and sizes.
    virtual void bake(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                      const CMaterial* material, uint8_t technique, const uint8_t* parameters,
                      const boost::intrusive_ptr<CVertexStreams>& outStreams, CPrimitiveStream& outPrimitives,
                      const CMaterial* outMaterial, const uint8_t* outParameters, const IVideoDriver* driver,
                      uint32_t a, uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f, uint32_t g) const = 0;
    // +0x10
    virtual boost::intrusive_ptr<CMaterial> getBatchMaterial(const boost::intrusive_ptr<const CMaterial>& material,
                                                             uint8_t technique) const = 0;
    // +0x14
    virtual const boost::intrusive_ptr<CVertexAttributeMap>& getVertexAttributeMap() const = 0;  // the slot at +0x0c of the baker
    // +0x18
    virtual void configureAppendBuffer(const boost::intrusive_ptr<scene::CAppendMeshBuffer>& buffer) const = 0;
    // +0x1c
    virtual bool isCompatible(const boost::intrusive_ptr<const CMaterial>& material, uint8_t technique) const = 0;
};

}  // namespace glitch::video
