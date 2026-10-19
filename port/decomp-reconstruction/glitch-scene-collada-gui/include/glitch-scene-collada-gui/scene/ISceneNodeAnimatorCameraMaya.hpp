// glitch::scene::ISceneNodeAnimatorCameraMaya: the interface of the Maya style camera animator. Canonical header of the scene owner pass
// (R3b).
//
// Evidence (tools/decomp_vtable.py glitch::scene::ISceneNodeAnimatorCameraMaya, 168 bytes): the ISceneNodeAnimator vtable (animateNode and
// createClone pure), then six pure slots at +0x54 .. +0x68, named by the implementations in CSceneNodeAnimatorCameraMaya. The constructor
// is 0x6ca290 (C2 with a VTT), the destructors 0x6c9644 (D1) and 0x6ca608 (D0, skipped).
#pragma once

#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"

namespace glitch::scene {

class ISceneNodeAnimatorCameraMaya : public ISceneNodeAnimator {
public:
    ~ISceneNodeAnimatorCameraMaya() override;

    virtual float getMoveSpeed() const = 0;               // +0x54
    virtual void setMoveSpeed(float moveSpeed) = 0;       // +0x58
    virtual float getRotateSpeed() const = 0;             // +0x5c
    virtual void setRotateSpeed(float rotateSpeed) = 0;   // +0x60
    virtual float getZoomSpeed() const = 0;               // +0x64
    virtual void setZoomSpeed(float zoomSpeed) = 0;       // +0x68
};

}  // namespace glitch::scene
