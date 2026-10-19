// Bodies of glitch::scene::CSceneNodeAnimatorFlyStraight (canonical class: scene/CSceneNodeAnimatorFlyStraight.hpp). This
// file replaces the r3a batch file, the stand-in members of src/scene_simple_accessors.cpp, the recon_33 serialization
// functions and the comment block of src/recon/slice_27.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFlyStraight.hpp"

#include <cmath>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

// 0x6cc4b8 _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightC1ERKNS_4core8vector3dIfEES6_jbj
// 0x6cc61c _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightC2ERKNS_4core8vector3dIfEES6_jbj
CSceneNodeAnimatorFlyStraight::CSceneNodeAnimatorFlyStraight(const core::vector3d<float>& startIn,
                                                             const core::vector3d<float>& endIn, std::uint32_t timeForWayIn,
                                                             bool loopIn, std::uint32_t startTimeIn)
    : start(startIn), end(endIn), startTime(startTimeIn), timeForWay(timeForWayIn), loop(loopIn) {
    recalculateImidiateValues();
}

// 0x6cc26c _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightD1Ev
// 0x6cc2e4 _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightD2Ev
// 0x6cc2c8 _ZN6glitch5scene29CSceneNodeAnimatorFlyStraightD0Ev
CSceneNodeAnimatorFlyStraight::~CSceneNodeAnimatorFlyStraight() = default;

// 0x6cc078 _ZNK6glitch5scene29CSceneNodeAnimatorFlyStraight19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorFlyStraight::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addVector3d("Start", start, false);                         // vptr+0x1a8
    attributes->addVector3d("End", end, false);                             // vptr+0x1a8
    attributes->addInt("TimeForWay", static_cast<int>(timeForWay), false);  // vptr+0x4c
    attributes->addBool("Loop", loop, false);                               // vptr+0xd8
}

// 0x6cc3ec _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorFlyStraight::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    start = attributes->getVector3d("Start");  // vptr+0x1b4
    end = attributes->getVector3d("End");
    timeForWay = static_cast<std::uint32_t>(attributes->getInt("TimeForWay"));  // vptr+0x58
    loop = attributes->getBool("Loop");                                         // vptr+0xe4
    recalculateImidiateValues();
}

// 0x6cc330 _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight25recalculateImidiateValuesEv
// The way vector is end - start; wayLength is its length; vector is normalized; timeFactor is wayLength / timeForWay.
void CSceneNodeAnimatorFlyStraight::recalculateImidiateValues() {
    const float dx = end.X - start.X;
    const float dy = end.Y - start.Y;
    const float dz = end.Z - start.Z;
    vector.X = dx;
    vector.Y = dy;
    vector.Z = dz;
    wayLength = static_cast<float>(std::sqrt(static_cast<double>((dx * dx + dy * dy) + dz * dz)));
    vector.normalize();
    timeFactor = wayLength / static_cast<float>(timeForWay);
}

// 0x6cc138 _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight11animateNodeEPNS0_10ISceneNodeEj
void CSceneNodeAnimatorFlyStraight::animateNode(ISceneNode* node, std::uint32_t timeMs) {
    if (node == nullptr) {
        return;
    }
    core::vector3d<float> position = start;
    const std::uint32_t elapsed = timeMs - startTime;
    if (!loop && elapsed >= timeForWay) {
        position = end;
        node->setPosition(position);  // vptr+0xa4
        return;
    }
    const float t = std::fmod(static_cast<float>(elapsed), static_cast<float>(timeForWay));
    const float distance = timeFactor;
    const float y = distance * (t * vector.Y);
    const float z = distance * (t * vector.Z);
    position.X = position.X + (distance * (t * vector.X));
    position.Y = position.Y + y;
    position.Z = position.Z + z;
    node->setPosition(position);
}

// 0x6cc5d4 _ZN6glitch5scene29CSceneNodeAnimatorFlyStraight11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorFlyStraight::createClone() {
    return new CSceneNodeAnimatorFlyStraight(start, end, timeForWay, loop, startTime);  // operator new(0x4c)
}

// 0x6cc070 _ZNK6glitch5scene29CSceneNodeAnimatorFlyStraight7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorFlyStraight::getType() const {
    return ESNAT_FLY_STRAIGHT;
}

}  // namespace glitch::scene
