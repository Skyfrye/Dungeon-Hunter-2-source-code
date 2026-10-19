// Bodies of glitch::scene::ISceneNodeAnimatorCollisionResponse and glitch::scene::CSceneNodeAnimatorCollisionResponse (canonical
// classes: scene/ISceneNodeAnimatorCollisionResponse.hpp, scene/CSceneNodeAnimatorCollisionResponse.hpp). This file replaces the
// stand-in members of src/scene_simple_accessors.cpp and the recon_33 serialization functions.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCollisionResponse.hpp"

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

// 0x6caf58 _ZN6glitch5scene35ISceneNodeAnimatorCollisionResponseC1Ev (complete-object form of the interface constructor)
// 0x6ca908 _ZN6glitch5scene35ISceneNodeAnimatorCollisionResponseD1Ev
// 0x6cb38c _ZN6glitch5scene35ISceneNodeAnimatorCollisionResponseD0Ev (deleting; skipped)
ISceneNodeAnimatorCollisionResponse::~ISceneNodeAnimatorCollisionResponse() = default;

// 0x6cb000 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseC1EPNS0_13CSceneManagerEPNS0_17ITriangleSelectorEPNS0_10ISceneNodeERKNS_4core8vector3dIfEESB_SB_f
// 0x6cb220 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseC2EPNS0_13CSceneManagerEPNS0_17ITriangleSelectorEPNS0_10ISceneNodeERKNS_4core8vector3dIfEESB_SB_f
CSceneNodeAnimatorCollisionResponse::CSceneNodeAnimatorCollisionResponse(CSceneManager* manager, ITriangleSelector* worldIn, ISceneNode* nodeIn,
                                                                         const core::vector3d<float>& radiusIn,
                                                                         const core::vector3d<float>& gravityPerSecond,
                                                                         const core::vector3d<float>& translationIn, float slidingSpeedIn)
    : radius(radiusIn), translation(translationIn), world(worldIn), node(nodeIn), sceneManager(manager), slidingSpeed(slidingSpeedIn) {
    gravity.X = gravityPerSecond.X * 0.001f;
    gravity.Y = gravityPerSecond.Y * 0.001f;
    gravity.Z = gravityPerSecond.Z * 0.001f;
    if (world != nullptr) {
        ++world->referenceCounter;
        // The original reloads the node word after taking the use (the same value).
    }
    setNode(node);
}

// 0x6ca974 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseD1Ev
// 0x6caa28 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseD2Ev
// 0x6caa0c _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponseD0Ev (deleting; skipped)
CSceneNodeAnimatorCollisionResponse::~CSceneNodeAnimatorCollisionResponse() {
    if (world != nullptr) {
        world->drop();
    }
}

// 0x6ca694 _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorCollisionResponse::getType() const {
    return ESNAT_COLLISION_RESPONSE;
}

// 0x6ca69c _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse9isFallingEv
bool CSceneNodeAnimatorCollisionResponse::isFalling() const {
    return falling;
}

// 0x6ca6a4 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse18setEllipsoidRadiusERKNS_4core8vector3dIfEE
void CSceneNodeAnimatorCollisionResponse::setEllipsoidRadius(const core::vector3d<float>& value) {
    radius = value;
}

// 0x6ca6c0 _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse18getEllipsoidRadiusEv
core::vector3d<float> CSceneNodeAnimatorCollisionResponse::getEllipsoidRadius() const {
    return radius;
}

// 0x6ca6dc _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse10setGravityERKNS_4core8vector3dIfEE
void CSceneNodeAnimatorCollisionResponse::setGravity(const core::vector3d<float>& value) {
    gravity = value;
}

// 0x6ca6f8 _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse10getGravityEv
core::vector3d<float> CSceneNodeAnimatorCollisionResponse::getGravity() const {
    return gravity;
}

// 0x6ca714 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse23setEllipsoidTranslationERKNS_4core8vector3dIfEE
void CSceneNodeAnimatorCollisionResponse::setEllipsoidTranslation(const core::vector3d<float>& value) {
    translation = value;
}

// 0x6ca730 _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse23getEllipsoidTranslationEv
core::vector3d<float> CSceneNodeAnimatorCollisionResponse::getEllipsoidTranslation() const {
    return translation;
}

// 0x6ca74c _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse15setSlidingSpeedEf
void CSceneNodeAnimatorCollisionResponse::setSlidingSpeed(float speed) {
    slidingSpeed = speed;
}

// 0x6ca754 _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse15getSlidingSpeedEv
float CSceneNodeAnimatorCollisionResponse::getSlidingSpeed() const {
    return slidingSpeed;
}

// 0x6ca75c _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse8getWorldEv
ITriangleSelector* CSceneNodeAnimatorCollisionResponse::getWorld() const {
    return world;
}

// 0x6ca764 _ZNK6glitch5scene35CSceneNodeAnimatorCollisionResponse19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorCollisionResponse::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) const {
    attributes->addVector3d("Radius", radius, false);                       // vptr+0x1a8
    attributes->addVector3d("Gravity", gravity, false);                     // +0x24
    attributes->addVector3d("Translation", translation, false);            // +0x30
    attributes->addBool("AnimateCameraTarget", animateCameraTarget, false);  // vptr+0xd8
}

