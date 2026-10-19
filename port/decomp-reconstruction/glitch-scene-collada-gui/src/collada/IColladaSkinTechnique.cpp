#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Bodies of glitch::collada::detail::IColladaSkinTechnique and the four skin techniques (canonical classes:
// collada/IColladaSkinTechnique.hpp). This file replaces the technique stand-ins and bodies of src/collada_misc.cpp and of
// src/tb_scene-collada-gui-glitch_collada_detail_{CColladaHardwareMatrixSkin,CColladaHardwareQuatSkinTe,CColladaHardwareTextureSki,
// CColladaSoftwareSkinTechni,IColladaSkinTechnique}-0.cpp.
//
// Several members are the same code in all techniques (the compiler emitted one copy per class): computeBoundingBox, preparePtrCache,
// onPrepareBufferForRendering (hardware), checkAvailability (hardware) and init (matrix, quaternion). The pseudocode of each copy was
// compared; they are identical, so each class member forwards to one helper below.
#include "glitch-scene-collada-gui/collada/IColladaSkinTechnique.hpp"

#include <cstring>
#include <limits>

#include "glitch-core-io/core/matrix4_operators.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::collada::detail {

namespace {

// The shader of a technique's first render pass.
const video::IShader* firstShader(const video::STechnique& technique) {
    return static_cast<const video::IShader*>(technique.passes[0].shader);
}

// The union of the vertex attribute masks of every pass shader of the technique (the checks require both mask bits 0x30000000).
std::uint32_t passAttributeMasks(const video::STechnique& technique) {
    std::uint32_t mask = 0;
    for (unsigned i = 0; i < technique.passCount; ++i) {
        mask |= static_cast<const video::IShader*>(technique.passes[i].shader)->m_vertexAttributeMask;
    }
    return mask;
}

// glitch::core::operator*<float, glitch::collada::SMatrix> (0x6651a0): the lhs times a 16-value matrix. An identity lhs gives a copy of
// the rhs. Otherwise the 3x3 block and the translation column are multiplied (the last column is 0, 0, 0, 1) and the identity flag is
// clear. The template is defined in glitch-core-io's source file and instantiated for no type, so the scene category repeats the
// arithmetic here (layout request for the core-io owner: instantiate it for collada::SMatrix and use it from here).
core::CMatrix4<float> multiplyBySMatrix(const core::CMatrix4<float>& lhs, const float* rhs) {
    core::CMatrix4<float> out{};
    if (lhs.flag) {
        for (int i = 0; i < 16; ++i) {
            out.M[i] = rhs[i];
        }
        out.flag = false;
        return out;
    }
    const float* a = lhs.M;
    for (int c = 0; c < 3; ++c) {
        for (int r = 0; r < 3; ++r) {
            out.M[r + 4 * c] = ((a[r] * rhs[4 * c]) + (a[r + 4] * rhs[4 * c + 1])) + (a[r + 8] * rhs[4 * c + 2]);
        }
    }
    out.M[3] = 0;
    out.M[7] = 0;
    out.M[11] = 0;
    for (int r = 0; r < 3; ++r) {
        out.M[12 + r] = (((a[r] * rhs[12]) + (a[r + 4] * rhs[13])) + (a[r + 8] * rhs[14])) + a[12 + r];
    }
    out.M[15] = 1;
    out.flag = false;
    return out;
}

// The inlined tail shared by checkAvailability and init: the skin's proxy buffer becomes a static buffer (the usage byte is cleared;
// a driver-mapped buffer is unbound first; a buffer with data is flagged as having data).
void makeProxyStatic(SSkin& skin) {
    video::IBuffer* proxy = skin.proxy.get();
    if (proxy != nullptr && proxy->m_usage != 0) {
        if ((proxy->m_flags12 & video::IBuffer::kFlagDriverMapped) != 0) {
            proxy->unbindImpl();
        }
        const bool hasData = proxy->m_data != nullptr;
        proxy->m_usage = 0;
        if (hasData) {
            proxy->m_flags12 |= video::IBuffer::kFlagHasData;
        }
    }
}

// 0x66c544 / 0x66df88 / 0x66ee94 / 0x66fab4 preparePtrCache. When the cache's pointer bit (0x10000) is set, the vector of joint matrix
// pointers is sized to the skin's joint count and filled from the attached node's tree (getSceneNodeFromScopeID of each joint's
// scope id, then the node's absolute transformation, K 0x38), null for a missing node; the bit is cleared.
void preparePtrCache(SSkin& skin, SSkinCache& cache, scene::ISceneNode* attachedNode) {
    if ((cache.dirty & 0x10000u) == 0) {
        return;
    }
    cache.jointMatrices.resize(skin.jointCount, nullptr);
    for (std::int32_t i = 0; i < skin.jointCount; ++i) {
        scene::ISceneNode* node = attachedNode->getSceneNodeFromScopeID(skin.jointScopeIds[i]);
        cache.jointMatrices[i] = node != nullptr ? &node->getAbsoluteTransformation() : nullptr;
    }
    cache.dirty &= ~0x10000u;
}

// 0x66c5f4 / 0x66e384 / 0x66ef44 / 0x66fb84 computeBoundingBox (the box is returned through a hidden slot). The pointer cache is
// prepared, the box starts inverted (min +FLT_MAX, max -FLT_MAX), and then: with joint boxes in the skin (+0x8c non-zero) the box of
// each joint (six floats, 24-byte stride) is moved by the joint's matrix and merged; without them the translation of each joint matrix
// is merged as a point. The joint count is the pointer vector's size truncated to 8 bits, as the pseudocode does. Bit 3 of the
// cache's dirty word is cleared.
core::aabbox3d<float> computeSkinBoundingBox(SSkin& skin, SSkinCache& cache, scene::ISceneNode* attachedNode) {
    preparePtrCache(skin, cache, attachedNode);
    constexpr float kMax = std::numeric_limits<float>::max();
    core::aabbox3d<float> box{{kMax, kMax, kMax}, {-kMax, -kMax, -kMax}};
    const unsigned count = static_cast<std::uint8_t>(cache.jointMatrices.size());
    if (skin.boxCount != 0) {
        for (unsigned i = 0; i < count; ++i) {
            const float* source = skin.jointBoxes + 6 * i;
            core::aabbox3d<float> local{{source[0], source[1], source[2]}, {source[3], source[4], source[5]}};
            cache.jointMatrices[i]->transformBox(local);
            box.addInternalBox(local);
        }
    } else {
        for (unsigned i = 0; i < count; ++i) {
            const core::CMatrix4<float>* matrix = cache.jointMatrices[i];
            box.addInternalPoint(core::vector3d<float>{matrix->M[12], matrix->M[13], matrix->M[14]});
        }
    }
    cache.dirty &= ~8u;
    return box;
}


// glitch::core::rowMatrixProduct34<CMatrix4<float>, CMatrix4<float>, float[16]> (0x66d0b8): the 3x4 product of a matrix and a 16-value
// matrix, never taking the identity shortcut; the last column is 0, 0, 0, 1 and the identity flag is cleared.
core::CMatrix4<float> rowMatrixProduct34(const core::CMatrix4<float>& lhs, const float* rhs) {
    core::CMatrix4<float> out{};
    out.flag = false;
    const float* a = lhs.M;
    for (int c = 0; c < 3; ++c) {
        for (int r = 0; r < 3; ++r) {
            out.M[r + 4 * c] = ((a[r] * rhs[4 * c]) + (a[r + 4] * rhs[4 * c + 1])) + (a[r + 8] * rhs[4 * c + 2]);
        }
        out.M[3 + 4 * c] = 0;
    }
    for (int r = 0; r < 3; ++r) {
        out.M[12 + r] = (((a[r] * rhs[12]) + (a[r + 4] * rhs[13])) + (a[r + 8] * rhs[14])) + a[12 + r];
    }
    out.M[15] = 1;
    return out;
}

// The weight-count selector the hardware techniques write: 1.0 in each of the first `weightsPerVertex` components.
core::vector4d<float> weightCountSelector(std::uint8_t weightsPerVertex) {
    core::vector4d<float> selector{};
    selector.X = weightsPerVertex > 0 ? 1.0f : 0.0f;
    selector.Y = weightsPerVertex > 1 ? 1.0f : 0.0f;
    selector.Z = weightsPerVertex > 2 ? 1.0f : 0.0f;
    selector.W = weightsPerVertex > 3 ? 1.0f : 0.0f;
    return selector;
}

// The listing's inlined IBuffer::unmap (one map reference less; unmapImpl() on the last one).
void unmapBuffer(const boost::intrusive_ptr<video::IBuffer>& buffer) {
    if (buffer != nullptr) {
        buffer->unmap();
    }
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// IColladaSkinTechnique
// ---------------------------------------------------------------------------------------------------------------------

// 0x670dcc _ZN6glitch7collada6detail20IColladaSkinTechniqueD1Ev (0x670e58 is the D2 clone; D0 0x670e3c is skipped)
// Drops the use of the skin-data block (the handle does it: the data is freed with the last use).
IColladaSkinTechnique::~IColladaSkinTechnique() = default;

// 0x670ec8 _ZN6glitch7collada6detail20IColladaSkinTechnique15initProxyBufferEPNS_5scene11CMeshBufferERNS0_11SSkinBufferERNS0_5SSkinEPNS_5video12IVideoDriverE
// Makes the proxy mesh buffer of a skinned mesh buffer. When the SSkinBuffer has none, one is built over the source mesh buffer: its
// vertex stream table is allocated for the source mask plus the two skin attributes (28 and 29) and the texture-set bit 18 (mask |
// 0x30040000), the index buffer and range are the source's, the flag byte is 1, and the SSkinBuffer remembers the index of the attribute
// 29 stream (+0x12). Then, every time: the quantisation records of the flagged texture coordinate sets (flag bit 3 + n) are copied from
// the source table, the vertex count is copied, and all streams but the two skin ones (mask 0xCFFFFFFF) are taken over from the source.
// The skin's own vertex buffer (skin +0x94: weights and joint indices, element size 4 * (weights per vertex + 1)) is created through the
// driver when it is missing or too small for the vertex count, or when this technique has no skin data block; a technique with the
// skin-data flag adopts the skin's block (and the buffer reads its loaded data), the other passes the block pointer itself as the data
// pointer, as the listing does. The buffer is described twice in the proxy table: attribute 29 at offset 0 (type 1, four components,
// the element size as stride) and the stream before it (attribute 28, offset 4, type 6, `weights per vertex` components).
boost::intrusive_ptr<glitch::IReferenceCounted> IColladaSkinTechnique::initProxyBuffer(scene::CMeshBuffer* meshBuffer, SSkinBuffer& buffer,
                                                                                       SSkin& skin, video::IVideoDriver* driver) {
    if (buffer.buffer == nullptr) {
        boost::intrusive_ptr<scene::CMeshBuffer> created(new scene::CMeshBuffer(), true);
        created->vertexStreams = video::CVertexStreams::allocate(meshBuffer->vertexStreams->m_attributeMask | 0x30040000u);  // +0x14
        created->primitiveStream = meshBuffer->primitiveStream;  // +0x18 .. +0x2f
        created->owner = nullptr;                                // +0x30
        created->flag_34 = 1;                                    // +0x34
        buffer.buffer = created;
        video::CVertexStreams& table = *created->vertexStreams;
        buffer.unk_12 = static_cast<std::uint8_t>(
            table.getStream(29, table.m_streams.data(), table.m_streams.data() + table.m_streams.size()) - table.m_streams.data());
    }
    boost::intrusive_ptr<scene::CMeshBuffer> proxy = buffer.buffer;
    video::CVertexStreams& source = *meshBuffer->vertexStreams;
    video::CVertexStreams& target = *proxy->vertexStreams;
    for (std::uint32_t i = 0; i < source.m_count0c; ++i) {
        const std::uint16_t bit = static_cast<std::uint16_t>(8u << i);
        if ((bit & source.m_flags) != 0) {
            target.m_flags = static_cast<std::uint16_t>(target.m_flags | bit);
            if (2 * (i + 1) + 1 < source.m_quantization.size() && 2 * (i + 1) + 1 < target.m_quantization.size()) {
                target.m_quantization[2 * (i + 1)] = source.m_quantization[2 * (i + 1)];
                target.m_quantization[2 * (i + 1) + 1] = source.m_quantization[2 * (i + 1) + 1];
            }
        } else {
            target.m_flags = static_cast<std::uint16_t>(target.m_flags & ~bit);
        }
    }
    target.m_field08 = source.m_field08;
    target.setStreams(meshBuffer->vertexStreams, 0xCFFFFFFFu, 0, true);

    video::SVertexStream* skinStream = &target.m_streams[buffer.unk_12];
    const std::uint32_t elementSize = 4u * (skin.weightsPerVertex + 1u);
    const bool tooSmall = skin.proxy == nullptr || source.m_field08 * elementSize > skin.proxy->m_size ||
                          skinData.get() == nullptr || skinData.get()->count == 0;
    if (tooSmall) {
        void* data;
        if (flag) {
            skinData = res::onDemandPointer<float>(skin.skinData);
            data = skinData.get()->data;
        } else {
            data = skin.skinData;
        }
        skin.proxy = driver->createBuffer(0, 4, source.m_field08 * elementSize, data, false);
    }
    video::SVertexStreamData weights;
    weights.buffer = skin.proxy;
    weights.offset = 0;
    weights.field08 = 1;
    weights.field0a = 0;
    weights.field0c = 4;
    weights.field0e = static_cast<std::uint16_t>(elementSize);
    target.setStream(skinStream, weights, true);
    video::SVertexStreamData indices;
    indices.buffer = skin.proxy;
    indices.offset = 4;
    indices.field08 = 6;
    indices.field0a = 0;
    indices.field0c = skin.weightsPerVertex;
    indices.field0e = static_cast<std::uint16_t>(elementSize);
    target.setStream(skinStream - 1, indices, true);
    return boost::intrusive_ptr<glitch::IReferenceCounted>(buffer.buffer.get(), true);
}

// ---------------------------------------------------------------------------------------------------------------------
// CColladaHardwareTextureSkinTechnique
// ---------------------------------------------------------------------------------------------------------------------

// 0x66e6b8 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb (C2 0x66e714)
CColladaHardwareTextureSkinTechnique::CColladaHardwareTextureSkinTechnique(SSkin& skin, SSkinCache& skinCache, bool hasSkinData)
    : IColladaSkinTechnique(hasSkinData), skinRecord(&skin), cache(&skinCache) {}

// 0x66ee10 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechniqueD1Ev (D0 0x66ee78 skipped)
// Erases the map (when it has entries), then the base destructor runs.
CColladaHardwareTextureSkinTechnique::~CColladaHardwareTextureSkinTechnique() {
    hardwareData.clear();
}

// 0x66e770 _ZNK6glitch7collada6detail36CColladaHardwareTextureSkinTechnique16needOutputBufferEv
bool CColladaHardwareTextureSkinTechnique::needOutputBuffer() const {
    return false;
}

// 0x66e778 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique6attachEPNS_5scene10ISceneNodeE
void CColladaHardwareTextureSkinTechnique::attach(scene::ISceneNode* node) {
    attachedNode = node;
}

// 0x66e780 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
// At step 1 the technique skins the buffer (K 0x18); the answer is always 16.
int CColladaHardwareTextureSkinTechnique::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver*, SSkinBuffer& buffer,
                                                                      scene::CMeshBuffer* meshBuffer) {
    if (step == 1) {
        skin(buffer, meshBuffer);
    }
    return 16;
}

// 0x66e7d0 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique20checkAvailabilityStaticERKNS_5video10STechniqueE
// True when the technique's first pass shader has parameters of types 12 and 13 and the passes' vertex attribute masks together hold
// both bits of 0x30000000.
bool CColladaHardwareTextureSkinTechnique::checkAvailabilityStatic(const video::STechnique& technique) {
    const std::uint32_t masks = passAttributeMasks(technique);
    return firstShader(technique)->getParameterID(12, 0, 0) != 0xffff && firstShader(technique)->getParameterID(13, 0, 0) != 0xffff &&
           (masks & 0x30000000u) == 0x30000000u;
}

// 0x66e89c _ZNK6glitch7collada6detail36CColladaHardwareTextureSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
// The static answer; when it is true the skin's proxy buffer is made static (see makeProxyStatic).
bool CColladaHardwareTextureSkinTechnique::checkAvailability(const video::STechnique& technique) const {
    const bool available = checkAvailabilityStatic(technique);
    if (available) {
        makeProxyStatic(*skinRecord);
    }
    return available;
}

// 0x66ee94 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique15preparePtrCacheEv
void CColladaHardwareTextureSkinTechnique::preparePtrCache() {
    detail::preparePtrCache(*skinRecord, *cache, attachedNode);
}

// 0x66ef44 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique18computeBoundingBoxEv
core::aabbox3d<float> CColladaHardwareTextureSkinTechnique::computeBoundingBox() {
    return computeSkinBoundingBox(*skinRecord, *cache, attachedNode);
}

// 0x66f1f4 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
// Stores the driver, builds the proxy buffer, makes the skin's proxy buffer static and answers 0 (no output buffer).
int CColladaHardwareTextureSkinTechnique::init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* videoDriver,
                                               bool /*flag*/) {
    driver = videoDriver;
    initProxyBuffer(meshBuffer, buffer, *skinRecord, videoDriver);
    makeProxyStatic(*skinRecord);
    return 0;
}

