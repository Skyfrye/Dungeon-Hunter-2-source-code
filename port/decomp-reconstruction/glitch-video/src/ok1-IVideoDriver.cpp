// Owner K1: IVideoDriver material setting: setMaterialInternal (0x5aa51c), the three setMaterial overloads (0x5ad368, the one-argument
// form 0x7d4ef8 / clone 0x5244ac, 0x35eb10), resetBatchMaterial (0x5ad15c) and removeUnused (0x5aa290).
#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/scene/CAppendMeshBuffer.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

// The batch buffer (driver +0x120) as the scene's append buffer, for the baker's configureAppendBuffer slot.
boost::intrusive_ptr<scene::CAppendMeshBuffer> batchBufferOf(const IVideoDriver& driver) {
    return boost::intrusive_ptr<scene::CAppendMeshBuffer>(static_cast<scene::CAppendMeshBuffer*>(driver.m_batchBuffer.get()), true);
}

}  // namespace

// 0x5aa51c _ZN6glitch5video12IVideoDriver19setMaterialInternalEPNS0_9CMaterialEhPKN5boost13intrusive_ptrINS0_19CVertexAttributeMapEEE
// Records the material, technique and attribute map as the driver's current state. The same material, with no dirty bit for its
// technique and the technique already committed, only re-commits its renderer when the technique has several passes or its first
// pass changed; anything else commits the current material first and then clears the parameter dirty bit.
void IVideoDriver::setMaterialInternal(CMaterial* material, uint8_t technique, const boost::intrusive_ptr<CVertexAttributeMap>* attributes) {
    CMaterial* const committed = m_materialF0;  // +0xf0
    m_stateE8 = attributes;                     // +0xe8
    m_materialEc = material;                    // +0xec
    m_flagF8 = technique;                       // +0xf8
    if (material == committed) {
        const int32_t current = material->getTechnique();
        if (((material->m_dirtyParameters >> current) & 1) == 0 && m_flagF9 == technique) {  // +0xf9
            const STechnique& entry = material->m_renderer->m_techniques[m_flagF9];
            if (entry.passCount > 1 || entry.passes[0].flag30 != 0) {
                commitMaterialRenderer(material->m_renderer.get());  // vtable +0x20c
            }
            return;
        }
    }
    commitCurrentMaterial();  // vtable +0x208
    m_materialF0 = material;
    m_flagF9 = technique;
    m_materialEc->unsetParametersDirty(m_flagF8);
}

// 0x5ad15c _ZN6glitch5video12IVideoDriver18resetBatchMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEEh
// The batch baker of the first pass shader of the technique becomes the driver's, it makes the batch material for the source
// material, and the batch buffer is set up for it. No material: no baker and no batch material.
void IVideoDriver::resetBatchMaterial(const boost::intrusive_ptr<CMaterial>& material, uint8_t technique) {
    if (material) {
        const IShader* shader = static_cast<const IShader*>(material->m_renderer->m_techniques[technique].passes[0].shader);
        m_batchBaker = shader->getBatchBaker();  // +0x128
        const boost::intrusive_ptr<const CMaterial> source(material.get(), true);
        m_batchMaterial = m_batchBaker->getBatchMaterial(source, technique);  // baker vtable +0x10; +0x124
        m_batchBaker->configureAppendBuffer(batchBufferOf(*this));             // baker vtable +0x18
        return;
    }
    m_batchBaker = nullptr;
    m_batchMaterial = nullptr;
}

