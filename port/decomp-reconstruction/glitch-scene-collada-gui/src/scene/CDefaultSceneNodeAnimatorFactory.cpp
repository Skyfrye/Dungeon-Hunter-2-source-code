// Bodies of glitch::scene::CDefaultSceneNodeAnimatorFactory (canonical class: scene/CDefaultSceneNodeAnimatorFactory.hpp). This file
// replaces the stand-in members of src/scene_simple_accessors.cpp and the factory functions of src/recon/slice_25.cpp.
#include "glitch-scene-collada-gui/scene/CDefaultSceneNodeAnimatorFactory.hpp"

#include <cstring>
#include <vector>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/gui/ICursorControl.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraFPS.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraMaya.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCollisionResponse.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorDelete.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFlyCircle.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFlyStraight.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFollowSpline.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorRotation.hpp"
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorTexture.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

// 0x957ba4 glitch::scene::SceneNodeAnimatorTypeNames
const char* const SceneNodeAnimatorTypeNames[10] = {
    "flyCircle", "flyStraight", "followSpline", "rotation", "texture", "deletion", "collisionResponse", "cameraFPS", "cameraMaya", nullptr,
};

// 0x6b9590 _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryC1EPNS0_13CSceneManagerEPNS_3gui14ICursorControlE
// 0x6b95dc _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryC2EPNS0_13CSceneManagerEPNS_3gui14ICursorControlE
CDefaultSceneNodeAnimatorFactory::CDefaultSceneNodeAnimatorFactory(CSceneManager* manager, gui::ICursorControl* cursor)
    : sceneManager(manager), cursorControl(cursor) {
    if (cursorControl != nullptr) {
        ++cursorControl->referenceCounter;
    }
}

// 0x6b9628 _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryD1Ev
// 0x6b9668 _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryD2Ev
// 0x6b97a4 _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactoryD0Ev (deleting; skipped)
CDefaultSceneNodeAnimatorFactory::~CDefaultSceneNodeAnimatorFactory() {
    if (cursorControl != nullptr) {
        cursorControl->drop();
    }
}

// 0x6b96a8 _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory38getCreatableSceneNodeAnimatorTypeCountEv
std::uint32_t CDefaultSceneNodeAnimatorFactory::getCreatableSceneNodeAnimatorTypeCount() const {
    return 9;
}

// 0x6b96b0 _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory34getCreateableSceneNodeAnimatorTypeEj
E_SCENE_NODE_ANIMATOR_TYPE CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorType(std::uint32_t index) const {
    return index > 8 ? ESNAT_UNKNOWN : static_cast<E_SCENE_NODE_ANIMATOR_TYPE>(index);
}

// 0x6b96c0 _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory38getCreateableSceneNodeAnimatorTypeNameEj
const char* CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(std::uint32_t index) const {
    return index <= 8 ? SceneNodeAnimatorTypeNames[index] : nullptr;
}

// 0x6b96e0 _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory38getCreateableSceneNodeAnimatorTypeNameENS0_26E_SCENE_NODE_ANIMATOR_TYPEE
const char* CDefaultSceneNodeAnimatorFactory::getCreateableSceneNodeAnimatorTypeName(E_SCENE_NODE_ANIMATOR_TYPE type) const {
    return static_cast<std::int32_t>(type) <= 8 ? SceneNodeAnimatorTypeNames[type] : nullptr;
}

// 0x6b9720 _ZNK6glitch5scene32CDefaultSceneNodeAnimatorFactory15getTypeFromNameEPKc
E_SCENE_NODE_ANIMATOR_TYPE CDefaultSceneNodeAnimatorFactory::getTypeFromName(const char* name) const {
    std::int32_t index = 0;
    const char* candidate = "flyCircle";
    do {
        if (std::strcmp(name, candidate) == 0) {
            return static_cast<E_SCENE_NODE_ANIMATOR_TYPE>(index);
        }
        candidate = SceneNodeAnimatorTypeNames[++index];
    } while (candidate != nullptr);
    return ESNAT_UNKNOWN;
}

// 0x6b9778 _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactory23createSceneNodeAnimatorEPKcPNS0_10ISceneNodeE
ISceneNodeAnimator* CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(const char* typeName, ISceneNode* target) {
    const E_SCENE_NODE_ANIMATOR_TYPE type = getTypeFromName(typeName);
    return createSceneNodeAnimator(type, target);  // vptr+0x0c
}

