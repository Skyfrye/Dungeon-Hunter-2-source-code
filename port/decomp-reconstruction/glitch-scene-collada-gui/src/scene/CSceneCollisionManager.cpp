// Bodies of glitch::scene::ISceneCollisionManager and glitch::scene::CSceneCollisionManager (canonical classes:
// scene/ISceneCollisionManager.hpp, scene/CSceneCollisionManager.hpp). This file replaces the tb batch file
// src/tb_scene-collada-gui-glitch_scene_CSceneCollisionManager-0.cpp, the stand-in of scene_simple_accessors.hpp and the collision
// free functions of recon slices 26 and 33.
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"

#include <cmath>
#include <cstddef>
#include <limits>

#include "glitch-core-io/core/matrix4_base.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::scene {

namespace {

constexpr float kFloatMax = std::numeric_limits<float>::max();  // 0x7f7fffff, the "no hit yet" distance

// Squared distance between two points, summed in the order the original uses: ((dx*dx + dy*dy) + dz*dz).
float squaredDistance(const core::vector3d<float>& a, const core::vector3d<float>& b) {
    const float dx = a.X - b.X;
    const float dy = a.Y - b.Y;
    const float dz = a.Z - b.Z;
    return ((dx * dx) + (dy * dy)) + (dz * dz);
}

// The loose span test getCollisionPoint applies per axis: some corner of the triangle reaches the low bound and some corner is
// still under the high bound. This is the form in the pseudocode, not a strict overlap test.
bool overlapsSpan(float a, float b, float c, float lo, float hi) {
    return (a >= lo || b >= lo || c >= lo) && (hi >= a || b <= hi || c <= hi);
}

}  // namespace

// 0x6c3be8 _ZN6glitch5scene22ISceneCollisionManagerD1Ev (empty body)
// 0x6c57c4 _ZN6glitch5scene22ISceneCollisionManagerD0Ev (deleting; skipped)
ISceneCollisionManager::~ISceneCollisionManager() = default;

// 0x6c3bec _ZN6glitch5scene22CSceneCollisionManagerC1EPNS0_13CSceneManagerEPNS_5video12IVideoDriverE
// 0x6c3c48 _ZN6glitch5scene22CSceneCollisionManagerC2EPNS0_13CSceneManagerEPNS_5video12IVideoDriverE
// Reference count 1 (the IReferenceCounted base), the scene manager at +0x08, the driver at +0x0c (a use added), an empty buffer.
CSceneCollisionManager::CSceneCollisionManager(CSceneManager* manager, video::IVideoDriver* videoDriver)
    : sceneManager(manager), driver(videoDriver) {
    if (driver != nullptr) {
        ++driver->referenceCounter;
    }
}

// 0x6c40d0 _ZN6glitch5scene22CSceneCollisionManagerD1Ev
// 0x6c4120 _ZN6glitch5scene22CSceneCollisionManagerD2Ev
// 0x6c57a8 _ZN6glitch5scene22CSceneCollisionManagerD0Ev (deleting; skipped)
CSceneCollisionManager::~CSceneCollisionManager() {
    if (driver != nullptr) {
        driver->drop();
    }
    // the triangle buffer is freed by the vector
}

// 0x6c3ca4 _ZN6glitch5scene22CSceneCollisionManager34getSceneNodeFromScreenCoordinatesBBENS_4core10position2dIiEEib
// The ray comes from the virtual getRayFromScreenCoordinates (vptr+0x14, camera 0). A ray whose start equals its end gives null.
ISceneNode* CSceneCollisionManager::getSceneNodeFromScreenCoordinatesBB(core::position2d<std::int32_t> position, std::int32_t idBitMask,
                                                                        bool noDebugObjects) {
    const core::line3d<float> ray = getRayFromScreenCoordinates(position, nullptr);
    if (ray.start.X == ray.end.X && ray.start.Y == ray.end.Y && ray.start.Z == ray.end.Z) {
        return nullptr;
    }
    return getSceneNodeFromRayBB(ray, idBitMask, noDebugObjects, nullptr);  // vptr+0x20
}

// 0x6c4170 _ZN6glitch5scene22CSceneCollisionManager13getLowestRootEffffPf
bool CSceneCollisionManager::getLowestRoot(float a, float b, float c, float maxR, float* root) {
    const float determinant = (b * b) + ((a * -4.0f) * c);
    if (determinant < 0.0f) {
        return false;
    }
    const float sqrtD = std::sqrt(determinant);
    const float twoA = a + a;
    float r1 = ((-b) - sqrtD) / twoA;
    float r2 = (sqrtD - b) / twoA;
    if (r1 > r2) {
        const float swap = r1;
        r1 = r2;
        r2 = swap;
    }
    if (r1 <= 0.0f || r1 >= maxR) {
        if (r2 <= 0.0f || r2 >= maxR) {
            return false;
        }
        *root = r2;
        return true;
    }
    *root = r1;
    return true;
}

