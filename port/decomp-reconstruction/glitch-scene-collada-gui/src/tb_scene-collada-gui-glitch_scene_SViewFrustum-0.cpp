// Track B batch e1-glitch-scene-collada-gui-glitch_scene_SViewFrustum-0: glitch::scene::SViewFrustum.
// Layout and declarations are in glitch-scene-collada-gui/tb/glitch_scene_SViewFrustum.hpp.

#include <cmath>

#include "glitch-scene-collada-gui/tb/glitch_scene_SViewFrustum.hpp"

namespace glitch::scene {

namespace {

using glitch::core::aabbox3d;
using glitch::core::plane3d;
using glitch::core::vector3d;

// Grows the box to contain p. Each axis compares strictly against the current edge, max first,
// then min, as the original does (grow for MaxEdge, shrink for MinEdge).
void includeCorner(aabbox3d<float>& box, const vector3d<float>& p) {
    if (p.X > box.MaxEdge.X) box.MaxEdge.X = p.X;
    if (p.Y > box.MaxEdge.Y) box.MaxEdge.Y = p.Y;
    if (p.Z > box.MaxEdge.Z) box.MaxEdge.Z = p.Z;
    if (p.X < box.MinEdge.X) box.MinEdge.X = p.X;
    if (p.Y < box.MinEdge.Y) box.MinEdge.Y = p.Y;
    if (p.Z < box.MinEdge.Z) box.MinEdge.Z = p.Z;
}

// True when the box lies entirely on the positive side of the plane: the corner nearest the plane (x from MaxEdge
// when the normal's x is negative, from MinEdge otherwise, and likewise for y and z) has a positive distance.
bool planeRejectsBox(const plane3d<float>& plane, const aabbox3d<float>& box) {
    const float x = plane.Normal.X < 0.0f ? box.MaxEdge.X : box.MinEdge.X;
    const float y = plane.Normal.Y < 0.0f ? box.MaxEdge.Y : box.MinEdge.Y;
    const float z = plane.Normal.Z < 0.0f ? box.MaxEdge.Z : box.MinEdge.Z;
    return (((plane.Normal.X * x) + (plane.Normal.Y * y)) + (plane.Normal.Z * z)) + plane.D > 0.0f;
}

// The overlap test of intersects and intersects3: the frustum's box (+0x6c MinEdge, +0x78 MaxEdge) against the box.
bool boxesOverlap(const aabbox3d<float>& frustumBox, const aabbox3d<float>& box) {
    return frustumBox.MinEdge.X <= box.MaxEdge.X && frustumBox.MinEdge.Y <= box.MaxEdge.Y &&
           frustumBox.MinEdge.Z <= box.MaxEdge.Z && frustumBox.MaxEdge.X >= box.MinEdge.X &&
           frustumBox.MaxEdge.Y >= box.MinEdge.Y && frustumBox.MaxEdge.Z >= box.MinEdge.Z;
}

// Stores one plane as the four values the original writes into the frustum (normal x, y, z, then D).
void storePlane(plane3d<float>& plane, float nx, float ny, float nz, float d) {
    plane.Normal.X = nx;
    plane.Normal.Y = ny;
    plane.Normal.Z = nz;
    plane.D = d;
}

}  // namespace

// 0x582bd8 _ZN6glitch5scene12SViewFrustumC2Ev
// The first three words are zeroed. Each of the six planes is written as the four words 0, 1.0f, 0, 0x80000000, i.e.
// the normal (0, 1, 0) and D = -0.0f. The box words follow: (+0x6c..+0x77) = -1.0f and (+0x78..+0x83) = 1.0f. The
// six matrices (+0x84, 0xc8, 0x10c, 0x150, 0x194, 0x1d8) are each cleared, given 1.0f on the diagonal and
// the identity flag byte (+0x40) set to 1.
SViewFrustum::SViewFrustum()
    : cameraPosition{0.0f, 0.0f, 0.0f},
      planes{},
      box{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}},
      viewMatrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      worldMatrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      projectionMatrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      viewProjectionMatrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      inverseViewMatrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY),
      worldViewProjectionMatrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY) {
    for (plane3d<float>& plane : planes) {
        plane.Normal.X = 0.0f;
        plane.Normal.Y = 1.0f;
        plane.Normal.Z = 0.0f;
        plane.D = -0.0f;  // the stored word is 0x80000000
    }
}

// 0x35bec8 _ZNK6glitch5scene12SViewFrustum10intersectsERKNS_4core8aabbox3dIfEE
bool SViewFrustum::intersects(const aabbox3d<float>& other) const {
    if (!boxesOverlap(box, other)) {
        return false;
    }
    for (const plane3d<float>& plane : planes) {
        if (planeRejectsBox(plane, other)) {
            return false;
        }
    }
    return true;
}

// 0x50cacc _ZNK6glitch5scene12SViewFrustum25intersectsWithoutBoxTest3ERKNS_4core8aabbox3dIfEE
// The planes are tested in the order 2, 3, 0 (float indices 11, 15 and 3 of the object).
bool SViewFrustum::intersectsWithoutBoxTest3(const aabbox3d<float>& other) const {
    if (planeRejectsBox(planes[2], other)) {
        return false;
    }
    if (planeRejectsBox(planes[3], other)) {
        return false;
    }
    return !planeRejectsBox(planes[0], other);
}