// 0x66f280 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique12prepareCacheEv
// When the texture bit (0x04) of the cache is set: prepares the pointer cache and makes sure the cache holds a "TextureSkin" texture at
// least 4 * joint count texels wide (a smaller one is removed from the texture manager; the new one is as wide as the joint count
// needs, rounded up to a power of two unless the driver can do without, one texel high, pixel format 31, with the driver's option 16
// off while it is made, the wrap bits turned to clamp and the dirty bits raised). The texel size is stored for skin(). Then the joint
// matrices, each multiplied with its bind matrix and the bind shape matrix, are written transposed into the mapped texture.
void CColladaHardwareTextureSkinTechnique::prepareCache() {
    if ((cache->dirty & 4u) == 0) {
        return;
    }
    preparePtrCache();
    boost::intrusive_ptr<video::ITexture> texture(static_cast<video::ITexture*>(cache->buffer.get()), true);
    const std::uint32_t needed = 4u * static_cast<std::uint32_t>(skinRecord->jointCount);
    bool create = texture == nullptr;
    if (!create && texture->m_width < needed) {
        driver->m_textureManager->removeTexture(texture);
        create = true;
    }
    if (create) {
        const bool optionOn = ((driver->m_options >> 4) & 1u) != 0;
        if (optionOn) {
            driver->setOption(16, false);
        }
        std::int32_t width;
        if ((driver->m_capabilities & 0x20u) != 0) {
            width = static_cast<std::int32_t>(needed);
        } else if (needed > 1) {
            width = 1;
            while (width < static_cast<std::int32_t>(needed)) {
                width *= 2;
            }
        } else {
            width = 1;
        }
        const core::dimension2d<std::int32_t> size{width, 1};
        texture = driver->m_textureManager->addTexture(size, "TextureSkin", 31, false);
        cache->buffer = boost::intrusive_ptr<glitch::IReferenceCounted>(texture.get(), true);
        video::ITexture* made = static_cast<video::ITexture*>(cache->buffer.get());
        if ((made->m_flags38 & 0x7000u) != 0) {
            made->m_flags38 &= 0xFFFF8FFFu;
            made->m_dirtyFlags40 = static_cast<std::uint16_t>(made->m_dirtyFlags40 | 4);
        }
        if ((made->m_flags38 & 0x38000u) != 0) {
            made->m_flags38 &= 0xFFFC7FFFu;
            made->m_dirtyFlags40 = static_cast<std::uint16_t>(made->m_dirtyFlags40 | 8);
        }
        if (optionOn) {
            driver->setOption(16, true);
        }
        invTextureSize = 1.0f / static_cast<float>(static_cast<video::ITexture*>(cache->buffer.get())->m_width);
        texture = boost::intrusive_ptr<video::ITexture>(static_cast<video::ITexture*>(cache->buffer.get()), true);
    }
    float* destination = texture != nullptr ? reinterpret_cast<float*>(texture->map(4, 0, 0)) : nullptr;
    float* write = destination;
    const std::size_t count = cache->jointMatrices.size();
    for (std::size_t i = 0; i < count; ++i) {
        const core::CMatrix4<float> product = multiplyBySMatrix(*cache->jointMatrices[i], skinRecord->bindMatrices + 16 * i);
        core::CMatrix4<float> full = multiplyBySMatrix(product, skinRecord->bindShapeMatrix);
        core::CMatrix4<float> transposed;
        full.getTransposed(transposed);
        for (int k = 0; k < 16; ++k) {
            write[k] = transposed.M[k];
        }
        write += 16;
    }
    cache->dirty &= ~4u;
    if (destination != nullptr) {
        texture->unmap();
    }
}

