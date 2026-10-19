// glitch::scene::CSceneNodeAnimatorFlyStraight: moves its node along a straight line from a start to an end point.
// Canonical header of the scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp, the r3a batch
// file and the recon slice 27 comment block.
//
// Layout (original 32-bit offsets; constructors 0x6cc4b8 C1 / 0x6cc61c C2, createClone 0x6cc5d4 allocates 0x4c bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c start    +0x18 end
//   +0x24 vector (end - start, normalized)    +0x30 wayLength    +0x34 timeFactor (wayLength / timeForWay)
//   +0x38 startTime    +0x3c timeForWay (milliseconds)    +0x40 loop (byte)
//   +0x44 glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x48 (the constructor stores 1)
// The vtable overrides serialize (+0x00), deserialize (+0x04), animateNode (+0x10), createClone (+0x18) and getType (+0x24, 1).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class CSceneNodeAnimatorFlyStraight : public ISceneNodeAnimator {
public:
    // 0x6cc4b8 (C1) and 0x6cc61c (C2): copies the two points, stores the times and the loop flag, then
    // recalculateImidiateValues().
    CSceneNodeAnimatorFlyStraight(const core::vector3d<float>& start, const core::vector3d<float>& end,
                                  std::uint32_t timeForWay, bool loop, std::uint32_t startTime);
    // 0x6cc26c (D1), 0x6cc2e4 (D2), 0x6cc2c8 (D0): only the base destructor runs.
    ~CSceneNodeAnimatorFlyStraight() override;

    // vptr+0x00, 0x6cc078: Start, End, TimeForWay and Loop.
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x04, 0x6cc3ec: reads them back and recalculates.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // vptr+0x10, 0x6cc138: the position is start + vector * timeFactor * (elapsed mod timeForWay); a node that does not loop
    // is put on the end point once the elapsed time (timeMs - startTime) reaches timeForWay.
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6cc5d4: a new animator built from the same arguments.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x24, 0x6cc070: 1 (ESNAT_FLY_STRAIGHT).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    // 0x6cc330: vector = end - start, wayLength = its length, vector normalized, timeFactor = wayLength / timeForWay.
    void recalculateImidiateValues();

    core::vector3d<float> start;   // +0x0c
    core::vector3d<float> end;     // +0x18
    core::vector3d<float> vector;  // +0x24
    float wayLength = 0.0f;        // +0x30
    float timeFactor = 0.0f;       // +0x34
    std::uint32_t startTime = 0;   // +0x38
    std::uint32_t timeForWay = 0;  // +0x3c
    bool loop = false;             // +0x40
};

}  // namespace glitch::scene