// 0x6ca804 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorCollisionResponse::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* /*options*/) {
    radius = attributes->getVector3d("Radius");                       // vptr+0x1b4
    gravity = attributes->getVector3d("Gravity");
    translation = attributes->getVector3d("Translation");
    animateCameraTarget = attributes->getBool("AnimateCameraTarget");  // vptr+0xe4
}

// 0x6caab8 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse7setNodeEPNS0_10ISceneNodeE
void CSceneNodeAnimatorCollisionResponse::setNode(ISceneNode* newNode) {
    node = newNode;
    if (newNode != nullptr) {
        lastPosition = newNode->getPosition();  // vptr+0xa0
        isCamera = (newNode->getType() == ESNT_CAMERA);  // vptr+0xbc: 'cam_' (1601003875)
    }
    const std::uint32_t now = os::Timer::getTime();
    fallingStartTime = now;
    lastTime = now;
}

// 0x6caf0c _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse8setWorldEPNS0_17ITriangleSelectorE
void CSceneNodeAnimatorCollisionResponse::setWorld(ITriangleSelector* newWorld) {
    falling = false;
    const std::uint32_t now = os::Timer::getTime();
    ITriangleSelector* previous = world;
    fallingStartTime = now;
    lastTime = now;
    if (previous != nullptr) {
        previous->drop();
    }
    world = newWorld;
    if (newWorld != nullptr) {
        ++newWorld->referenceCounter;
    }
}

// 0x6cab34 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse11animateNodeEPNS0_10ISceneNodeEj
void CSceneNodeAnimatorCollisionResponse::animateNode(ISceneNode* animated, std::uint32_t timeMs) {
    if (node != animated) {
        setNode(animated);
        return;
    }
    if (world == nullptr) {
        return;
    }
    const std::uint32_t previousTime = lastTime;
    lastTime = timeMs;
    const core::vector3d<float> position = node->getPosition();  // vptr+0xa0
    // the node's displacement since the previous step
    core::vector3d<float> velocity;
    velocity.X = position.X - lastPosition.X;
    velocity.Y = position.Y - lastPosition.Y;
    velocity.Z = position.Z - lastPosition.Z;
    // gravity, scaled by the time spent falling once the fall has started
    float factor = 1.0f;
    if (falling) {
        factor = static_cast<float>((timeMs - previousTime) * (timeMs - fallingStartTime));
    }
    core::vector3d<float> force;
    force.X = factor * gravity.X;
    force.Y = factor * gravity.Y;
    force.Z = factor * gravity.Z;
    core::triangle3d<float> triangle = refTriangle;
    if ((position.X - lastPosition.X) + force.X != 0.0f || (position.Y - lastPosition.Y) + force.Y != 0.0f ||
        (position.Z - lastPosition.Z) + force.Z != 0.0f) {
        ISceneCollisionManager* collisions = sceneManager->collisionManager;  // the scene manager's +0x2c
        bool fell = false;
        core::vector3d<float> centre;
        centre.X = lastPosition.X - translation.X;
        centre.Y = lastPosition.Y - translation.Y;
        centre.Z = lastPosition.Z - translation.Z;
        const core::vector3d<float> result =
            collisions->getCollisionResultPosition(world, centre, radius, velocity, triangle, fell, slidingSpeed, force);  // vptr+0x10
        core::vector3d<float> moved;
        moved.X = result.X + translation.X;
        moved.Y = result.Y + translation.Y;
        moved.Z = result.Z + translation.Z;
        if (fell) {
            if (!falling) {
                fallingStartTime = timeMs;
            }
            falling = true;
        } else {
            falling = false;
        }
        node->setPosition(moved);  // vptr+0xa4
    }
    if (animateCameraTarget && isCamera) {
        // a camera's target follows the shift the response added to the node's own motion
        ICameraSceneNode* camera = static_cast<ICameraSceneNode*>(node);
        const core::vector3d<float>& now = node->getPosition();
        const float shiftX = (now.X - lastPosition.X) - velocity.X;
        const float shiftY = (now.Y - lastPosition.Y) - velocity.Y;
        const float shiftZ = (now.Z - lastPosition.Z) - velocity.Z;
        const core::vector3d<float>& target = camera->getTarget();  // vptr+0x108
        core::vector3d<float> shifted;
        shifted.X = shiftX + target.X;
        shifted.Y = shiftY + target.Y;
        shifted.Z = shiftZ + target.Z;
        camera->setTarget(shifted);  // vptr+0x104
    }
    lastPosition = node->getPosition();
}

// 0x6cb184 _ZN6glitch5scene35CSceneNodeAnimatorCollisionResponse11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorCollisionResponse::createClone() {
    core::vector3d<float> perSecond;
    perSecond.X = gravity.X * 1000.0f;
    perSecond.Y = gravity.Y * 1000.0f;
    perSecond.Z = gravity.Z * 1000.0f;
    return new CSceneNodeAnimatorCollisionResponse(sceneManager, world, node, radius, perSecond, translation, slidingSpeed);  // operator new(0x84)
}

}  // namespace glitch::scene