// 0x66ec14 _ZN6glitch7collada6detail36CColladaHardwareTextureSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
// Prepares the cache, finds (or creates) the parameter ids for the buffer's material (keyed by its hash code: the types 12, 13 and 15),
// sets the joint texture and the texel size, and the weight-count selector when the renderer has the type 15 parameter.
int CColladaHardwareTextureSkinTechnique::skin(SSkinBuffer& buffer, scene::CMeshBuffer*) {
    prepareCache();
    video::CMaterial& material = *buffer.material;
    const std::uint32_t hash = material.getHashCode();
    auto found = hardwareData.find(hash);
    if (found == hardwareData.end()) {
        STextureHardwareData data;
        data.textureParameterId = static_cast<std::uint16_t>(material.m_renderer->getParameterID(12, 0));
        data.scaleParameterId = static_cast<std::uint16_t>(material.m_renderer->getParameterID(13, 0));
        data.unitParameterId = static_cast<std::uint16_t>(material.m_renderer->getParameterID(15, 0));
        found = hardwareData.insert(std::make_pair(material.getHashCode(), data)).first;
    }
    const std::uint16_t scaleId = found->second.scaleParameterId;
    const std::uint16_t unitId = found->second.unitParameterId;
    const boost::intrusive_ptr<video::ITexture> texture(static_cast<video::ITexture*>(cache->buffer.get()), true);
    material.parameters.setParameter(found->second.textureParameterId, 0u, texture);
    int result = material.parameters.setParameter(scaleId, 0u, invTextureSize);
    if (unitId != 0xffff) {
        const core::vector4d<float> selector = weightCountSelector(skinRecord->weightsPerVertex);
        return material.parameters.setParameter(unitId, 0u, selector);
    }
    return result;
}