// 0x6c42a8 _ZN6glitch5scene22CSceneCollisionManager24testTriangleIntersectionEPNS1_14SCollisionDataERKNS_4core9triangle3dIfEE
// The swept unit sphere (colData->basePoint moving along colData->velocity, in ellipsoid space) against one triangle: first the plane
// interval, then the triangle interior, then the three vertices and the three edges (the vertex, then edge roots shrink the maximum t).
// A hit is recorded only when it is nearer than the one already stored.
bool CSceneCollisionManager::testTriangleIntersection(SCollisionData* colData, const core::triangle3d<float>& triangle) {
    core::plane3d<float> plane{};
    plane.setPlane(triangle.A, triangle.B, triangle.C);

    // only front facing triangles count
    const float facing = ((plane.Normal.X * colData->normalizedVelocity.X) + (plane.Normal.Y * colData->normalizedVelocity.Y)) +
                         (plane.Normal.Z * colData->normalizedVelocity.Z);
    if (facing > 0.0f) {
        return false;
    }

    const core::vector3d<float>& base = colData->basePoint;
    const core::vector3d<float>& velocity = colData->velocity;
    float baseX = base.X;
    float baseY = base.Y;
    float baseZ = base.Z;
    float velX = velocity.X;
    float velY = velocity.Y;
    float velZ = velocity.Z;

    // signed distance from the sphere to the triangle plane, and the plane normal's share of the velocity
    const float signedDistance =
        (((plane.Normal.X * baseX) + (plane.Normal.Y * baseY)) + (plane.Normal.Z * baseZ)) + plane.D;
    const float normalDotVelocity = ((plane.Normal.X * velX) + (plane.Normal.Y * velY)) + (plane.Normal.Z * velZ);

    float t = 1.0f;
    bool found = false;
    core::vector3d<float> collisionPoint{};
    bool embedded = false;
    float t0 = 0.0f;

    if (std::fabs(normalDotVelocity) <= 0.000001f) {
        // travelling parallel to the plane
        if (std::fabs(signedDistance) >= 1.0f) {
            return false;
        }
        embedded = true;
    } else {
        const float inverse = 1.0f / normalDotVelocity;
        const float first = (-1.0f - signedDistance) * inverse;
        const float second = (1.0f - signedDistance) * inverse;
        float lower;
        float upper;
        if (first <= second) {
            lower = first;
            upper = second;
        } else {
            lower = second;
            upper = first;
        }
        if (lower > 1.0f) {
            return false;
        }
        if (upper < 0.0f) {
            return false;
        }
        if (lower >= 0.0f) {
            if (lower >= 1.0f) {
                lower = 1.0f;
            }
        } else {
            lower = 0.0f;
        }
        t0 = lower;
        // the sphere resting on the front face: the plane point (base - normal) + velocity * t0 inside the triangle
        core::vector3d<float> planePoint;
        planePoint.X = (baseX - plane.Normal.X) + (velX * t0);
        planePoint.Y = (baseY - plane.Normal.Y) + (velY * t0);
        planePoint.Z = (baseZ - plane.Normal.Z) + (velZ * t0);
        if (triangle.isPointInsideFast(planePoint)) {
            found = true;
            t = t0;
            collisionPoint = planePoint;
        }
    }
    (void)embedded;

    if (!found) {
        baseX = colData->basePoint.X;
        baseY = colData->basePoint.Y;
        baseZ = colData->basePoint.Z;
        velX = colData->velocity.X;
        velY = colData->velocity.Y;
        velZ = colData->velocity.Z;
        const float velocitySquared = ((velX * velX) + (velY * velY)) + (velZ * velZ);
        float newT = 0.0f;

        // the three vertices
        const core::vector3d<float>* vertices[3] = {&triangle.A, &triangle.B, &triangle.C};
        bool vertexHit = false;
        for (int i = 0; i < 3 && !vertexHit; ++i) {
            const core::vector3d<float>& v = *vertices[i];
            const float dot = ((velX * (baseX - v.X)) + (velY * (baseY - v.Y))) + (velZ * (baseZ - v.Z));
            const float b = dot + dot;
            const float c = ((((v.X - baseX) * (v.X - baseX)) + ((v.Y - baseY) * (v.Y - baseY))) +
                             ((v.Z - baseZ) * (v.Z - baseZ))) -
                            1.0f;
            if (getLowestRoot(velocitySquared, b, c, 1.0f, &newT)) {
                collisionPoint = v;
                t = newT;
                vertexHit = true;
            }
        }
        // If no vertex was hit the maximum for the edges stays at 1.0.
        found = vertexHit;
        float maxT = found ? t : 1.0f;

        // the three edges: A-B, B-C, C-A
        const core::vector3d<float>* edgeStart[3] = {&triangle.A, &triangle.B, &triangle.C};
        const core::vector3d<float>* edgeEnd[3] = {&triangle.B, &triangle.C, &triangle.A};
        for (int i = 0; i < 3; ++i) {
            const core::vector3d<float>& s = *edgeStart[i];
            const core::vector3d<float>& e = *edgeEnd[i];
            const float edgeX = e.X - s.X;
            const float edgeY = e.Y - s.Y;
            const float edgeZ = e.Z - s.Z;
            const float toVertexX = s.X - baseX;
            const float toVertexY = s.Y - baseY;
            const float toVertexZ = s.Z - baseZ;
            const float edgeSquared = ((edgeX * edgeX) + (edgeY * edgeY)) + (edgeZ * edgeZ);
            const float edgeDotVelocity = ((velX * edgeX) + (velY * edgeY)) + (velZ * edgeZ);
            const float edgeDotBaseToVertex = ((edgeX * toVertexX) + (edgeY * toVertexY)) + (edgeZ * toVertexZ);
            const float velocityDotBaseToVertex = ((velX * toVertexX) + (velY * toVertexY)) + (velZ * toVertexZ);
            const float a = ((-velocitySquared) * edgeSquared) + (edgeDotVelocity * edgeDotVelocity);
            const float b = ((velocityDotBaseToVertex + velocityDotBaseToVertex) * edgeSquared) +
                            ((edgeDotVelocity * -2.0f) * edgeDotBaseToVertex);
            const float toVertexSquared = ((toVertexX * toVertexX) + (toVertexY * toVertexY)) + (toVertexZ * toVertexZ);
            const float c = ((1.0f - toVertexSquared) * edgeSquared) + (edgeDotBaseToVertex * edgeDotBaseToVertex);
            float hitT = 0.0f;
            if (getLowestRoot(a, b, c, maxT, &hitT)) {
                const float f = ((hitT * edgeDotVelocity) - edgeDotBaseToVertex) / edgeSquared;
                if (f >= 0.0f && f <= 1.0f) {
                    collisionPoint.X = (f * edgeX) + s.X;
                    collisionPoint.Y = (f * edgeY) + s.Y;
                    collisionPoint.Z = (f * edgeZ) + s.Z;
                    maxT = hitT;
                    found = true;
                }
            }
        }
        t = maxT;
        if (!found) {
            return false;
        }
    }

    // record the hit when it is the nearest
    const float length = static_cast<float>(
        std::sqrt(static_cast<double>(((colData->velocity.X * colData->velocity.X) + (colData->velocity.Y * colData->velocity.Y)) +
                                      (colData->velocity.Z * colData->velocity.Z))));
    const float distance = t * length;
    if (!colData->foundCollision || colData->nearestDistance > distance) {
        colData->nearestDistance = distance;
        colData->intersectionPoint = collisionPoint;
        colData->foundCollision = true;
        colData->intersectionTriangle = triangle;
        ++colData->triangleHits;
        return true;
    }
    return false;
}

