// Bodies of glitch::scene::ISceneNodeAnimatorCameraFPS and glitch::scene::CSceneNodeAnimatorCameraFPS (canonical classes:
// scene/ISceneNodeAnimatorCameraFPS.hpp, scene/CSceneNodeAnimatorCameraFPS.hpp). This file replaces the stand-in members of
// src/scene_simple_accessors.cpp.
#include "glitch-scene-collada-gui/scene/CSceneNodeAnimatorCameraFPS.hpp"

#include <cmath>

#include "glitch-scene-collada-gui/gui/ICursorControl.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

namespace {

constexpr float kDegreesToRadians = 0.017453292f;  // 0x3c8efa35

// The point (x, y, z) times the rotation part of `m` plus its translation (the row-vector form of the matrices).
core::vector3d<float> transformPoint(const core::CMatrix4<float>& m, const core::vector3d<float>& p) {
    core::vector3d<float> out;
    out.X = (((p.X * m.M[0]) + (p.Y * m.M[4])) + (p.Z * m.M[8])) + m.M[12];
    out.Y = (((p.X * m.M[1]) + (p.Y * m.M[5])) + (p.Z * m.M[9])) + m.M[13];
    out.Z = (((p.X * m.M[2]) + (p.Y * m.M[6])) + (p.Z * m.M[10])) + m.M[14];
    return out;
}

}  // namespace

// 0x6c799c _ZN6glitch5scene27ISceneNodeAnimatorCameraFPSD1Ev
// 0x6c8bc0 _ZN6glitch5scene27ISceneNodeAnimatorCameraFPSD0Ev (deleting; skipped)
// 0x6c8a2c _ZN6glitch5scene27ISceneNodeAnimatorCameraFPSC1Ev (the interface constructor: base object plus vtables)
ISceneNodeAnimatorCameraFPS::~ISceneNodeAnimatorCameraFPS() = default;

// 0x6c8f10 _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSC1EPNS_3gui14ICursorControlEfffPNS_7SKeyMapEjb
// 0x6c922c _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSC2EPNS_3gui14ICursorControlEfffPNS_7SKeyMapEjb
CSceneNodeAnimatorCameraFPS::CSceneNodeAnimatorCameraFPS(gui::ICursorControl* cursor, float rotateSpeedIn, float moveSpeedIn,
                                                         float jumpSpeedIn, SKeyMap* keyMapArrayIn, std::uint32_t keyMapSizeIn,
                                                         bool noVerticalMovementIn)
    : cursorControl(cursor),
      moveSpeed(moveSpeedIn / 1000.0f),
      rotateSpeed(rotateSpeedIn),
      jumpSpeed(jumpSpeedIn),
      noVerticalMovement(noVerticalMovementIn),
      keyMapArray(keyMapArrayIn),
      keyMapSize(keyMapSizeIn) {
    if (cursorControl != nullptr) {
        ++cursorControl->referenceCounter;
    }
    allKeysUp();
    if (keyMapArray != nullptr && keyMapSize != 0) {
        setKeyMap(keyMapArray, keyMapSize);
    } else {
        // the default key map: forward on the up arrow, backward on the down arrow, strafing on the left and right arrows, jump on J
        keyMap.push_back(SCamKeyMap(0, 38));
        keyMap.push_back(SCamKeyMap(1, 40));
        keyMap.push_back(SCamKeyMap(2, 37));
        keyMap.push_back(SCamKeyMap(3, 39));
        keyMap.push_back(SCamKeyMap(4, 74));
    }
}

// 0x6c7a08 _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSD1Ev
// 0x6c7ab0 _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSD2Ev
// 0x6c7acc _ZN6glitch5scene27CSceneNodeAnimatorCameraFPSD0Ev (deleting; skipped)
CSceneNodeAnimatorCameraFPS::~CSceneNodeAnimatorCameraFPS() {
    if (cursorControl != nullptr) {
        cursorControl->drop();
    }
    // the key map vector frees its buffer
}

// 0x6c77e4 _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS22isEventReceiverEnabledEv
bool CSceneNodeAnimatorCameraFPS::isEventReceiverEnabled() const {
    return true;
}

// 0x6c77ec _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS7getTypeEv
E_SCENE_NODE_ANIMATOR_TYPE CSceneNodeAnimatorCameraFPS::getType() const {
    return ESNAT_CAMERA_FPS;
}

// 0x6c77fc _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS7onEventERKNS_6SEventE
bool CSceneNodeAnimatorCameraFPS::onEvent(const glitch::SEvent& event) {
    if (event.EventType == EET_MOUSE_INPUT_EVENT) {
        if (event.MouseInput.Event == EMIE_MOUSE_MOVED) {
            if (cursorControl != nullptr) {
                cursorPos = cursorControl->getRelativePosition();  // vptr+0x28
            } else {
                // no cursor control: the event position over the nominal 640 x 480 screen
                cursorPos.X = (static_cast<float>(event.MouseInput.X - 320) / 640.0f) + 0.5f;
                cursorPos.Y = (static_cast<float>(event.MouseInput.Y - 240) / 480.0f) + 0.5f;
            }
            return true;
        }
        return false;
    }
    if (event.EventType != EET_KEY_INPUT_EVENT) {
        return false;
    }
    for (const SCamKeyMap& entry : keyMap) {
        if (entry.keyCode == event.KeyInput.Key) {
            cursorKeys[entry.action] = event.KeyInput.PressedDown;
            return true;
        }
    }
    return false;
}

