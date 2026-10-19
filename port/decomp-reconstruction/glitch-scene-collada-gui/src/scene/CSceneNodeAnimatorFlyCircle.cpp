// Bodies of glitch::scene::CSceneNodeAnimatorFlyCircle (canonical class: scene/CSceneNodeAnimatorFlyCircle.hpp). This file
// replaces the stand-in members of src/scene_simple_accessors.cpp, the recon_33 serialization functions and the comment
// block of src/recon/slice_27.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFlyCircle.hpp"

#include <cmath>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

namespace {

// ROUNDING_ERROR_f32 (0x358637bd), the tolerance of the vector comparison in deserializeAttributes.
constexpr float kRoundingError = 0.000001f;

// a is within the tolerance of 0: (a + tol >= 0) && (a - tol <= 0), the compiled form of the equality test.
bool nearZero(float a) {
    return (a + kRoundingError >= 0.0f) && (a - kRoundingError <= 0.0f);
}

}  // namespace

// 0x6cbd78 _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleC1EjRKNS_4core8vector3dIfEEffS6_
// 0x6cbee0 _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleC2EjRKNS_4core8vector3dIfEEffS6_
// center (+0x0c) and direction (+0x18) are copied, vecU and vecV start at 0, then init() derives them.
CSceneNodeAnimatorFlyCircle::CSceneNodeAnimatorFlyCircle(std::uint32_t startTimeIn, const core::vector3d<float>& centerIn,
                                                         float radiusIn, float speedIn, const core::vector3d<float>& directionIn)
    : center(centerIn), direction(directionIn), radius(radiusIn), speed(speedIn), startTime(startTimeIn) {
    init();
}

// 0x6cb800 _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleD1Ev
// 0x6cc004 _ZN6glitch5scene27CSceneNodeAnimatorFlyCircleD0Ev
CSceneNodeAnimatorFlyCircle::~CSceneNodeAnimatorFlyCircle() = default;

// 0x6cb738 _ZNK6glitch5scene27CSceneNodeAnimatorFlyCircle19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorFlyCircle::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addVector3d("Center", center, false);        // vptr+0x1a8
    attributes->addFloat("Radius", radius, false);           // vptr+0x64
    attributes->addFloat("Speed", speed, false);             // vptr+0x64
    attributes->addVector3d("Direction", direction, false);  // vptr+0x1a8
}

// 0x6cba9c _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorFlyCircle::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    center = attributes->getVector3d("Center");  // vptr+0x1b4
    radius = attributes->getFloat("Radius");     // vptr+0x70
    speed = attributes->getFloat("Speed");
    const core::vector3d<float> read = attributes->getVector3d("Direction");
    startTime = 0;
    direction = read;
    if (nearZero(read.X) && nearZero(read.Y) && nearZero(read.Z)) {
        direction.X = 0.0f;
        direction.Y = 1.0f;
        direction.Z = 0.0f;
    } else {
        direction.normalize();
    }
    init();
}

// 0x6cb864 _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle4initEv
void CSceneNodeAnimatorFlyCircle::init() {
    direction.normalize();
    // vecV: direction x (0, 50, 0) when the direction has no y component, else direction x (50, 0, 0).
    core::vector3d<float> v;
    if (direction.Y == 0.0f) {
        v.X = (direction.Z * -50.0f) + (direction.Y * 0.0f);
        v.Y = (direction.X * -0.0f) + (direction.Z * 0.0f);
        v.Z = (direction.Y * -0.0f) + (direction.X * 50.0f);
    } else {
        v.X = (direction.Z * -0.0f) + (direction.Y * 0.0f);
        v.Y = (direction.X * -0.0f) + (direction.Z * 50.0f);
        v.Z = (direction.Y * -50.0f) + (direction.X * 0.0f);
    }
    v.normalize();
    vecV = v;
    // vecU = direction x vecV, normalized.
    core::vector3d<float> u;
    u.X = ((-vecV.Y) * direction.Z) + (direction.Y * vecV.Z);
    u.Y = ((-vecV.Z) * direction.X) + (direction.Z * vecV.X);
    u.Z = (direction.Y * (-vecV.X)) + (direction.X * vecV.Y);
    u.normalize();
    vecU = u;
}

// 0x6cbc50 _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle11animateNodeEPNS0_10ISceneNodeEj
void CSceneNodeAnimatorFlyCircle::animateNode(ISceneNode* node, std::uint32_t timeMs) {
    if (node == nullptr) {
        return;
    }
    const float t = static_cast<float>(timeMs - startTime) * speed;
    const float c = std::cos(t);
    const float s = std::sin(t);
    core::vector3d<float> position;
    position.X = (radius * ((c * vecU.X) + (s * vecV.X))) + center.X;
    position.Y = (radius * ((c * vecU.Y) + (s * vecV.Y))) + center.Y;
    position.Z = (radius * ((c * vecU.Z) + (s * vecV.Z))) + center.Z;
    node->setPosition(position);  // vptr+0xa4
}

// 0x6cbe98 _ZN6glitch5scene27CSceneNodeAnimatorFlyCircle11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorFlyCircle::createClone() {
    return new CSceneNodeAnimatorFlyCircle(startTime, center, radius, speed, direction);  // operator new(0x50)
}

// 0x6cb730 _ZNK6glitch5scene27CSceneNodeAnimatorFlyCircle7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorFlyCircle::getType() const {
    return ESNAT_FLY_CIRCLE;
}

}  // namespace glitch::scene
