// Track B batch e1-glitch-scene-collada-gui-glitch_collada_CColladaDatabase-0 (part 1 of 2).
// Index getters are base + index * stride in the original. Here each table is a vector of entry
// pointers, so an index getter is a vector lookup (no stride arithmetic).
// The five getters for camera, light, effect, geometry and force already exist as free helpers in
// collada_database_create.cpp (cameraAt, lightAt, effectAt, geometryAt, forceAt); they are not repeated here.
#include "glitch-scene-collada-gui/collada_database.hpp"

namespace glitch::collada {

// 0x60e2a8 glitch::collada::CColladaDatabase::getVersion() const
// Original: *(tables + 0x00). The holder's first word is the file version.
std::uint32_t CColladaDatabase::getVersion() const {
    return tables().version;
}

// 0x60e334 glitch::collada::CColladaDatabase::getAnimationClipLibrary() const
// The address of the inline clip library object at holder +0x34 (count and clip base). Exact: the original reads
// record -> data (+0x24) -> tables (+0x20) -> +0x34 without a test.
const SLibraryAnimationClips* CColladaDatabase::getAnimationClipLibrary() const {
    return &record->data->tables->animationClipLibrary;
}

// Index getters of the original (0x60e35c .. 0x60e4a0). Each one is base + index * stride with no check.
// The vector model makes the same lookup without stride arithmetic.
// 0x60e35c glitch::collada::CColladaDatabase::getAnimation(int) const
SAnimation* animationAt(const SDatabaseTables& tables, int index) {
    return tables.animations[index];
}

// 0x60e374 glitch::collada::CColladaDatabase::getAnimationClip(int) const
SAnimationClip* animationClipAt(const SDatabaseTables& tables, int index) {
    return &tables.animationClipLibrary.clips[index];
}

// 0x60e3c8 glitch::collada::CColladaDatabase::getImage(int) const
SImage* imageAt(const SDatabaseTables& tables, int index) {
    return tables.images[index];
}

// 0x60e400 glitch::collada::CColladaDatabase::getMaterial(int) const
SMaterial* materialAt(const SDatabaseTables& tables, int index) {
    return tables.materials[index];
}

// 0x60e434 glitch::collada::CColladaDatabase::getController(int) const
SController* controllerAt(const SDatabaseTables& tables, int index) {
    return tables.controllers[index];
}

// 0x60e468 glitch::collada::CColladaDatabase::getEmitter(int) const
SEmitter* emitterAt(const SDatabaseTables& tables, int index) {
    return tables.emitters[index];
}

// 0x60e484 glitch::collada::CColladaDatabase::getGNPSEmitter(int) const
SGNPSEmitter* gnpsEmitterAt(const SDatabaseTables& tables, int index) {
    return tables.gnpsEmitters[index];
}

// 0x60e4a0 glitch::collada::CColladaDatabase::getCoronas(int) const
SCoronas* coronasAt(const SDatabaseTables& tables, int index) {
    return tables.coronas[index];
}

// 0x60e54c glitch::collada::CColladaDatabase::getVisualScene(int) const
// The original returns null when the visual scene count (holder +0x98) is not positive, and otherwise
// base + index * 0x10. The vector is empty exactly when the count is not positive.
SVisualScene* visualSceneAt(const SDatabaseTables& tables, int index) {
    if (tables.visualScenes.empty()) {
        return nullptr;
    }
    return tables.visualScenes[index];
}

}  // namespace glitch::collada