// 0x6c7928 _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS9allKeysUpEv
void CSceneNodeAnimatorCameraFPS::allKeysUp() {
    for (bool& key : cursorKeys) {
        key = false;
    }
}

// 0x6c7960 _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS12getMoveSpeedEv
float CSceneNodeAnimatorCameraFPS::getMoveSpeed() const {
    return moveSpeed;
}

// 0x6c7950 _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS12setMoveSpeedEf
void CSceneNodeAnimatorCameraFPS::setMoveSpeed(float value) {
    moveSpeed = value;
}

// 0x6c7958 _ZNK6glitch5scene27CSceneNodeAnimatorCameraFPS14getRotateSpeedEv
float CSceneNodeAnimatorCameraFPS::getRotateSpeed() const {
    return rotateSpeed;
}

// 0x6c7948 _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS14setRotateSpeedEf
void CSceneNodeAnimatorCameraFPS::setRotateSpeed(float value) {
    rotateSpeed = value;
}

// 0x6c7968 _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS19setVerticalMovementEb
void CSceneNodeAnimatorCameraFPS::setVerticalMovement(bool allow) {
    noVerticalMovement = !allow;
}

// 0x6c8c2c _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS9setKeyMapEPNS_7SKeyMapEj
void CSceneNodeAnimatorCameraFPS::setKeyMap(SKeyMap* map, std::uint32_t count) {
    keyMap.clear();
    for (std::uint32_t i = 0; i < count; ++i) {
        switch (map[i].Action) {
            case EKA_MOVE_FORWARD:
                keyMap.push_back(SCamKeyMap(0, map[i].KeyCode));
                break;
            case EKA_MOVE_BACKWARD:
                keyMap.push_back(SCamKeyMap(1, map[i].KeyCode));
                break;
            case EKA_STRAFE_LEFT:
                keyMap.push_back(SCamKeyMap(2, map[i].KeyCode));
                break;
            case EKA_STRAFE_RIGHT:
                keyMap.push_back(SCamKeyMap(3, map[i].KeyCode));
                break;
            case EKA_JUMP_UP:
                keyMap.push_back(SCamKeyMap(4, map[i].KeyCode));
                break;
            default:
                break;
        }
    }
}

// 0x6c91bc _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS11createCloneEv
ISceneNodeAnimator* CSceneNodeAnimatorCameraFPS::createClone() {
    return new CSceneNodeAnimatorCameraFPS(cursorControl, rotateSpeed, moveSpeed * 1000.0f, jumpSpeed, keyMapArray, keyMapSize,
                                           noVerticalMovement);  // operator new(0x64)
}