// 0x6c5674 _ZN6glitch5scene22CSceneCollisionManager21getSceneNodeFromCameraBBEPNS0_16ICameraSceneNodeEib
ISceneNode* CSceneCollisionManager::getSceneNodeFromCameraBB(ICameraSceneNode* camera, std::int32_t idBitMask, bool noDebugObjects) {
    if (camera == nullptr) {
        return nullptr;
    }
    const core::vector3d<float> start = camera->getAbsolutePosition();
    const core::vector3d<float>& target = camera->getTarget();  // vptr+0x108
    core::vector3d<float> look;
    look.X = target.X - start.X;
    look.Y = target.Y - start.Y;
    look.Z = target.Z - start.Z;
    look.normalize();
    const float farValue = camera->getFarValue();  // vptr+0x120
    core::line3d<float> ray;
    ray.start = start;
    ray.end.X = (farValue * look.X) + start.X;
    ray.end.Y = (farValue * look.Y) + start.Y;
    ray.end.Z = (farValue * look.Z) + start.Z;
    return getSceneNodeFromRayBB(ray, idBitMask, noDebugObjects, nullptr);  // vptr+0x20
}

// 0x6c57d8 _ZN6glitch5scene22CSceneCollisionManager32getScreenCoordinatesFrom3DPositionENS_4core8vector3dIfEEPNS0_16ICameraSceneNodeE
core::position2d<std::int32_t> CSceneCollisionManager::getScreenCoordinatesFrom3DPosition(core::vector3d<float> position,
                                                                                           ICameraSceneNode* camera) {
    core::position2d<std::int32_t> result;
    if (sceneManager != nullptr && driver != nullptr && (camera != nullptr || (camera = sceneManager->activeCamera) != nullptr)) {
        // the viewport of the driver's current render target (the last entry of the target stack, +0xc8)
        const core::rect<std::int32_t>& viewport = driver->m_renderTargets.back()->m_viewport;
        const std::int32_t top = viewport.UpperLeftCorner.Y;      // +0x18
        const std::int32_t right = viewport.LowerRightCorner.X;   // +0x1c
        const std::int32_t left = viewport.UpperLeftCorner.X;     // +0x14
        const std::int32_t bottom = viewport.LowerRightCorner.Y;  // +0x20
        core::CMatrix4<float> transform(camera->getProjectionMatrix(), core::CMatrix4<float>::EM4CONST_COPY);  // vptr+0xf8
        core::detail::multEq(transform, camera->getViewMatrix());                                              // vptr+0xfc
        float row[4] = {position.X, position.Y, position.Z, 1.0f};
        transform.multiplyWith1x4Matrix(row);
        if (row[3] < 0.0f) {
            result.X = -10000;
            result.Y = -10000;
        } else {
            float inverse = 1.0f;
            if (row[3] != 0.0f) {
                inverse = 1.0f / row[3];
            }
            const std::int32_t halfWidth = (right - left) / 2;
            const std::int32_t halfHeight = (bottom - top) / 2;
            const float x = std::floor((inverse * (static_cast<float>(halfWidth) * row[0])) + 0.5f);
            const float y = std::floor((static_cast<float>(halfHeight) * (inverse * row[1])) + 0.5f);
            result.X = static_cast<std::int32_t>(x) + halfWidth;
            result.Y = halfHeight - static_cast<std::int32_t>(y);
        }
    } else {
        result.X = -1000;
        result.Y = -1000;
    }
    return result;
}