// ---------------------------------------------------------------------------------------------------------------------
// CColladaHardwareMatrixSkinTechnique
// ---------------------------------------------------------------------------------------------------------------------

// 0x66b880 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb (C2 0x66b8dc)
CColladaHardwareMatrixSkinTechnique::CColladaHardwareMatrixSkinTechnique(SSkin& skin, SSkinCache& skinCache, bool hasSkinData)
    : IColladaSkinTechnique(hasSkinData), skinRecord(&skin), cache(&skinCache) {}

// 0x66b9cc _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechniqueD1Ev (D0 0x66ba34 skipped)
CColladaHardwareMatrixSkinTechnique::~CColladaHardwareMatrixSkinTechnique() {
    hardwareData.clear();
}

// 0x66b938 _ZNK6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique16needOutputBufferEv
bool CColladaHardwareMatrixSkinTechnique::needOutputBuffer() const {
    return false;
}

// 0x66b940 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique6attachEPNS_5scene10ISceneNodeE
void CColladaHardwareMatrixSkinTechnique::attach(scene::ISceneNode* node) {
    attachedNode = node;
}

// 0x66b948 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
int CColladaHardwareMatrixSkinTechnique::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver*, SSkinBuffer& buffer,
                                                                     scene::CMeshBuffer* meshBuffer) {
    if (step == 1) {
        skin(buffer, meshBuffer);
    }
    return 16;
}

// 0x66ba50 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique20checkAvailabilityStaticERKNS_5video10STechniqueE
// True when the first pass shader has a parameter of type 11 and the passes' attribute masks together hold 0x30000000.
bool CColladaHardwareMatrixSkinTechnique::checkAvailabilityStatic(const video::STechnique& technique) {
    const std::uint32_t masks = passAttributeMasks(technique);
    return firstShader(technique)->getParameterID(11, 0, 0) != 0xffff && (masks & 0x30000000u) == 0x30000000u;
}

// 0x66beac _ZNK6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
bool CColladaHardwareMatrixSkinTechnique::checkAvailability(const video::STechnique& technique) const {
    const bool available = checkAvailabilityStatic(technique);
    if (available) {
        makeProxyStatic(*skinRecord);
    }
    return available;
}

// 0x66c544 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique15preparePtrCacheEv
void CColladaHardwareMatrixSkinTechnique::preparePtrCache() {
    detail::preparePtrCache(*skinRecord, *cache, attachedNode);
}

// 0x66c5f4 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique18computeBoundingBoxEv
core::aabbox3d<float> CColladaHardwareMatrixSkinTechnique::computeBoundingBox() {
    return computeSkinBoundingBox(*skinRecord, *cache, attachedNode);
}

// 0x66c8a4 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
int CColladaHardwareMatrixSkinTechnique::init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver, bool) {
    initProxyBuffer(meshBuffer, buffer, *skinRecord, driver);
    makeProxyStatic(*skinRecord);
    return 0;
}

