// glitch::collada::ISceneNodeAnimator and glitch::collada::IColladaSceneNodeSynchronizedAnimatorInterface: the base of every
// COLLADA animator (the classes the game derives its Animator, AnimatorSet and AnimatorBlender from) and the interface of the
// synchronized variants. Canonical header of the engine unification wave (u1-scene). It replaces the ISceneNodeAnimator in
// collada_misc.hpp (a class without a base and with five of the virtual slots), the recon_22::ISceneNodeAnimator stand-in
// (recon/slice_22.hpp), the layout struct animation_track::ISceneNodeAnimator (layouts/animation_track_members.hpp) and the
// IColladaSceneNodeSynchronizedAnimatorInterface stub in collada_empty_dtors.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x669828 (C1) / 0x6698fc (C2); tools/decomp_vtable.py
// glitch::collada::ISceneNodeAnimator, 196 bytes, virtual base IReferenceCounted at +0x24):
//   ISceneNodeAnimator derives from glitch::scene::ISceneNodeAnimator (scene/ISceneNodeAnimator.hpp): +0x00 vptr
//   (IAttributeExchangingObject), +0x04 the IEventReceiver sub-object, +0x08 the timeline controller. Members it adds:
//     +0x0c a word (zeroed by the constructor), +0x10 the scene node the animator is bound to (set by onBind, cleared by
//     forceUnbindAll 0x667e40), +0x14 the length (0; getLength 0x667cc4), +0x18 the events manager (reference held; setEventsTrack
//     0x60fab8), +0x1c the event callback (the constructor stores FxEchoNotHandledEvents 0x62fdec), +0x20 its user-data word,
//     +0x24 the virtual base (the constructor writes 1 into its count at +0x28).
//   Slots (vptr+K; the scene slots 0x00 .. 0x50 are scene::ISceneNodeAnimator's, overridden where noted):
//     +0x00 / +0x04 serializeAttributes / deserializeAttributes (0x667cb4, 0x667cb8: empty), +0x08 / +0x0c destructors (0x669738
//     D1, 0x6697c4 D2, D0 0x6697a8 skipped), +0x10 animateNode (pure), +0x14 updateTime (0x667c48), +0x18 createClone (0x667cbc:
//     returns null), +0x28 onBind (0x669538), +0x2c onUnbind (0x667d9c), +0x48 getLength (0x667cc4),
//     +0x54 getAnimationTrack, +0x58 getAnimationTrackEx (pure), +0x5c hasCompatibleTarget (0x6699c4), +0x60 setCompatibleTarget
//     (0x669574), +0x64 setTarget(const char*, void*) (0x667dc4), +0x68 setTarget(int, void*, CApplicatorInfo*), +0x6c getBindURI,
//     +0x70 getTargetCount, +0x74 getTargetSize, +0x78 getTargetsSize, +0x7c getAnimationValue (pure), +0x80 isTrackEnabled
//     (0x366214: returns true), +0x84 onUnbindAll (0x3662c4: forceUnbindAll).
//   IColladaSceneNodeSynchronizedAnimatorInterface (tools/decomp_vtable.py ..., 76 bytes): the secondary base of the synchronized
//   animators: a vptr with the two destructors (0x660dac D1, D0 0x6615f4 skipped) and fifteen pure slots.
// Port notes: pointers are host width. The channel / track records are the host model of collada/CColladaDatabase.hpp. The
// animator is abstract, as in the original.
#pragma once

#include <cstdint>
#include <string>

#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNodeAnimator.hpp"

namespace glitch::collada {

struct SChannel;
class IAnimationTrackEx;
class ISceneNodeAnimator;

namespace animation_track {
class CApplicatorInfo;
}  // namespace animation_track

// The callback the constructor stores at +0x1c: logs "Event not handled" (0x62fdec).
void FxEchoNotHandledEvents(const STriggeredEvent& event, void* userData);

// One synchronisation segment of a synchronized set: 32 bytes in the original (the timestamp, the length and the name string).
struct SSyncSegment {
    std::int32_t timestamp = 0;  // +0x00 the time of the segment's event in the animation (ms)
    std::int32_t length = 0;     // +0x04 the time to the next segment, wrapping around the animation (ms)
    std::string name;            // +0x08 the event name the timestamp was looked up with (a 24-byte string in the original)
};

class IColladaSceneNodeSynchronizedAnimatorInterface {
public:
    IColladaSceneNodeSynchronizedAnimatorInterface() = default;
    // vptr+0x00 / +0x04: 0x660dac (D1, empty); 0x6615f4 (D0) is skipped.
    virtual ~IColladaSceneNodeSynchronizedAnimatorInterface();