// 0x6c59c0 _ZN6glitch5scene22CSceneCollisionManager27getRayFromScreenCoordinatesENS_4core10position2dIiEEPNS0_16ICameraSceneNodeE
core::line3d<float> CSceneCollisionManager::getRayFromScreenCoordinates(core::position2d<std::int32_t> position, ICameraSceneNode* camera) {
    core::line3d<float> ray{};
    if (sceneManager == nullptr) {
        return ray;
    }
    if (camera == nullptr) {
        camera = sceneManager->activeCamera;
        if (camera == nullptr) {
            return ray;
        }
    }
    const SViewFrustum* frustum = camera->getViewFrustum();  // vptr+0x144
    const core::plane3d<float>& farPlane = frustum->planes[0];
    const core::plane3d<float>& leftPlane = frustum->planes[2];
    const core::plane3d<float>& rightPlane = frustum->planes[3];
    const core::plane3d<float>& bottomPlane = frustum->planes[4];
    const core::plane3d<float>& topPlane = frustum->planes[5];
    // the far plane corners: left-up, right-up and left-down
    core::vector3d<float> farLeftUp{};
    farPlane.getIntersectionWithPlanes(topPlane, leftPlane, farLeftUp);
    core::vector3d<float> farRightUp{};
    farPlane.getIntersectionWithPlanes(topPlane, rightPlane, farRightUp);
    const float rightX = farRightUp.X - farLeftUp.X;
    const float rightY = farRightUp.Y - farLeftUp.Y;
    const float rightZ = farRightUp.Z - farLeftUp.Z;
    core::vector3d<float> farLeftDown{};
    farPlane.getIntersectionWithPlanes(bottomPlane, leftPlane, farLeftDown);
    const float downX = farLeftDown.X - farLeftUp.X;
    const float downY = farLeftDown.Y - farLeftUp.Y;
    const float downZ = farLeftDown.Z - farLeftUp.Z;
    // the size of the driver's current render target
    const core::rect<std::int32_t>& viewport = driver->m_renderTargets.back()->m_viewport;
    const float dx = static_cast<float>(position.X) / static_cast<float>(viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X);
    const float dy = static_cast<float>(position.Y) / static_cast<float>(viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y);
    if (camera->isOrthogonal()) {  // vptr+0x150
        ray.start.X = (((dx - 0.5f) * rightX) + frustum->cameraPosition.X) + ((dy - 0.5f) * downX);
        ray.start.Y = (((dx - 0.5f) * rightY) + frustum->cameraPosition.Y) + ((dy - 0.5f) * downY);
        ray.start.Z = (((dx - 0.5f) * rightZ) + frustum->cameraPosition.Z) + ((dy - 0.5f) * downZ);
    } else {
        ray.start = frustum->cameraPosition;
    }
    ray.end.X = (((dx * rightX) + farLeftUp.X) + (dy * downX));
    ray.end.Y = (((dx * rightY) + farLeftUp.Y) + (dy * downY));
    ray.end.Z = (((dx * rightZ) + farLeftUp.Z) + (dy * downZ));
    return ray;
}

