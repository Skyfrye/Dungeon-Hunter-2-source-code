// ColladaFactory: the game's COLLADA scene builder. It derives from the engine's glitch::collada::CColladaFactory and
// overrides the slots that build Dungeon Hunter 2 nodes. The remaining base slots are inherited unchanged. The class
// has no members: the original object is only the vtable pointer (4 bytes).
// Reconstructed from libDungeonHunter2.so pseudocode (dtors 0x3506ac / 0x350a10, vtable off_95cc98). The base layout
// and slot order come from glitch-scene-collada-gui/collada_factory.hpp.
#pragma once

#include "glitch-scene-collada-gui/collada_factory.hpp"

class ColladaFactory : public glitch::collada::CColladaFactory {
public:
    // The shared instance the game passes to CColladaDatabase (ELF 0x9a1ed8, 8 bytes in the original).
    static ColladaFactory s_factory;

    // No constructor symbol: the default constructor only stores the vtable pointer.
    ~ColladaFactory() override;                                         // slot 0/1: 0x3506ac (D1), 0x350a10 (D0)

    // Overrides of glitch::collada::CColladaFactory slots, in vtable order. Offsets are the engine's vtable offsets.
    void* createAnimator(const glitch::collada::CColladaDatabase& db,
                         glitch::collada::SLibraryAnimationClips* clips) override;                  // +0x08: 0x35070c, new Animator (156 bytes)
    glitch::video::CMaterial* createMaterial(const glitch::collada::CColladaDatabase& db,
                                             glitch::video::IVideoDriver* driver,
                                             glitch::collada::SMaterial* material,
                                             glitch::collada::CRootSceneNode* root) override;          // +0x20: 0x3506e0 forwards to the base
    glitch::collada::IMesh* createGeometry(const glitch::collada::CColladaDatabase& db,
                                           glitch::video::IVideoDriver* driver,
                                           glitch::collada::SGeometry* geometry) override;             // +0x34: 0x350794 forwards to the base
    glitch::collada::CMorphingMesh* createMorph(const glitch::collada::CColladaDatabase& db,
                                                glitch::video::IVideoDriver* driver,
                                                glitch::collada::SController* controller,
                                                glitch::collada::CRootSceneNode* root) override;       // +0x38: 0x350768 forwards to the base
    void* createBillboard(const glitch::collada::CColladaDatabase& db,
                          glitch::collada::SNode* node) override;                                     // +0x40: 0x3507bc, new 352 bytes
    void* createMeshNode(const glitch::collada::CColladaDatabase& db,
                         const boost::intrusive_ptr<glitch::collada::IMesh>& mesh,
                         void* instance) override;                                                    // +0x48: 0x3508a4, new MeshSceneNode (324 bytes)
    void* createSkinNode(const glitch::collada::CColladaDatabase& db,
                         const boost::intrusive_ptr<glitch::collada::IMesh>& mesh,
                         void* instance) override;                                                    // +0x4c: 0x35087c, new SkinnedMeshSceneNode (396 bytes)
    void* createModularSkinNode(const glitch::collada::CColladaDatabase& db,
                                const boost::intrusive_ptr<glitch::collada::IMesh>& mesh,
                                void* instance) override;                                             // +0x50: 0x350854, new ModularSkinnedMeshSceneNode (396 bytes)
    void* createScene(const glitch::collada::CColladaDatabase& db) override;                          // +0x54: 0x3508cc, new RootSceneNode (532 bytes)
    glitch::collada::CSkinnedMesh* createSkin(const glitch::collada::CColladaDatabase& db,
                                              glitch::video::IVideoDriver* driver,
                                              glitch::collada::SController* controller,
                                              glitch::collada::CRootSceneNode* root) override;        // +0x58: 0x35073c forwards to the base
    glitch::collada::CParticleSystemSceneNode* createParticleSystem(
        const glitch::collada::CColladaDatabase& db, glitch::video::IVideoDriver* driver,
        glitch::collada::SEmitter* emitter, glitch::res::vector<glitch::res::String>* materials,
        glitch::collada::CRootSceneNode* root) override;                                              // +0x68: 0x3507b8 thunk to the base
};