    virtual std::uint32_t getNumSegments() const = 0;                                          // +0x08
    virtual std::uint32_t getSynchronizationLength(std::uint32_t segment) const = 0;           // +0x0c
    virtual std::uint32_t getSynchronizationLength(std::int32_t animation, std::uint32_t segment) const = 0;   // +0x10
    virtual std::uint32_t getSynchronizationTimestamp(std::uint32_t segment) const = 0;        // +0x14
    virtual std::uint32_t getSynchronizationTimestamp(std::int32_t animation, std::uint32_t segment) const = 0;  // +0x18
    // The segment containing `time` (the last one whose timestamp is not after it; the last segment when none is).
    virtual std::uint32_t getSynchronizationSegment(std::int32_t time) const = 0;              // +0x1c
    virtual std::uint32_t getSynchronizationSegment(std::int32_t animation, std::int32_t time) const = 0;  // +0x20
    virtual bool hasReachedEnd() const = 0;                                                    // +0x24
    virtual void fillInputTimeStart() = 0;                                                     // +0x28
    virtual void fillInputTimeEnd() = 0;                                                       // +0x2c
    virtual void fillInputSynchronizationElapsedTime() = 0;                                    // +0x30
    virtual void applySynchronizedAnimationValues(float elapsed) = 0;                          // +0x34
    virtual void computeSynchronizedAnimationValues(float elapsed) = 0;                        // +0x38
    virtual std::int32_t getSynchronizationElapsedTime() const = 0;                            // +0x3c
    virtual float getSynchronizationPercentage() const = 0;                                    // +0x40

    // +0x04: the animator this interface belongs to (the derived constructors store `this`).
    ISceneNodeAnimator* owner = nullptr;
};

class ISceneNodeAnimator : public scene::ISceneNodeAnimator {
public:
    // 0x669828 (C1) and 0x6698fc (C2, the VTT form): the scene base, then the members above.
    ISceneNodeAnimator();
    // vptr+0x08 / +0x0c: 0x669738 (D1), 0x6697c4 (D2), 0x6697a8 (D0, skipped). Drops the events manager (the handle does it).
    ~ISceneNodeAnimator() override;

    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;  // +0x00
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;      // +0x04
    void updateTime(std::uint32_t timeMs) override;                       // +0x14, 0x667c48
    scene::ISceneNodeAnimator* createClone() override;                    // +0x18, 0x667cbc (null)
    void onBind(scene::ISceneNode* node) override;                        // +0x28, 0x669538
    void onUnbind(scene::ISceneNode* node) override;                      // +0x2c, 0x667d9c
    std::uint32_t getLength() const override;                             // +0x48, 0x667cc4

    virtual const SChannel* getAnimationTrack(std::int32_t index) = 0;                // +0x54
    virtual IAnimationTrackEx* getAnimationTrackEx(std::int32_t index) = 0;           // +0x58
    // +0x5c, 0x6699c4: true when some target of this animator can take the channel (name match plus the compatibility table).
    virtual bool hasCompatibleTarget(const SChannel& channel);
    // +0x60, 0x669574: binds `target` to the first compatible target; returns 1 when one was found.
    virtual int setCompatibleTarget(const SChannel& channel, void* target);
    // +0x64, 0x667dc4: binds `target` to the first target whose bind URI equals `name`; returns 1 when one was found.
    virtual int setTarget(const char* name, void* target);
    virtual void setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) = 0;  // +0x68
    virtual const char* getBindURI(std::int32_t index) = 0;                            // +0x6c
    virtual std::int32_t getTargetCount() = 0;                                         // +0x70
    virtual std::int32_t getTargetSize(std::int32_t index) = 0;                        // +0x74
    virtual std::int32_t getTargetsSize() = 0;                                         // +0x78
    virtual void getAnimationValue(std::int32_t trackIndex, std::int32_t time, void* out) = 0;  // +0x7c
    // +0x80, 0x366214: returns true.
    virtual bool isTrackEnabled(std::int32_t index);
    // +0x84, 0x3662c4: forceUnbindAll().
    virtual void onUnbindAll();

    // Non-virtual members.
    // 0x667f18 (30320 bytes): binds every target to the scene object the bind URI names.
    void forceBind();
    // 0x667d18: clears the target of every track whose bind URI equals `name`.
    void forceUnbind(const char* name);
    // 0x667e40: tells every bound node to release this animator, then clears the bound node.
    void forceUnbindAll();
    // 0x60fab8: replaces the events manager by a new one over `track` (null clears it).
    void setEventsTrack(const SEventKeyTable* track);

    std::uint32_t interpolationType = 0;                              // +0x0c E_INTERPOLATION_MODE (CSceneNodeAnimator::serializeAttributes
                                                                      //       prints it as "Interpolation Type"); the value 1 turns the key interpolation off
    scene::ISceneNode* boundNode = nullptr;                           // +0x10
    std::uint32_t length = 0;                                         // +0x14
    boost::intrusive_ptr<CEventsManager> eventsTrack;                 // +0x18
    CEventsManager::EventCallback eventCallback = FxEchoNotHandledEvents;  // +0x1c
    void* eventUserData = nullptr;                                    // +0x20
};

}  // namespace glitch::collada
