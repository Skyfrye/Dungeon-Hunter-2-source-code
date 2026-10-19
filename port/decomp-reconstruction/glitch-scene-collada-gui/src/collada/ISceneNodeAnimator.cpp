#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// Bodies of glitch::collada::ISceneNodeAnimator and IColladaSceneNodeSynchronizedAnimatorInterface (canonical classes:
// collada/ISceneNodeAnimator.hpp). This file replaces src/tb_scene-collada-gui-glitch_collada_ISceneNodeAnimator-0.cpp, which
// wrote the functions against the stand-in in collada_misc.hpp (no base, five of the virtual slots).
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"

#include <cstring>
#include <stdexcept>

#include "glitch-core-io/os/logging.hpp"
#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/IMesh.hpp"
#include "glitch-scene-collada-gui/collada/IParticleSystemSceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-scene-collada-gui/tb/glitch_collada_detail.hpp"

namespace glitch::collada {

using detail::channelTypeCompatible;

// 0x62fdec _ZN6glitch7collada22FxEchoNotHandledEventsERKNS0_15STriggeredEventEPv
// The original takes the event pointer only (r0); the user data is not read.
void FxEchoNotHandledEvents(const STriggeredEvent& event, void* /*userData*/) {
    os::Printer::log("Warning - Event not handled : See collada::CSceneNodeAnimator::setEventsCallback", ELL_INFORMATION);
    os::Printer::log(event.eventName, ELL_INFORMATION);
}

// 0x660dac _ZN6glitch7collada46IColladaSceneNodeSynchronizedAnimatorInterfaceD1Ev (empty; D0 0x6615f4 is skipped)
IColladaSceneNodeSynchronizedAnimatorInterface::~IColladaSceneNodeSynchronizedAnimatorInterface() = default;

// 0x669828 _ZN6glitch7collada18ISceneNodeAnimatorC1Ev and 0x6698fc (C2, the VTT form)
// The scene base is constructed first (the compiler writes the vtable words and the virtual base); then the callback is
// FxEchoNotHandledEvents and every other member word is zero. The C1 form also writes 1 into the virtual base's count
// (+0x28), which is the IReferenceCounted default here.
ISceneNodeAnimator::ISceneNodeAnimator() = default;

// 0x669738 _ZN6glitch7collada18ISceneNodeAnimatorD1Ev, 0x6697c4 (D2); D0 0x6697a8 is skipped.
// Drops the events manager (the handle does it), then the scene base drops the timeline controller.
ISceneNodeAnimator::~ISceneNodeAnimator() = default;

// 0x667cb4 _ZNK6glitch7collada18ISceneNodeAnimator19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Empty in the original.
void ISceneNodeAnimator::serializeAttributes(io::IAttributes*, io::SAttributeReadWriteOptions*) const {}

// 0x667cb8 _ZN6glitch7collada18ISceneNodeAnimator21deserializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Empty in the original.
void ISceneNodeAnimator::deserializeAttributes(io::IAttributes*, io::SAttributeReadWriteOptions*) {}

// 0x667c48 _ZN6glitch7collada18ISceneNodeAnimator10updateTimeEj
// Steps the timeline controller (vptr+0x44 gets it) and, when an events manager is held, reports the interval that was crossed:
// onUpdate(previous time, new time, range start, range end). The original returns the register of the last call.
void ISceneNodeAnimator::updateTime(std::uint32_t timeMs) {
    scene::ITimelineController* controller = getTimelineCtrl();
    if (!controller) {
        return;
    }
    const std::int32_t previous = controller->currentTimeMs;
    controller->update(static_cast<std::int32_t>(timeMs));
    if (eventsTrack) {
        eventsTrack->onUpdate(previous, controller->currentTimeMs, controller->rangeStartMs, controller->rangeEndMs);
    }
}

// 0x667cbc _ZN6glitch7collada18ISceneNodeAnimator11createCloneEv
// Returns null.
scene::ISceneNodeAnimator* ISceneNodeAnimator::createClone() {
    return nullptr;
}

// 0x669538 _ZN6glitch7collada18ISceneNodeAnimator6onBindEPNS_5scene10ISceneNodeE
// Binds to a new node and, when the animator has targets (getTargetCount, vptr+0x70), binds every target to the scene.
// Reentrancy (first boot): forceBind adds the animator to every node it binds (ISceneNode slot +0x78 -> onBind), and that onBind would
// make the child the bound node and bind everything again against it (a non-root node cast to CRootSceneNode: getParticleSystem read garbage).
// The listing keeps its bound node in a local across the loop; the port keeps the bound node itself while a bind is running.
static thread_local bool g_forceBindRunning = false;

void ISceneNodeAnimator::onBind(scene::ISceneNode* node) {
    if (g_forceBindRunning) {
        return;
    }
    if (boundNode != node) {
        boundNode = node;
        if (getTargetCount() != 0) {
            forceBind();
        }
    }
}

// 0x667d9c _ZN6glitch7collada18ISceneNodeAnimator8onUnbindEPNS_5scene10ISceneNodeE
// Unbinds the targets that the node's UID names (the node's getUID, vptr+0x54).
void ISceneNodeAnimator::onUnbind(scene::ISceneNode* node) {
    forceUnbind(node->getUID());
}

// 0x667cc4 _ZNK6glitch7collada18ISceneNodeAnimator9getLengthEv
std::uint32_t ISceneNodeAnimator::getLength() const {
    return length;
}

// 0x6699c4 _ZN6glitch7collada18ISceneNodeAnimator19hasCompatibleTargetERKNS0_8SChannelE
// A channel of type 14 matches a target of the same name whose channel flag byte is equal; any other channel matches a target of
// the same name whose own channel type is compatible with it (the compatibility table).
bool ISceneNodeAnimator::hasCompatibleTarget(const SChannel& channel) {
    const std::int32_t count = getTargetCount();
    if (channel.type != 14) {
        for (std::int32_t i = 0; i < count; ++i) {
            if (std::strcmp(getBindURI(i), channel.name) == 0 && channelTypeCompatible(getAnimationTrack(i)->type, channel.type)) {
                return true;
            }
        }
        return false;
    }
    for (std::int32_t i = 0; i < count; ++i) {
        if (std::strcmp(getBindURI(i), channel.name) == 0 && getAnimationTrack(i)->flag == channel.flag) {
            return true;
        }
    }
    return false;
}

// 0x669574 _ZN6glitch7collada18ISceneNodeAnimator19setCompatibleTargetERKNS0_8SChannelEPv
// As hasCompatibleTarget; the first match gets `target` (setTarget(index, target, nullptr), vptr+0x68) and the result is 1.
int ISceneNodeAnimator::setCompatibleTarget(const SChannel& channel, void* target) {
    const std::int32_t count = getTargetCount();
    if (channel.type != 14) {
        for (std::int32_t i = 0; i < count; ++i) {
            if (std::strcmp(getBindURI(i), channel.name) == 0 && channelTypeCompatible(getAnimationTrack(i)->type, channel.type)) {
                setTarget(i, target, nullptr);
                return 1;
            }
        }
        return 0;
    }
    for (std::int32_t i = 0; i < count; ++i) {
        if (std::strcmp(getBindURI(i), channel.name) == 0 && getAnimationTrack(i)->flag == channel.flag) {
            setTarget(i, target, nullptr);
            return 1;
        }
    }
    return 0;
}

// 0x667dc4 _ZN6glitch7collada18ISceneNodeAnimator9setTargetEPKcPv
// Binds `target` to the first target whose bind URI equals `name` and returns what setTarget(index, ...) returns (nothing here:
// the slot is void; the original returns its register). With no match the strcmp result is returned: non-zero, or the target
// count when it is zero.
int ISceneNodeAnimator::setTarget(const char* name, void* target) {
    const std::int32_t count = getTargetCount();
    for (std::int32_t i = 0; i < count; ++i) {
        if (std::strcmp(getBindURI(i), name) == 0) {
            setTarget(i, target, nullptr);
            return 1;
        }
    }
    return 0;
}

// 0x366214 _ZN6glitch7collada18ISceneNodeAnimator14isTrackEnabledEi
bool ISceneNodeAnimator::isTrackEnabled(std::int32_t) {
    return true;
}

// 0x3662c4 _ZN6glitch7collada18ISceneNodeAnimator11onUnbindAllEv (a thunk to forceUnbindAll)
void ISceneNodeAnimator::onUnbindAll() {
    forceUnbindAll();
}

namespace {

// What a particle-system channel type binds: the name of the system parameter, and (for the four "scale" channels) the index of the flag
// byte of the node (IParticleSystemSceneNode flags13c) that must be clear for the channel to bind at all; -1 for none.
struct SParticleBinding {
    const char* parameter;
    int flagByte;
};

const SParticleBinding* particleBinding(std::uint32_t type) {
    static const SParticleBinding kBirthRate{"BirthRate", -1};
    static const SParticleBinding kBirthRateVariation{"BirthRateVariation", -1};
    static const SParticleBinding kLife{"Life", -1};
    static const SParticleBinding kLifeVariation{"LifeVariation", -1};
    static const SParticleBinding kTargetSize{"TargetSize", -1};
    static const SParticleBinding kSizeVariation{"SizeVariation", -1};
    static const SParticleBinding kSizeScale{"SizeScale", 0};
    static const SParticleBinding kSpeed{"Speed", -1};
    static const SParticleBinding kSpeedVariation{"SpeedVariation", -1};
    static const SParticleBinding kSpeedScale{"SpeedScale", 1};
    static const SParticleBinding kDirection{"Direction", -1};
    static const SParticleBinding kDirectionVariation{"DirectionVariation", -1};
    static const SParticleBinding kRadiusLength{"RadiusLength", -1};
    static const SParticleBinding kWidth{"Width", -1};
    static const SParticleBinding kHeight{"Height", -1};
    static const SParticleBinding kSpinTime{"SpinTime", -1};
    static const SParticleBinding kSpinVariation{"SpinVariation", -1};
    static const SParticleBinding kSpinPhase{"SpinPhase", -1};
    static const SParticleBinding kSpinPhaseVariation{"SpinPhaseVariation", -1};
    static const SParticleBinding kSpinScale{"SpinScale", 2};
    static const SParticleBinding kSpinAxis{"SpinAxis", -1};
    static const SParticleBinding kSpinAxisVariation{"SpinAxisVariation", -1};
    static const SParticleBinding kSpinPivotPoint{"SpinPivotPoint", -1};
    static const SParticleBinding kAnimOffset{"AnimOffset", -1};
    static const SParticleBinding kAnimOffsetVariation{"AnimOffsetVariation", -1};
    static const SParticleBinding kAnimLength{"AnimLength", -1};
    static const SParticleBinding kAnimLengthVariation{"AnimLengthVariation", -1};
    static const SParticleBinding kAnimScaleMultiplier{"AnimScaleMultiplier", -1};
    static const SParticleBinding kAnimScaleMultiplierVariation{"AnimScaleMultiplierVariation", -1};
    static const SParticleBinding kMotionRandom{"MotionRandom", -1};
    static const SParticleBinding kMotionRandomVariation{"MotionRandomVariation", -1};
    static const SParticleBinding kMotionRandomScale{"MotionRandomScale", 3};
    switch (type) {
        case 0x1C: case 0x2F: return &kBirthRate;
        case 0x30: return &kBirthRateVariation;
        case 0x31: return &kLife;
        case 0x32: return &kLifeVariation;
        case 0x1D: case 0x33: return &kTargetSize;
        case 0x1E: case 0x34: return &kSizeVariation;
        case 0x35: return &kSizeScale;
        case 0x1F: case 0x36: return &kSpeed;
        case 0x20: case 0x37: return &kSpeedVariation;
        case 0x38: return &kSpeedScale;
        case 0x21: case 0x39: return &kDirection;
        case 0x22: case 0x3A: return &kDirectionVariation;
        case 0x3B: return &kRadiusLength;
        case 0x3C: return &kWidth;
        case 0x3D: return &kHeight;
        case 0x23: case 0x40: return &kSpinTime;
        case 0x24: case 0x41: return &kSpinVariation;
        case 0x25: case 0x3E: return &kSpinPhase;
        case 0x26: case 0x3F: return &kSpinPhaseVariation;
        case 0x42: return &kSpinScale;
        case 0x27: return &kSpinAxis;
        case 0x28: return &kSpinAxisVariation;
        case 0x43: return &kSpinPivotPoint;
        case 0x29: return &kAnimOffset;
        case 0x2A: return &kAnimOffsetVariation;
        case 0x2B: return &kAnimLength;
        case 0x2C: return &kAnimLengthVariation;
        case 0x2D: return &kAnimScaleMultiplier;
        case 0x2E: return &kAnimScaleMultiplierVariation;
        case 0x44: return &kMotionRandom;
        case 0x45: return &kMotionRandomVariation;
        case 0x46: return &kMotionRandomScale;
        default: return nullptr;
    }
}

}  // namespace

// 0x667f18 _ZN6glitch7collada18ISceneNodeAnimator9forceBindEv (30320 bytes)
// With a bound node (the root node of the file), every target is bound to the object its bind URI names, chosen by the channel type:
//   1..5, 9..13, 20  the scene node with that UID below the root (the node also takes this animator, ISceneNode slot +0x78);
//   14               the weight of the morph target (flag byte + 1) of the morphing mesh with that name;
//   15               the root node itself;  16  the light's CLight;  0x1A  the material (by name, no driver);
//   0x1C .. 0x46     a parameter of the particle system with that name (the table above; the four scale channels bind only
//                    when their flag byte of the system is clear, and otherwise leave the target alone);
//   0x56 .. 0x5B     the material with an applicator for the channel's parameter (id from the renderer by the channel's text);
// anything else, and every lookup that finds nothing, clears the target.
// Host note: the applicator's word at +0x04 (the channel's text pointer in the original) is not stored; nothing reads it.
void ISceneNodeAnimator::forceBind() {
    if (boundNode == nullptr) {
        return;
    }
    struct BindGuard {
        bool previous = g_forceBindRunning;
        BindGuard() { g_forceBindRunning = true; }
        ~BindGuard() { g_forceBindRunning = previous; }
    } guard;
    CRootSceneNode* root = static_cast<CRootSceneNode*>(boundNode);
    const std::int32_t count = getTargetCount();
    for (std::int32_t i = 0; i < count; ++i) {
        const char* uid = getBindURI(i);
        const SChannel* channel = getAnimationTrack(i);
        const std::uint32_t type = channel->type;
        switch (type) {
            case 1: case 2: case 3: case 4: case 5: case 9: case 10: case 11: case 12: case 13: case 0x14: {
                scene::ISceneNode* node = boundNode->getSceneNodeFromUID(uid);
                setTarget(i, node, nullptr);
                if (node != nullptr) {
                    node->addAnimator(this);
                }
                break;
            }
            case 0xE: {
                CMorphingMesh* mesh = root->getMorphingMesh(uid);
                if (mesh == nullptr) {
                    setTarget(i, nullptr, nullptr);
                } else {
                    setTarget(i, &mesh->targets[static_cast<std::size_t>(channel->flag) + 1].weight, nullptr);
                }
                break;
            }
            case 0xF:
                setTarget(i, boundNode, nullptr);
                break;
            case 0x10: {
                CLightSceneNode* light = root->getLight(uid);
                setTarget(i, light != nullptr ? light->light.get() : nullptr, nullptr);
                break;
            }
            case 0x1A: {
                boost::intrusive_ptr<video::CMaterial> material = root->getMaterial(uid, nullptr);
                setTarget(i, material.get(), nullptr);
                break;
            }
            case 0x56: case 0x57: case 0x58: case 0x59: case 0x5A: case 0x5B: {
                boost::intrusive_ptr<video::CMaterial> material = root->getMaterial(uid, nullptr);
                if (material && material->m_renderer) {  // host guard: a material whose renderer failed to build is a lookup that found nothing
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
                    __android_log_print(ANDROID_LOG_INFO, "DH2MR", "forceBind material %p renderer %p refs %d uid %s", (void*)material.get(), (void*)material->m_renderer.get(), (int)material->m_renderer->m_refCount, uid);
#endif
                    animation_track::CMaterialApplicatorInfo info;
                    info.parameterId = material->m_renderer->getParameterID(channel->extra, 0);
                    setTarget(i, material.get(), &info);
                } else {
                    setTarget(i, nullptr, nullptr);
                }
                break;
            }
            default: {
                const SParticleBinding* binding = particleBinding(type);
                if (binding == nullptr) {
                    setTarget(i, nullptr, nullptr);
                    break;
                }
                IParticleSystemSceneNode* system = root->getParticleSystem(uid);
                if (system == nullptr) {
                    setTarget(i, nullptr, nullptr);
                } else if (binding->flagByte < 0 || system->flags13c[binding->flagByte] == 0) {
                    setTarget(i, system->getParticleSystemParameter(binding->parameter), nullptr);
                }
                break;
            }
        }
    }
}

// 0x667d18 _ZN6glitch7collada18ISceneNodeAnimator11forceUnbindEPKc
// Clears the target of every track whose bind URI (the channel name at +0x04) equals `name`.
void ISceneNodeAnimator::forceUnbind(const char* name) {
    const std::int32_t count = getTargetCount();
    for (std::int32_t i = 0; i < count; ++i) {
        if (std::strcmp(getAnimationTrack(i)->name, name) == 0) {
            setTarget(i, nullptr, nullptr);
        }
    }
}

// 0x667e40 _ZN6glitch7collada18ISceneNodeAnimator14forceUnbindAllEv
// For every target the node the bind URI names (searched from the bound node) forgets this animator (removeBindedAnimator,
// vptr+0x7c), and the target is cleared. The bound node is cleared at the end.
void ISceneNodeAnimator::forceUnbindAll() {
    scene::ISceneNode* root = boundNode;
    const std::int32_t count = getTargetCount();
    for (std::int32_t i = 0; i < count; ++i) {
        scene::ISceneNode* node = root->getSceneNodeFromUID(getBindURI(i));
        if (node) {
            node->removeBindedAnimator(this);
        }
        setTarget(i, nullptr, nullptr);
    }
    boundNode = nullptr;
}

// 0x60fab8 _ZN6glitch7collada18ISceneNodeAnimator14setEventsTrackEPKNS0_12SEventsTrackE
// Replaces the events manager: the old one is dropped; a non-null track gets a new CEventsManager holding the animator's
// callback and user data (the +0x1c and +0x20 words), with the last-entry index at -1.
void ISceneNodeAnimator::setEventsTrack(const SEventKeyTable* track) {
    if (track) {
        CEventsManager* manager = new CEventsManager();
        manager->keyTable = const_cast<SEventKeyTable*>(track);  // +0x14
        manager->callback = eventCallback;                       // +0x08 (from +0x1c)
        manager->callbackUserData = eventUserData;               // +0x0c (from +0x20)
        manager->lastEntry = -1;                                 // +0x10
        eventsTrack = boost::intrusive_ptr<CEventsManager>(manager);  // takes the construction use (count 1)
    } else {
        eventsTrack = nullptr;
    }
}

}  // namespace glitch::collada
