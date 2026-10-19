// Bodies of glitch::scene::CSceneNodeAnimatorFollowSpline (canonical class: scene/CSceneNodeAnimatorFollowSpline.hpp). This
// file replaces the stand-in members of src/scene_simple_accessors.cpp, the recon_33 serialization functions and the
// comment block of src/recon/slice_27.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorFollowSpline.hpp"

#include <cmath>
#include <string>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

namespace {

// The attribute name of point `ordinal` (1-based): a one-character string whose character code is the ordinal.
std::string pointName(int ordinal) {
    std::string name;
    name.push_back(static_cast<char>(ordinal));
    return name;
}

// The original's wrap of a point index that is off by at most one lap (an index is never more than two away from the range).
std::int32_t wrapIndex(std::int32_t index, std::int32_t count) {
    if (index >= 0) {
        if (index >= count) {
            index -= count;
        }
    } else {
        index += count;
    }
    return index;
}

}  // namespace

// 0x6cccc0 _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineC1EjRKSt6vectorINS_4core8vector3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEEff
// 0x6ccdd8 _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineC2EjRKSt6vectorINS_4core8vector3dIfEENS3_10SAllocatorIS5_LNS_6memory13E_MEMORY_HINTE0EEEEff
CSceneNodeAnimatorFollowSpline::CSceneNodeAnimatorFollowSpline(std::uint32_t startTimeIn,
                                                               const core::svector<core::vector3d<float>>& pointsIn,
                                                               float speedIn, float tightnessIn)
    : points(pointsIn), speed(speedIn), tightness(tightnessIn), startTime(startTimeIn) {}

// 0x6cc784 _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineD1Ev
// 0x6cc804 _ZN6glitch5scene30CSceneNodeAnimatorFollowSplineD0Ev
CSceneNodeAnimatorFollowSpline::~CSceneNodeAnimatorFollowSpline() = default;

// 0x6ccef8 _ZNK6glitch5scene30CSceneNodeAnimatorFollowSpline19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorFollowSpline::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const {
    attributes->addFloat("Speed", speed, false);          // vptr+0x64
    attributes->addFloat("Tightness", tightness, false);  // vptr+0x64
    std::size_t count = points.size();
    // Flag 2 of the options (the first word of the structure) adds one terminating zero point.
    if (options != nullptr && (options->flags & 2u) != 0) {
        ++count;
    }
    for (std::size_t i = 0; i != count; ++i) {
        const std::string name = pointName(static_cast<int>(i) + 1);
        core::vector3d<float> point;  // zero beyond the stored points
        if (i < points.size()) {
            point = points[i];
        }
        attributes->addVector3d(name.c_str(), point, false);  // vptr+0x1a8
    }
}

// 0x6cd0cc _ZN6glitch5scene30CSceneNodeAnimatorFollowSpline21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CSceneNodeAnimatorFollowSpline::deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) {
    speed = attributes->getFloat("Speed");          // vptr+0x70
    tightness = attributes->getFloat("Tightness");  // vptr+0x70
    points.clear();
    for (int ordinal = 1;; ++ordinal) {
        const std::string name = pointName(ordinal);
        if (!attributes->existsAttribute(name.c_str())) {  // vptr+0x24
            break;
        }
        points.push_back(attributes->getVector3d(name.c_str()));  // vptr+0x1b4
    }
    // With flag 2 (see serializeAttributes) up to two trailing zero points are dropped while more than two points remain.
    if (options != nullptr && (options->flags & 2u) != 0) {
        for (int pass = 0; pass < 2; ++pass) {
            if (points.size() > 2) {
                const core::vector3d<float>& last = points.back();
                if (last.X == 0.0f && last.Y == 0.0f && last.Z == 0.0f) {
                    points.pop_back();
                    continue;
                }
            }
            break;
        }
    }
}

// 0x6cc830 _ZN6glitch5scene30CSceneNodeAnimatorFollowSpline11animateNodeEPNS0_10ISceneNodeEj
// Unlike its siblings this body does not test the node for null.
void CSceneNodeAnimatorFollowSpline::animateNode(ISceneNode* node, std::uint32_t timeMs) {
    const std::int32_t count = static_cast<std::int32_t>(points.size());
    if (count == 0) {
        return;
    }
    if (count == 1) {
        node->setPosition(points[0]);  // vptr+0xa4
        return;
    }
    const float dt = (static_cast<float>(timeMs - startTime) * speed) * 0.001f;
    const float whole = std::floor(dt);
    const float u = dt - whole;
    const std::int32_t index = static_cast<std::int32_t>(static_cast<std::uint32_t>(static_cast<std::int32_t>(whole)) %
                                                         static_cast<std::uint32_t>(count));
    const core::vector3d<float>& p0 = points[static_cast<std::size_t>(wrapIndex(index - 1, count))];
    const core::vector3d<float>& p1 = points[static_cast<std::size_t>(wrapIndex(index, count))];
    const core::vector3d<float>& p2 = points[static_cast<std::size_t>(wrapIndex(index + 1, count))];
    const core::vector3d<float>& p3 = points[static_cast<std::size_t>(wrapIndex(index + 2, count))];
    // Hermite basis functions h1..h4 (the arithmetic is kept in the compiled order).
    const float h1 = ((((u + u) * u) * u) + ((u * -3.0f) * u)) + 1.0f;
    const float h2 = (((u * -2.0f) * u) * u) + ((u * 3.0f) * u);
    const float u2 = u * u;
    const float u3 = u2 * u;
    const float h3 = ((((u * -2.0f) * u) + u3) + u);
    const float h4 = u3 - u2;
    core::vector3d<float> position;
    position.X = (((h1 * p1.X) + (h2 * p2.X)) + (h3 * (tightness * (p2.X - p0.X)))) + (h4 * (tightness * (p3.X - p1.X)));
    position.Y = (((h1 * p1.Y) + (h2 * p2.Y)) + (h3 * (tightness * (p2.Y - p0.Y)))) + (h4 * (tightness * (p3.Y - p1.Y)));
    position.Z = (((h1 * p1.Z) + (h2 * p2.Z)) + (h3 * (tightness * (p2.Z - p0.Z)))) + (h4 * (tightness * (p3.Z - p1.Z)));
    node->setPosition(position);
}

// 0x6ccd98 _ZN6glitch5scene30CSceneNodeAnimatorFollowSpline11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorFollowSpline::createClone() {
    return new CSceneNodeAnimatorFollowSpline(startTime, points, speed, tightness);  // operator new(0x2c)
}

// 0x6cc754 _ZNK6glitch5scene30CSceneNodeAnimatorFollowSpline7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorFollowSpline::getType() const {
    return ESNAT_FOLLOW_SPLINE;
}

}  // namespace glitch::scene
