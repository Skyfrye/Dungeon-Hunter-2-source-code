// CameraTarget: CameraBase that follows a GameObject (the target), with an optional centering offset,
// damped follow and a transition when the target changes. Original size 0x44.
// Vtable (28 bytes): CameraBase slots, +0x10 Update overridden.
#pragma once

#include <cstdint>
#include "core-platform/deps/game_types.hpp"  // Point3D
#include "dh2/CameraBase.hpp"

class GameObject;

class CameraTarget : public CameraBase {
public:
    CameraTarget();                                    // 0x411c40 / 0x411cdc
    ~CameraTarget() override;                          // +0x00 0x411bbc (D1), +0x04 0x411bf0 (D0), 0x411c0c
    // +0x08 Activated, +0x0c Deactivated: CameraBase versions
    void Update() override;                            // +0x10 0x411a7c transition, then target + offset + ghost cam + damping

    void SetTarget(GameObject* target, int transitionMs);        // 0x4119c4 transitionMs > 0 blends from the current anchor
    void SetTarget(const char* objectName, int transitionMs);    // 0x411b38 looks the object up by name
    const Point3D<float>& GetTargetPosition();         // 0x411a74 the target's camera anchor position
    void EnableDamping(bool enable);                   // 0x41161c also clears the damping velocity
    void SetDampingRatio(float ratio);                 // 0x411654
    bool HandleOffset(Point3D<float>& position);       // 0x4117bc adds GetCenterOffset when m_offsetEnabled
    bool HandleGhostCam(Point3D<float>& position);     // 0x4115d8 adds m_ghostOffset
    bool HandleDamping(Point3D<float>& position);      // 0x41165c
    bool HandleTransition();                           // 0x411830 true while a transition is running

public:
    // +0x00 CameraBase: vptr, +0x04 m_node, +0x08 m_camera
    GameObject* m_target;                              // +0x0c
    Point3D<float> m_transitionFrom;                   // +0x10 camera anchor position when the transition started
    int m_transitionTotalMs;                           // +0x1c SetTarget transitionMs
    int m_transitionRemainingMs;                       // +0x20 counts down by Application::GetDt(); HandleTransition ignores negative values (idle)
    bool m_offsetEnabled;                              // +0x24 0 initially; HandleOffset applies the centering offset
    bool m_dampingEnabled;                             // +0x25 1 initially
    uint8_t pad_26[2];
    float m_dampingRatio;                              // +0x28 0.7 initially
    Point3D<float> m_dampingVelocity;                  // +0x2c Vec3f_Origin initially
    Point3D<float> m_ghostOffset;                      // +0x38 added by HandleGhostCam; zeroed by SetTarget
};
