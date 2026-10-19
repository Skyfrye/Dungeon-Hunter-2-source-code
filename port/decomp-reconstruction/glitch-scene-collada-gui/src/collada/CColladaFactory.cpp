// Bodies of glitch::collada::CColladaFactory (canonical class: collada/CColladaFactory.hpp). This file replaces collada_factory.cpp, the
// factory bodies of tb_..._CColladaFactory-0.cpp and the factory stand-ins of recon/slice_17.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial.
#include "glitch-scene-collada-gui/collada/CColladaFactory.hpp"

#include <cstdlib>
#include <cstdio>
#include <cstring>

#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CBillboardSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CCoronasSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CCameraSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CForceSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CGlitchNewParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CColladaMaterial.hpp"
#include "glitch-scene-collada-gui/collada/SEffectList.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-video/vertex_attribute_map.hpp"
#include "glitch-scene-collada-gui/collada/CModularSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/CParticleSystemSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/collada/CSkinnedMesh.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/mesh_functions.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"

namespace glitch::collada {

namespace {

// The mesh nodes of the three kinds are built over a mesh with no node record, id -1 and the identity transform (the stack temporaries
// of 0x631650 / 0x6316d0 / 0x631750: position 0, rotation (0, 0, 0, 1), scale 1).
struct SIdentityPlacement {
    core::vector3d<float> position{0.0f, 0.0f, 0.0f};
    core::quaternion rotation{0.0f, 0.0f, 0.0f, 1.0f};
    core::vector3d<float> scale{1.0f, 1.0f, 1.0f};
};

}  // namespace

// 0x631b28 _ZN6glitch7collada15CColladaFactory14createAnimatorERKNS0_16CColladaDatabaseEPNS0_22SLibraryAnimationClipsE
void* CColladaFactory::createAnimator(const CColladaDatabase& db, SLibraryAnimationClips* clips) {
    return new CSceneNodeAnimator(db, *clips);  // operator new(0x60)
}

// 0x631af8 _ZN6glitch7collada15CColladaFactory11createLightERKNS0_16CColladaDatabaseEPNS0_6SLightE
CLightSceneNode* CColladaFactory::createLight(const CColladaDatabase& db, SLight* light) {
    return new CLightSceneNode(db, *light);  // operator new(0x16c)
}

namespace {

// CVertexAttributeMap::CVertexAttributeMap(intrusive_ptr<CVertexStreams const> const&) (0x5a0958, not declared by the port's header): the
// default map of the streams, or every slot unset (0xff) when there are none.
boost::intrusive_ptr<video::CVertexAttributeMap> makeDefaultAttributeMapObject(
    const boost::intrusive_ptr<const video::CVertexStreams>& streams) {
    std::uint8_t data[video::CVertexAttributeMap::kMapSize];
    if (streams) {
        video::makeDefaultAttributeMap(streams.get(), data);
    } else {
        std::memset(data, 0xFF, sizeof(data));
    }
    return boost::intrusive_ptr<video::CVertexAttributeMap>(new video::CVertexAttributeMap(data), true);  // born with count 0
}

}  // namespace

// 0x62ff04 _ZN6glitch7collada15CColladaFactory19getAdditionalEffectsERKNS0_16CColladaDatabaseEPNS0_7SEffectERNS0_11SEffectListE
void CColladaFactory::getAdditionalEffects(const CColladaDatabase&, SEffect*, SEffectList&) {}

// 0x631ac4 _ZN6glitch7collada15CColladaFactory13getEffectNameERKNS0_16CColladaDatabaseEPKcS6_
// The result is a std::string built from the effect name (the register argument R3 of the listing, after the hidden result and `this`: the
// second stack argument, the file name, is not read). First boot: the port built it from the file name, which is null for materials whose
// record has none (strlen(nullptr)) and would have named every renderer after its file.
std::string CColladaFactory::getEffectName(const CColladaDatabase&, const char* name, const char*) {
    return std::string(name);
}

// 0x3506a4 _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPNS0_14CRootSceneNodeE
video::CMaterialRenderer* CColladaFactory::createMaterialRenderer(const CColladaDatabase&, video::IVideoDriver*, SEffect*,
                                                                  CRootSceneNode*) {
    return nullptr;
}

// 0x636c8c _ZN6glitch7collada15CColladaFactory22createMaterialRendererERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_7SEffectEPKcSA_PNS0_14CRootSceneNodeE
// With an effect: the renderer's name comes from slot 0x14 (getEffectName); when the driver's renderer collection (driver +0xdc) knows
// that name its renderer is returned, otherwise the list of effects is made (the effect, then slot 0x10 getAdditionalEffects) and the free
// createMaterialRenderer builds the renderer. Without an effect the failure is logged and the manager's pink wireframe renderer is made.
// The result carries one reference the caller adopts.
video::CMaterialRenderer* CColladaFactory::createMaterialRenderer(const CColladaDatabase& db, video::IVideoDriver* driver, SEffect* effect,
                                                                  const char* name, const char* fileName, CRootSceneNode* root) {
    boost::intrusive_ptr<video::CMaterialRenderer> result;
    video::CMaterialRendererManager* manager = driver->m_materialRendererManager;
    if (effect != nullptr) {
        const std::string rendererName = getEffectName(db, name, fileName);
        const std::uint16_t id = manager->getId(rendererName.c_str());
        if (id == 0xFFFF) {
            SEffectList effects(db, effect);
            getAdditionalEffects(db, effect, effects);
            result = collada::createMaterialRenderer(db, driver, rendererName.c_str(), effects, root);
        } else {
            result = manager->getMaterialRenderer(id);
        }
    } else {
        os::Printer::logf(ELL_ERROR, "Effect could not be loaded, using pink wireframe.");
        result = manager->createPinkWireFrameMaterialRenderer("Material PinkWireFrame");
    }
    return result.detach();
}

void (*g_dh2MaterialCreatedHook)(video::IVideoDriver* driver, video::CMaterial* material) = nullptr;

// 0x6323d0 _ZN6glitch7collada15CColladaFactory14createMaterialERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SMaterialEPNS0_14CRootSceneNodeE
// With a root, the material the root already built for the record's name is returned (CRootSceneNode::hasMaterial). Otherwise the renderer is
// created through slot 0x1c (the record's effect, its effect name - the URL without its '#' - and file name) and, when there is one, the
// material is built over it by the free createMaterial. The result carries one reference the caller adopts.
video::CMaterial* CColladaFactory::createMaterial(const CColladaDatabase& db, video::IVideoDriver* driver, SMaterial* material,
                                                  CRootSceneNode* root) {
    boost::intrusive_ptr<video::CMaterial> result;
    if (root != nullptr) {
        result = root->hasMaterial(material->name);
        if (result) {
            return result.detach();
        }
    }
    boost::intrusive_ptr<video::CMaterialRenderer> renderer(
        createMaterialRenderer(db, driver, material->effect, material->effectUrl + 1, material->fileName, root), false);
    if (renderer) {
        result = collada::createMaterial(db, driver, renderer, *material, root);
        if (result && g_dh2MaterialCreatedHook != nullptr) {
            g_dh2MaterialCreatedHook(driver, result.get());  // port addition (remaster)
        }
    }
    return result.detach();
}

// 0x634520 _ZN6glitch7collada15CColladaFactory29createMaterialVertexAttributeMapERKNS0_16CColladaDatabaseEPNS0_17SInstanceMaterialERKN5boost13intrusive_ptrINS0_5IMeshEEERKNS8_INS_5video9CMaterialEEEjb
// The map the instance already has is returned unless `flag` asks for a new one. Otherwise the renderer of the material (and its driver's
// family) chooses which of the instance's four binding groups applies (a driver of no known family gives null); a map is made over the
// renderer and, when the instance has none yet, kept by the instance and linked into the database's list. For every technique the group
// names that the renderer has, each pass gets a vertex-attribute map over the vertex streams of the mesh buffer `index`, set from the
// binding's (slot, attribute) pairs. Afterwards every pass of every technique of the renderer that has no map yet gets one with the
// default attribute map of the streams (one shared object).
boost::intrusive_ptr<video::CMaterialVertexAttributeMap> CColladaFactory::createMaterialVertexAttributeMap(
    const CColladaDatabase& db, SInstanceMaterial* instance, const boost::intrusive_ptr<IMesh>& mesh,
    const boost::intrusive_ptr<video::CMaterial>& material, unsigned int index, bool flag) {
    boost::intrusive_ptr<video::CMaterialVertexAttributeMap> map(instance->vertexAttributeMap, true);  // the instance keeps its own use (STUB-AUDIT)
    if (map && !flag) {
        return map;
    }
    boost::intrusive_ptr<video::CMaterialRenderer> renderer = material->m_renderer;
    const std::uint32_t family = static_cast<std::uint32_t>(renderer->m_driver->getDriverType()) & 0xFFFFu;
    const SVertexInputGroup* group = nullptr;
    if ((family & 0x7u) != 0) {
        group = &instance->vertexInput[1];
    } else if ((family & 0x18u) != 0) {
        group = &instance->vertexInput[2];
    } else if ((family & 0x60u) != 0) {
        group = &instance->vertexInput[0];
    } else if ((family & 0x300u) != 0) {
        group = &instance->vertexInput[3];
    } else {
        return boost::intrusive_ptr<video::CMaterialVertexAttributeMap>();
    }
    map = video::CMaterialVertexAttributeMap::allocate(renderer);
    if (instance->vertexAttributeMap == nullptr) {
        instance->vertexAttributeMap = map.get();
        video::intrusive_ptr_add_ref(map.get());
        linkInstanceMaterial(const_cast<SDatabaseTables&>(db.tables()), instance);
    }
    boost::intrusive_ptr<const video::CVertexStreams> streams;
    {
        const boost::intrusive_ptr<scene::CMeshBuffer> buffer = mesh->getMeshBuffer(index);
        streams = buffer->vertexStreams;
    }
    for (std::int32_t t = 0; t < group->techniqueCount; ++t) {
        const SVertexInputTechnique& technique = group->techniques[t];
        const std::uint8_t techniqueId = renderer->getTechniqueID(technique.name);
        if (techniqueId == 0xFF) {
            continue;
        }
        for (std::int32_t b = 0; b < technique.bindingCount; ++b) {
            boost::intrusive_ptr<video::CVertexAttributeMap> attributes(makeDefaultAttributeMapObject(streams));
            attributes->set(streams, technique.bindings[b].count, technique.bindings[b].pairs, false);
            map->set(techniqueId, static_cast<std::uint8_t>(b), attributes);
        }
    }
    boost::intrusive_ptr<video::CVertexAttributeMap> shared;
    for (std::uint32_t t = 0; t < renderer->m_techniqueCount; ++t) {
        const video::STechnique& entry = renderer->m_techniques[t];
        for (std::uint32_t pass = 0; pass < entry.passCount; ++pass) {
            const std::ptrdiff_t slot = (entry.passes + pass) - renderer->m_passBase;
            if (slot >= 0 && static_cast<std::size_t>(slot) < map->m_maps.size() && map->m_maps[static_cast<std::size_t>(slot)]) {
                continue;
            }
            if (!shared) {
                shared = makeDefaultAttributeMapObject(streams);
            }
            map->set(static_cast<std::uint8_t>(t), static_cast<std::uint8_t>(pass), shared);
        }
    }
    return map;
}

// 0x62ff08 _ZN6glitch7collada15CColladaFactory21getVertexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
SBufferConfig CColladaFactory::getVertexBufferConfig(const CColladaDatabase&, SGeometry*) {
    return SBufferConfig{4, 0, 0};
}

// 0x62ff20 _ZN6glitch7collada15CColladaFactory20getIndexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
SBufferConfig CColladaFactory::getIndexBufferConfig(const CColladaDatabase&, SGeometry*) {
    return SBufferConfig{4, 0, 0};
}

// 0x62ff38 _ZN6glitch7collada15CColladaFactory20isSharingMeshBuffersERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
bool CColladaFactory::isSharingMeshBuffers(const CColladaDatabase&, SGeometry*) {
    return true;
}

// 0x631924 _ZN6glitch7collada15CColladaFactory14createGeometryERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_9SGeometryE
// The vertex and index configurations come from slots 0x28 and 0x2c and the sharing flag from slot 0x30; the mesh (operator new(0x3c))
// is born with count 0 and the result carries one reference.
IMesh* CColladaFactory::createGeometry(const CColladaDatabase& db, video::IVideoDriver* driver, SGeometry* geometry) {
    const SBufferConfig vertexConfig = getVertexBufferConfig(db, geometry);
    const SBufferConfig indexConfig = getIndexBufferConfig(db, geometry);
    const bool sharing = isSharingMeshBuffers(db, geometry);
    CMesh* mesh = new CMesh(db, driver, *geometry, vertexConfig, indexConfig, sharing);
    ++mesh->referenceCounter;
    return mesh;
}

// 0x6318c8 _ZN6glitch7collada15CColladaFactory11createMorphERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
CMorphingMesh* CColladaFactory::createMorph(const CColladaDatabase& db, video::IVideoDriver* driver, SController* controller,
                                            CRootSceneNode* root) {
    CMorphingMesh* morph = new CMorphingMesh(db, driver, *controller, root);  // operator new(0x40)
    ++morph->referenceCounter;
    return morph;
}

// 0x631800 _ZN6glitch7collada15CColladaFactory10createNodeERKNS0_16CColladaDatabaseEPNS0_5SNodeE
CSceneNode* CColladaFactory::createNode(const CColladaDatabase& db, SNode* node) {
    return new CSceneNode(db, node);  // operator new(0x160)
}

// 0x631830 _ZN6glitch7collada15CColladaFactory15createBillboardERKNS0_16CColladaDatabaseEPNS0_5SNodeE
void* CColladaFactory::createBillboard(const CColladaDatabase& db, SNode* node) {
    return static_cast<scene::ISceneNode*>(new CBillboardSceneNode(db, node));  // operator new(0x160)
}

// 0x6317d0 _ZN6glitch7collada15CColladaFactory16createCameraNodeERKNS0_16CColladaDatabaseEPNS0_7SCameraE
CCameraSceneNode* CColladaFactory::createCameraNode(const CColladaDatabase& db, SCamera* camera) {
    return new CCameraSceneNode(db, *camera);  // operator new(0x3a0)
}

// 0x631750 _ZN6glitch7collada15CColladaFactory14createMeshNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
void* CColladaFactory::createMeshNode(const CColladaDatabase&, const boost::intrusive_ptr<IMesh>& mesh, void*) {
    SIdentityPlacement placement;
    return static_cast<scene::ISceneNode*>(
        new CMeshSceneNode(mesh, nullptr, -1, placement.position, placement.rotation, placement.scale));  // operator new(320)
}

// 0x6316d0 _ZN6glitch7collada15CColladaFactory14createSkinNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
void* CColladaFactory::createSkinNode(const CColladaDatabase&, const boost::intrusive_ptr<IMesh>& mesh, void*) {
    SIdentityPlacement placement;
    return static_cast<scene::ISceneNode*>(
        new CSkinnedMeshSceneNode(mesh, nullptr, -1, placement.position, placement.rotation, placement.scale));  // operator new(0x184)
}

// 0x631650 _ZN6glitch7collada15CColladaFactory19createModularSkinNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrINS0_5IMeshEEEPv
void* CColladaFactory::createModularSkinNode(const CColladaDatabase&, const boost::intrusive_ptr<IMesh>& mesh, void*) {
    SIdentityPlacement placement;
    return static_cast<scene::ISceneNode*>(new CModularSkinnedMeshSceneNode(mesh, nullptr, -1, placement.position, placement.rotation,
                                                                            placement.scale));  // operator new(0x184)
}

// 0x631628 _ZN6glitch7collada15CColladaFactory11createSceneERKNS0_16CColladaDatabaseE
void* CColladaFactory::createScene(const CColladaDatabase& db) {
    return static_cast<scene::ISceneNode*>(new CRootSceneNode(db));  // operator new(0x1c4)
}

// 0x6315cc _ZN6glitch7collada15CColladaFactory10createSkinERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_11SControllerEPNS0_14CRootSceneNodeE
CSkinnedMesh* CColladaFactory::createSkin(const CColladaDatabase& db, video::IVideoDriver* driver, SController* controller,
                                          CRootSceneNode* root) {
    CSkinnedMesh* skin = new CSkinnedMesh(db, driver, *controller, root);  // operator new(0x9c)
    ++skin->referenceCounter;
    return skin;
}

// 0x631560 _ZN6glitch7collada15CColladaFactory16createModularSkinERKNS0_16CColladaDatabaseEPNS0_20SInstanceModularSkinEPNS0_14CRootSceneNodeE
CModularSkinnedMesh* CColladaFactory::createModularSkin(const CColladaDatabase& db, SInstanceModularSkin* instance,
                                                        CRootSceneNode* root) {
    CModularSkinnedMesh* skin = new CModularSkinnedMesh(db, instance, root, -1, true);  // operator new(0x5c)
    ++skin->referenceCounter;
    return skin;
}

// 0x631518 _ZN6glitch7collada15CColladaFactory13createCoronasERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_8SCoronasEPNS0_14CRootSceneNodeE
// operator new(0x20c) and CCoronasSceneNode(db, driver, *coronas, root).
CCoronasSceneNode* CColladaFactory::createCoronas(const CColladaDatabase& db, video::IVideoDriver* driver, SCoronas* coronas,
                                                  CRootSceneNode* root) {
    return new CCoronasSceneNode(db, driver, *coronas, root);
}

// 0x63133c _ZN6glitch7collada15CColladaFactory26createGlitchNewParticleSystemERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_12SGNPSEmitterEPNS_3res6vectorINSB_6StringEEEPNS0_14CRootSceneNodeE
// operator new(0x198) and the node constructor. Emitter mesh type 0 sets the system up as a billboard system and orients its quads by the
// emitter's billboard record; mesh type 1 sets it up without a billboard (the mesh comes later through setParticleMesh).
CGlitchNewParticleSystemSceneNode* CColladaFactory::createGlitchNewParticleSystem(const CColladaDatabase& db, video::IVideoDriver* driver,
                                                                                  SGNPSEmitter* emitter,
                                                                                  res::vector<res::String>* materials, CRootSceneNode* root) {
    auto* node = new CGlitchNewParticleSystemSceneNode(db, *emitter, materials, root);
    if (emitter->meshType != 0) {
        if (emitter->meshType == 1) {
            node->initParticleSystem(driver, false);
        }
        return node;
    }
    node->initParticleSystem(driver, true);
    const SGNPSBillboard* record = emitter->billboard;
    ps::IParticleContext<ps::GNPSParticle>& context = *node->system;
    if (record->enabled != 0) {
        if (record->mode == 0) {
            context.axisLocked[1] = 1;
            context.axisLocked[0] = 0;
            context.alignToMotion = 1;
        } else if (record->mode == 1) {
            context.lockAxis(1, core::vector3d<float>{record->axisB[0], record->axisB[1], record->axisB[2]});
        } else if (record->mode == 2) {
            if (record->lockAxis0 != 0) {
                context.lockAxis(0, core::vector3d<float>{record->axisA[0], record->axisA[1], record->axisA[2]});
            }
            if (record->lockAxis1 != 0) {
                context.lockAxis(1, core::vector3d<float>{record->axisB[0], record->axisB[1], record->axisB[2]});
            }
            context.transformAxes = record->transformAxes != 0 ? 1 : 0;
        }
    }
    return node;
}

namespace {

// The indices of the three crossed quads of the particle mesh of kind 2 (the static `indices` of 0x634c64, 0x99b808): two triangles per
// quad, six quads of four vertices.
const std::uint16_t kCrossIndices[36] = {0,  1,  2,  0,  2,  3,  4,  5,  6,  4,  6,  7,  8,  9,  10, 8,  10, 11,
                                          12, 13, 14, 12, 14, 15, 16, 17, 18, 16, 18, 19, 20, 21, 22, 20, 22, 23};

// The 24 vertices of the three crossed quads (each quad twice, once per side): positions and normals. Vertices 0 .. 7 stand in the xy
// plane (normals +z and -z), 8 .. 15 in the xz plane (normals +y and -y), 16 .. 23 in the yz plane (normals +x and -x).
const float kCrossPositions[24][3] = {
    {-0.5f, -0.5f, 0.0f}, {-0.5f, 0.5f, 0.0f}, {0.5f, 0.5f, 0.0f}, {0.5f, -0.5f, 0.0f},
    {-0.5f, -0.5f, 0.0f}, {-0.5f, 0.5f, 0.0f}, {0.5f, 0.5f, 0.0f}, {0.5f, -0.5f, 0.0f},
    {-0.5f, 0.0f, -0.5f}, {-0.5f, 0.0f, 0.5f}, {0.5f, 0.0f, 0.5f}, {0.5f, 0.0f, -0.5f},
    {-0.5f, 0.0f, -0.5f}, {-0.5f, 0.0f, 0.5f}, {0.5f, 0.0f, 0.5f}, {0.5f, 0.0f, -0.5f},
    {0.0f, -0.5f, -0.5f}, {0.0f, -0.5f, 0.5f}, {0.0f, 0.5f, 0.5f}, {0.0f, 0.5f, -0.5f},
    {0.0f, -0.5f, -0.5f}, {0.0f, -0.5f, 0.5f}, {0.0f, 0.5f, 0.5f}, {0.0f, 0.5f, -0.5f},
};
const float kCrossNormals[6][3] = {{0.0f, 0.0f, 1.0f}, {0.0f, 0.0f, -1.0f}, {0.0f, 1.0f, 0.0f},
                                   {0.0f, -1.0f, 0.0f}, {1.0f, 0.0f, 0.0f}, {-1.0f, 0.0f, 0.0f}};

}  // namespace

// 0x634c64 _ZN6glitch7collada15CColladaFactory20createParticleSystemERKNS0_16CColladaDatabaseEPNS_5video12IVideoDriverEPNS0_8SEmitterEPNS_3res6vectorINSB_6StringEEEPNS0_14CRootSceneNodeE
// operator new(0x198) and the node constructor, then the particle mesh by the emitter's mesh type:
//   type 2: the first mesh buffer of the mesh of the file the emitter's URL names (no billboard);
//   type 0, kind 1: a unit cube; kind 7: a unit sphere (15 x 15); kind 2: three crossed quads built here (24 vertices); kinds 3 and 4:
//   billboards, oriented by the record (its mode 2 locks axis 1 to the second vector, mode 3 aligns to the motion, mode 1 locks the axes
//   the flags bits 2 and 4 name). Other kinds: no mesh.
// Deviation: the generators of the cube and the sphere (mesh_creators.cpp) hand back no mesh in this port; the original dereferences the
// result, the port sets the system up without a mesh buffer then.
CParticleSystemSceneNode* CColladaFactory::createParticleSystem(const CColladaDatabase& db, video::IVideoDriver* driver, SEmitter* emitter,
                                                                res::vector<res::String>* materials, CRootSceneNode* root) {
    auto* node = new CParticleSystemSceneNode(db, *emitter, materials, root);
    if (emitter->meshType != 0) {
        if (emitter->meshType == 2) {
            boost::intrusive_ptr<IMesh> geometry(db.constructGeometry(driver, emitter->mesh->geometryUrl + 1), false);
            boost::intrusive_ptr<scene::CMeshBuffer> buffer = geometry->getMeshBuffer(0);
            node->initParticleSystem(driver, false);
            node->setParticleMesh(buffer);
        }
        return node;
    }
    const SEmitterMesh& mesh = *emitter->mesh;
    switch (mesh.kind) {
        case 1: {
            boost::intrusive_ptr<scene::IMesh> cube = scene::createCubeMesh(0x60003u, driver, 1.0f);
            boost::intrusive_ptr<scene::CMeshBuffer> buffer;
            if (cube) {
                buffer = cube->getMeshBuffer(0);
            }
            node->initParticleSystem(driver, false);
            if (buffer) {
                node->setParticleMesh(buffer);
            }
            break;
        }
        case 2: {
            boost::intrusive_ptr<video::IBuffer> indices =
                driver->createBuffer(1, 4, sizeof(kCrossIndices), const_cast<std::uint16_t*>(kCrossIndices), false);
            video::CPrimitiveStream stream;
            stream.m_indexBuffer = indices;
            stream.m_offset = 0;
            stream.m_count = 36;
            stream.m_vertexStart = 0;
            stream.m_vertexEnd = 24;
            stream.m_indexType = 1;
            stream.m_primitiveType = 6;
            boost::intrusive_ptr<scene::CMeshBuffer> buffer(new scene::CMeshBuffer(0x60003u, stream, false), true);
            video::CVertexStreams* streams = buffer->vertexStreams.get();
            boost::intrusive_ptr<video::IBuffer> vertices = driver->createBuffer(0, 4, 0, nullptr, true);
            const std::uint32_t bytes = 24u * streams->setupStreams(vertices, 0xFFFFFFFFu);
            vertices->reset(bytes, new std::uint8_t[bytes], true);
            // Entry 0 holds the positions, entry 1 the texture coordinates (mapped, never written here) and entry 2 the normals.
            video::SVertexStream& positionStream = streams->m_streams[0];
            video::SVertexStream& textureStream = streams->m_streams[1];
            video::SVertexStream& normalStream = streams->m_streams[2];
            std::uint8_t* textureBase = textureStream.buffer->map(4) + textureStream.offset;
            std::uint8_t* positions = positionStream.buffer->map(4) + positionStream.offset;
            for (int vertex = 0; vertex < 24; ++vertex) {
                float* p = reinterpret_cast<float*>(positions + vertex * positionStream.field0e);
                p[0] = kCrossPositions[vertex][0];
                p[1] = kCrossPositions[vertex][1];
                p[2] = kCrossPositions[vertex][2];
            }
            std::uint8_t* normals = normalStream.buffer->map(4) + normalStream.offset;
            for (int vertex = 0; vertex < 24; ++vertex) {
                float* n = reinterpret_cast<float*>(normals + vertex * normalStream.field0e);
                n[0] = kCrossNormals[vertex / 4][0];
                n[1] = kCrossNormals[vertex / 4][1];
                n[2] = kCrossNormals[vertex / 4][2];
            }
            streams->m_field08 = 24;
            node->initParticleSystem(driver, false);
            node->setParticleMesh(buffer);
            normalStream.unmapBuffer();
            positionStream.unmapBuffer();
            if (textureBase != nullptr) {
                textureStream.unmapBuffer();
            }
            break;
        }
        case 3:
        case 4: {
            node->initParticleSystem(driver, true);
            const std::uint32_t flags = mesh.billboardFlags;
            if (flags != 0) {
                ps::IParticleContext<ps::SParticle>& context = *node->system;
                switch (mesh.axisMode) {
                    case 2:
                        context.lockAxis(1, core::vector3d<float>{mesh.axisB[0], mesh.axisB[1], mesh.axisB[2]});
                        break;
                    case 3:
                        context.axisLocked[1] = 1;
                        context.axisLocked[0] = 0;
                        context.alignToMotion = 1;
                        break;
                    case 1:
                        if ((flags & 2u) != 0) {
                            context.lockAxis(0, core::vector3d<float>{mesh.axisA[0], mesh.axisA[1], mesh.axisA[2]});
                        }
                        if ((flags & 4u) != 0) {
                            context.lockAxis(1, core::vector3d<float>{mesh.axisB[0], mesh.axisB[1], mesh.axisB[2]});
                        }
                        break;
                    default:
                        break;
                }
            }
            break;
        }
        case 7: {
            boost::intrusive_ptr<scene::IMesh> sphere = scene::createSphereMesh(0x60003u, driver, 1.0f, 15u, 15u);
            boost::intrusive_ptr<scene::CMeshBuffer> buffer;
            if (sphere) {
                buffer = sphere->getMeshBuffer(0);
            }
            node->initParticleSystem(driver, false);
            if (buffer) {
                node->setParticleMesh(buffer);
            }
            break;
        }
        default:
            break;
    }
    return node;
}

// 0x631274 _ZN6glitch7collada15CColladaFactory32createParticleSystemGravityForceERKNS0_16CColladaDatabaseEPNS0_6SForceE (operator new(0x158))
void* CColladaFactory::createParticleSystemGravityForce(const CColladaDatabase& db, SForce* force) {
    return new particle_system::CGravityForceSceneNode(db, *force);
}

// 0x631244 _ZN6glitch7collada15CColladaFactory29createParticleSystemWindForceERKNS0_16CColladaDatabaseEPNS0_6SForceE (operator new(0x164))
void* CColladaFactory::createParticleSystemWindForce(const CColladaDatabase& db, SForce* force) {
    return new particle_system::CWindForceSceneNode(db, *force);
}

// 0x631138 _ZN6glitch7collada15CColladaFactory34createParticleSystemDeflectorForceERKNS0_16CColladaDatabaseEPNS0_6SForceE (operator new(0x168))
void* CColladaFactory::createParticleSystemDeflectorForce(const CColladaDatabase& db, SForce* force) {
    return new particle_system::CDeflectorForceSceneNode(db, *force);
}

// 0x62ff80 _ZN6glitch7collada12_GLOBAL__N_132getExternalLightSceneNodeDefaultEPKc. This is the shared body of BOTH
// getExternalLightSceneNode overloads (0x630008 and 0x630010 are one-instruction tail calls to it; the two template
// instantiations emit the same code).
//
// From the listing: strchr(url, '#') and, when it is found, everything after it is used as the name, else the whole url.
// The node is then looked up in the device's scene manager - CResFileManager::Inst (0x9f701c) -> device (+0x20) ->
// scene manager (+0x1c) -> vtable slot +0x14 = scene::ISceneManager::getSceneNodeFromName(name, nullptr) (R1 = name,
// R2 = 0 = start, the tree's slot order matches the binary: decomp_vtable.py lists getSceneNodeFromId at +0x10, UID at
// +0x14 and Name at +0x18, and the tree's slot comments are shifted the same way). A null node gives null. Otherwise
// the node's type (vtable slot +0xBC) is accepted only when it equals 0x7468676C, i.e. the four little-endian bytes
// 'l','g','h','t' = 'lght' - the tree spells that as SCENE_NODE_TYPE_LIGHT and casts the enum through the same word.
static scene::CLightSceneNode* getExternalLightSceneNodeDefault(const char* url) {
    const char* hash = std::strchr(url, '#');
    const char* name = hash != nullptr ? hash + 1 : url;
    glitch::IDevice* device = CResFileManager::Inst != nullptr ? CResFileManager::Inst->device : nullptr;
    // The port has no scene::ISceneManager interface header, and glitch-core-io only forward-declares the type. The
    // concrete class is reachable from this category, and its getSceneNodeFromName sits at the same vtable index the
    // binary calls (+0x14), so it is called through CSceneManager directly.
    // A reinterpret_cast is used because glitch::scene::ISceneManager is only forward-declared here, so the
    // down-cast the original's vtable call implies cannot be written as a static_cast. It is sound for the object
    // the game stores at IDevice+0x1c: the binary reached the same slot (+0x14) on that object and it is the
    // CSceneManager the CIrrFactory creates.
    scene::CSceneManager* sceneManager =
        device != nullptr ? reinterpret_cast<scene::CSceneManager*>(device->sceneManager) : nullptr;
    if (sceneManager == nullptr) {
        return nullptr;
    }
    scene::ISceneNode* node = sceneManager->getSceneNodeFromName(name, nullptr);
    if (node == nullptr) {
        return nullptr;
    }
    const std::uint32_t type = static_cast<std::uint32_t>(node->getType());
    if (type != static_cast<std::uint32_t>(scene::ESNT_LIGHT)) {
        return nullptr;
    }
    return static_cast<scene::CLightSceneNode*>(node);
}

// 0x630010 _ZN6glitch7collada15CColladaFactory25getExternalLightSceneNodeERKNS0_16CColladaDatabaseERKN5boost13intrusive_ptrIKNS_5video9CMaterialEEEtjPKc
// 0x630008 (the renderer form). Both are 8-byte tail calls of getExternalLightSceneNodeDefault (0x62ff80) and neither
// reads any of its other arguments: the database, the material / renderer, the parameter id and the array index are
// dead in the original. That is why the body is one call.
scene::CLightSceneNode* CColladaFactory::getExternalLightSceneNode(const CColladaDatabase&,
                                                                   const boost::intrusive_ptr<video::CMaterial const>&, std::uint16_t,
                                                                   std::uint32_t, const char* url) {
    return getExternalLightSceneNodeDefault(url);
}
scene::CLightSceneNode* CColladaFactory::getExternalLightSceneNode(const CColladaDatabase&,
                                                                   const boost::intrusive_ptr<video::CMaterialRenderer const>&,
                                                                   std::uint16_t, std::uint32_t, const char* url) {
    return getExternalLightSceneNodeDefault(url);
}

}  // namespace glitch::collada
