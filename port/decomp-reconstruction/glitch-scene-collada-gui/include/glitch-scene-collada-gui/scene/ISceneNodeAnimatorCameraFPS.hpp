// glitch::scene::ISceneNodeAnimatorCameraFPS and glitch::SKeyMap: the interface of the first-person camera animator and the key map
// record it takes. Canonical header of the scene owner pass (R3b).
//
// Evidence (tools/decomp_vtable.py glitch::scene::ISceneNodeAnimatorCameraFPS, 168 bytes): the ISceneNodeAnimator vtable (animateNode and
// createClone pure), then six pure slots at +0x54 .. +0x68, named by the implementations in CSceneNodeAnimatorCameraFPS. The constructor
// is 0x6c8a2c (C2 with a VTT), the destructors 0x6c799c (D1) and 0x6c8bc0 (D0, skipped).
//
// glitch::SKeyMap: 8 bytes, {action, key code}; CSceneNodeAnimatorCameraFPS::setKeyMap reads them at stride 8 (action at +0x00, the key
// code at +0x04). Only the actions 0 .. 4 are mapped by any listing.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"

namespace glitch {

// The actions of the key map of a first-person camera (Irrlicht's EKEY_ACTION).
enum EKEY_ACTION : std::int32_t {
    EKA_MOVE_FORWARD = 0,
    EKA_MOVE_BACKWARD = 1,
    EKA_STRAFE_LEFT = 2,
    EKA_STRAFE_RIGHT = 3,
    EKA_JUMP_UP = 4,
};

struct SKeyMap {
    std::int32_t Action = 0;   // +0x00, an EKEY_ACTION
    std::int32_t KeyCode = 0;  // +0x04, a Windows virtual-key code
};

}  // namespace glitch

namespace glitch::scene {

class ISceneNodeAnimatorCameraFPS : public ISceneNodeAnimator {
public:
    ~ISceneNodeAnimatorCameraFPS() override;

    virtual float getMoveSpeed() const = 0;                          // +0x54
    virtual void setMoveSpeed(float moveSpeed) = 0;                  // +0x58
    virtual float getRotateSpeed() const = 0;                        // +0x5c
    virtual void setRotateSpeed(float rotateSpeed) = 0;              // +0x60
    virtual void setKeyMap(SKeyMap* map, std::uint32_t count) = 0;   // +0x64
    virtual void setVerticalMovement(bool allow) = 0;                // +0x68
};

}  // namespace glitch::scene