// 0x66cd18 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique12prepareCacheEv
// When the palette bit (0x01) of the cache is set: prepares the pointer cache, sizes the palette to the joint count (identity fill),
// then for every joint pointer multiplies the joint's matrix with its inverse bind matrix and the result with the skin's bind shape
// matrix (the products are core's operator*<float, glitch::collada::SMatrix>, see multiplyBySMatrix). Clears the bit.
void CColladaHardwareMatrixSkinTechnique::prepareCache() {
    if ((cache->dirty & 1u) == 0) {
        return;
    }
    preparePtrCache();
    cache->palette.resize(skinRecord->jointCount, core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY));
    const std::size_t count = cache->jointMatrices.size();
    for (std::size_t i = 0; i < count; ++i) {
        cache->palette[i] = multiplyBySMatrix(*cache->jointMatrices[i], skinRecord->bindMatrices + 16 * i);
        cache->palette[i] = multiplyBySMatrix(cache->palette[i], skinRecord->bindShapeMatrix);
    }
    cache->dirty &= ~1u;
}

// 0x66c278 _ZN6glitch7collada6detail35CColladaHardwareMatrixSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
// Prepares the cache, finds (or creates) the parameter ids of the buffer's material renderer in the map (keyed by the renderer's id: the
// parameter of type 11 and the one of type 15), writes every palette matrix into the material and, when the renderer has the type 15
// parameter, the weight-count selector (1.0 for each of the skin's weights per vertex up to four).
int CColladaHardwareMatrixSkinTechnique::skin(SSkinBuffer& buffer, scene::CMeshBuffer*) {
    prepareCache();
    video::CMaterial& material = *buffer.material;
    auto inserted = hardwareData.insert(std::make_pair(material.m_renderer->m_id, SMatrixHardwareData{}));
    if (inserted.second) {
        inserted.first->second.matrixParameterId = material.m_renderer->getParameterID(11, 0);
        inserted.first->second.unitParameterId = static_cast<std::uint16_t>(material.m_renderer->getParameterID(15, 0));
    }
    const std::uint16_t unitId = inserted.first->second.unitParameterId;
    const std::uint16_t matrixId = inserted.first->second.matrixParameterId;
    int result = 0;
    for (std::uint32_t i = 0; i < cache->palette.size(); ++i) {
        result = material.parameters.setParameter(matrixId, i, cache->palette[i]);
    }
    if (unitId != 0xffff) {
        const core::vector4d<float> selector = weightCountSelector(skinRecord->weightsPerVertex);
        return material.parameters.setParameter(unitId, 0u, selector);
    }
    return result;
}

// ---------------------------------------------------------------------------------------------------------------------
// CColladaHardwareQuatSkinTechnique
// ---------------------------------------------------------------------------------------------------------------------

// 0x66cfc0 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb (C2 0x66d01c)
CColladaHardwareQuatSkinTechnique::CColladaHardwareQuatSkinTechnique(SSkin& skin, SSkinCache& skinCache, bool hasSkinData)
    : IColladaSkinTechnique(hasSkinData), skinRecord(&skin), cache(&skinCache) {}

// 0x66df04 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechniqueD1Ev (D0 0x66df6c skipped)
CColladaHardwareQuatSkinTechnique::~CColladaHardwareQuatSkinTechnique() {
    hardwareData.clear();
}

// 0x66d078 _ZNK6glitch7collada6detail33CColladaHardwareQuatSkinTechnique16needOutputBufferEv
bool CColladaHardwareQuatSkinTechnique::needOutputBuffer() const {
    return false;
}

// 0x66d080 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique6attachEPNS_5scene10ISceneNodeE
void CColladaHardwareQuatSkinTechnique::attach(scene::ISceneNode* node) {
    attachedNode = node;
}

// 0x66d088 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
int CColladaHardwareQuatSkinTechnique::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver*, SSkinBuffer& buffer,
                                                                   scene::CMeshBuffer* meshBuffer) {
    if (step == 1) {
        skin(buffer, meshBuffer);
    }
    return 16;
}

// 0x66d730 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique20checkAvailabilityStaticERKNS_5video10STechniqueE
// True when the first pass shader has two parameters of type 14 (the second searched from the first one's id + 1) whose definitions differ in
// the byte at +7, and the passes' attribute masks together hold 0x30000000.
bool CColladaHardwareQuatSkinTechnique::checkAvailabilityStatic(const video::STechnique& technique) {
    const std::uint32_t masks = passAttributeMasks(technique);
    const video::IShader* shader = firstShader(technique);
    const std::uint32_t first = shader->getParameterID(14, 0, 0);
    if (first == 0xffff) {
        return false;
    }
    const std::uint32_t second = shader->getParameterID(14, 0, static_cast<std::uint16_t>(first + 1));
    if (second == 0xffff) {
        return false;
    }
    const video::SShaderParameterDef* parameters = shader->m_stageParameters[0].parameters;
    return parameters[first].arg != parameters[second].arg && (masks & 0x30000000u) == 0x30000000u;
}

// 0x66d8c8 _ZNK6glitch7collada6detail33CColladaHardwareQuatSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
bool CColladaHardwareQuatSkinTechnique::checkAvailability(const video::STechnique& technique) const {
    const bool available = checkAvailabilityStatic(technique);
    if (available) {
        makeProxyStatic(*skinRecord);
    }
    return available;
}

// 0x66df88 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique15preparePtrCacheEv
void CColladaHardwareQuatSkinTechnique::preparePtrCache() {
    detail::preparePtrCache(*skinRecord, *cache, attachedNode);
}

// 0x66e384 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique18computeBoundingBoxEv
core::aabbox3d<float> CColladaHardwareQuatSkinTechnique::computeBoundingBox() {
    return computeSkinBoundingBox(*skinRecord, *cache, attachedNode);
}

// 0x66e634 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
int CColladaHardwareQuatSkinTechnique::init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* driver, bool) {
    initProxyBuffer(meshBuffer, buffer, *skinRecord, driver);
    makeProxyStatic(*skinRecord);
    return 0;
}

// 0x66e204 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique12prepareCacheEv
// When the dual-quaternion bit (0x02) of the cache is set: prepares the pointer cache, sizes the dual quaternion vector to the joint
// count (new entries start as the words 1.0, 0, 0, 0, 0, 0, 0, 0) and converts each joint matrix times its bind matrix times the bind
// shape matrix to a dual quaternion (the first product is the bind matrix itself for an identity joint matrix). Clears the bit.
void CColladaHardwareQuatSkinTechnique::prepareCache() {
    if ((cache->dirty & 2u) == 0) {
        return;
    }
    preparePtrCache();
    core::dual_quaternion unit;
    float unitWords[8] = {1.0f, 0, 0, 0, 0, 0, 0, 0};
    std::memcpy(&unit, unitWords, sizeof(unitWords));
    cache->dualQuaternions.resize(skinRecord->jointCount, unit);
    const std::size_t count = cache->jointMatrices.size();
    for (std::size_t i = 0; i < count; ++i) {
        const float* bind = skinRecord->bindMatrices + 16 * i;
        core::CMatrix4<float> first;
        if (cache->jointMatrices[i]->flag) {
            for (int k = 0; k < 16; ++k) {
                first.M[k] = bind[k];
            }
            first.flag = false;
        } else {
            first = rowMatrixProduct34(*cache->jointMatrices[i], bind);
        }
        const core::CMatrix4<float> second = rowMatrixProduct34(first, skinRecord->bindShapeMatrix);
        cache->dualQuaternions[i] = second;
    }
    cache->dirty &= ~2u;
}

