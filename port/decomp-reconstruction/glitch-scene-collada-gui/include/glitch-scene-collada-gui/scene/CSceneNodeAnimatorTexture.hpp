// glitch::scene::CSceneNodeAnimatorTexture: flips the texture of its node's first material through a list of textures.
// Canonical header of the scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp, the recon_33
// serialization free functions and the recon slice 27 comment block.
//
// Layout (original 32-bit offsets; constructors 0x6cdcd8 C1 / 0x6ce084 C2, createClone 0x6cde54 allocates 0x30 bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c textures: core::svector<boost::intrusive_ptr<video::ITexture>> (begin, end, capacity words at +0x0c, +0x10, +0x14)
//   +0x18 timePerFrame (milliseconds)    +0x1c startTime    +0x20 endTime (startTime + timePerFrame * texture count)
//   +0x24 loop (byte)
//   +0x28 glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x2c (the constructor stores 1)
// The vtable overrides serialize (+0x00), deserialize (+0x04), updateTime (+0x14, empty), animateNode (+0x10), createClone
// (+0x18) and getType (+0x24, 4). Attribute names of the textures are one-character strings holding the character codes
// 1, 2, 3, ... (push_back of the counter), not decimal digits.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector / stringc (STLPORT-DECISION.md section 6)

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::video {
class ITexture;
}

namespace glitch::scene {

class CSceneNodeAnimatorTexture : public ISceneNodeAnimator {
public:
    // 0x6cdcd8 (C1) and 0x6ce084 (C2): copies the textures and computes endTime.
    CSceneNodeAnimatorTexture(const core::svector<boost::intrusive_ptr<video::ITexture>>& textures, int timePerFrame, bool loop,
                              std::uint32_t startTime);
    // 0x6cdb20 (D1), 0x6cdba4 (D2), 0x6cdb88 (D0): clearTextures(), the vector, then the base destructor.
    ~CSceneNodeAnimatorTexture() override;

    // vptr+0x00, 0x6cdee4: TimePerFrame, Loop, then one texture attribute per texture (one extra empty one when the
    // options carry flag 2).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x04, 0x6ce1f8: reads TimePerFrame and Loop, clears the textures and appends every numbered texture attribute
    // that holds a texture.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // vptr+0x14, 0x6cda34: empty.
    void updateTime(std::uint32_t timeMs) override;
    // vptr+0x10, 0x6cda58: PARTIAL, see the .cpp (the material's texture parameter cannot be written yet).
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6cde54: a new animator built from the same arguments.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x24, 0x6cd9d8: 4 (ESNAT_TEXTURE).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    // 0x6cd9e0: nulls every slot, dropping its texture; the vector keeps its size.
    void clearTextures();

    core::svector<boost::intrusive_ptr<video::ITexture>> textures;  // +0x0c
    std::int32_t timePerFrame = 0;                                // +0x18
    std::uint32_t startTime = 0;                                  // +0x1c
    std::uint32_t endTime = 0;                                    // +0x20
    bool loop = false;                                            // +0x24
};

}  // namespace glitch::scene
