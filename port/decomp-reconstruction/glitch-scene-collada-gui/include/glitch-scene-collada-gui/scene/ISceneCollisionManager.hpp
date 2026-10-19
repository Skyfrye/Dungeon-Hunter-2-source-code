// glitch::scene::ISceneCollisionManager: the collision and picking interface of the scene. Canonical header of the scene owner
// pass (R3b). It replaces the stand-in class in scene_simple_accessors.hpp (a class with no base and no slots).
//
// Evidence (tools/decomp_vtable.py glitch::scene::CSceneCollisionManager, 48 bytes, no virtual base): a plain
// glitch::IReferenceCounted subclass (vptr +0x00, reference count +0x04). Slots +0x00 / +0x04 destructors (the interface's own
// D1 is the empty body 0x6c3be8, D0 0x6c57c4), +0x08 IReferenceCounted::onDelete, then the seven slots below, named by the
// CSceneCollisionManager overrides (the upstream Irrlicht interface of the same age, without getSceneNodeAndCollisionPointFromRay
// and with the glitch parameter lists).
#pragma once

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ITriangleSelector.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class ICameraSceneNode;
class ISceneNode;

class ISceneCollisionManager : public glitch::IReferenceCounted {
public:
    // 0x6c3be8 (D1: empty) and 0x6c57c4 (D0, skipped).
    ~ISceneCollisionManager() override;

    // +0x0c: the nearest hit of the segment with the triangles of the selector; writes the point and the triangle.
    virtual bool getCollisionPoint(const core::line3d<float>& ray, ITriangleSelector* selector, core::vector3d<float>& outCollisionPoint,
                                   core::triangle3d<float>& outTriangle) = 0;
    // +0x10: moves a sliding ellipsoid through the triangles of the selector and returns its new centre.
    virtual core::vector3d<float> getCollisionResultPosition(ITriangleSelector* selector, const core::vector3d<float>& ellipsoidPosition,
                                                             const core::vector3d<float>& ellipsoidRadius,
                                                             const core::vector3d<float>& ellipsoidDirectionAndSpeed,
                                                             core::triangle3d<float>& triangleOut, bool& outFalling, float slidingSpeed,
                                                             const core::vector3d<float>& gravityDirectionAndSpeed) = 0;
    // +0x14: the world-space ray through a screen position, seen from `camera` (the active camera when null).
    virtual core::line3d<float> getRayFromScreenCoordinates(core::position2d<std::int32_t> position, ICameraSceneNode* camera) = 0;
    // +0x18: the screen position of a world position; (-1000, -1000) without a scene manager, driver or camera, (-10000, -10000) behind
    // the camera.
    virtual core::position2d<std::int32_t> getScreenCoordinatesFrom3DPosition(core::vector3d<float> position, ICameraSceneNode* camera) = 0;
    // +0x1c, +0x20, +0x24: the nearest node whose bounding box a ray hits, for a screen position, a ray and a camera's view line.
    virtual ISceneNode* getSceneNodeFromScreenCoordinatesBB(core::position2d<std::int32_t> position, std::int32_t idBitMask,
                                                            bool noDebugObjects) = 0;
    virtual ISceneNode* getSceneNodeFromRayBB(core::line3d<float> ray, std::int32_t idBitMask, bool noDebugObjects, ISceneNode* root) = 0;
    virtual ISceneNode* getSceneNodeFromCameraBB(ICameraSceneNode* camera, std::int32_t idBitMask, bool noDebugObjects) = 0;
};

}  // namespace glitch::scene