// 0x6c5d40 _ZN6glitch5scene22CSceneCollisionManager13getPickedNodeBBEPNS0_10ISceneNodeERKNS_4core6line3dIfEEibRfRS3_
void CSceneCollisionManager::getPickedNodeBB(ISceneNode* root, const core::line3d<float>& ray, std::int32_t idBitMask, bool noDebugObjects,
                                             float& outBestDistance, ISceneNode*& outBestNode) {
    const SChildList& children = root->getChildren();  // the list at node +0xf0
    for (auto it = children.begin(); it != children.end(); ++it) {
        ISceneNode* current = *it;
        if ((current->flags & ESNF_VISIBLE) == 0) {
            continue;
        }
        bool considered = true;
        if (noDebugObjects) {
            if (current->isDebugObject()) {
                considered = false;
            } else if (idBitMask != 0 && (current->getID() & idBitMask) == 0) {  // vptr+0x4c
                considered = false;
            }
        } else if (idBitMask != 0 && (current->getID() & idBitMask) == 0) {
            considered = false;
        }
        if (considered) {
            // the ray in the node's object space
            core::CMatrix4<float> inverse(core::CMatrix4<float>::EM4CONST_IDENTITY);
            if (current->getAbsoluteTransformation().getInverse(inverse)) {  // vptr+0x38
                const float* m = inverse.M;
                core::line3d<float> local;
                local.start.X = (((ray.start.X * m[0]) + (ray.start.Y * m[4])) + (ray.start.Z * m[8])) + m[12];
                local.start.Y = (((ray.start.X * m[1]) + (ray.start.Y * m[5])) + (ray.start.Z * m[9])) + m[13];
                local.start.Z = (((ray.start.X * m[2]) + (ray.start.Y * m[6])) + (ray.start.Z * m[10])) + m[14];
                local.end.X = (((ray.end.X * m[0]) + (ray.end.Y * m[4])) + (ray.end.Z * m[8])) + m[12];
                local.end.Y = (((ray.end.X * m[1]) + (ray.end.Y * m[5])) + (ray.end.Z * m[9])) + m[13];
                local.end.Z = (((ray.end.X * m[2]) + (ray.end.Y * m[6])) + (ray.end.Z * m[10])) + m[14];
                const core::aabbox3d<float>& box = current->getBoundingBox();  // vptr+0x30
                float tmin = 0.0f;
                float tmax = 0.0f;
                if (box.intersectsWithSegment(local, tmin, tmax)) {
                    core::vector3d<float> edges[8];
                    box.getEdges(edges);
                    float distance = 0.0f;
                    for (int e = 0; e < 8; ++e) {
                        const float candidate = squaredDistance(edges[e], local.start);
                        if (distance < candidate) {
                            distance = candidate;
                        }
                    }
                    if (outBestDistance > distance) {
                        outBestNode = current;
                        outBestDistance = distance;
                    }
                }
            }
        }
        if ((current->flags & ESNF_VISIBLE) == 0) {
            continue;
        }
        getPickedNodeBB(current, ray, idBitMask, noDebugObjects, outBestDistance, outBestNode);
    }
}

// 0x6c6280 _ZN6glitch5scene22CSceneCollisionManager18getSceneNodeFromRayBBENS_4core6line3dIfEEibPNS0_10ISceneNodeE
ISceneNode* CSceneCollisionManager::getSceneNodeFromRayBB(core::line3d<float> ray, std::int32_t idBitMask, bool noDebugObjects,
                                                          ISceneNode* root) {
    ISceneNode* best = nullptr;
    float bestDistance = kFloatMax;
    if (root == nullptr) {
        root = sceneManager->rootNode;  // the scene manager's +0x04
    }
    getPickedNodeBB(root, ray, idBitMask, noDebugObjects, bestDistance, best);
    return best;
}