// 0x6c7f1c _ZN6glitch5scene27CSceneNodeAnimatorCameraFPS11animateNodeEPNS0_10ISceneNodeEj
void CSceneNodeAnimatorCameraFPS::animateNode(ISceneNode* node, std::uint32_t timeMs) {
    if (node->getType() != ESNT_CAMERA) {  // vptr+0xbc: 'cam_' (1601003875)
        return;
    }
    ICameraSceneNode* camera = static_cast<ICameraSceneNode*>(node);
    std::uint32_t previousTime;
    if (firstUpdate) {
        if (cursorControl != nullptr) {
            const core::position2d<float> relative = cursorControl->getRelativePosition();  // vptr+0x28
            cursorPos = relative;
            centerCursor = relative;
        }
        firstUpdate = false;
        lastAnimationTime = timeMs;
        previousTime = timeMs;
    } else {
        previousTime = lastAnimationTime;
    }
    lastAnimationTime = timeMs;
    const float timeDiff = static_cast<float>(timeMs - previousTime);

    core::vector3d<float> pos = camera->getPosition();  // vptr+0xa0
    const core::vector3d<float>& cameraTarget = camera->getTarget();  // vptr+0x108
    const core::vector3d<float> absolute = camera->getAbsolutePosition();
    core::vector3d<float> look;
    look.X = cameraTarget.X - absolute.X;
    look.Y = cameraTarget.Y - absolute.Y;
    look.Z = cameraTarget.Z - absolute.Z;
    core::vector3d<float> rotation = look.getHorizontalAngle();  // degrees; X = pitch, Y = yaw

    if (cursorControl != nullptr) {
        if (cursorPos.X != centerCursor.X || cursorPos.Y != centerCursor.Y) {
            rotation.Y = rotation.Y + ((0.5f - cursorPos.X) * rotateSpeed);
            const float limit = maxVerticalAngle;
            rotation.X = rotation.X - ((0.5f - cursorPos.Y) * rotateSpeed);
            if (rotation.X <= (limit + limit) || rotation.X >= (360.0f - limit)) {
                if (rotation.X > limit && rotation.X < (360.0f - limit)) {
                    rotation.X = limit;
                }
            } else {
                rotation.X = 360.0f - limit;
            }
            cursorControl->setPosition(0.5f, 0.5f);  // vptr+0x18
            centerCursor = cursorControl->getRelativePosition();
            cursorPos = centerCursor;
        }
    } else {
        rotation.Y = rotation.Y + ((0.5f - cursorPos.X) * rotateSpeed);
        const float limit = maxVerticalAngle;
        rotation.X = rotation.X - ((0.5f - cursorPos.Y) * rotateSpeed);
        if (rotation.X <= (limit + limit) || rotation.X >= (360.0f - limit)) {
            if (rotation.X > limit && rotation.X < (360.0f - limit)) {
                rotation.X = limit;
            }
        } else {
            rotation.X = 360.0f - limit;
        }
        centerCursor = cursorPos;
    }

    // the look point 100 units ahead, turned by the rotation
    core::vector3d<float> target{0.0f, 0.0f, 100.0f};
    core::vector3d<float> moveDirection{0.0f, 0.0f, 100.0f};
    core::CMatrix4<float> matrix;
    for (int i = 0; i < 16; ++i) matrix.M[i] = 0.0f;
    matrix.M[0] = 1.0f;
    matrix.M[5] = 1.0f;
    matrix.M[10] = 1.0f;
    matrix.M[15] = 1.0f;
    matrix.flag = true;
    matrix.setRotationRadians(core::vector3d<float>{rotation.X * kDegreesToRadians, rotation.Y * kDegreesToRadians, 0.0f});
    target = transformPoint(matrix, target);
    if (noVerticalMovement) {
        matrix.setRotationRadians(core::vector3d<float>{0.0f, rotation.Y * kDegreesToRadians, 0.0f});
        moveDirection = transformPoint(matrix, moveDirection);
    } else {
        moveDirection = target;
    }
    moveDirection.normalize();

    if (cursorKeys[EKA_MOVE_FORWARD]) {
        pos.X = pos.X + (moveSpeed * (timeDiff * moveDirection.X));
        pos.Y = pos.Y + (moveSpeed * (timeDiff * moveDirection.Y));
        pos.Z = pos.Z + (moveSpeed * (timeDiff * moveDirection.Z));
    }
    if (cursorKeys[EKA_MOVE_BACKWARD]) {
        pos.X = pos.X - (moveSpeed * (timeDiff * moveDirection.X));
        pos.Y = pos.Y - (moveSpeed * (timeDiff * moveDirection.Y));
        pos.Z = pos.Z - (moveSpeed * (timeDiff * moveDirection.Z));
    }

    // strafing: the look vector crossed with the camera's up vector
    const core::vector3d<float>& up = camera->getUpVector();  // vptr+0x118
    core::vector3d<float> strafe;
    strafe.X = ((-target.Y) * up.Z) + (target.Z * up.Y);
    strafe.Y = ((-target.Z) * up.X) + (up.Z * target.X);
    strafe.Z = (up.Y * (-target.X)) + (target.Y * up.X);
    if (noVerticalMovement) {
        strafe.Y = 0.0f;
    }
    strafe.normalize();
    if (cursorKeys[EKA_STRAFE_LEFT]) {
        pos.X = pos.X + (moveSpeed * (timeDiff * strafe.X));
        pos.Y = pos.Y + (moveSpeed * (timeDiff * strafe.Y));
        pos.Z = pos.Z + (moveSpeed * (timeDiff * strafe.Z));
    }
    if (cursorKeys[EKA_STRAFE_RIGHT]) {
        pos.X = pos.X - (moveSpeed * (timeDiff * strafe.X));
        pos.Y = pos.Y - (moveSpeed * (timeDiff * strafe.Y));
        pos.Z = pos.Z - (moveSpeed * (timeDiff * strafe.Z));
    }
    if (cursorKeys[EKA_JUMP_UP]) {
        const core::vector3d<float>& jumpUp = camera->getUpVector();
        const float jump = jumpSpeed;
        const float y = jump * (timeDiff * jumpUp.Y);
        const float z = jump * (timeDiff * jumpUp.Z);
        pos.X = pos.X + (jump * (timeDiff * jumpUp.X));
        pos.Y = pos.Y + y;
        pos.Z = pos.Z + z;
    }

    camera->setPosition(pos);  // vptr+0xa4
    targetVector = target;
    core::vector3d<float> newTarget;
    newTarget.X = target.X + pos.X;
    newTarget.Y = target.Y + pos.Y;
    newTarget.Z = target.Z + pos.Z;
    camera->setTarget(newTarget);  // vptr+0x104
}

}  // namespace glitch::scene
