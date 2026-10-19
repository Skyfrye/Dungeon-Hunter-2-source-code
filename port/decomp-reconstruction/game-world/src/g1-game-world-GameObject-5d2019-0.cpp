// Batch g1-game-world-GameObject-5d2019-0: the constant-valued GameObject virtual getters and the
// empty Interact() hook. Declarations and default values come from dh2/GameObject.hpp.

#include "dh2/GameObject.hpp"

// 0x340054 _ZNK10GameObject12IsGameObjectEv
bool GameObject::IsGameObject() const {
    return true;
}

// 0x34005c _ZNK10GameObject14IsUpdatingPathEv
bool GameObject::IsUpdatingPath() const {
    return true;
}

// 0x340064 _ZNK10GameObject28IsUpdatingPositionFromVisualEv
bool GameObject::IsUpdatingPositionFromVisual() const {
    return false;
}

// 0x34006c _ZNK10GameObject29IsUpdatingPositionFromPhysicsEv
bool GameObject::IsUpdatingPositionFromPhysics() const {
    return true;
}

// 0x340074 _ZNK10GameObject28IsUpdatingRotationFromVisualEv
bool GameObject::IsUpdatingRotationFromVisual() const {
    return false;
}

// 0x34007c _ZNK10GameObject29IsUpdatingRotationFromPhysicsEv
bool GameObject::IsUpdatingRotationFromPhysics() const {
    return false;
}

// 0x340084 _ZNK10GameObject28IsUpdatingVisualWithRotationEv
bool GameObject::IsUpdatingVisualWithRotation() const {
    return true;
}

// 0x34008c _ZNK10GameObject25IsValidatingFloorPositionEv
// ARM: LDRB R0, [R0,#0x84]; CMP R0,#0; MOVNE R0,#2. The byte at +0x84 is m_static.
int GameObject::IsValidatingFloorPosition() const {
    if (m_static != 0) {
        return 2;
    }
    return 0;
}

// 0x34009c _ZNK10GameObject24IsValidatingCameraLimitsEv
bool GameObject::IsValidatingCameraLimits() const {
    return false;
}

// 0x3400a4 _ZNK10GameObject19IsAvoidingObstaclesEv
bool GameObject::IsAvoidingObstacles() const {
    return false;
}

// 0x3400ac _ZNK10GameObject6IsDeadEv
bool GameObject::IsDead() const {
    return false;
}

// 0x3400b4 _ZNK10GameObject5IsHitEv
bool GameObject::IsHit() const {
    return false;
}

// 0x3400bc _ZN10GameObject8InteractEPS_
// The original body is empty: the interacting object is ignored.
void GameObject::Interact(GameObject* /*other*/) {
}

// 0x3400c0 _ZNK10GameObject10GetFXScaleEv
// Returned by value (hidden return slot in r0, this in r1). Copies the three words at +0x120..+0x128,
// which is m_scale.
Point3D<float> GameObject::GetFXScale() const {
    return m_scale;
}

// 0x3400dc _ZNK10GameObject15GetFXScaleValueEv
int GameObject::GetFXScaleValue() const {
    return -1;
}

// 0x3400e4 _ZNK10GameObject8GetSpeedEv
// Hex-Rays returns the raw word 0x40800000, which is 4.0f.
float GameObject::GetSpeed() const {
    return 4.0f;
}

// 0x3400f0 _ZNK10GameObject16GetRotationSpeedEv
// Hex-Rays returns the raw word 0xBF800000, which is -1.0f.
float GameObject::GetRotationSpeed() const {
    return -1.0f;
}

// 0x3400fc _ZNK10GameObject14GetFocusObjectEv
GameObject* GameObject::GetFocusObject() const {
    return nullptr;
}

// 0x340104 _ZNK10GameObject10IsObstacleEv
bool GameObject::IsObstacle() const {
    return false;
}

// 0x34010c _ZNK10GameObject17GetObstacleRadiusEv
float GameObject::GetObstacleRadius() const {
    return 0.0f;
}