// 0x6c62e8 _ZN6glitch5scene22CSceneCollisionManager17getCollisionPointERKNS_4core6line3dIfEEPNS0_17ITriangleSelectorERNS2_8vector3dIfEERNS2_10triangle3dIfEE
// The selector is called through its vtable slots +0x0c (getTriangleCount) and +0x14 (getTriangles with a box). The triangle at index i
// is the one the original reads at buffer base + 36 * i; the hit test calls the glitch triangle3d::getIntersectionWithLine (0x58615c).
bool CSceneCollisionManager::getCollisionPoint(const core::line3d<float>& ray, ITriangleSelector* selector,
                                               core::vector3d<float>& outPoint, core::triangle3d<float>& outTriangle) {
    if (!selector) return false;

    const core::vector3d<float>& start = ray.start;  // a2[0..2]
    const core::vector3d<float>& end = ray.end;      // a2[3..5]

    // Grow the scratch buffer to the selector's triangle count (never shrunk).
    const int triangleCount = selector->getTriangleCount();  // vtable +0x0c
    if (triangleCount > static_cast<int>(triangles.size())) {
        triangles.resize(static_cast<std::size_t>(triangleCount), core::triangle3d<float>{});
    }

    // Bounding box of the segment: min and max of start and end on each axis. The comparisons are the original's.
    core::aabbox3d<float> box;
    box.MinEdge.X = start.X;  // v51
    box.MaxEdge.X = start.X;  // v54
    box.MinEdge.Y = start.Y;  // v52
    box.MaxEdge.Y = start.Y;  // v55
    box.MinEdge.Z = start.Z;  // v53
    box.MaxEdge.Z = start.Z;  // v56
    if (start.X < end.X) box.MaxEdge.X = end.X;
    if (start.Y < end.Y) box.MaxEdge.Y = end.Y;
    if (end.Z > box.MaxEdge.Z) box.MaxEdge.Z = end.Z;
    if (end.X < box.MinEdge.X) box.MinEdge.X = end.X;
    if (end.Y < box.MinEdge.Y) box.MinEdge.Y = end.Y;
    if (end.Z < box.MinEdge.Z) box.MinEdge.Z = end.Z;

    // Collect the triangles that overlap the box. outCount is the number the selector wrote (v62).
    int outCount = 0;
    selector->getTriangles(triangles.data(), triangleCount, outCount, box, nullptr);  // vtable +0x14

    // Unit direction of the segment: the original normalizes end - start (v60, then copied to v61).
    core::vector3d<float> dir{end.X - start.X, end.Y - start.Y, end.Z - start.Z};
    dir.normalize();

    // Squared segment length (v46), taken before the axis bounds are reordered.
    const float lengthSq = squaredDistance(start, end);

    // Per-axis low and high bounds used by the overlap tests (v19/v20, v36/v37, v38/v39). The swap is the original's.
    float minX = start.X, maxX = end.X;  // v19, v20
    if (minX >= maxX) {
        minX = end.X;
        maxX = start.X;
    }
    float minY = start.Y, maxY = end.Y;  // v36, v37
    if (minY >= maxY) {
        minY = end.Y;
        maxY = start.Y;
    }
    float minZ = start.Z, maxZ = end.Z;  // v38, v39
    if (minZ >= maxZ) {
        minZ = end.Z;
        maxZ = start.Z;
    }

    bool found = false;
    // The best hit distance starts at FLT_MAX (v44 = 3.4028e38).
    float bestDistSq = kFloatMax;
    // Hit point of the last intersection call (v57..v59). It is set once, before the loop, as in the original.
    core::vector3d<float> hit{};

    for (int i = 0; i < outCount; ++i) {
        const core::triangle3d<float>& tri = triangles[static_cast<std::size_t>(i)];

        // Cull on each axis with the span test.
        if (!overlapsSpan(tri.A.X, tri.B.X, tri.C.X, minX, maxX)) continue;
        if (!overlapsSpan(tri.A.Y, tri.B.Y, tri.C.Y, minY, maxY)) continue;
        if (!overlapsSpan(tri.A.Z, tri.B.Z, tri.C.Z, minZ, maxZ)) continue;

        // Keep the triangle only if a corner is nearer to the start than the best hit so far.
        const bool nearer = (bestDistSq > squaredDistance(start, tri.A)) || (bestDistSq > squaredDistance(start, tri.B)) ||
                            (bestDistSq > squaredDistance(start, tri.C));
        if (!nearer) continue;

        // Intersect the segment with the triangle's plane and inside test.
        if (!tri.getIntersectionWithLine(start, dir, hit)) continue;

        const float hitToStartSq = squaredDistance(hit, start);  // v32
        if (!(lengthSq > hitToStartSq)) continue;
        if (!(lengthSq > squaredDistance(hit, end))) continue;  // the hit lies on the segment
        if (!(bestDistSq > hitToStartSq)) continue;

        bestDistSq = hitToStartSq;
        outTriangle = tri;  // *a5 = triangle words (9 words copied)
        outPoint = hit;     // *a4 = hit (3 floats)
        found = true;
    }

    return found;
}

