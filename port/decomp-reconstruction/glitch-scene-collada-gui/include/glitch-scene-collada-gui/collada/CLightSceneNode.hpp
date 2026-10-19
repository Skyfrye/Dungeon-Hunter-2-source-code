// glitch::collada::CLightSceneNode: the light node a COLLADA file instances. Canonical header of the scene-owner wave. It replaces the
// CLightSceneNode accessor class of collada_scene_accessors.hpp (a union of two readings of the word at +0x160).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x6444ec (C1) / 0x6447ac (C2), destructors 0x644438 (D1) and the D0
// 0x6444b0 (skipped); tools/decomp_vtable.py glitch::collada::CLightSceneNode, 300 bytes, virtual base IReferenceCounted at +0x164):
//   Derives from scene::CLightSceneNode (scene/CLightSceneNode.hpp, which ends at +0x154) and adds
//     +0x154 uid (the empty-string constant, never written again)
//     +0x158 CColladaDatabase (record, factory)
//     +0x160 SLight* the file record
//   The constructor builds the base as scene::CLightSceneNode(false), copies the database, takes the record, scales the colour bytes by
//   intensity / 255 and fills the CLight: the specular colour always, then by kind: 0 ambient (type 3: the colour is the ambient colour,
//   diffuse and specular are zero), 1 point (type 0: diffuse = colour, attenuation = record parameters 0..2), 2 spot (type 1: as the point
//   light plus the cone angle and falloff from parameters 3 and 4), 3 directional (type 2: diffuse = colour); doLightRecalc follows.
//   Overrides getUID (K 0x54, 0x64440c: the record's name) and the destructor; getLightID (0x644404) returns the record.
#pragma once

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/scene/CLightSceneNode.hpp"

namespace glitch::collada {

class CLightSceneNode : public scene::CLightSceneNode {
public:
    // 0x6444ec (C1) and 0x6447ac (C2).
    CLightSceneNode(const CColladaDatabase& database, SLight& light);
    // 0x644438 (D1); D0 0x6444b0 is skipped. Drops the database handle.
    ~CLightSceneNode() override;

    // K 0x54, 0x64440c: the record's name.
    const char* getUID() const override;
    // 0x644404: the record word (the original's address of the record, used as an identifier). The port returns the low 32 bits of the
    // record's address.
    std::uint32_t getLightID() const;

    const char* uid = "";                      // +0x154
    CColladaDatabase database;                 // +0x158
    SLight* record = nullptr;                  // +0x160
};

}  // namespace glitch::collada
