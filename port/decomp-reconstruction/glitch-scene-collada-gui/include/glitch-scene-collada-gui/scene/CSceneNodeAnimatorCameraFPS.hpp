// glitch::scene::CSceneNodeAnimatorCameraFPS: the first-person camera animator (mouse look and key movement). Canonical header of the
// scene owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp.
//
// Layout (original 32-bit offsets; constructors 0x6c8f10 C1 / 0x6c922c C2, createClone 0x6c91bc allocates 0x64 bytes):
//   +0x00 glitch::scene::ISceneNodeAnimator (vptr)      +0x04 glitch::IEventReceiver sub-object       +0x08 timeline controller
//   +0x0c cursor control (a use is held)       +0x10 maxVerticalAngle (88 degrees)   +0x14 moveSpeed (per millisecond)
//   +0x18 rotateSpeed   +0x1c jumpSpeed        +0x20 lastAnimationTime
//   +0x24 targetVector: the camera's look vector (3 floats) after the last step
//   +0x30 keyMap: std::vector<SCamKeyMap> (begin, end, capacity words at +0x30, +0x34, +0x38; 8-byte elements {action, key code})
//   +0x3c centerCursor (2 floats)   +0x44 cursorPos (2 floats)
//   +0x4c cursorKeys: six bytes, one per action (forward, backward, left, right, jump, and one more that allKeysUp also clears)
//   +0x52 firstUpdate   +0x53 noVerticalMovement
//   +0x54 the key map array the constructor was given (kept for createClone)   +0x58 its length
//   +0x5c glitch::IReferenceCounted virtual base: vptr, then the reference count at +0x60 (the constructor stores 1)
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimatorCameraFPS.hpp"

namespace glitch::gui {
class ICursorControl;
}

namespace glitch::scene {

class CSceneNodeAnimatorCameraFPS : public ISceneNodeAnimatorCameraFPS {
public:
    // One entry of the key map: the action index (0 .. 4) and the key code.
    struct SCamKeyMap {
        SCamKeyMap(std::int32_t actionIn, std::int32_t keyCodeIn) : action(actionIn), keyCode(keyCodeIn) {}
        std::int32_t action;   // +0x00
        std::int32_t keyCode;  // +0x04
    };

    // 0x6c8f10 (C1) and 0x6c922c (C2): the move speed is divided by 1000 (per second to per millisecond). With no key map the defaults are
    // the arrow keys (38, 40, 37, 39) and 74 for the jump; otherwise setKeyMap runs.
    CSceneNodeAnimatorCameraFPS(gui::ICursorControl* cursorControl, float rotateSpeed, float moveSpeed, float jumpSpeed, SKeyMap* keyMapArray,
                                std::uint32_t keyMapSize, bool noVerticalMovement);
    // 0x6c7a08 (D1), 0x6c7acc (D0), 0x6c7ab0 (D2): drops the cursor control, frees the key map, then the base destructors.
    ~CSceneNodeAnimatorCameraFPS() override;

    // vptr+0x10, 0x6c7f1c: only for camera nodes ('cam_').
    void animateNode(ISceneNode* node, std::uint32_t timeMs) override;
    // vptr+0x18, 0x6c91bc: a new animator built from the same arguments (move speed times 1000).
    ISceneNodeAnimator* createClone() override;
    // vptr+0x1c, 0x6c77e4: true.
    bool isEventReceiverEnabled() const override;
    // vptr+0x20, 0x6c77fc: a mouse move updates cursorPos; a key event that is in the key map sets the cursor key of its action.
    bool onEvent(const glitch::SEvent& event) override;
    // vptr+0x24, 0x6c77ec: 7 (ESNAT_CAMERA_FPS).
    E_SCENE_NODE_ANIMATOR_TYPE getType() const override;

    float getMoveSpeed() const override;                          // +0x54, 0x6c7960
    void setMoveSpeed(float moveSpeed) override;                  // +0x58, 0x6c7950
    float getRotateSpeed() const override;                        // +0x5c, 0x6c7958
    void setRotateSpeed(float rotateSpeed) override;              // +0x60, 0x6c7948
    // +0x64, 0x6c8c2c: replaces the key map; entries with an action above 4 are dropped.
    void setKeyMap(SKeyMap* map, std::uint32_t count) override;
    // +0x68, 0x6c7968: stores the inverse of the argument.
    void setVerticalMovement(bool allow) override;

    // 0x6c7928: clears the six cursor keys.
    void allKeysUp();

    gui::ICursorControl* cursorControl = nullptr;  // +0x0c (a use is held)
    float maxVerticalAngle = 88.0f;                // +0x10
    float moveSpeed = 0.0f;                        // +0x14
    float rotateSpeed = 0.0f;                      // +0x18
    float jumpSpeed = 0.0f;                        // +0x1c
    std::uint32_t lastAnimationTime = 0;           // +0x20
    core::vector3d<float> targetVector;            // +0x24
    std::vector<SCamKeyMap> keyMap;                // +0x30
    core::position2d<float> centerCursor;          // +0x3c
    core::position2d<float> cursorPos;             // +0x44
    bool cursorKeys[6] = {};                       // +0x4c
    bool firstUpdate = true;                       // +0x52
    bool noVerticalMovement = false;               // +0x53
    SKeyMap* keyMapArray = nullptr;                // +0x54
    std::uint32_t keyMapSize = 0;                  // +0x58
};

}  // namespace glitch::scene