// 0x6b9928 _ZN6glitch5scene32CDefaultSceneNodeAnimatorFactory23createSceneNodeAnimatorENS0_26E_SCENE_NODE_ANIMATOR_TYPEEPNS0_10ISceneNodeE
// The parameters of each type are the factory's own defaults: a fly circle of radius 10 around the origin, a straight flight from the
// origin to (100, 100, 100) in ten seconds, a two point spline, a rotation of 0.3 about x, an empty texture list at 250 ms a frame, a
// deletion five seconds from now, a collision response with an ellipsoid of (30, 60, 30) and gravity (0, -100, 0) per second, a first
// person camera (rotate 100, move 500) and a Maya camera (rotate -1500, zoom 200, translate 1500). Every animator starts at the
// current time of the clock.
ISceneNodeAnimator* CDefaultSceneNodeAnimatorFactory::createSceneNodeAnimator(E_SCENE_NODE_ANIMATOR_TYPE type, ISceneNode* target) {
    ISceneNodeAnimator* animator = nullptr;
    switch (type) {
        case ESNAT_FLY_CIRCLE: {
            const std::uint32_t now = os::Timer::getTime();
            const core::vector3d<float> direction{0.0f, 1.0f, 0.0f};
            const core::vector3d<float> center{};
            animator = new CSceneNodeAnimatorFlyCircle(now, center, 10.0f, 0.001f, direction);  // operator new(0x50)
            break;
        }
        case ESNAT_FLY_STRAIGHT: {
            const core::vector3d<float> end{100.0f, 100.0f, 100.0f};
            const core::vector3d<float> start{};
            const std::uint32_t now = os::Timer::getTime();
            animator = new CSceneNodeAnimatorFlyStraight(start, end, 10000, true, now);  // operator new(0x4c)
            break;
        }
        case ESNAT_FOLLOW_SPLINE: {
            core::svector<core::vector3d<float>> points;
            points.push_back(core::vector3d<float>{});
            points.push_back(core::vector3d<float>{10.0f, 5.0f, 10.0f});
            animator = new CSceneNodeAnimatorFollowSpline(0, points, 1.0f, 0.5f);  // operator new(0x2c)
            break;
        }
        case ESNAT_ROTATION: {
            const std::uint32_t now = os::Timer::getTime();
            core::quaternion rotation;
            rotation.set(0.3f, 0.0f, 0.0f);
            animator = new CSceneNodeAnimatorRotation(now, rotation);  // operator new(0x28)
            break;
        }
        case ESNAT_TEXTURE: {
            const core::svector<boost::intrusive_ptr<video::ITexture>> textures;
            const std::uint32_t now = os::Timer::getTime();
            animator = new CSceneNodeAnimatorTexture(textures, 250, true, now);  // operator new(0x30)
            break;
        }
        case ESNAT_DELETION: {
            const std::uint32_t now = os::Timer::getTime();
            animator = new CSceneNodeAnimatorDelete(sceneManager, now + 5000);  // operator new(0x1c)
            break;
        }
        case ESNAT_COLLISION_RESPONSE: {
            const core::vector3d<float> radius{30.0f, 60.0f, 30.0f};
            const core::vector3d<float> gravity{0.0f, -100.0f, 0.0f};
            const core::vector3d<float> translation{};
            animator = new CSceneNodeAnimatorCollisionResponse(sceneManager, nullptr, target, radius, gravity, translation, 0.001f);  // operator new(0x84)
            break;
        }
        case ESNAT_CAMERA_FPS:
            animator = new CSceneNodeAnimatorCameraFPS(cursorControl, 100.0f, 500.0f, 0.0f, nullptr, 0, false);  // operator new(0x64)
            break;
        case ESNAT_CAMERA_MAYA:
            animator = new CSceneNodeAnimatorCameraMaya(cursorControl, -1500.0f, 200.0f, 1500.0f);  // operator new(0x80)
            break;
        default:
            return nullptr;
    }
    if (animator != nullptr && target != nullptr) {
        target->addAnimator(animator);  // vptr+0x6c
    }
    return animator;
}

}  // namespace glitch::scene