// 0x5ad368 _ZN6glitch5video12IVideoDriver11setMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEEhPKNS3_INS0_19CVertexAttributeMapEEE
// With batching on (option 0x100) the material is batched: the same source material (clean, same technique) keeps the batch material;
// a material the baker cannot batch flushes the batch and starts a new baker; a new source is cloned into the batch heap.
// Batching off: the baker is dropped and the material set as it is.
void IVideoDriver::setMaterial(const boost::intrusive_ptr<CMaterial>& material, uint8_t technique,
                               const boost::intrusive_ptr<CVertexAttributeMap>* attributes) {
    CMaterial* target = material.get();  // v8
    if ((m_options & 0x100) != 0) {
        bool sameSource = false;
        if (target != nullptr) {
            CMaterial* const source = m_batchSourceMaterial;  // +0x130
            if (source == target && ((source->m_dirtyParameters >> source->getTechnique()) & 1) == 0 && m_flagF8 == technique) {
                sameSource = true;
            }
        }
        bool restart = false;  // LABEL_15: the batch heap material is replaced
        if (m_batchBaker) {
            if (!sameSource) {
                const boost::intrusive_ptr<const CMaterial> copy(material.get(), true);
                const bool compatible = m_batchBaker->isCompatible(copy, technique);  // baker vtable +0x1c
                if (!compatible) {
                    flush();  // vtable +0x1fc
                    resetBatchMaterial(material, technique);
                    restart = true;
                }
            }
            if (!restart && (m_stateFlags & 8) != 0) {
                m_batchBaker->configureAppendBuffer(batchBufferOf(*this));  // baker vtable +0x18
            }
        } else {
            resetBatchMaterial(material, technique);
        }
        if (sameSource && !restart) {
            target = m_batchMaterial.get();  // +0x124
            technique = 0;
            m_stateFlags &= ~8u;
        } else {
            if (m_batchMaterialHeap != nullptr) {  // ~CMaterial and the process-buffer release
                m_batchMaterialHeap->~CMaterial();
                glitch::core::releaseProcessBuffer(m_batchMaterialHeap);
                m_batchSourceMaterial = nullptr;
                m_batchTechnique = 0xff;
                m_batchMaterialHeap = nullptr;
            }
            if (material) {
                m_batchMaterialHeap = material->cloneHeap(nullptr);
                m_batchTechnique = technique;
                m_batchSourceMaterial = material.get();
                material->unsetParametersDirty(technique);
            }
            target = m_batchMaterial.get();
            technique = 0;
            m_stateFlags &= ~8u;
        }
    } else {
        m_batchBaker = nullptr;
    }
    if (target != nullptr) {
        setMaterialInternal(target, technique, attributes);
        return;
    }
    m_stateE8 = attributes;
    m_materialEc = nullptr;
    m_flagF8 = 0xff;
}

// 0x7d4ef8 / 0x5244ac (the clone with the map argument folded to null): the technique is the material's own (255 without a material).
void IVideoDriver::setMaterial(const boost::intrusive_ptr<CMaterial>& material,
                               const boost::intrusive_ptr<CVertexAttributeMap>* attributes) {
    const uint8_t technique = material ? static_cast<uint8_t>(material->getTechnique()) : 255;
    setMaterial(material, technique, attributes);
}

// 0x35eb10 _ZN6glitch5video12IVideoDriver11setMaterialERKN5boost13intrusive_ptrINS0_9CMaterialEEERKNS3_IKNS0_27CMaterialVertexAttributeMapEEE
// The attribute map slot of the first pass of the material's technique: the map's slots are indexed by the distance, in 52-byte
// passes, from the renderer's pass base.
void IVideoDriver::setMaterial(const boost::intrusive_ptr<CMaterial>& material,
                               const boost::intrusive_ptr<const CMaterialVertexAttributeMap>& attributes) {
    const uint8_t technique = static_cast<uint8_t>(material->getTechnique());
    const boost::intrusive_ptr<CVertexAttributeMap>* slot = nullptr;
    if (attributes && material) {
        const CMaterialRenderer& renderer = *attributes->m_renderer;
        const std::ptrdiff_t index = renderer.m_techniques[technique].passes - renderer.m_passBase;
        slot = &attributes->m_maps[static_cast<size_t>(index)];
    }
    setMaterial(material, technique, slot);
}

// 0x5aa290 _ZN6glitch5video12IVideoDriver12removeUnusedEv
void IVideoDriver::removeUnused() {
    static_cast<C2DDriver*>(m_device->unk_14)->freeTextures();  // the device's 2D driver (device +0x14)
    m_materialRendererManager->removeAllBatchBaker();
    m_materialRendererManager->clearUnusedInstances();
    m_materialRendererManager->removeAll(false);
    m_textureManager->clearPlaceHolders();
    m_textureManager->removeAll(false);
}

}  // namespace glitch::video
