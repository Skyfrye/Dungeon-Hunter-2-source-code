// glitch::scene::IShadowVolumeSceneNode: the shadow volume node interface and the shadow material the volumes share. Canonical
// header of the scene owner pass (R3b); CShadowVolumeSceneNode derives from it (scene/CShadowVolumeSceneNode.hpp).
//
// Layout (original 32-bit offsets; constructors 0x599d50 C1 (complete object) and 0x599e24 C2 (base object)):
//   +0x000 ISceneNode (0x130 bytes)
//   +0x130 byte, cleared by the constructor (not read anywhere in the queue)
//   +0x134 glitch::IReferenceCounted virtual base
// The vtable (tools/decomp_vtable.py glitch::scene::IShadowVolumeSceneNode, 316 bytes) is ISceneNode's with two pure slots left
// open: render (+0x1c) and getBoundingBox (+0x30). The class adds no virtual of its own.
//
// Statics (the data symbols IShadowVolumeSceneNode::Material, MaterialCount and Technique*): setupMaterials loads the shadow
// effect "ShadowVolume" from "ShadowVolume.bdae" once and counts its users; unSetupMaterials drops the material with the last
// user. The technique ids are looked up by name in the effect. renderLists (0x590660) draws the full-screen shadow quad with
// Material and TechniqueDraw.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::video {
class CMaterial;
class IVideoDriver;
}  // namespace glitch::video

namespace glitch::scene {

class IShadowVolumeSceneNode : public ISceneNode {
public:
    // 0x599e24 (C2) and 0x599d50 (C1): ISceneNode(id, position 0, rotation (0,0,0,1), scale 1), then the byte at +0x130 cleared.
    explicit IShadowVolumeSceneNode(int id);
    // 0x599d10 (D2, base object), 0x599ca8 (D1) and 0x599cf4 (D0, skipped): the ISceneNode destructor only.
    ~IShadowVolumeSceneNode() override;

    // 0x599a80: loads the shadow material once (a user count of its own), points every pass of every technique at the driver's
    // stencil bit count when that is between 1 and 7, and looks up the five technique ids. Static in the original.
    static void setupMaterials(video::IVideoDriver* driver);
    // 0x599a24: drops a user; the material goes with the last one.
    static void unSetupMaterials();

    static boost::intrusive_ptr<video::CMaterial> Material;
    static std::int32_t MaterialCount;
    static std::uint8_t TechniqueZPass;           // "DepthPassFirstPass"
    static std::uint8_t TechniqueZPassSecond;     // "DepthPassSecondPass" (byte_99B5E5)
    static std::uint8_t TechniqueZFail;           // "DepthFailFirstPass"
    static std::uint8_t TechniqueZFailSecond;     // "DepthFailSecondPass" (byte_99B5E9)
    static std::uint8_t TechniqueDraw;            // "DrawShadowZone"

    bool unk_130 = false;  // +0x130
};

}  // namespace glitch::scene
