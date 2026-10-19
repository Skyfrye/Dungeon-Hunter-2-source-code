// Test for batch r2a-game-world-GameObject-5d2019-0, SetRelativeAABB (0x38b110), in
// game-world/src/g1-game-world-GameObject-5d2019-1.cpp.
//
// SetRelativeAABB copies the box into the local AABB, sets the zero-size flag when the box has no x and no y
// extent, widens a box narrower than 10 units in x or y by 5 units on each side, then refreshes the world AABB
// (UpdateAbsoluteAABB, defined in the same unit) and the PFObject (UpdatePFObject, observed here).
//
// The object is zero-filled and never constructed, as in the other GameObject tests, and the call is qualified so
// that no vtable dispatch happens. aabb<float> is declared but not defined in the tree, so the box is passed as the
// six floats the original reads (min xyz, then max xyz). The engine calls the unit makes that are defined elsewhere
// are stubbed so that the unit links.

#include <cstdio>
#include <cstring>

#include "dh2/GameObject.hpp"
#include "dh2/VisualObject.hpp"
#include "glitch-scene-collada-gui/scene_node.hpp"

namespace {

int g_failures = 0;
int g_pfUpdates = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

alignas(GameObject) unsigned char g_storage[sizeof(GameObject)];

GameObject* Storage() {
    return reinterpret_cast<GameObject*>(g_storage);
}

const aabb<float>& AsBox(const float* sixFloats) {
    return *reinterpret_cast<const aabb<float>*>(sixFloats);
}

void Reset() {
    std::memset(g_storage, 0, sizeof g_storage);
    g_pfUpdates = 0;
}

bool LocalBoxIs(const GameObject* go, const float (&expected)[6]) {
    for (int i = 0; i < 6; ++i) {
        if (go->m_relAabb[i] != expected[i]) {
            return false;
        }
    }
    return true;
}

}  // namespace

// Engine calls made by the unit that are defined outside it (stubs for linking only).
void GameObject::UpdatePFObject() {
    ++g_pfUpdates;
}

const Point3D<float>& GameObject::GetTargetPosition() const {
    static const Point3D<float> origin{};
    return origin;
}

void VisualObject::SyncVisibility() {}

glitch::scene::ISceneNode* VisualObject::GetSpecificNode(const char* /*name*/) const {
    return nullptr;
}

glitch::core::vector3d<float> glitch::scene::ISceneNode::getAbsolutePosition() const {
    return glitch::core::vector3d<float>{};
}

int main() {
    // A wide box is copied as it is: no slack, no zero-size flag, one PFObject update. The world box is the
    // local box moved by the position.
    {
        Reset();
        GameObject* go = Storage();
        go->m_position = Point3D<float>{1.0f, 2.0f, 3.0f};
        const float wide[6] = {0.0f, 0.0f, 0.0f, 20.0f, 30.0f, 40.0f};
        go->GameObject::SetRelativeAABB(AsBox(wide), false);
        const float expected[6] = {0.0f, 0.0f, 0.0f, 20.0f, 30.0f, 40.0f};
        EXPECT(LocalBoxIs(go, expected));
        EXPECT(go->m_zeroSizeAabb == 0);
        EXPECT(g_pfUpdates == 1);
        EXPECT(go->m_absAabb[0] == 1.0f && go->m_absAabb[1] == 2.0f && go->m_absAabb[2] == 3.0f);
        EXPECT(go->m_absAabb[3] == 21.0f && go->m_absAabb[4] == 32.0f && go->m_absAabb[5] == 43.0f);
    }

    // Narrower than 10 in x: x gets 5 units of slack on each side. y (20 wide) and z are untouched.
    {
        Reset();
        GameObject* go = Storage();
        const float narrowX[6] = {10.0f, 0.0f, 0.0f, 15.0f, 20.0f, 20.0f};
        go->GameObject::SetRelativeAABB(AsBox(narrowX), false);
        const float expected[6] = {5.0f, 0.0f, 0.0f, 20.0f, 20.0f, 20.0f};
        EXPECT(LocalBoxIs(go, expected));
        EXPECT(go->m_zeroSizeAabb == 0);
    }

    // Narrower than 10 in both x and y: both axes get the slack, z does not.
    {
        Reset();
        GameObject* go = Storage();
        const float narrowXY[6] = {0.0f, 0.0f, 0.0f, 5.0f, 4.0f, 9.0f};
        go->GameObject::SetRelativeAABB(AsBox(narrowXY), false);
        const float expected[6] = {-5.0f, -5.0f, 0.0f, 10.0f, 9.0f, 9.0f};
        EXPECT(LocalBoxIs(go, expected));
        EXPECT(go->m_zeroSizeAabb == 0);
    }

    // No x and no y extent: the zero-size flag is set, and both axes are widened (their width is 0 < 10).
    {
        Reset();
        GameObject* go = Storage();
        const float point[6] = {3.0f, 4.0f, 0.0f, 3.0f, 4.0f, 20.0f};
        go->GameObject::SetRelativeAABB(AsBox(point), true);
        const float expected[6] = {-2.0f, -1.0f, 0.0f, 8.0f, 9.0f, 20.0f};
        EXPECT(LocalBoxIs(go, expected));
        EXPECT(go->m_zeroSizeAabb == 1);
    }

    // A zero x extent alone does not set the zero-size flag (both x and y must be zero), but x still gets slack.
    {
        Reset();
        GameObject* go = Storage();
        const float flatX[6] = {3.0f, 0.0f, 0.0f, 3.0f, 20.0f, 20.0f};
        go->GameObject::SetRelativeAABB(AsBox(flatX), false);
        const float expected[6] = {-2.0f, 0.0f, 0.0f, 8.0f, 20.0f, 20.0f};
        EXPECT(LocalBoxIs(go, expected));
        EXPECT(go->m_zeroSizeAabb == 0);
    }

    // Exactly 10 wide is not narrower than 10: no slack.
    {
        Reset();
        GameObject* go = Storage();
        const float exact[6] = {0.0f, 0.0f, 0.0f, 10.0f, 10.0f, 10.0f};
        go->GameObject::SetRelativeAABB(AsBox(exact), false);
        const float expected[6] = {0.0f, 0.0f, 0.0f, 10.0f, 10.0f, 10.0f};
        EXPECT(LocalBoxIs(go, expected));
    }

    if (g_failures == 0) {
        std::printf("r2a-game-world-GameObject-5d2019-0 test: all checks passed\n");
        return 0;
    }
    std::printf("r2a-game-world-GameObject-5d2019-0 test: %d failure(s)\n", g_failures);
    return 1;
}