// 0x6c6c04 _ZN6glitch5scene22CSceneCollisionManager16collideWithWorldEiRNS1_14SCollisionDataENS_4core8vector3dIfEES6_
core::vector3d<float> CSceneCollisionManager::collideWithWorld(std::int32_t recursionDepth, SCollisionData& colData,
                                                               core::vector3d<float> position, core::vector3d<float> velocity) {
    const float veryCloseDistance = colData.slidingSpeed;  // +0x84
    if (recursionDepth > 5) {
        return position;
    }
    colData.velocity = velocity;                    // +0x24
    colData.normalizedVelocity = velocity;          // +0x30
    colData.normalizedVelocity.normalize();
    colData.basePoint = position;                   // +0x3c
    colData.foundCollision = false;
    colData.nearestDistance = kFloatMax;

    // the box the swept ellipsoid covers: R3Position and R3Position + R3Velocity, grown by the radius
    core::aabbox3d<float> box;
    box.MinEdge = colData.R3Position;
    box.MaxEdge = colData.R3Position;
    const core::vector3d<float> endPoint{colData.R3Position.X + colData.R3Velocity.X, colData.R3Position.Y + colData.R3Velocity.Y,
                                         colData.R3Position.Z + colData.R3Velocity.Z};
    if (colData.R3Position.X < endPoint.X) box.MaxEdge.X = endPoint.X;
    if (colData.R3Position.Y < endPoint.Y) box.MaxEdge.Y = endPoint.Y;
    if (endPoint.Z > box.MaxEdge.Z) box.MaxEdge.Z = endPoint.Z;
    if (endPoint.X < box.MinEdge.X) box.MinEdge.X = endPoint.X;
    if (endPoint.Y < box.MinEdge.Y) box.MinEdge.Y = endPoint.Y;
    if (endPoint.Z < box.MinEdge.Z) box.MinEdge.Z = endPoint.Z;
    box.MinEdge.X -= colData.eRadius.X;
    box.MinEdge.Y -= colData.eRadius.Y;
    box.MinEdge.Z -= colData.eRadius.Z;
    box.MaxEdge.X += colData.eRadius.X;
    box.MaxEdge.Y += colData.eRadius.Y;
    box.MaxEdge.Z += colData.eRadius.Z;

    // the triangles of the selector inside the box, scaled into ellipsoid space
    const int totalTriangles = colData.selector->getTriangleCount();  // vptr+0x0c
    triangles.resize(static_cast<std::size_t>(totalTriangles), core::triangle3d<float>{});
    core::CMatrix4<float> scaleMatrix;
    for (int i = 0; i < 16; ++i) scaleMatrix.M[i] = 0.0f;
    scaleMatrix.M[15] = 1.0f;
    scaleMatrix.M[0] = 1.0f / colData.eRadius.X;
    scaleMatrix.M[5] = 1.0f / colData.eRadius.Y;
    scaleMatrix.M[10] = 1.0f / colData.eRadius.Z;
    scaleMatrix.flag = false;
    int triangleCount = 0;
    colData.selector->getTriangles(triangles.data(), totalTriangles, triangleCount, box, &scaleMatrix);  // vptr+0x14
    for (int i = 0; i < triangleCount; ++i) {
        testTriangleIntersection(&colData, triangles[static_cast<std::size_t>(i)]);
    }

    if (!colData.foundCollision) {
        return core::vector3d<float>{position.X + velocity.X, position.Y + velocity.Y, position.Z + velocity.Z};
    }

    // the original destination point, and the new base point (backed off by the sliding speed when the hit is far enough)
    const core::vector3d<float> destination{position.X + velocity.X, position.Y + velocity.Y, position.Z + velocity.Z};
    core::vector3d<float> newBase = position;
    if (colData.nearestDistance >= veryCloseDistance) {
        core::vector3d<float> v = velocity;
        const float length = colData.nearestDistance - veryCloseDistance;
        v.normalize();
        v.X = length * v.X;
        v.Y = length * v.Y;
        v.Z = length * v.Z;
        newBase.X = v.X + colData.basePoint.X;
        newBase.Y = v.Y + colData.basePoint.Y;
        newBase.Z = v.Z + colData.basePoint.Z;
        v.normalize();
        colData.intersectionPoint.X = colData.intersectionPoint.X - (veryCloseDistance * v.X);
        colData.intersectionPoint.Y = colData.intersectionPoint.Y - (veryCloseDistance * v.Y);
        colData.intersectionPoint.Z = colData.intersectionPoint.Z - (veryCloseDistance * v.Z);
    }

    // the sliding plane through the hit, facing the new base point
    core::vector3d<float> slideNormal{newBase.X - colData.intersectionPoint.X, newBase.Y - colData.intersectionPoint.Y,
                                      newBase.Z - colData.intersectionPoint.Z};
    slideNormal.normalize();
    const float distanceToPlane =
        (-(((slideNormal.X * colData.intersectionPoint.X) + (slideNormal.Y * colData.intersectionPoint.Y)) +
           (slideNormal.Z * colData.intersectionPoint.Z))) +
        (((destination.X * slideNormal.X) + (destination.Y * slideNormal.Y)) + (destination.Z * slideNormal.Z));
    // the slide vector: the destination projected onto the plane, relative to the hit
    core::vector3d<float> slide;
    slide.X = (destination.X - (slideNormal.X * distanceToPlane)) - colData.intersectionPoint.X;
    slide.Y = (destination.Y - (slideNormal.Y * distanceToPlane)) - colData.intersectionPoint.Y;
    slide.Z = (destination.Z - (slideNormal.Z * distanceToPlane)) - colData.intersectionPoint.Z;
    const float slideLength =
        static_cast<float>(std::sqrt(static_cast<double>(((slide.X * slide.X) + (slide.Y * slide.Y)) + (slide.Z * slide.Z))));
    if (veryCloseDistance > slideLength) {
        return newBase;
    }
    return collideWithWorld(recursionDepth + 1, colData, newBase, slide);
}

