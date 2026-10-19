// Track B redo batch r3a-glitch-scene-collada-gui-glitch_collada_CColladaDatabase-056212-1 (part 2 of 4).
// Owner: glitch::collada::CColladaDatabase. The name overloads of the scene-object builders (reconstructed), and the instance-record
// overloads (partial: the instance layout and the material helpers they call are not declared in the canonical headers).
// The C2 constructor 0x619344 has the same body as 0x6192f0 (r3a batch -056212-0) and is not repeated here.
// Not in this file (see the ledger): the destructors 0x619474 / 0x619784 (no destructor is declared: the canonical class is released
// by dropDatabase, and a declared destructor would release twice), the constructAnimator loaders 0x619510 / 0x6195c8 / 0x61967c
// (static in the original, DefaultFactory not declared), getMaterial(file, name) 0x61ac88 (needs DefaultFactory), and the
// constructController / constructGeometry / constructNode instance overloads, which are completed in the e2 batch file.

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CCoronasSceneNode.hpp"
#include "glitch-scene-collada-gui/collada_factory.hpp"

namespace glitch::collada {

// 0x61a5d4 glitch::collada::CColladaDatabase::constructGNPSEmitter(char const*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
CGlitchNewParticleSystemSceneNode* CColladaDatabase::constructGNPSEmitter(const char* name, video::IVideoDriver* driver,
                                                                          res::vector<res::String>* materials,
                                                                          CRootSceneNode* root) const {
    return constructGNPSEmitter(getGNPSEmitter(tables(), name), driver, materials, root);
}

// 0x61a750 glitch::collada::CColladaDatabase::constructCoronas(char const*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
CCoronasSceneNode* CColladaDatabase::constructCoronas(const char* name, video::IVideoDriver* driver,
                                                      CRootSceneNode* root) const {
    return constructCoronas(getCoronas(tables(), name), driver, root);
}

// 0x61a854 glitch::collada::CColladaDatabase::constructEmitter(char const*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
CParticleSystemSceneNode* CColladaDatabase::constructEmitter(const char* name, video::IVideoDriver* driver,
                                                             res::vector<res::String>* materials,
                                                             CRootSceneNode* root) const {
    return constructEmitter(getEmitter(tables(), name), driver, materials, root);
}

// 0x61a77c glitch::collada::CColladaDatabase::constructCoronas(glitch::collada::SInstanceCoronas*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
// The node is built by name from the instance's url (without its '#'); each binding's material (by index) is then given to the node.
CCoronasSceneNode* CColladaDatabase::constructCoronas(SInstanceCoronas* instance, video::IVideoDriver* driver,
                                                      CRootSceneNode* root) const {
    CCoronasSceneNode* node = constructCoronas(instance->url + 1, driver, root);
    if (node != nullptr) {
        for (std::int32_t i = 0; i < instance->bindingCount; ++i) {
            node->setMaterial(*materialAt(tables(), instance->bindings[i].materialIndex), driver);
        }
    }
    return node;
}

}  // namespace glitch::collada