// 0x66dc40 _ZN6glitch7collada6detail33CColladaHardwareQuatSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
// Prepares the cache, finds (or creates) the parameter ids for the buffer's material (keyed by its hash code): the two parameters of
// type 14 are stored at the slot their definition's byte +7 names, then the one of type 15. Every dual quaternion goes into the
// material as its real and its dual part, and the weight-count selector follows when the renderer has the type 15 parameter.
int CColladaHardwareQuatSkinTechnique::skin(SSkinBuffer& buffer, scene::CMeshBuffer*) {
    prepareCache();
    video::CMaterial& material = *buffer.material;
    const std::uint32_t hash = material.getHashCode();
    auto found = hardwareData.find(hash);
    if (found == hardwareData.end()) {
        video::CMaterialRenderer& renderer = *buffer.material->m_renderer;
        std::uint16_t slots[2] = {0, 0x7fc0};  // the float NAN the listing starts from, as two halfwords
        const std::uint16_t first = static_cast<std::uint16_t>(renderer.getParameterID(14, 0));
        slots[renderer.parameters.getParameterDef(first)->unknown07] = first;
        const std::uint16_t second = static_cast<std::uint16_t>(renderer.getParameterID(14, static_cast<std::uint16_t>(first + 1)));
        slots[renderer.parameters.getParameterDef(second)->unknown07] = second;
        SQuatHardwareData data;
        data.realParameterId = slots[0];
        data.dualParameterId = slots[1];
        data.unitParameterId = static_cast<std::uint16_t>(renderer.getParameterID(15, 0));
        found = hardwareData.insert(std::make_pair(hash, data)).first;
    }
    const std::uint16_t unitId = found->second.unitParameterId;
    const std::uint16_t dualId = found->second.dualParameterId;
    const std::uint16_t realId = found->second.realParameterId;
    int result = 0;
    for (std::uint32_t i = 0; i < cache->dualQuaternions.size(); ++i) {
        const core::dual_quaternion& dq = cache->dualQuaternions[i];
        core::vector4d<float> real{dq.real.X, dq.real.Y, dq.real.Z, dq.real.W};
        core::vector4d<float> dual{dq.dual.X, dq.dual.Y, dq.dual.Z, dq.dual.W};
        material.parameters.setParameter(realId, i, real);
        result = material.parameters.setParameter(dualId, i, dual);
    }
    if (unitId != 0xffff) {
        const core::vector4d<float> selector = weightCountSelector(skinRecord->weightsPerVertex);
        return material.parameters.setParameter(unitId, 0u, selector);
    }
    return result;
}

// ---------------------------------------------------------------------------------------------------------------------
// CColladaSoftwareSkinTechnique
// ---------------------------------------------------------------------------------------------------------------------

// 0x66f5f8 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueC1ERNS0_5SSkinERNS0_10SSkinCacheEb (C2 0x66f658)
CColladaSoftwareSkinTechnique::CColladaSoftwareSkinTechnique(SSkin& skin, SSkinCache& skinCache, bool hasSkinData)
    : IColladaSkinTechnique(hasSkinData), skinRecord(&skin), cache(&skinCache) {}

// 0x66f724 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechniqueD1Ev (D0 0x66f78c skipped)
CColladaSoftwareSkinTechnique::~CColladaSoftwareSkinTechnique() {
    colorGenData.clear();
}

// 0x66f6b8 _ZNK6glitch7collada6detail29CColladaSoftwareSkinTechnique16needOutputBufferEv
bool CColladaSoftwareSkinTechnique::needOutputBuffer() const {
    return true;
}

// 0x66f6c0 _ZNK6glitch7collada6detail29CColladaSoftwareSkinTechnique17checkAvailabilityERKNS_5video10STechniqueE
bool CColladaSoftwareSkinTechnique::checkAvailability(const video::STechnique&) const {
    return true;
}

// 0x66f6c8 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique6attachEPNS_5scene10ISceneNodeE
void CColladaSoftwareSkinTechnique::attach(scene::ISceneNode* node) {
    attachedNode = node;
}

// 0x66f7a8 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique28onPrepareBufferForRenderingENS0_21E_PREPARE_BUFFER_STEPEPNS_5video12IVideoDriverERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
// Asks the driver for the process buffer of the buffer's mesh buffer (type 1 when the step is 0, the attribute mask 0x20001 or, with the
// byte at +0x18 set, 0x60001, masked with the vertex attribute mask of the technique's first pass shader) and, when the answer has
// bit 4, skins the buffer (K 0x18). The answer is returned.
int CColladaSoftwareSkinTechnique::onPrepareBufferForRendering(E_PREPARE_BUFFER_STEP step, video::IVideoDriver* driver, SSkinBuffer& buffer,
                                                               scene::CMeshBuffer* meshBuffer) {
    const std::uint32_t wanted = unk_18 != 0 ? 0x60001u : 0x20001u;
    boost::intrusive_ptr<scene::CMeshBuffer> held = buffer.buffer;
    const video::STechnique& technique = buffer.material->m_renderer->m_techniques[buffer.material->getTechnique()];
    const std::uint32_t flags = wanted & firstShader(technique)->m_vertexAttributeMask;
    const int answer = driver->getProcessBuffer(step == 0 ? 1 : 0, flags, held, false);
    if ((answer & 4) != 0) {
        skin(buffer, meshBuffer);
    }
    return answer;
}

// 0x66fab4 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique15preparePtrCacheEv
void CColladaSoftwareSkinTechnique::preparePtrCache() {
    detail::preparePtrCache(*skinRecord, *cache, attachedNode);
}

// 0x66fb84 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique18computeBoundingBoxEv
core::aabbox3d<float> CColladaSoftwareSkinTechnique::computeBoundingBox() {
    return computeSkinBoundingBox(*skinRecord, *cache, attachedNode);
}