// 0x6c72f4 _ZN6glitch5scene22CSceneCollisionManager25collideEllipsoidWithWorldEPNS0_17ITriangleSelectorERKNS_4core8vector3dIfEES8_S8_fS8_RNS5_9triangle3dIfEERb
core::vector3d<float> CSceneCollisionManager::collideEllipsoidWithWorld(ITriangleSelector* selector, const core::vector3d<float>& position,
                                                                        const core::vector3d<float>& radius,
                                                                        const core::vector3d<float>& velocity, float slidingSpeed,
                                                                        const core::vector3d<float>& gravity,
                                                                        core::triangle3d<float>& triangleOut, bool& outFalling) {
    if (selector == nullptr || radius.X == 0.0f || radius.Y == 0.0f || radius.Z == 0.0f) {
        return position;
    }
    SCollisionData colData;
    colData.eRadius = radius;
    colData.R3Velocity = velocity;
    colData.R3Position = position;
    colData.nearestDistance = kFloatMax;
    colData.slidingSpeed = slidingSpeed;
    colData.selector = selector;
    colData.triangleHits = 0;

    // the paper's ellipsoid space: positions and velocities divided by the radius
    core::vector3d<float> spacePosition = position / radius;
    core::vector3d<float> spaceVelocity = velocity / radius;
    core::vector3d<float> finalPosition = collideWithWorld(0, colData, spacePosition, spaceVelocity);

    outFalling = false;
    if (!(gravity.X == 0.0f && gravity.Y == 0.0f && gravity.Z == 0.0f)) {
        colData.R3Position.X = finalPosition.X * colData.eRadius.X;
        colData.R3Position.Y = finalPosition.Y * colData.eRadius.Y;
        colData.R3Position.Z = finalPosition.Z * colData.eRadius.Z;
        colData.R3Velocity = gravity;
        colData.triangleHits = 0;
        const core::vector3d<float> gravitySpace = gravity / radius;
        finalPosition = collideWithWorld(0, colData, finalPosition, gravitySpace);
        outFalling = (colData.triangleHits == 0);
    }
    if (colData.triangleHits != 0) {
        triangleOut = colData.intersectionTriangle;
        triangleOut.A.X *= colData.eRadius.X;
        triangleOut.A.Y *= colData.eRadius.Y;
        triangleOut.A.Z *= colData.eRadius.Z;
        triangleOut.B.X *= colData.eRadius.X;
        triangleOut.B.Y *= colData.eRadius.Y;
        triangleOut.B.Z *= colData.eRadius.Z;
        triangleOut.C.X *= colData.eRadius.X;
        triangleOut.C.Y *= colData.eRadius.Y;
        triangleOut.C.Z *= colData.eRadius.Z;
    }
    return core::vector3d<float>{finalPosition.X * colData.eRadius.X, finalPosition.Y * colData.eRadius.Y,
                                 finalPosition.Z * colData.eRadius.Z};
}

// 0x6c7720 _ZN6glitch5scene22CSceneCollisionManager26getCollisionResultPositionEPNS0_17ITriangleSelectorERKNS_4core8vector3dIfEES8_S8_RNS5_9triangle3dIfEERbfS8_
core::vector3d<float> CSceneCollisionManager::getCollisionResultPosition(
    ITriangleSelector* selector, const core::vector3d<float>& ellipsoidPosition, const core::vector3d<float>& ellipsoidRadius,
    const core::vector3d<float>& ellipsoidDirectionAndSpeed, core::triangle3d<float>& triangleOut, bool& outFalling, float slidingSpeed,
    const core::vector3d<float>& gravityDirectionAndSpeed) {
    if (selector == nullptr || ellipsoidRadius.X == 0.0f || ellipsoidRadius.Y == 0.0f || ellipsoidRadius.Z == 0.0f) {
        return ellipsoidPosition;
    }
    return collideEllipsoidWithWorld(selector, ellipsoidPosition, ellipsoidRadius, ellipsoidDirectionAndSpeed, slidingSpeed,
                                     gravityDirectionAndSpeed, triangleOut, outFalling);
}

}  // namespace glitch::scene
