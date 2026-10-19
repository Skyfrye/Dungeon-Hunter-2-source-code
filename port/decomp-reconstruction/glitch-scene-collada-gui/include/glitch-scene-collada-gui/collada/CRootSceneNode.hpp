// glitch::collada::CRootSceneNode: the root of an instantiated COLLADA scene. It owns the lists of the scene's lights, cameras, particle
// systems, morphing meshes and images, the materials built for the file, the animated-texture (IFL) tables and the parameter URLs that are
// still to be resolved. The game's RootSceneNode derives from it. Canonical header of the scene-owner wave. It replaces root_scene_node.hpp
// (the intrusive list stand-in with five of the members) and the recon_21 / recon_32 stand-ins.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x65b734 (C1) / 0x65b844 (C2), destructors 0x65c074 (D1) / 0x65c260
// (D2), D0 0x65c244 skipped; tools/decomp_vtable.py glitch::collada::CRootSceneNode, 304 bytes, virtual base IReferenceCounted at +0x1bc;
// the game's RootSceneNode continues at +0x1bc):
//   Derives from collada::CSceneNode (to +0x158) and adds, in order (every list is an STLport std::list: an embedded sentinel {next, prev}
//   whose nodes are {next, prev, value}, the value starting at +0x08)
//     +0x158 particle systems (IParticleSystemSceneNode*)       +0x160 skinned meshes waiting for attachSkin (CSkinnedMesh*)
//     +0x168 morphing meshes (CMorphingMesh*)                   +0x170 cameras (CCameraSceneNode*)
//     +0x178 materials (SMaterialInfo: the record, the material built for it)     +0x180 images (boost::intrusive_ptr<CImage>)
//     +0x188 lights (CLightSceneNode*)
//     +0x190 std::map<SAnimation*, std::vector<CMaterialParameterInfo>> (header +0x190 .. +0x19f, count +0x1a0, empty comparator +0x1a4)
//     +0x1a8 byte: set by onPostLoad (the skin list has been attached)
//     +0x1ac word: the animation mode, 1 after construction (1 animate always, 0 animate when not culled, other: never)
//     +0x1b0 the time passed to the last onAnimate
//     +0x1b4 the URL list (SURLToResolve: kind, URL, the material or renderer, the parameter id, the array index)
//   The vtable overrides serializeAttributes / deserializeAttributes (K 0x00 / 0x04), the destructors, onRegisterSceneNode (K 0x10), onAnimate
//   (K 0x14), getUID (K 0x54), getMaterial (K 0x84), getMaterialCount (K 0x88) and getType (K 0xbc, 'daer').
// Port notes: the lists are scene::SNodeList (the same node shape), the map is std::map.
#pragma once

#include <map>
#include <vector>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/ResString.hpp"

namespace glitch::collada {

class CCameraSceneNode;
class CImage;
class CLightSceneNode;
class CMorphingMesh;
class CSkinnedMesh;
class IParticleSystemSceneNode;

class CRootSceneNode : public CSceneNode {
public:
    // One entry of the IFL (animated texture) tables: a material and the parameter that takes the animation's current texture
    // (8 bytes in the original).
    struct CMaterialParameterInfo {
        boost::intrusive_ptr<video::CMaterial> material;  // +0x00
        std::uint16_t parameterId = 0;                    // +0x04
    };

    // A built material and the record it was built from (the list value, +0x08 of a list node).
    struct SMaterialInfo {
        SMaterial* material = nullptr;                    // +0x00
        boost::intrusive_ptr<video::CMaterial> instance;  // +0x04
    };

    // A light parameter that names its light by URL and is resolved by resolveURLs (the list value, 0x14 bytes).
    struct SURLToResolve {
        bool forRenderer = false;                         // +0x00 (a word): set when the target is a material renderer
        const char* url = nullptr;                        // +0x04 (a res::String)
        union {
            video::CMaterialRenderer* renderer;           // +0x08
            video::CMaterial* material;
        } target = {nullptr};
        std::uint16_t parameterId = 0;                    // +0x0c
        std::uint32_t arrayIndex = 0;                     // +0x10
    };

    // 0x65b734 (C1) and 0x65b844 (C2): CSceneNode(database, null), the lists and the map empty, the animation mode 1, automatic culling 0.
    explicit CRootSceneNode(const CColladaDatabase& database);
    // 0x65c074 (D1), 0x65c260 (D2), D0 0x65c244 skipped: removes every child, then empties the lists, the map and the URL list.
    ~CRootSceneNode() override;

    // K 0x00 / 0x04, 0x65aecc and 0x65af0c: ISceneNode's attributes, then the "Source" string (the database's file name). The reader is
    // a thunk to ISceneNode's.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0x10, 0x65b484: in animation mode 0, animates the tree (ISceneNode::onAnimate with the last time) when the node is not culled by
    // its box (or automatic culling is on). Returns 1.
    int onRegisterSceneNode() override;
    // K 0x14, 0x65af10: mode 1: ISceneNode::onAnimate; otherwise updateAbsolutePosition(false). The time is remembered.
    void onAnimate(std::uint32_t timeMs) override;
    // K 0x54, 0x65adc4: the database's file name.
    const char* getUID() const override;
    // K 0x84 / 0x88, 0x65add8 and 0x65ae38: the nth material of the list and its count.
    boost::intrusive_ptr<video::CMaterial> getMaterial(std::uint32_t index) const override;
    std::uint32_t getMaterialCount() const override;
    // K 0xbc, 0x65ae64: 'daer'.
    scene::E_SCENE_NODE_TYPE getType() const override;