// 0x66f8ec _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique4initERNS0_11SSkinBufferEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverEb
// Makes the proxy buffer, then turns its position stream (and the normal stream when the table has attribute 17, and the stream after
// those when the byte at +0x18 is set: a four component one) into buffer-less descriptions (type 6 float, three or four components),
// because the skinned vertices are written into the driver's process buffer instead. With the last argument set it answers 0; otherwise
// the process buffer (type 1; the attribute mask 0x20001, or 0x60001 with the byte at +0x18, masked with the vertex attribute mask of
// the material's first pass shader) is asked from the driver and the answer is 1.
int CColladaSoftwareSkinTechnique::init(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer, video::IVideoDriver* videoDriver,
                                        bool skipProcessBuffer) {
    initProxyBuffer(meshBuffer, buffer, *skinRecord, videoDriver);
    video::CVertexStreams& table = *buffer.buffer->vertexStreams;
    video::SVertexStreamData positions;
    positions.field08 = 6;
    positions.field0a = 0;
    positions.field0c = 3;
    positions.field0e = 0;
    table.setStream(&table.m_streams[0], positions, true);
    std::uint32_t next;
    if ((table.m_attributeMask & 0x20000u) != 0) {
        table.setStream(&table.m_streams[table.m_count0c + 1u], positions, true);
        next = 2;
    } else {
        next = 1;
    }
    if (unk_18 != 0) {
        video::SVertexStreamData tangents;
        tangents.field08 = 6;
        tangents.field0a = 0;
        tangents.field0c = 4;
        tangents.field0e = 0;
        table.setStream(&table.m_streams[next + table.m_count0c], tangents, true);
    }
    if (skipProcessBuffer) {
        return 0;
    }
    const std::uint32_t wanted = unk_18 != 0 ? 393217u : 131073u;
    const video::STechnique& technique = buffer.material->m_renderer->m_techniques[buffer.material->getTechnique()];
    const std::uint32_t flags = wanted & firstShader(technique)->m_vertexAttributeMask;
    boost::intrusive_ptr<scene::CMeshBuffer> held = buffer.buffer;
    videoDriver->getProcessBuffer(1, flags, held, true);
    return 1;
}

// 0x66fe34 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique12prepareCacheEv
// As the matrix technique's: when the palette bit (0x01) is set, the pointer cache is prepared, the palette is sized to the joint count
// (identity fill) and each entry becomes joint matrix * inverse bind matrix * bind shape matrix. Clears the bit.
void CColladaSoftwareSkinTechnique::prepareCache() {
    if ((cache->dirty & 1u) == 0) {
        return;
    }
    preparePtrCache();
    cache->palette.resize(skinRecord->jointCount, core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY));
    const std::size_t count = cache->jointMatrices.size();
    for (std::size_t i = 0; i < count; ++i) {
        const core::CMatrix4<float> first = multiplyBySMatrix(*cache->jointMatrices[i], skinRecord->bindMatrices + 16 * i);
        cache->palette[i] = multiplyBySMatrix(first, skinRecord->bindShapeMatrix);
    }
    cache->dirty &= ~1u;
}

