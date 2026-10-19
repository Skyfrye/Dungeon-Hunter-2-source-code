// glitch::scene::SViewFrustum, the view frustum a camera owns. Canonical header of the engine unification wave
// (u1-scene); tb/glitch_scene_SViewFrustum.hpp forwards here. The class was already complete (batch
// e1-glitch-scene-collada-gui-glitch_scene_SViewFrustum-0 plus the camera work); the offsets are the same.
//
// glitch::scene::SViewFrustum, declared for Track B batch e1-glitch-scene-collada-gui-glitch_scene_SViewFrustum-0
// and completed for the camera (CCameraSceneNode holds one at +0x168). The 32-bit offsets of the original
// layout are kept as comments and checked with offsetof (every member is a 4-byte float, so the offsets are the
// same on a 64-bit build). The object is 0x21c bytes in the original (CCameraSceneNode spans +0x168..+0x384);
// the size is not asserted, because TRACK-B.md forbids static_assert on 32-bit sizes.
//
// CCameraSceneNode::recalculateViewArea (0x582904) writes the camera's absolute position into the first three words and
// builds the planes from the +0x150 matrix, which fixes their meaning (cameraPosition, viewProjectionMatrix).
// The transform matrices follow the glitch E_TRANSFORMATION_STATE numbering used by setTransformState and by
// CCameraSceneNode::render: 0 is the view, 1 the world, 2 the projection.
#pragma once

#include <cstddef>
#include <cstdint>

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::video {
// Same type as glitch-video/deps/glitch_video_types.hpp (int32_t alias); repeated so this header stands alone.
using E_TRANSFORMATION_STATE = std::int32_t;
}  // namespace glitch::video

namespace glitch::core::detail {
// 0x5822c8 CMatrix4Base<float>::setbyproduct(a, b): self = a * b with identity short-cuts. Defined in
// glitch-core-io/core/matrix4_base.hpp (the same declaration is repeated here for this category).
void setbyproduct(CMatrix4<float>& self, const CMatrix4<float>& a, const CMatrix4<float>& b);
// 0x40ea54 CMatrix4Base<float>::setbyproduct_nocheck(a, b): self = a * b as a full product.
void setbyproduct_nocheck(CMatrix4<float>& self, const CMatrix4<float>& a, const CMatrix4<float>& b);
}  // namespace glitch::core::detail

namespace glitch::scene {

class SViewFrustum {
public:
    // 0x582bd8 _ZN6glitch5scene12SViewFrustumC2Ev
    // Zeroes the camera position, gives every plane the normal (0, 1, 0) and D = -0.0f, sets the box to
    // (-1, -1, -1)..(1, 1, 1) and makes the six matrices identities with their identity flag set.
    SViewFrustum();

    // 0x5826c0 _ZN6glitch5scene12SViewFrustum7setFromERKNS_4core8CMatrix4IfEE
    // Builds the six planes from the columns of a column-major matrix, normalises them, then
    // recalculates the bounding box. Returns the result of recalculateBoundingBox().
    bool setFrom(const glitch::core::CMatrix4<float>& matrix);

    // 0x5823d4 _ZN6glitch5scene12SViewFrustum22recalculateBoundingBoxEv
    // Seeds the box from cameraPosition, then grows it with the four far-plane corners. Returns whether
    // the last corner lowered the box minimum in z.
    bool recalculateBoundingBox();

    // 0x35bec8 _ZNK6glitch5scene12SViewFrustum10intersectsERKNS_4core8aabbox3dIfEE
    // True when the box overlaps the frustum's own box (+0x6c) and no plane rejects it. Planes 0 to 5, in order.
    bool intersects(const glitch::core::aabbox3d<float>& box) const;

    // 0x58aa8c _ZNK6glitch5scene12SViewFrustum11intersects3ERKNS_4core8aabbox3dIfEE
    // The same overlap test with the frustum's box, then intersectsWithoutBoxTest3.
    bool intersects3(const glitch::core::aabbox3d<float>& box) const;

    // 0x50cacc _ZNK6glitch5scene12SViewFrustum25intersectsWithoutBoxTest3ERKNS_4core8aabbox3dIfEE
    // Rejects the box with planes 2, 3 and 0 only, in that order (no overlap test with the frustum's box).
    bool intersectsWithoutBoxTest3(const glitch::core::aabbox3d<float>& box) const;

    // 0x582348 _ZN6glitch5scene12SViewFrustum17setTransformStateENS_5video22E_TRANSFORMATION_STATEE
    // state 0 (view): viewProjectionMatrix = projectionMatrix * viewMatrix; inverseViewMatrix = viewMatrix (copy),
    // then inverted.
    // state 1 (world): worldViewProjectionMatrix = viewProjectionMatrix * worldMatrix.
    // Any other state (the camera passes 2, the projection) does nothing.
    void setTransformState(glitch::video::E_TRANSFORMATION_STATE state);

    // +0x00..+0x0b: the apex of the frustum, the camera's absolute position (CCameraSceneNode::recalculateViewArea
    // stores getAbsolutePosition() here). recalculateBoundingBox seeds the box from it.
    glitch::core::vector3d<float> cameraPosition;
    // +0x0c: six planes, four floats each (normal x, y, z and D). Plane 0 is row3 - row2 and plane 5
    // is row3 - row1 (see setFrom).
    glitch::core::plane3d<float> planes[6];
    // +0x6c: frustum bounding box; MinEdge at +0x6c, MaxEdge at +0x78. CCameraSceneNode::getBoundingBox returns it.
    glitch::core::aabbox3d<float> box;
    // Matrices are CMatrix4<float>: 16 values at +0x00 and the identity flag at +0x40, a 0x44 stride.
    // +0x84: transform state 0. The camera's view matrix (CCameraSceneNode::getViewMatrix); recalculateMatrices
    // stores the look-at matrix here.
    glitch::core::CMatrix4<float> viewMatrix;
    // +0xc8: transform state 1, operand of setTransformState state 1. Written by no camera function.
    glitch::core::CMatrix4<float> worldMatrix;
    // +0x10c: transform state 2. The camera's projection matrix (CCameraSceneNode::getProjectionMatrix);
    // recalculateProjectionMatrix and setProjectionMatrix store it here.
    glitch::core::CMatrix4<float> projectionMatrix;
    // +0x150: setTransformState state 0 product projectionMatrix * viewMatrix; recalculateViewArea builds the
    // planes from it; operand of state 1.
    glitch::core::CMatrix4<float> viewProjectionMatrix;
    // +0x194: setTransformState state 0 copy of viewMatrix, then its inverse.
    glitch::core::CMatrix4<float> inverseViewMatrix;
    // +0x1d8: setTransformState state 1 product viewProjectionMatrix * worldMatrix.
    glitch::core::CMatrix4<float> worldViewProjectionMatrix;
};

static_assert(offsetof(SViewFrustum, cameraPosition) == 0x00);
static_assert(offsetof(SViewFrustum, planes) == 0x0c);
static_assert(offsetof(SViewFrustum, box) == 0x6c);
static_assert(offsetof(SViewFrustum, viewMatrix) == 0x84);
static_assert(offsetof(SViewFrustum, worldMatrix) == 0xc8);
static_assert(offsetof(SViewFrustum, projectionMatrix) == 0x10c);
static_assert(offsetof(SViewFrustum, viewProjectionMatrix) == 0x150);
static_assert(offsetof(SViewFrustum, inverseViewMatrix) == 0x194);
static_assert(offsetof(SViewFrustum, worldViewProjectionMatrix) == 0x1d8);

}  // namespace glitch::scene
