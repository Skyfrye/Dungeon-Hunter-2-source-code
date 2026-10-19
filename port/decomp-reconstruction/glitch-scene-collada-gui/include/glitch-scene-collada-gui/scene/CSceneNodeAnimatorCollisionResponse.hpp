// glitch::scene::CSceneNodeAnimatorCollisionResponse: slides its node (as a swept ellipsoid) through the triangles of a selector, with
// gravity. Canonical header of the scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp, the recon_33
// serialization functions and CollisionResponseAnimatorStandIn.
//
// Layout (original 32-bit offsets; constructors 0x6cb000 C1 / 0x6cb220 C2, createClone 0x6cb184 allocates 0x84 bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c lastPosition: the node's position after the previous step       +0x18 radius: the ellipsoid radius
//   +0x24 gravity: per millisecond (the constructor takes per second and multiplies by 0.001; createClone gives it back times 1000)
//   +0x30 translation: the ellipsoid centre relative to the node          +0x3c world: the triangle selector (a use is held)
//   +0x40 node: the animated node (not owned)                              +0x44 the scene manager
//   +0x48 lastTime   +0x4c fallingStartTime   +0x50 slidingSpeed   +0x54 falling   +0x55 isCamera   +0x56 animateCameraTarget
//   +0x58 refTriangle: nine floats, the triangle of the previous hit, passed in and out of the manager
//   +0x7c glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x80 (the constructor stores 1)
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/scene/ISceneNodeAnimatorCollisionResponse.hpp"

namespace glitch::scene {

class CSceneManager;

class CSceneNodeAnimatorCollisionResponse : public ISceneNodeAnimatorCollisionResponse {
public:
    // 0x6cb000 (C1) and 0x6cb220 (C2): gravity is scaled by 0.001, the world gains a use, then setNode(node).
    CSceneNodeAnimatorCollisionResponse(CSceneManager* sceneManager, ITriangleSelector* world, ISceneNode* node,
                                        const core::vector3d<float>& radius, const core::vector3d<float>& gravityPerSecond,
                                        const core::vector3d<float>& translation, float slidingSpeed);
    // 0x6ca974 (D1), 0x6caa28 (D2), 0x6caa0c (D0): drops the world, then the base destructors.
    ~CSceneNodeAnimatorCollisionResponse() override;

    // vptr+0x00, 0x6ca764: Radius, Gravity, Translation (vector3d) and AnimateCameraTarget (bool).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // vptr+0x04, 0x6ca804: reads the same four attributes back.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // vptr+0x10, 0x6cab34: for another node only setNode runs. Otherwise, with a world: the node's displacement since the last step,
    // plus gravity (scaled by the time spent falling), is fed to the scene's collision manager (getCollisionResultPosition at the
    // ellipsoid centre); the node is moved to the result plus the translation, the falling state and its start time are updated, and a
    // camera with animateCameraTarget gets its target shifted by whatever the response added; lastPosition follows the node.
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6cb184: a new animator built from the same world, node, radius, gravity (times 1000), translation and sliding speed.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x24, 0x6ca694: 6 (ESNAT_COLLISION_RESPONSE).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    bool isFalling() const override;                                                     // +0x54, 0x6ca69c
    void setEllipsoidRadius(const core::vector3d<float>& radius) override;               // +0x58, 0x6ca6a4
    core::vector3d<float> getEllipsoidRadius() const override;                           // +0x5c, 0x6ca6c0
    void setGravity(const core::vector3d<float>& gravity) override;                      // +0x60, 0x6ca6dc
    core::vector3d<float> getGravity() const override;                                   // +0x64, 0x6ca6f8
    void setEllipsoidTranslation(const core::vector3d<float>& translation) override;     // +0x68, 0x6ca714
    core::vector3d<float> getEllipsoidTranslation() const override;                      // +0x6c, 0x6ca730
    // +0x70, 0x6caf0c: clears falling, restarts the clocks at the current time, drops the old world and takes a use of the new one.
    void setWorld(ITriangleSelector* world) override;
    ITriangleSelector* getWorld() const override;                                        // +0x74, 0x6ca75c
    void setSlidingSpeed(float speed) override;                                          // +0x78, 0x6ca74c
    float getSlidingSpeed() const override;                                              // +0x7c, 0x6ca754

    // 0x6caab8: remembers the node and its position and whether it is a camera, and restarts the clocks at the current time.
    void setNode(ISceneNode* node);

    core::vector3d<float> lastPosition;        // +0x0c
    core::vector3d<float> radius;              // +0x18
    core::vector3d<float> gravity;             // +0x24
    core::vector3d<float> translation;         // +0x30
    ITriangleSelector* world = nullptr;        // +0x3c (a use is held)
    ISceneNode* node = nullptr;                // +0x40
    CSceneManager* sceneManager = nullptr;     // +0x44
    std::uint32_t lastTime = 0;                // +0x48
    std::uint32_t fallingStartTime = 0;        // +0x4c
    float slidingSpeed = 0.0f;                 // +0x50
    bool falling = false;                      // +0x54
    bool isCamera = false;                     // +0x55
    bool animateCameraTarget = true;           // +0x56
    core::triangle3d<float> refTriangle;       // +0x58 .. +0x7b
};

}  // namespace glitch::scene
