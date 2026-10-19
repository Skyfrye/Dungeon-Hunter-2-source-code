// Track B redo batch r3a-glitch-scene-collada-gui-glitch_collada_CColladaDatabase-056212-0 (part 1 of 4).
// Owner: glitch::collada::CColladaDatabase. The constructors and the record/index overloads of the scene-object builders.
// Index overloads resolve the entry through the table getters (the free helpers emitterAt, gnpsEmitterAt, imageAt), the
// record overloads call the factory slot named in collada_factory.hpp.
// Partial bodies in this file: constructSkin (factory slot +0x58 returns through a hidden out slot, and the root's
// attachSkin takes no arguments in root_scene_node.hpp), constructImage(SImage*) (CImage is not an IReferenceCounted).

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada_factory.hpp"

namespace glitch::collada {

// 0x60e75c glitch::collada::CColladaDatabase::constructCoronas(glitch::collada::SCoronas*, glitch::video::IVideoDriver*, glitch::collada::CRootSceneNode*) const
CCoronasSceneNode* CColladaDatabase::constructCoronas(SCoronas* coronas, video::IVideoDriver* driver,
                                                      CRootSceneNode* root) const {
    if (coronas == nullptr) {
        return nullptr;
    }
    return factory->createCoronas(*this, driver, coronas, root);  // +0x60
}

// 0x60e79c glitch::collada::CColladaDatabase::constructEmitter(glitch::collada::SEmitter*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
CParticleSystemSceneNode* CColladaDatabase::constructEmitter(SEmitter* emitter, video::IVideoDriver* driver,
                                                             res::vector<res::String>* materials,
                                                             CRootSceneNode* root) const {
    if (emitter == nullptr) {
        return nullptr;
    }
    return factory->createParticleSystem(*this, driver, emitter, materials, root);  // +0x68
}

// 0x60e7e0 glitch::collada::CColladaDatabase::constructEmitter(int, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
CParticleSystemSceneNode* CColladaDatabase::constructEmitter(int index, video::IVideoDriver* driver,
                                                             res::vector<res::String>* materials,
                                                             CRootSceneNode* root) const {
    return constructEmitter(emitterAt(tables(), index), driver, materials, root);
}

// 0x60e814 glitch::collada::CColladaDatabase::constructGNPSEmitter(glitch::collada::SGNPSEmitter*, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
CGlitchNewParticleSystemSceneNode* CColladaDatabase::constructGNPSEmitter(SGNPSEmitter* emitter, video::IVideoDriver* driver,
                                                                          res::vector<res::String>* materials,
                                                                          CRootSceneNode* root) const {
    if (emitter == nullptr) {
        return nullptr;
    }
    return factory->createGlitchNewParticleSystem(*this, driver, emitter, materials, root);  // +0x64
}

// 0x60e858 glitch::collada::CColladaDatabase::constructGNPSEmitter(int, glitch::video::IVideoDriver*, glitch::res::vector<glitch::res::String>*, glitch::collada::CRootSceneNode*) const
CGlitchNewParticleSystemSceneNode* CColladaDatabase::constructGNPSEmitter(int index, video::IVideoDriver* driver,
                                                                          res::vector<res::String>* materials,
                                                                          CRootSceneNode* root) const {
    return constructGNPSEmitter(gnpsEmitterAt(tables(), index), driver, materials, root);
}

// 0x60f25c glitch::collada::CColladaDatabase::CColladaDatabase(char const*, glitch::collada::CColladaFactory*)
// 0x60f2b0 (C2, the same body)
CColladaDatabase::CColladaDatabase(const char* fileName, CColladaFactory* fac) {
    CResFile* loaded = CResFileManager::Inst->load(fileName, false, nullptr);
    factory = fac;
    record = loaded;
    if (loaded != nullptr) {
        ++loaded->refCount;
    }
}

// 0x60f304 glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, bool, glitch::collada::CColladaFactory*)
// 0x60f364 (C2, the same body)
CColladaDatabase::CColladaDatabase(glitch::io::IReadFile* file, bool flag, CColladaFactory* fac) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, flag);
    factory = fac;
    record = loaded;
    if (loaded != nullptr) {
        ++loaded->refCount;
    }
}

// 0x60f3c4 glitch::collada::CColladaDatabase::CColladaDatabase(glitch::io::IReadFile*, glitch::collada::CColladaFactory*)
// 0x60f42c (C2, the same body)
CColladaDatabase::CColladaDatabase(glitch::io::IReadFile* file, CColladaFactory* fac) {
    CResFile* loaded = CResFileManager::Inst->load(file, false, nullptr, false);
    factory = fac;
    record = loaded;
    if (loaded != nullptr) {
        ++loaded->refCount;
    }
}

// 0x6192f0 glitch::collada::CColladaDatabase::CColladaDatabase(glitch::collada::CColladaDatabase const*, char const*, glitch::collada::CColladaFactory*)
// 0x619344 (C2, the same body)
CColladaDatabase::CColladaDatabase(const CColladaDatabase* source, const char* name, CColladaFactory* fac) {
    CResFile* loaded = CResFileManager::Inst->get(source->record, name, true);
    factory = fac;
    record = loaded;
    if (loaded != nullptr) {
        ++loaded->refCount;
    }
}

}  // namespace glitch::collada
