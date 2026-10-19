#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

#include <cstring>

namespace glitch::collada {

namespace {

// Linear search by name, first match wins. Every original getX(name) loop has
// this shape: strcmp on the entry name, return the entry or null.
template <typename Entry>
Entry* findByName(const std::vector<Entry*>& table, const char* name, const char* Entry::*nameField) {
    for (Entry* entry : table) {
        if (std::strcmp(entry->*nameField, name) == 0) {
            return entry;
        }
    }
    return nullptr;
}

}  // namespace

// 0x61be98 _ZNK6glitch7collada16CColladaDatabase16getAnimationClipEPKc
SAnimationClip* getAnimationClip(const SDatabaseTables& tables, const char* name) {
    const SLibraryAnimationClips& library = tables.animationClipLibrary;
    for (std::int32_t i = 0; i < library.count; ++i) {
        if (std::strcmp(library.clips[i].name, name) == 0) {
            return &library.clips[i];
        }
    }
    return nullptr;
}

// 0x61bef8 _ZNK6glitch7collada16CColladaDatabase12getAnimationEPKc
SAnimation* getAnimation(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.animations, name, &SAnimation::name);
}

// 0x61a574 _ZNK6glitch7collada16CColladaDatabase14getGNPSEmitterEPKc
SGNPSEmitter* getGNPSEmitter(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.gnpsEmitters, name, &SGNPSEmitter::name);
}

// 0x61a6f0 _ZNK6glitch7collada16CColladaDatabase10getCoronasEPKc
SCoronas* getCoronas(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.coronas, name, &SCoronas::name);
}

// 0x61a7f4 _ZNK6glitch7collada16CColladaDatabase10getEmitterEPKc
SEmitter* getEmitter(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.emitters, name, &SEmitter::name);
}

// 0x61a690 _ZNK6glitch7collada16CColladaDatabase14getVisualSceneEPKc
SVisualScene* getVisualScene(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.visualScenes, name, &SVisualScene::name);
}

// 0x61a910 _ZNK6glitch7collada16CColladaDatabase8getForceEPKc
SForce* getForce(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.forces, name, &SForce::name);
}

// 0x61a9a0 _ZNK6glitch7collada16CColladaDatabase13getControllerEPKc
// The original reads the name at entry+0x04 for controllers.
SController* getController(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.controllers, name, &SController::name);
}

// 0x61aa48 _ZNK6glitch7collada16CColladaDatabase11getGeometryEPKc
SGeometry* getGeometry(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.geometries, name, &SGeometry::name);
}

// 0x61ac28 _ZNK6glitch7collada16CColladaDatabase11getMaterialEPKc
SMaterial* getMaterial(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.materials, name, &SMaterial::name);
}

// 0x61b0ac _ZNK6glitch7collada16CColladaDatabase9getEffectEPKc
SEffect* getEffect(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.effects, name, &SEffect::name);
}

// 0x61b154 _ZNK6glitch7collada16CColladaDatabase8getImageEPKc
SImage* getImage(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.images, name, &SImage::name);
}

// 0x61b1ec _ZNK6glitch7collada16CColladaDatabase8getLightEPKc
SLight* getLight(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.lights, name, &SLight::name);
}

// 0x61b270 _ZNK6glitch7collada16CColladaDatabase9getCameraEPKc
SCamera* getCamera(const SDatabaseTables& tables, const char* name) {
    return findByName(tables.cameras, name, &SCamera::name);
}

// 0x61bf58 _ZNK6glitch7collada16CColladaDatabase4findEPKcRj
const void* find(const SDatabaseTables& tables, const char* name, unsigned& mask) {
    const unsigned enabled = mask;
    struct Probe {
        unsigned bit;
        const void* (*lookup)(const SDatabaseTables&, const char*);
    };
    // Same order as the original: animation, clip, image, effect, material,
    // geometry, controller, visual scene.
    const Probe probes[] = {
        {kFindAnimation, [](const SDatabaseTables& t, const char* n) -> const void* { return getAnimation(t, n); }},
        {kFindAnimationClip, [](const SDatabaseTables& t, const char* n) -> const void* { return getAnimationClip(t, n); }},
        {kFindImage, [](const SDatabaseTables& t, const char* n) -> const void* { return getImage(t, n); }},
        {kFindEffect, [](const SDatabaseTables& t, const char* n) -> const void* { return getEffect(t, n); }},
        {kFindMaterial, [](const SDatabaseTables& t, const char* n) -> const void* { return getMaterial(t, n); }},
        {kFindGeometry, [](const SDatabaseTables& t, const char* n) -> const void* { return getGeometry(t, n); }},
        {kFindController, [](const SDatabaseTables& t, const char* n) -> const void* { return getController(t, n); }},
        {kFindVisualScene, [](const SDatabaseTables& t, const char* n) -> const void* { return getVisualScene(t, n); }},
    };
    for (const Probe& probe : probes) {
        if ((enabled & probe.bit) == 0) {
            continue;
        }
        if (const void* found = probe.lookup(tables, name)) {
            mask = probe.bit;
            return found;
        }
    }
    return nullptr;
}

// 0x60e2bc _ZNK6glitch7collada16CColladaDatabase19getAnimationSegmentEi
const SAnimationSegment* getAnimationSegment(const SDatabaseTables& tables, int frame) {
    // The original count is signed; a negative count returns the base entry.
    // An unsigned vector size cannot be negative, so only the empty case is kept.
    if (tables.segments.empty()) {
        return nullptr;
    }
    for (const SAnimationSegment& segment : tables.segments) {
        if (segment.begin <= frame && frame < segment.end) {
            return &segment;
        }
    }
    return &tables.segments.back();
}

// 0x60e28c _ZNK6glitch7collada16CColladaDatabase20linkInstanceMaterialEPNS0_17SInstanceMaterialE
void linkInstanceMaterial(SDatabaseTables& tables, SInstanceMaterial* instance) {
    instance->linkNext = tables.instanceMaterials;
    tables.instanceMaterials = instance;
}

}  // namespace glitch::collada
