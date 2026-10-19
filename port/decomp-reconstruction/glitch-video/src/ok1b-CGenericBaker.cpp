// CGenericBaker: the batch baker built on an IShader (vtable 0x978520). Owner K1b: the destructor, initParameters, getBatchMaterial,
// configureAppendBuffer, isCompatible and bake. Layout: +0x04 count, +0x08 shader, +0x0c vertex attribute map, +0x10 the id of the
// batch renderer in the material renderer manager (0xffff until it is made), +0x14 the batch material. Transcribed from Hex-Rays and
// the ARM listings.
#include <cstdint>
#include <cstring>
#include <string>

#include "glitch-core-io/core/material_copy.hpp"
#include "glitch-core-io/core/strings.hpp"
#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"
#include "glitch-video/generic_baker.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/vertex_attribute_map.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

// The state block of a pass (its first 32 bytes) as the render-state type the renderer's setters take.
detail::renderpass::SRenderState stateOf(const SRenderPass& pass) {
    detail::renderpass::SRenderState state;
    std::memcpy(&state, pass.stateWords, sizeof state);
    return state;
}

}  // namespace

// 0x609a18 (D1) / 0x609a70 (D0) CGenericBaker::~CGenericBaker()
// The batch material (+0x14) is released, then the attribute map (+0x0c); the members do both, in that order.
CGenericBaker::~CGenericBaker() = default;

// 0x609a8c CGenericBaker::initParameters(boost::intrusive_ptr<CMaterial const> const&, unsigned char) const
// Copies the material's parameters into the batch material: for the two stages of the batch pass's shader, the parameters beyond its
// automatic ones are paired by position in the 16-bit id lists of the batch material's first pass and of the source's pass for the
// technique; when both ids exist in their renderers' tables the parameter is copied (copyParameter).
void CGenericBaker::initParameters(const boost::intrusive_ptr<const CMaterial>& material, uint8_t technique) const {
    const SRenderPass& batchPass = *m_batchMaterial->m_renderer->m_techniques[0].passes;
    const uint16_t* batchIds = reinterpret_cast<const uint16_t*>(batchPass.bindings);
    const uint16_t* sourceIds = reinterpret_cast<const uint16_t*>(material->m_renderer->m_techniques[technique].passes->bindings);
    const auto* shader = static_cast<const IShader*>(batchPass.shader);
    for (int stage = 0; stage < 2; ++stage) {
        const SShaderStageParameters& list = shader->m_stageParameters[stage];
        const uint16_t count = static_cast<uint16_t>(list.count - list.field04);
        if (count == 0) continue;
        for (uint16_t k = 0; k < count; ++k) {
            const uint16_t destinationId = batchIds[k];
            const uint16_t sourceId = sourceIds[k];
            const detail::SParameterEntry* destinationEntry = m_batchMaterial->m_renderer->parameters.getParameterDef(destinationId);
            const detail::SParameterEntry* sourceEntry = material->m_renderer->parameters.getParameterDef(sourceId);
            if (destinationEntry != nullptr && sourceEntry != nullptr) {
                glitch::core::copyParameter(m_batchMaterial, destinationId, material, sourceId);
            }
        }
        batchIds += count;
        sourceIds += count;
    }
}

// 0x609ba4 CGenericBaker::configureAppendBuffer(boost::intrusive_ptr<scene::CAppendMeshBuffer> const&) const
// The buffer is reset, and every vertex attribute the shader declares gets a stream laid out one after the other: the position-like
// attributes (0, 0x11, 0x14..0x1b) three floats, the texture-coordinate-like ones (1..0x10) two floats, and the two colour ones
// (0x12, 0x13) one value of type 1 with four components; the baker's attribute map points each of them at its own stream. The stride
// the layout came to is set last.
void CGenericBaker::configureAppendBuffer(const boost::intrusive_ptr<scene::CAppendMeshBuffer>& buffer) const {
    buffer->reset();
    uint16_t offset = 0;
    for (uint32_t i = 0; i < m_shader->m_vertexAttributeDefCount; ++i) {
        const uint16_t attribute = m_shader->m_vertexAttributeDefs[i].attribute;
        switch (attribute) {
            case 0x00: case 0x11: case 0x14: case 0x15: case 0x16: case 0x17: case 0x18: case 0x19: case 0x1a: case 0x1b:
                buffer->configureStream(static_cast<uint8_t>(attribute), offset, 6, 3);
                offset = static_cast<uint16_t>(offset + 12);
                break;
            case 0x01: case 0x02: case 0x03: case 0x04: case 0x05: case 0x06: case 0x07: case 0x08: case 0x09: case 0x0a:
            case 0x0b: case 0x0c: case 0x0d: case 0x0e: case 0x0f: case 0x10:
                buffer->configureStream(static_cast<uint8_t>(attribute), offset, 6, 2);
                offset = static_cast<uint16_t>(offset + 8);
                break;
            case 0x12: case 0x13:
                buffer->configureStream(static_cast<uint8_t>(attribute), offset, 1, 4);
                offset = static_cast<uint16_t>(offset + 4);
                break;
            default:
                break;
        }
        m_attributeMap->m_map[attribute] = static_cast<uint8_t>(attribute);
    }
    buffer->adjustStride(offset);
}

