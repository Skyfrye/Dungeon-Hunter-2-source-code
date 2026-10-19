// Test for batch g1-game-world-GameObject-5d2019-0.
//
// The GameObject constructor belongs to another batch and is not linked here, so no object is
// constructed. The storage is zero-filled and each getter is called with a qualified (non-virtual)
// call, so no vtable dispatch happens. Only m_scale and m_static are read, and both are zero here.
// The m_static == 1 branch of IsValidatingFloorPosition needs a constructed object and is left to
// the engine-level test.

#include <cstdio>
#include <cstring>
#include "dh2/GameObject.hpp"

namespace {

int g_failures = 0;

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

}  // namespace

int main() {
    std::memset(g_storage, 0, sizeof g_storage);
    GameObject* go = Storage();

    // Constant predicates.
    EXPECT(go->GameObject::IsGameObject() == true);
    EXPECT(go->GameObject::IsUpdatingPath() == true);
    EXPECT(go->GameObject::IsUpdatingPositionFromVisual() == false);
    EXPECT(go->GameObject::IsUpdatingPositionFromPhysics() == true);
    EXPECT(go->GameObject::IsUpdatingRotationFromVisual() == false);
    EXPECT(go->GameObject::IsUpdatingRotationFromPhysics() == false);
    EXPECT(go->GameObject::IsUpdatingVisualWithRotation() == true);
    EXPECT(go->GameObject::IsValidatingCameraLimits() == false);
    EXPECT(go->GameObject::IsAvoidingObstacles() == false);
    EXPECT(go->GameObject::IsDead() == false);
    EXPECT(go->GameObject::IsHit() == false);
    EXPECT(go->GameObject::IsObstacle() == false);

    // m_static is zero in zero-filled storage: the floor-position check returns 0.
    EXPECT(go->GameObject::IsValidatingFloorPosition() == 0);

    // Constant numeric getters. 0x40800000 is 4.0f and 0xBF800000 is -1.0f.
    EXPECT(go->GameObject::GetFXScaleValue() == -1);
    EXPECT(go->GameObject::GetSpeed() == 4.0f);
    EXPECT(go->GameObject::GetRotationSpeed() == -1.0f);
    EXPECT(go->GameObject::GetObstacleRadius() == 0.0f);
    EXPECT(go->GameObject::GetFocusObject() == nullptr);

    // Returns m_scale, which is zero in zero-filled storage.
    Point3D<float> scale = go->GameObject::GetFXScale();
    EXPECT(scale.X == 0.0f && scale.Y == 0.0f && scale.Z == 0.0f);

    // Interact is an empty hook: calling it with no other object must not fail.
    go->GameObject::Interact(nullptr);

    // Bit-pattern checks for the two float getters.
    std::uint32_t speedBits = 0x40800000u;
    float speed = 0.0f;
    std::memcpy(&speed, &speedBits, sizeof speed);
    EXPECT(go->GameObject::GetSpeed() == speed);

    std::uint32_t rotBits = 0xBF800000u;
    float rot = 0.0f;
    std::memcpy(&rot, &rotBits, sizeof rot);
    EXPECT(go->GameObject::GetRotationSpeed() == rot);

    if (g_failures == 0) {
        std::printf("GameObject getters: all checks passed\n");
        return 0;
    }
    std::printf("GameObject getters: %d failure(s)\n", g_failures);
    return 1;
}
