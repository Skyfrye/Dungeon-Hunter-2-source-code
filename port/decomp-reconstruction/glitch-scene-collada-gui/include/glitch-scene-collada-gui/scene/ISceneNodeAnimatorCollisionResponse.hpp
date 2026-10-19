// glitch::scene::ISceneNodeAnimatorCollisionResponse: the interface of the collision response animator. Canonical header of the scene
// owner pass (R3b). It sits between ISceneNodeAnimator and CSceneNodeAnimatorCollisionResponse.
//
// Evidence (tools/decomp_vtable.py glitch::scene::ISceneNodeAnimatorCollisionResponse, 180 bytes): the ISceneNodeAnimator vtable (the
// serialize and deserialize slots are IAttributeExchangingObject's empty bodies, animateNode and createClone stay pure), then eleven
// pure slots at +0x54 .. +0x7c, named by the implementations in CSceneNodeAnimatorCollisionResponse. The constructor is 0x6caf58 (C2
// with a VTT, so only the complete-object form is a real symbol), the destructors 0x6ca908 (D1) and 0x6cb38c (D0, skipped).
#pragma once

#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITriangleSelector.hpp"

namespace glitch::scene {

class ISceneNodeAnimatorCollisionResponse : public ISceneNodeAnimator {
public:
    ~ISceneNodeAnimatorCollisionResponse() override;

    virtual bool isFalling() const = 0;                                                      // +0x54
    virtual void setEllipsoidRadius(const core::vector3d<float>& radius) = 0;                // +0x58
    virtual core::vector3d<float> getEllipsoidRadius() const = 0;                            // +0x5c
    virtual void setGravity(const core::vector3d<float>& gravity) = 0;                       // +0x60
    virtual core::vector3d<float> getGravity() const = 0;                                    // +0x64
    virtual void setEllipsoidTranslation(const core::vector3d<float>& translation) = 0;      // +0x68
    virtual core::vector3d<float> getEllipsoidTranslation() const = 0;                       // +0x6c
    virtual void setWorld(ITriangleSelector* world) = 0;                                     // +0x70
    virtual ITriangleSelector* getWorld() const = 0;                                         // +0x74
    virtual void setSlidingSpeed(float speed) = 0;                                           // +0x78
    virtual float getSlidingSpeed() const = 0;                                               // +0x7c
};

}  // namespace glitch::scene
