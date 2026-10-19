// glitch::scene::ISceneNodeAnimator: the animator interface a scene node runs on every frame. Canonical header of the
// engine unification wave (u1-scene). It replaces the stand-ins in scene_nodes.hpp (nine non-pure slots, a raw
// timeline pointer), layouts/animation_track_members.hpp (glitch::collada::animation_track::ISceneNodeAnimator, a
// layout struct) and recon/slice_22.hpp (recon_22::ISceneNodeAnimator). The collada animator that game code derives from
// is glitch::collada::ISceneNodeAnimator (collada/ISceneNodeAnimator.hpp), a subclass of this one.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::scene::ISceneNodeAnimator,
// 144 bytes). The vtable has a virtual base: glitch::IReferenceCounted at +0x0c (vbase offset 12), reached through
// the offset stored before the address point (`*(this + *(*this - 12)) + 4` is the reference count, as in every
// drop() call site). A secondary vtable at the end of the primary (offset-to-top -4) belongs to the
// glitch::IEventReceiver sub-object at +0x04, whose onEvent slot is a thunk to the primary onEvent (+0x20).
//   +0x00 vptr (glitch::io::IAttributeExchangingObject, the primary base)
//   +0x04 glitch::IEventReceiver sub-object (its vptr)
//   +0x08 ITimelineController* timeline controller (reference held; setTimelineCtrl 0x599818 drops the old one and adds a use)
//   +0x0c IReferenceCounted (virtual base): vptr, then the reference count at +0x10
// ~ISceneNodeAnimator (0x5998b0, D2 0x599938, D0 0x59991c) drops the timeline controller and ends with ~IObject (an empty
// glitch::IObject base whose constructor is a bare return, 0x6a118c, so it is not declared here).
//
// Slot table, vptr+K (K is the Hex-Rays call offset; the decomp_vtable.py listing prints the same value for this
// class). animateNode is pure in the base and implemented by CSceneNodeAnimator (0x65dxxx) and the camera animators.
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::scene {

class ISceneNodeAnimator : public io::IAttributeExchangingObject,
                           public glitch::IEventReceiver,
                           public virtual glitch::IReferenceCounted {
public:
    // vptr+0x00 / +0x04: serializeAttributes / deserializeAttributes are IAttributeExchangingObject's empty bodies
    // (0x350c7c, 0x350c80); CSceneNodeAnimator overrides them.

    // vptr+0x08 / +0x0c: 0x5998b0 (D1), 0x599938 (D2), 0x59991c (D0, skipped). Drops the timeline controller.
    ~ISceneNodeAnimator() override;

    // vptr+0x10: pure. Applies the animation to `node` at `timeMs`.
    virtual void animateNode(ISceneNode* node, std::uint32_t timeMs) = 0;
    // vptr+0x14, 0x599798: empty body.
    virtual void updateTime(std::uint32_t timeMs);
    // vptr+0x18: pure. A copy of the animator (the collada base returns null, 0x667cbc).
    virtual ISceneNodeAnimator* createClone() = 0;
    // vptr+0x1c, 0x59979c: returns false.
    virtual bool isEventReceiverEnabled() const;
    // vptr+0x20, 0x5997ac: returns false. Overrides IEventReceiver::onEvent.
    bool onEvent(const glitch::SEvent& event) override;
    // vptr+0x24, 0x5997b4: returns 10.
    virtual E_SCENE_NODE_ANIMATOR_TYPE getType() const;
    // vptr+0x28, 0x5997bc: empty body.
    virtual void onBind(ISceneNode* node);
    // vptr+0x2c, 0x5997c0: empty body.
    virtual void onUnbind(ISceneNode* node);
    // vptr+0x30, 0x5997c4: forwards to the timeline controller's setClip(int) (vptr+0x10).
    virtual float setAnimationClip(std::int32_t clipIndex);
    // vptr+0x34, 0x5997e0: forwards to the timeline controller's setClip(const char*) (vptr+0x14).
    virtual std::int32_t setAnimationClip(const char* clipName);
    // vptr+0x38, 0x5997fc: forwards to the timeline controller's getClipIndex (vptr+0x18).
    virtual std::int32_t getAnimationClipIndex(const char* clipName);
    // vptr+0x3c, 0x599818: drops the old controller and takes a reference on the new one.
    virtual void setTimelineCtrl(ITimelineController* controller);
    // vptr+0x40, 0x599868 (const) and vptr+0x44, 0x599870 (non-const): the controller.
    virtual ITimelineController* getTimelineCtrl() const;
    virtual ITimelineController* getTimelineCtrl();
    // vptr+0x48, 0x599878: returns 0.
    virtual std::uint32_t getLength() const;
    // vptr+0x4c, 0x599880 and vptr+0x50, 0x599884: empty bodies.
    virtual void computeAnimationValues(std::uint32_t timeMs);
    virtual void applyAnimationValues(std::uint32_t timeMs);

    boost::intrusive_ptr<ITimelineController> timelineCtrl;  // +0x08
};

}  // namespace glitch::scene
