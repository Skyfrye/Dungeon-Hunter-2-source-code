// glitch::scene::CSceneNodeAnimatorCameraMaya: the Maya style orbit camera animator (left button rotates, left plus middle or right
// zooms, middle translates). Canonical header of the scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp.
//
// Layout (original 32-bit offsets; constructors 0x6ca338 C1 / 0x6ca4cc C2, createClone 0x6ca48c allocates 0x80 bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c mouseKeyDown: three bytes (left, middle, right)
//   +0x10 cursor control (a use is held)
//   +0x14 pos: the camera position (3 floats; updateAnimationState reads pos - target)
//   +0x20 zooming   +0x21 rotating   +0x22 moving (never set)   +0x23 translating
//   +0x24 zoomSpeed   +0x28 rotateSpeed   +0x2c translateSpeed
//   +0x30 rotateStart (2 floats)   +0x38 zoomStart (2 floats)   +0x40 translateStart (2 floats)
//   +0x48 currentZoom   +0x4c rotX   +0x50 rotY
//   +0x54 target (3 floats)   +0x60 oldTarget (3 floats; the translation base)   +0x6c oldCamera (the camera animated last)
//   +0x70 mousePos (2 floats; the cursor as a fraction of the reference rectangle)
//   +0x78 glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x7c (the constructor stores 1)
#pragma once

#include <cstdint>

#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimatorCameraMaya.hpp"

namespace glitch::gui {
class ICursorControl;
}

namespace glitch::scene {

class CSceneNodeAnimatorCameraMaya : public ISceneNodeAnimatorCameraMaya {
public:
    // 0x6ca338 (C1) and 0x6ca4cc (C2): the speeds, current zoom 80, mouse position (0.5, 0.5) (the cursor's when there is one), keys up.
    CSceneNodeAnimatorCameraMaya(gui::ICursorControl* cursorControl, float rotateSpeed, float zoomSpeed, float translateSpeed);
    // 0x6c96b0 (D1), 0x6c9764 (D0), 0x6c9748 (D2): drops the cursor control, then the base destructors.
    ~CSceneNodeAnimatorCameraMaya() override;

    // vptr+0x10, 0x6c9934: only for camera nodes ('cam_'); see the .cpp for the three gestures.
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6ca48c: a new animator with the same cursor control and speeds.
    ISceneNodeAnimator* createClone() override;
    // vptr+0x1c, 0x6c94d8: true.
    bool isEventReceiverEnabled() const override;
    // vptr+0x20, 0x6c94f0: mouse button presses and releases set the mouse key bytes; a mouse move reads the cursor position.
    bool onEvent(const glitch::SEvent& event) override;
    // vptr+0x24, 0x6c94e0: 8 (ESNAT_CAMERA_MAYA).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    float getMoveSpeed() const override;                  // +0x54, 0x6c960c (the translate speed)
    void setMoveSpeed(float moveSpeed) override;          // +0x58, 0x6c95f4
    float getRotateSpeed() const override;                // +0x5c, 0x6c9604
    void setRotateSpeed(float rotateSpeed) override;      // +0x60, 0x6c95ec
    float getZoomSpeed() const override;                  // +0x64, 0x6c9614
    void setZoomSpeed(float zoomSpeed) override;          // +0x68, 0x6c95fc

    // 0x6c95cc: the byte at +0x0c + key.
    bool isMouseKeyDown(std::int32_t key);
    // 0x6c95d8: clears the three mouse key bytes.
    void allKeysUp();
    // 0x6c97f4: derives rotX, rotY and currentZoom from pos - target.
    void updateAnimationState();

    bool mouseKeyDown[3] = {};                     // +0x0c
    gui::ICursorControl* cursorControl = nullptr;  // +0x10 (a use is held)
    core::vector3d<float> pos;                     // +0x14
    bool zooming = false;                          // +0x20
    bool rotating = false;                         // +0x21
    bool moving = false;                           // +0x22
    bool translating = false;                      // +0x23
    float zoomSpeed = 0.0f;                        // +0x24
    float rotateSpeed = 0.0f;                      // +0x28
    float translateSpeed = 0.0f;                   // +0x2c
    core::position2d<float> rotateStart;           // +0x30
    core::position2d<float> zoomStart;             // +0x38
    core::position2d<float> translateStart;        // +0x40
    float currentZoom = 80.0f;                     // +0x48
    float rotX = 0.0f;                             // +0x4c
    float rotY = 0.0f;                             // +0x50
    core::vector3d<float> target;                  // +0x54
    core::vector3d<float> oldTarget;               // +0x60
    ISceneNode* oldCamera = nullptr;               // +0x6c
    core::position2d<float> mousePos{0.5f, 0.5f};  // +0x70
};

}  // namespace glitch::scene