// 0x58aa8c _ZNK6glitch5scene12SViewFrustum11intersects3ERKNS_4core8aabbox3dIfEE
bool SViewFrustum::intersects3(const aabbox3d<float>& other) const {
    return boxesOverlap(box, other) && intersectsWithoutBoxTest3(other);
}

// 0x582348 _ZN6glitch5scene12SViewFrustum17setTransformStateENS_5video22E_TRANSFORMATION_STATEE
// The Hex-Rays return value is the r0 left by the last callee (or this); the symbol gives no return
// type, so the function is void here.
void SViewFrustum::setTransformState(glitch::video::E_TRANSFORMATION_STATE state) {
    if (state == 0) {
        // +0x150 = (+0x10c) * (+0x84)
        glitch::core::detail::setbyproduct_nocheck(viewProjectionMatrix, projectionMatrix, viewMatrix);
        // memcpy(+0x194, +0x84, 0x41): the 16 values and the identity flag at +0x40 of the matrix
        inverseViewMatrix = viewMatrix;
        inverseViewMatrix.makeInverse();
    } else if (state == 1) {
        // +0x1d8 = (+0x150) * (+0xc8)
        glitch::core::detail::setbyproduct(worldViewProjectionMatrix, viewProjectionMatrix, worldMatrix);
    }
}

// 0x5823d4 _ZN6glitch5scene12SViewFrustum22recalculateBoundingBoxEv
// Each intersection vector is zeroed before its call and used even when the call returns false,
// as the Hex-Rays body does. The four corners are all where planes[0] (row3 - row2) meets two of
// the side planes: (5, 2), (5, 3), (4, 2), (4, 3).
bool SViewFrustum::recalculateBoundingBox() {
    // Seed the box with the camera position (+0x00..+0x0b copied to +0x6c..+0x83).
    box.MinEdge.X = cameraPosition.X;
    box.MinEdge.Y = cameraPosition.Y;
    box.MinEdge.Z = cameraPosition.Z;
    box.MaxEdge.X = cameraPosition.X;
    box.MaxEdge.Y = cameraPosition.Y;
    box.MaxEdge.Z = cameraPosition.Z;

    vector3d<float> corner{};
    planes[0].getIntersectionWithPlanes(planes[5], planes[2], corner);
    includeCorner(box, corner);

    corner = vector3d<float>{};
    planes[0].getIntersectionWithPlanes(planes[5], planes[3], corner);
    includeCorner(box, corner);

    corner = vector3d<float>{};
    planes[0].getIntersectionWithPlanes(planes[4], planes[2], corner);
    includeCorner(box, corner);

    // The last corner's result is the comparison that lowers MinEdge.Z in the original. The other
    // updates in this step do not touch MinEdge.Z, so the comparison is taken before the update.
    corner = vector3d<float>{};
    planes[0].getIntersectionWithPlanes(planes[4], planes[3], corner);
    const bool lowersMinZ = corner.Z < box.MinEdge.Z;
    includeCorner(box, corner);
    return lowersMinZ;
}

// 0x5826c0 _ZN6glitch5scene12SViewFrustum7setFromERKNS_4core8CMatrix4IfEE
// Named rows here are index patterns m[r + 4j] for j = 0..3: planes[0] = row3 - row2, planes[1] = row2,
// planes[2] = row3 + row0, planes[3] = row3 - row0, planes[4] = row3 + row1, planes[5] = row3 - row1.
// The planes are normalised below.
bool SViewFrustum::setFrom(const glitch::core::CMatrix4<float>& matrix) {
    const float(&m)[16] = matrix.M;

    storePlane(planes[0], m[3] - m[2], m[7] - m[6], m[11] - m[10], m[15] - m[14]);
    storePlane(planes[1], m[2], m[6], m[10], m[14]);
    storePlane(planes[2], m[3] + m[0], m[7] + m[4], m[11] + m[8], m[15] + m[12]);
    storePlane(planes[3], m[3] - m[0], m[7] - m[4], m[11] - m[8], m[15] - m[12]);
    storePlane(planes[4], m[3] + m[1], m[7] + m[5], m[11] + m[9], m[15] + m[13]);
    storePlane(planes[5], m[3] - m[1], m[7] - m[5], m[11] - m[9], m[15] - m[13]);

    for (plane3d<float>& plane : planes) {
        const float lengthSquared =
            ((plane.Normal.X * plane.Normal.X) + (plane.Normal.Y * plane.Normal.Y)) +
            (plane.Normal.Z * plane.Normal.Z);
        // The original computes 1.0f / sqrtf(lengthSquared) and then adds 0x80000000 to its bit
        // pattern (ADD R5, R0, #0x80000000), which flips the sign: the scale is the negated reciprocal.
        const float scale = -(1.0f / std::sqrt(lengthSquared));
        plane.Normal.X *= scale;
        plane.Normal.Y *= scale;
        plane.Normal.Z *= scale;
        plane.D *= scale;
    }

    return recalculateBoundingBox();
}

}  // namespace glitch::scene