// 0x609e40 CGenericBaker::getBatchMaterial(boost::intrusive_ptr<CMaterial const> const&, unsigned char) const
// The batch material for a draw with `material` in `technique`. The first call makes a renderer of its own (a random 20-letter name,
// one technique "ZeTechnique" with one pass of the baker's shader and the first pass state of the source technique, the light count
// of that pass), sets its parameters to identity and takes a material instance of it. Later calls only bring the batch renderer's
// first pass state up to the source's. Either way the parameters are then copied (initParameters) and the batch material returned.
boost::intrusive_ptr<CMaterial> CGenericBaker::getBatchMaterial(const boost::intrusive_ptr<const CMaterial>& material,
                                                                uint8_t technique) const {
    CMaterialRenderer* source = material->m_renderer.get();
    CMaterialRendererManager* manager = source->m_driver->m_materialRendererManager;
    const SRenderPass& sourcePass = *source->m_techniques[technique].passes;
    CGenericBaker* self = const_cast<CGenericBaker*>(this);
    if (m_unknown10 != 0xffff) {
        CMaterialRenderer* batchRenderer = m_batchMaterial->m_renderer.get();
        if (std::memcmp(sourcePass.stateWords, batchRenderer->m_techniques[0].passes->stateWords, 0x20) != 0) {
            batchRenderer->setRenderState(0, 0, stateOf(sourcePass));
        }
    } else {
        const std::string name = glitch::core::randomString(20);
        manager->beginMaterialRenderer(name.c_str(), true);
        manager->beginTechnique("ZeTechnique", true);
        {
            const boost::intrusive_ptr<const IShader> shader(m_shader, true);
            const detail::renderpass::SRenderState state = stateOf(sourcePass);
            const detail::material::SRenderState materialState;
            manager->addRenderPass(shader, state, materialState);
        }
        const uint16_t lightCount = static_cast<uint16_t>(source->getBindedLightCount(technique, 0));
        manager->endTechnique(true, lightCount);
        manager->endMaterialRenderer();
        const uint16_t id = manager->getId(name.c_str());
        self->m_unknown10 = id;
        boost::intrusive_ptr<CMaterialRenderer> renderer = manager->get(id)->value;
        renderer->parameters.initParametersToIdentity();
        self->m_batchMaterial = manager->getMaterialInstance(id, false);
    }
    m_batchMaterial->getTechnique();
    initParameters(material, technique);
    return m_batchMaterial;
}

// 0x60a188 CGenericBaker::isCompatible(boost::intrusive_ptr<CMaterial const> const&, unsigned char) const
// A material can join the batch when it has the same hash code in `technique` as the batch material in technique 0 (refreshed when
// stale), the same number of passes whose state words (32 bytes) and shaders are equal pass by pass, and equal parameters.
bool CGenericBaker::isCompatible(const boost::intrusive_ptr<const CMaterial>& material, uint8_t technique) const {
    if (!material) return false;
    const CMaterial* batch = m_batchMaterial.get();
    if ((batch->m_dirtyHashes & 1u) != 0) batch->updateHashCode(0);
    const uint32_t batchHash = batch->m_hashCodes[0];
    if (((material->m_dirtyHashes >> technique) & 1u) != 0) material->updateHashCode(technique);
    if (batchHash != material->m_hashCodes[technique]) return false;
    const STechnique& batchTechnique = batch->m_renderer->m_techniques[0];
    const STechnique& materialTechnique = material->m_renderer->m_techniques[technique];
    const uint8_t passCount = materialTechnique.passCount;
    if (batchTechnique.passCount != passCount) return false;
    if (passCount != 0) {
        const SRenderPass* batchPasses = batchTechnique.passes;
        const SRenderPass* materialPasses = materialTechnique.passes;
        if (batchPasses[0].shader != materialPasses[0].shader) return false;
        for (uint32_t pass = 0; pass < passCount; ++pass) {
            if (std::memcmp(batchPasses[pass].stateWords, materialPasses[pass].stateWords, 0x20) != 0) return false;
            if (pass + 1 < passCount && batchPasses[pass + 1].shader != materialPasses[pass + 1].shader) return false;
        }
    }
    return batch->areParametersEqual(0, passCount, *material, technique);
}

// 0x60ab18 CGenericBaker::bake(...) const
// Writes one draw into the batch: the triangles of `primitives` (range c..d) go to the batch primitive stream from triangle f with
// their indices moved by e - a, and the vertices a..b of `streams` go to the batch streams from vertex e, for the attributes the
// shader of the pass uses (the masks `g`), through the vertex override helper. The parameter pointers are the two attribute maps.
void CGenericBaker::bake(const boost::intrusive_ptr<const CVertexStreams>& streams, const CPrimitiveStream& primitives,
                         const CMaterial* material, uint8_t technique, const uint8_t* parameters,
                         const boost::intrusive_ptr<CVertexStreams>& outStreams, CPrimitiveStream& outPrimitives,
                         const CMaterial* /*outMaterial*/, const uint8_t* outParameters, const IVideoDriver* driver, uint32_t a,
                         uint32_t b, uint32_t c, uint32_t d, uint32_t e, uint32_t f, uint32_t g) const {
    glitch::core::overridePrimitiveStream(primitives, c, d, outPrimitives, f, static_cast<int>(e - a));
    glitch::core::overrideVertexStreams<true, false, true>(parameters, streams, static_cast<uint16_t>(a), static_cast<uint16_t>(b),
                                                           outParameters, outStreams, material, technique, driver,
                                                           static_cast<uint16_t>(e), g);
}

}  // namespace glitch::video