// 0x66ff48 _ZN6glitch7collada6detail29CColladaSoftwareSkinTechnique4skinERNS0_11SSkinBufferEPNS_5scene11CMeshBufferE
// Skins the vertices [first, last) of the primitive stream into the proxy buffer's streams: the source positions (and normals, when both
// tables have them and both normal streams have a buffer) are read, every vertex is transformed by the palette matrices its joints name
// (the joint indices are the four bytes in front of the vertex's weights, weights are summed up to the skin's weights per vertex or the
// first zero weight) and weighted, and the results are written to the proxy's position (and normal) stream. All four mappings are
// released at the end. The element of the skin stream is 4 * (weights per vertex + 1) bytes: the joint indices, then the weights.
int CColladaSoftwareSkinTechnique::skin(SSkinBuffer& buffer, scene::CMeshBuffer* meshBuffer) {
    prepareCache();  // vptr+0x10
    video::CVertexStreams& source = *meshBuffer->vertexStreams;
    const std::uint32_t first = meshBuffer->primitiveStream.m_vertexStart;  // +0x24
    const std::uint32_t last = meshBuffer->primitiveStream.m_vertexEnd;     // +0x28
    video::SVertexStream& sourcePositions = source.m_streams[0];
    const std::uint32_t sourceStride = sourcePositions.field0e;
    const video::IBuffer* sourcePositionBuffer = sourcePositions.buffer.get();
    std::uint8_t* sourcePositionBase = sourcePositionBuffer->map(1);  // the read map
    if (sourcePositionBase != nullptr) {
        sourcePositionBase += sourcePositions.offset;
    }
    std::uint8_t* inPositions = sourcePositionBase != nullptr ? sourcePositionBase + first * sourceStride : nullptr;
    const video::SVertexStream* sourceNormals =
        (source.m_attributeMask & 0x20000u) != 0 ? &source.m_streams[source.m_count0c + 1u] : nullptr;

    video::CVertexStreams& proxy = *buffer.buffer->vertexStreams;
    video::SVertexStream& outPositions = proxy.m_streams[0];
    std::uint8_t* outPositionBase = outPositions.buffer->map(4);  // the write map
    if (outPositionBase != nullptr) {
        outPositionBase += outPositions.offset;
    }
    const std::uint32_t outStride = outPositions.field0e;
    const std::uint32_t elementSize = 4u * (skinRecord->weightsPerVertex + 1u);
    std::uint8_t* outPosition = outPositionBase != nullptr ? outPositionBase + first * outStride : nullptr;
    video::SVertexStream* outNormals =
        (proxy.m_attributeMask & 0x20000u) != 0 ? &proxy.m_streams[static_cast<std::uint8_t>(proxy.m_count0c + 1u)] : nullptr;

    video::SVertexStream& skinStream = proxy.m_streams[buffer.unk_12];
    const video::IBuffer* skinStreamBuffer = skinStream.buffer.get();
    std::uint8_t* skinStreamBase = skinStreamBuffer->map(1);
    if (skinStreamBase != nullptr) {
        skinStreamBase += skinStream.offset;
    }
    const std::uint8_t* weightsAt =
        skinStreamBase != nullptr ? skinStreamBase + first * skinStream.field0e + 4 : nullptr;
    const std::uint8_t weightsPerVertex = skinRecord->weightsPerVertex;
    const std::vector<core::CMatrix4<float>>& palette = cache->palette;
    // Host guard: a joint index past the palette (the original reads whatever is there) is clamped and reported.
    auto paletteMatrix = [&palette](std::uint32_t index) -> const float* {
        if (index >= palette.size()) {
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
            __android_log_print(ANDROID_LOG_ERROR, "DH2SKIN", "joint index %u past palette of %zu", index, palette.size());
#endif
            index = static_cast<std::uint32_t>(palette.size()) - 1u;
        }
        return palette[index].M;
    };
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    { static int n = 0; if (n++ < 6 || last * outStride > outPositions.buffer->m_size) __android_log_print(ANDROID_LOG_INFO, "DH2SKIN", "skin first=%u last=%u srcStride=%u srcOff=%d srcSize=%u outStride=%u outOff=%d outSize=%u skinStride=%u skinOff=%d skinSize=%u elem=%u wpv=%u palette=%zu joints=%d", first, last, sourceStride, (int)sourcePositions.offset, (unsigned)sourcePositionBuffer->m_size, outStride, (int)outPositions.offset, (unsigned)outPositions.buffer->m_size, (unsigned)skinStream.field0e, (int)skinStream.offset, (unsigned)skinStreamBuffer->m_size, elementSize, (unsigned)weightsPerVertex, palette.size(), (int)skinRecord->jointCount); }
#endif

    std::uint8_t* mappedSourceNormals = nullptr;
    std::uint8_t* mappedOutNormals = nullptr;
    const bool withNormals = sourceNormals != nullptr && sourceNormals->buffer != nullptr && outNormals != nullptr &&
                             outNormals->buffer != nullptr;
    bool canRun = inPositions != nullptr && outPosition != nullptr && weightsAt != nullptr;
    if (withNormals) {
        const video::IBuffer* inNormalBuffer = sourceNormals->buffer.get();
        std::uint8_t* outNormalBase = outNormals->buffer->map(4);
        mappedOutNormals = outNormalBase != nullptr ? outNormalBase + outNormals->offset : nullptr;
        std::uint8_t* inNormalBase = inNormalBuffer->map(1);
        mappedSourceNormals = inNormalBase != nullptr ? inNormalBase + sourceNormals->offset : nullptr;
        canRun = canRun && mappedOutNormals != nullptr && mappedSourceNormals != nullptr;
        if (canRun && first < last) {
            const std::uint32_t outNormalStride = outNormals->field0e;
            const std::uint32_t inNormalStride = sourceNormals->field0e;
            std::uint8_t* outNormal = mappedOutNormals + first * outNormalStride;
            const std::uint8_t* inNormal = mappedSourceNormals + first * inNormalStride;
            for (std::uint32_t vertex = first;; ) {
                const float* weightCursor = reinterpret_cast<const float*>(weightsAt);
                float px = 0.0f, py = 0.0f, pz = 0.0f, nx = 0.0f, ny = 0.0f, nz = 0.0f;
                float weight = 0.0f;
                if (weightsPerVertex != 0 && (weight = *weightCursor) != 0.0f) {
                    const float* inP = reinterpret_cast<const float*>(inPositions);
                    const float* inN = reinterpret_cast<const float*>(inNormal);
                    const float ix = inP[0], iy = inP[1], iz = inP[2];
                    const float jx = inN[0], jy = inN[1], jz = inN[2];
                    std::uint32_t counted = 1;
                    std::uint32_t k = 0;
                    while (true) {
                        const float* m = paletteMatrix(weightsAt[static_cast<std::ptrdiff_t>(k) - 4]);
                        px = px + (weight * ((((m[0] * ix) + (m[4] * iy)) + (m[8] * iz)) + m[12]));
                        py = py + (weight * ((((m[1] * ix) + (m[5] * iy)) + (m[9] * iz)) + m[13]));
                        pz = pz + (weight * ((((m[2] * ix) + (m[6] * iy)) + (m[10] * iz)) + m[14]));
                        nx = nx + (weight * (((m[0] * jx) + (m[4] * jy)) + (m[8] * jz)));
                        ny = ny + (weight * (((m[1] * jx) + (m[5] * jy)) + (m[9] * jz)));
                        nz = nz + (weight * (((m[2] * jx) + (m[6] * jy)) + (m[10] * jz)));
                        if (weightsPerVertex <= counted) {
                            break;
                        }
                        weight = weightCursor[1];
                        ++weightCursor;
                        if (weight == 0.0f) {
                            break;
                        }
                        k = counted++;
                    }
                }
                float* outP = reinterpret_cast<float*>(outPosition);
                float* outN = reinterpret_cast<float*>(outNormal);
                outP[0] = px;
                outP[1] = py;
                outP[2] = pz;
                outN[0] = nx;
                outN[1] = ny;
                outN[2] = nz;
                if (++vertex >= last) {
                    break;
                }
                weightsAt += elementSize;
                outPosition += outStride;
                outNormal += outNormalStride;
                inPositions += sourceStride;
                inNormal += inNormalStride;
            }
        }
        if (mappedSourceNormals != nullptr) {
            unmapBuffer(sourceNormals->buffer);
        }
        if (mappedOutNormals != nullptr) {
            unmapBuffer(outNormals->buffer);
        }
    } else if (canRun && first < last) {
        for (std::uint32_t vertex = first;; ) {
            const float* weightCursor = reinterpret_cast<const float*>(weightsAt);
            float x = 0.0f, y = 0.0f, z = 0.0f;
            float weight = 0.0f;
            if (weightsPerVertex != 0 && (weight = *weightCursor) != 0.0f) {
                const float* inP = reinterpret_cast<const float*>(inPositions);
                const float ix = inP[0], iy = inP[1], iz = inP[2];
                std::uint32_t counted = 1;
                std::uint32_t k = 0;
                while (true) {
                    const float* m = paletteMatrix(weightsAt[static_cast<std::ptrdiff_t>(k) - 4]);
                    x = x + (weight * ((((ix * m[0]) + (iy * m[4])) + (iz * m[8])) + m[12]));
                    y = y + (weight * ((((ix * m[1]) + (iy * m[5])) + (iz * m[9])) + m[13]));
                    z = z + (weight * ((((ix * m[2]) + (iy * m[6])) + (iz * m[10])) + m[14]));
                    if (counted >= weightsPerVertex) {
                        break;
                    }
                    weight = weightCursor[1];
                    ++weightCursor;
                    if (weight == 0.0f) {
                        break;
                    }
                    k = counted++;
                }
            }
            float* outP = reinterpret_cast<float*>(outPosition);
            outP[0] = x;
            outP[1] = y;
            outP[2] = z;
            if (++vertex >= last) {
                break;
            }
            outPosition += outStride;
            weightsAt += elementSize;
            inPositions += sourceStride;
        }
    }
    if (skinStreamBase != nullptr) {
        unmapBuffer(skinStream.buffer);
    }
    if (outPositionBase != nullptr) {
        unmapBuffer(outPositions.buffer);
    }
    if (sourcePositionBase != nullptr) {
        unmapBuffer(sourcePositions.buffer);
    }
    return 0;
}

}  // namespace glitch::collada::detail
