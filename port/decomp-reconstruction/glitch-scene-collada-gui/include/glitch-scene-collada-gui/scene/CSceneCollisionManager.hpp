// glitch::scene::CSceneCollisionManager: the collision and picking implementation (Irrlicht 1.5 / 1.6 era code with glitch's
// parameter lists). Canonical header of the scene owner pass (R3b). It replaces the class of tb/glitch_scene_CSceneCollisionManager.hpp
// (getCollisionPoint only), recon/slice_33.hpp's CollisionManagerStandIn and the free functions of recon slices 26 and 33.
//
// Layout (original 32-bit offsets; constructors 0x6c3bec C1 / 0x6c3c48 C2, created by CSceneManager's constructor with
// operator new(0x1c)):
//   +0x00 vptr (vtable 0x988968, 48 bytes)    +0x04 reference count (IReferenceCounted; the constructor stores 1)
//   +0x08 CSceneManager* (not owned)          +0x0c IVideoDriver* (a use is held)
//   +0x10 std::vector<triangle3d<float>>: begin, end and capacity words at +0x10, +0x14, +0x18 (36-byte elements), the triangle
//         buffer getCollisionPoint and collideWithWorld fill from a selector; only ever grown
// The destructor (D1 0x6c40d0, D2 0x6c4120, D0 0x6c57a8) drops the driver and frees the triangle buffer.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/scene/ISceneCollisionManager.hpp"

namespace glitch::video {
class IVideoDriver;
}

namespace glitch::scene {

class CSceneManager;

class CSceneCollisionManager : public ISceneCollisionManager {
public:
    // The state of one swept-ellipsoid query (140 bytes): the ellipsoid, the motion in ellipsoid space, and the nearest hit so far. The
    // layout is the one every body reads: eRadius at +0x00, the nearest distance at +0x4c, the intersection triangle at +0x5c.
    struct SCollisionData {
        core::vector3d<float> eRadius;                 // +0x00
        core::vector3d<float> R3Velocity;              // +0x0c
        core::vector3d<float> R3Position;              // +0x18
        core::vector3d<float> velocity;                // +0x24
        core::vector3d<float> normalizedVelocity;      // +0x30
        core::vector3d<float> basePoint;               // +0x3c
        bool foundCollision = false;                   // +0x48
        float nearestDistance = 0.0f;                  // +0x4c
        core::vector3d<float> intersectionPoint;       // +0x50
        core::triangle3d<float> intersectionTriangle;  // +0x5c .. +0x7f
        std::int32_t triangleHits = 0;                 // +0x80
        float slidingSpeed = 0.0f;                     // +0x84
        ITriangleSelector* selector = nullptr;         // +0x88
    };

    // 0x6c3bec (C1) and 0x6c3c48 (C2): stores the scene manager, takes a use of the driver, empty triangle buffer.
    CSceneCollisionManager(CSceneManager* sceneManager, video::IVideoDriver* driver);
    // 0x6c40d0 (D1), 0x6c4120 (D2), 0x6c57a8 (D0): drops the driver, frees the triangle buffer.
    ~CSceneCollisionManager() override;

    // +0x0c, 0x6c62e8: the nearest triangle the segment crosses (a loose per-axis rejection, then the triangle's line test).
    bool getCollisionPoint(const core::line3d<float>& ray, ITriangleSelector* selector, core::vector3d<float>& outCollisionPoint,
                           core::triangle3d<float>& outTriangle) override;
    // +0x10, 0x6c7720: collideEllipsoidWithWorld unless the selector is null or a radius component is 0 (then the position is returned).
    core::vector3d<float> getCollisionResultPosition(ITriangleSelector* selector, const core::vector3d<float>& ellipsoidPosition,
                                                     const core::vector3d<float>& ellipsoidRadius,
                                                     const core::vector3d<float>& ellipsoidDirectionAndSpeed,
                                                     core::triangle3d<float>& triangleOut, bool& outFalling, float slidingSpeed,
                                                     const core::vector3d<float>& gravityDirectionAndSpeed) override;
    // +0x14, 0x6c59c0: the ray from the camera position (the near point for an orthogonal camera) through the screen position, to the
    // far plane. An all-zero ray without a scene manager, driver or camera.
    core::line3d<float> getRayFromScreenCoordinates(core::position2d<std::int32_t> position, ICameraSceneNode* camera) override;
    // +0x18, 0x6c57d8.
    core::position2d<std::int32_t> getScreenCoordinatesFrom3DPosition(core::vector3d<float> position, ICameraSceneNode* camera) override;
    // +0x1c, 0x6c3ca4: null when the ray from getRayFromScreenCoordinates is degenerate (start == end).
    ISceneNode* getSceneNodeFromScreenCoordinatesBB(core::position2d<std::int32_t> position, std::int32_t idBitMask,
                                                    bool noDebugObjects) override;
    // +0x20, 0x6c6280: the nearest hit under `root` (the scene's root node when null).
    ISceneNode* getSceneNodeFromRayBB(core::line3d<float> ray, std::int32_t idBitMask, bool noDebugObjects, ISceneNode* root) override;
    // +0x24, 0x6c5674: a ray from the camera along its target direction, as long as its far value.
    ISceneNode* getSceneNodeFromCameraBB(ICameraSceneNode* camera, std::int32_t idBitMask, bool noDebugObjects) override;

    // 0x6c5d40: recursion over the visible children of `root`; every node that passes the id mask and debug filters and whose box the
    // ray (in the node's space) crosses competes with the farthest-corner distance; the smallest wins.
    void getPickedNodeBB(ISceneNode* root, const core::line3d<float>& ray, std::int32_t idBitMask, bool noDebugObjects,
                         float& outBestDistance, ISceneNode*& outBestNode);

    // 0x6c42a8: tests the swept unit sphere (SCollisionData) against one triangle, in ellipsoid space; records the hit when it is the
    // nearest. Returns whether the hit was recorded.
    bool testTriangleIntersection(SCollisionData* colData, const core::triangle3d<float>& triangle);
    // 0x6c4170: the smaller positive root of a*x^2 + b*x + c below maxR.
    bool getLowestRoot(float a, float b, float c, float maxR, float* root);
    // 0x6c6c04: the recursive slide (at most six levels) in ellipsoid space.
    core::vector3d<float> collideWithWorld(std::int32_t recursionDepth, SCollisionData& colData, core::vector3d<float> position,
                                           core::vector3d<float> velocity);
    // 0x6c72f4: the paper's two-pass response (motion, then gravity); outFalling when the gravity pass touched nothing.
    core::vector3d<float> collideEllipsoidWithWorld(ITriangleSelector* selector, const core::vector3d<float>& position,
                                                    const core::vector3d<float>& radius, const core::vector3d<float>& velocity,
                                                    float slidingSpeed, const core::vector3d<float>& gravity,
                                                    core::triangle3d<float>& triangleOut, bool& outFalling);

    CSceneManager* sceneManager = nullptr;                // +0x08
    video::IVideoDriver* driver = nullptr;                // +0x0c (a use is held)
    std::vector<core::triangle3d<float>> triangles;       // +0x10 .. +0x18
};

}  // namespace glitch::scene
