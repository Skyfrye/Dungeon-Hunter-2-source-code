// Bodies of glitch::collada::CBillboardSceneNode (canonical class: collada/CBillboardSceneNode.hpp). This file replaces the
// stand-in bodies of src/recon/slice_07.cpp that were written against the layout-less class.
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/collada/CBillboardSceneNode.hpp"

#include <cmath>

#include "glitch-core-io/core/matrix4_base.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"

namespace glitch::collada {

namespace {

using Vec3 = core::vector3d<float>;

// The product written as the pseudocode writes it: the a x b cross product with the arguments' signs folded in.
Vec3 cross(const Vec3& a, const Vec3& b) {
    return Vec3{a.Y * b.Z - a.Z * b.Y, a.Z * b.X - a.X * b.Z, a.X * b.Y - a.Y * b.X};
}

// A vector transformed by the rotation part of a matrix (translation terms included, they are zero for the parent matrix used here).
Vec3 transformByRows(const core::CMatrix4<float>& m, const Vec3& v) {
    return Vec3{((v.X * m.M[0] + v.Y * m.M[4]) + v.Z * m.M[8]) + m.M[12], ((v.X * m.M[1] + v.Y * m.M[5]) + v.Z * m.M[9]) + m.M[13],
                ((v.X * m.M[2] + v.Y * m.M[6]) + v.Z * m.M[10]) + m.M[14]};
}

core::CMatrix4<float> zeroMatrix() {
    core::CMatrix4<float> m{core::CMatrix4<float>::EM4CONST_NOTHING};
    for (float& value : m.M) {
        value = 0.0f;
    }
    m.flag = false;
    return m;
}

core::CMatrix4<float> identity() {
    return core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
}

}  // namespace

// 0x60cec8 _ZN6glitch7collada19CBillboardSceneNodeD1Ev (D0 0x60cf24 skipped)
CBillboardSceneNode::~CBillboardSceneNode() = default;

// 0x60cb24 _ZNK6glitch7collada19CBillboardSceneNode25getTransformedBoundingBoxEv
// When the box-dirty bit (0x100) is clear the cached box is returned. Otherwise the local box (K 0x30) is copied into it, the parent's
// absolute transformation (K 0x38) moves it (transformBoxEx) and the bit is cleared.
const core::aabbox3d<float>& CBillboardSceneNode::getTransformedBoundingBox() const {
    if ((flags & scene::ESNF_BOX_DIRTY) == 0) {
        return transformedBoundingBox;
    }
    transformedBoundingBox = getBoundingBox();
    getParent()->getAbsoluteTransformation().transformBoxEx(transformedBoundingBox);
    flags &= ~static_cast<std::uint32_t>(scene::ESNF_BOX_DIRTY);
    return transformedBoundingBox;
}

// 0x60cbb0 _ZN6glitch7collada19CBillboardSceneNode18computeBoundingBoxEv
// CSceneNode's box first; then r, the larger of the lengths of the box's two corners, is taken. A record without the "turn about one
// axis" setting (mode 2 with a unit axis) gets the cube (-r..r); otherwise the extent along the axis the billboard turns about is kept
// and the other two become -r..r.
void CBillboardSceneNode::computeBoundingBox() {
    CSceneNode::computeBoundingBox();
    const float lengthMin = std::sqrt((boundingBox.MinEdge.X * boundingBox.MinEdge.X + boundingBox.MinEdge.Y * boundingBox.MinEdge.Y) +
                                      boundingBox.MinEdge.Z * boundingBox.MinEdge.Z);
    const float lengthMax = std::sqrt((boundingBox.MaxEdge.X * boundingBox.MaxEdge.X + boundingBox.MaxEdge.Y * boundingBox.MaxEdge.Y) +
                                      boundingBox.MaxEdge.Z * boundingBox.MaxEdge.Z);
    const float r = lengthMin > lengthMax ? lengthMin : lengthMax;

    auto cube = [&]() {
        boundingBox.MaxEdge.Z = r;
        boundingBox.MinEdge.Z = -r;
        boundingBox.MinEdge.X = -r;
        boundingBox.MinEdge.Y = -r;
        boundingBox.MaxEdge.X = r;
        boundingBox.MaxEdge.Y = r;
    };

    const SBillboardInfo* info = node->billboard;
    if (info->mode[0] != 2) {
        cube();
        return;
    }
    const float bx = info->axisB[0];
    const float by = info->axisB[1];
    const float bz = info->axisB[2];
    if (bx == 1.0f && by == 0.0f) {
        if (bz == 0.0f) {  // axis (1, 0, 0): the x extent is kept
            boundingBox.MaxEdge.Z = r;
            boundingBox.MinEdge.Z = -r;
            boundingBox.MinEdge.Y = -r;
            boundingBox.MaxEdge.Y = r;
            return;
        }
        cube();
        return;
    }
    if (bx != 0.0f) {
        cube();
        return;
    }
    if (by == 1.0f) {
        if (bz != 0.0f) {
            cube();
            return;
        }
        boundingBox.MaxEdge.Z = r;  // axis (0, 1, 0): the y extent is kept
        boundingBox.MinEdge.Z = -r;
        boundingBox.MinEdge.X = -r;
        boundingBox.MaxEdge.X = r;
    } else {
        if (by != 0.0f || bz != 1.0f) {
            cube();
            return;
        }
        boundingBox.MinEdge.Y = -r;  // axis (0, 0, 1): the z extent is kept
        boundingBox.MaxEdge.Y = r;
        boundingBox.MinEdge.X = -r;
        boundingBox.MaxEdge.X = r;
    }
}

// 0x60cf88 _ZN6glitch7collada19CBillboardSceneNode22updateAbsolutePositionEb
// Without a scene manager or an active camera: ISceneNode's version, and the children with `includeChildren`.
// With a camera: the parent's absolute matrix P (translation cleared), the parent's and the camera's positions, and the camera's view
// matrix V are read. A = normalize(P * axisA) and B = normalize(P * axisB) come from the record's two axes; n = normalize(B x A) and
// m = normalize(A x n) with A give the record's basis [n; m; A]. The look vector L is -V's third row (mode[1] == 2) or
// normalize(cameraPosition - parentPosition). With mode[0] == 2 the facing turns about axis B: T = normalize((B x L) x B),
// U = normalize(n x B) and the rotation by the angle between T and U (acos of their dot product, clamped, sign from (U x T) . B)
// about B gives the matrix. Otherwise the camera-facing basis [R; W; L] (R = -normalize(L x V column 1), W = normalize(R' x L)) is built
// and multiplied with the inverse of the record's basis (a failed inverse gives the zero matrix). The result is translate(parentPosition)
// * matrix * P * relative transformation, the absolute-changed bit is set and the children follow when requested.
void CBillboardSceneNode::updateAbsolutePosition(bool includeChildren) {
    scene::ICameraSceneNode* camera = sceneManager != nullptr ? sceneManager->activeCamera : nullptr;
    if (camera == nullptr) {
        ISceneNode::updateAbsolutePosition(includeChildren);
        if (includeChildren) {
            for (scene::ISceneNode* child : getChildren()) {
                child->updateAbsolutePosition(true);
            }
        }
        return;
    }

    core::CMatrix4<float> parentMatrix = parent->getAbsoluteTransformation();
    parentMatrix.M[12] = 0.0f;
    parentMatrix.M[13] = 0.0f;
    parentMatrix.M[14] = 0.0f;
    parentMatrix.flag = false;
    const Vec3 parentPosition = parent->getAbsolutePosition();
    const Vec3 cameraPosition = camera->getAbsolutePosition();
    const core::CMatrix4<float> viewMatrix = camera->getViewMatrix();

    const SBillboardInfo* info = node->billboard;
    Vec3 axisA = transformByRows(parentMatrix, Vec3{info->axisA[0], info->axisA[1], info->axisA[2]});
    axisA.normalize();
    Vec3 axisB = transformByRows(parentMatrix, Vec3{info->axisB[0], info->axisB[1], info->axisB[2]});
    axisB.normalize();

    Vec3 n = cross(axisB, axisA);  // -(A x B)
    n.normalize();
    Vec3 m = cross(axisA, n);
    m.normalize();

    core::CMatrix4<float> basis = zeroMatrix();  // [n; m; A], the record's basis (v94)
    basis.M[0] = n.X;
    basis.M[1] = n.Y;
    basis.M[2] = n.Z;
    basis.M[4] = m.X;
    basis.M[5] = m.Y;
    basis.M[6] = m.Z;
    basis.M[8] = axisA.X;
    basis.M[9] = axisA.Y;
    basis.M[10] = axisA.Z;
    basis.M[15] = 1.0f;
    basis.flag = true;

    if (info->mode[0] == 2) {
        Vec3 look;
        if (info->mode[1] == 2) {
            look = Vec3{-viewMatrix.M[2], -viewMatrix.M[6], -viewMatrix.M[10]};
        } else {
            look = Vec3{cameraPosition.X - parentPosition.X, cameraPosition.Y - parentPosition.Y, cameraPosition.Z - parentPosition.Z};
            look.normalize();
        }
        const Vec3 w = cross(axisB, look);  // -(L x B)
        Vec3 t = cross(w, axisB);
        t.normalize();
        Vec3 u = cross(n, axisB);
        u.normalize();
        float cosine = (t.X * u.X + t.Y * u.Y) + t.Z * u.Z;
        if (cosine >= -1.0f) {
            if (cosine >= 1.0f) {
                cosine = 1.0f;
            }
        } else {
            cosine = -1.0f;
        }
        float angle = std::acos(cosine);
        const Vec3 uxt = cross(u, t);
        if ((((uxt.X * axisB.X) + (uxt.Y * axisB.Y)) + (uxt.Z * axisB.Z)) >= 0.0f) {
            angle = -angle;
        }
        const core::quaternion rotation = core::quaternion::fromAngleAxis(angle, axisB);
        core::CMatrix4<float> rotationMatrix = zeroMatrix();
        rotation.getMatrix_transposed(rotationMatrix);
        basis = rotationMatrix;
    } else {
        Vec3 look;
        float rightX;
        float rightY;
        float rightZ;
        float upX;
        float upY;
        float upZ;
        if (info->mode[1] == 2) {
            look = Vec3{-viewMatrix.M[2], -viewMatrix.M[6], -viewMatrix.M[10]};
            rightX = viewMatrix.M[0];
            rightY = viewMatrix.M[4];
            rightZ = viewMatrix.M[8];
            upX = viewMatrix.M[1];
            upY = viewMatrix.M[5];
            upZ = viewMatrix.M[9];
        } else {
            look = Vec3{cameraPosition.X - parentPosition.X, cameraPosition.Y - parentPosition.Y, cameraPosition.Z - parentPosition.Z};
            look.normalize();
            // The camera's second column (view M1, M5, M9) crossed into the look vector gives the right axis.
            const Vec3 camUp{viewMatrix.M[1], viewMatrix.M[5], viewMatrix.M[9]};
            Vec3 right = cross(look, camUp);
            right.normalize();
            rightX = -right.X;
            rightY = -right.Y;
            rightZ = -right.Z;
            Vec3 up = cross(right, look);
            up.normalize();
            upX = up.X;
            upY = up.Y;
            upZ = up.Z;
        }
        core::CMatrix4<float> facing = zeroMatrix();  // [R; W; L]
        facing.M[0] = rightX;
        facing.M[1] = rightY;
        facing.M[2] = rightZ;
        facing.M[4] = upX;
        facing.M[5] = upY;
        facing.M[6] = upZ;
        facing.M[8] = look.X;
        facing.M[9] = look.Y;
        facing.M[10] = look.Z;
        facing.M[15] = 1.0f;
        facing.flag = false;
        basis.flag = false;
        if (basis.makeInverse()) {
            core::CMatrix4<float> product = zeroMatrix();
            core::detail::mult34(facing, basis, product);
            basis = product;
        } else {
            for (float& value : basis.M) {
                value = 0.0f;
            }
            basis.flag = false;
        }
    }

    core::CMatrix4<float> translation = zeroMatrix();
    translation.M[0] = 1.0f;
    translation.M[5] = 1.0f;
    translation.M[10] = 1.0f;
    translation.M[15] = 1.0f;
    translation.M[12] = parentPosition.X;
    translation.M[13] = parentPosition.Y;
    translation.M[14] = parentPosition.Z;
    translation.flag = false;
    core::CMatrix4<float> step1 = identity();
    core::detail::mult34(translation, basis, step1);
    core::CMatrix4<float> step2 = identity();
    core::detail::mult34(step1, parentMatrix, step2);
    flags |= scene::ESNF_ABSOLUTE_CHANGED;
    core::detail::mult34(step2, getRelativeTransformation(), absoluteTransform);
    if (includeChildren) {
        for (scene::ISceneNode* child : getChildren()) {
            child->updateAbsolutePosition(true);
        }
    }
}

}  // namespace glitch::collada