    // 0x65add4: empty.
    void removeMaterial(const boost::intrusive_ptr<video::CMaterial>& material);
    // 0x65b210, 0x65b244, 0x65b278, 0x65b2ac: append to the lists.
    void addParticleSystem(IParticleSystemSceneNode* particleSystem);
    void addLight(CLightSceneNode* light);
    void addMorphingMesh(CMorphingMesh* morphingMesh);
    void addCamera(CCameraSceneNode* camera);
    // 0x65b000: removes the entry of the morphing mesh from the list (nothing when it is not in it).
    void removeMorphingMesh(CMorphingMesh* morphingMesh);
    // 0x65b08c and 0x65b0fc: queue a light parameter to resolve later (the renderer or the material form). The first returns true, the second
    // false.
    bool addURLToResolve(const boost::intrusive_ptr<video::CMaterialRenderer>& renderer, std::uint16_t parameterId, std::uint32_t arrayIndex,
                         const res::String& url);
    bool addURLToResolve(const boost::intrusive_ptr<video::CMaterial>& material, std::uint16_t parameterId, std::uint32_t arrayIndex,
                         const res::String& url);
    // 0x65c874: resolves every queued parameter (the light named by a "#uid" URL, or the database's external light) and empties the list.
    // PARTIAL: see the source.
    void resolveURLs();
    // 0x65c5b0 and 0x65c4f8: the IFL tables. addIFLAnimation records that `material` takes the texture of the animation at `parameterId`;
    // setIFLAnimationValue sets that parameter on every recorded material. PARTIAL: needs CMaterial's parameter writer.
    void addIFLAnimation(SAnimation* animation, boost::intrusive_ptr<video::CMaterial> material, std::uint16_t parameterId);
    void setIFLAnimationValue(SAnimation* animation, boost::intrusive_ptr<video::ITexture> texture);
    // 0x65c760 and 0x65c808: build a material of the file (from a record, or by name) and keep it in the list. null when the name is not a
    // material.
    boost::intrusive_ptr<video::CMaterial> addMaterial(SMaterial* material, video::IVideoDriver* driver);
    boost::intrusive_ptr<video::CMaterial> addMaterial(const char* name, video::IVideoDriver* driver);
    // 0x65b538: the material of the list built for the record named `name`, null when there is none.
    boost::intrusive_ptr<video::CMaterial> hasMaterial(const char* name) const;
    // 0x65ca30 and 0x65cafc: the material of that name or record from the list; when it is not there and a driver is given it is built.
    boost::intrusive_ptr<video::CMaterial> getMaterial(const char* name, video::IVideoDriver* driver);
    boost::intrusive_ptr<video::CMaterial> getMaterial(SMaterial* material, video::IVideoDriver* driver);
    // 0x65b4e4, 0x65b5b0, 0x65b5f4: lookups by name in the lists (particle systems ignoring case).
    IParticleSystemSceneNode* getParticleSystem(const char* name);
    CMorphingMesh* getMorphingMesh(const char* name);
    CLightSceneNode* getLight(const char* name);
    // 0x65b648: the image of that name from the list; built from the database (and kept) when it is not there.
    boost::intrusive_ptr<CImage> getImage(const char* name);
    // 0x65b434: attaches the skinned mesh to the tree now when the root has been loaded, else queues it. 0x65b380 attaches the queued ones.
    void attachSkin(CSkinnedMesh* skin);
    void attachSkin();
    // 0x65b350 and 0x65ae70: attach the cameras and the particle systems to the tree.
    void attachCameras();
    void attachParticleSystems();
    // 0x65b3dc: after the file is loaded: attaches the skins, cameras and particle systems, updates the absolute positions of the tree,
    // computes the box and marks the box dirty.
    void onPostLoad();

    scene::SNodeList<IParticleSystemSceneNode*> particleSystems;                          // +0x158
    scene::SNodeList<CSkinnedMesh*> pendingSkins;                                         // +0x160
    scene::SNodeList<CMorphingMesh*> morphingMeshes;                                      // +0x168
    scene::SNodeList<CCameraSceneNode*> cameras;                                          // +0x170
    scene::SNodeList<SMaterialInfo> materials;                                            // +0x178
    scene::SNodeList<boost::intrusive_ptr<CImage>> images;                                // +0x180
    scene::SNodeList<CLightSceneNode*> lights;                                            // +0x188
    std::map<SAnimation*, std::vector<CMaterialParameterInfo>> iflAnimations;             // +0x190
    bool skinsAttached = false;                                                           // +0x1a8
    std::int32_t animationMode = 1;                                                       // +0x1ac
    std::uint32_t lastTime = 0;                                                           // +0x1b0
    scene::SNodeList<SURLToResolve> urlsToResolve;                                        // +0x1b4
};

}  // namespace glitch::collada
