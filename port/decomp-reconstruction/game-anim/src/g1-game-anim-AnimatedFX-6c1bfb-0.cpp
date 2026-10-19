// Batch g1-game-anim-AnimatedFX-6c1bfb-0: the AnimatedFX constructors and destructors, speed and loop
// control, scale, the material assert, Load, SyncIrrData and SetAnimFX.
// Declarations and member names come from dh2/AnimatedFX.hpp. Each PARTIAL function says in its comment
// what is not rebuilt; the same gaps are listed in the ledger notes and the layout requests.

#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <string>

#include "core-platform/deps/game_types.hpp"
#include "dh2/AnimController.hpp"
#include "dh2/AnimatedFX.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/PFWorld.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/SceneNodeHelpers.hpp"
#include "dh2/global/Vec3f_Origin.hpp"
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/collada/CParticleSystemSceneNode.hpp"  // the node of tag 'daep' and its particle system
#include "glitch-scene-collada-gui/ps/ParticleModels.hpp"  // PEmitterModel
#include "glitch-scene-collada-gui/ps/PDomain.hpp"  // PDBox

#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

// Global assert level (libDungeonHunter2.so gAssertLevel at 0x99f914). core-platform/memory.hpp declares it too,
// but that header redefines glitch::core types that glitch-shared's glitch_core.hpp also defines, so it is not included here.
extern int gAssertLevel;

// 0x4922e0 _ZN10AnimatedFXC2Ei
// 0x492374 _ZN10AnimatedFXC1Ei
// Both constructor addresses have the same body (base-object and complete-object variants), so one
// definition covers both. m_endOfLoop is cleared here; the original leaves it unset, and no code reads it
// before SetAnimFX stores a callback.
AnimatedFX::AnimatedFX(int id) {
    unk_08 = id;                    // +0x08 constructor argument
    unk_1c = -1;                    // +0x1c
    m_speed = 1.0f;                 // +0x20
    unk_28 = 0;                     // +0x28 owner word (int in the header, see the layout requests)
    m_visual = nullptr;             // +0x2c
    m_looping = false;              // +0x18
    unk_24 = true;                  // +0x24 visibility flag
    m_name = nullptr;               // +0x0c
    m_animName = nullptr;           // +0x10
    m_loopCount = 0;                // +0x14
    unk_30 = false;                 // +0x30
    unk_31 = false;                 // +0x31
    unk_32 = false;                 // +0x32
    unk_34 = 0;                     // +0x34 (0.0f bit pattern)
    unk_38 = 0;                     // +0x38
    unk_3c = 0;                     // +0x3c
    unk_40 = 0;                     // +0x40
    unk_44 = 0;                     // +0x44
    unk_48 = 0;                     // +0x48
    unk_4c = false;                 // +0x4c
    m_setData = nullptr;            // +0x50
    m_endOfLoop = nullptr;          // +0x04
}

// 0x492408 _ZN10AnimatedFXD2Ev
// 0x49245c _ZN10AnimatedFXD1Ev
// Both destructor addresses have the same body. The vtable slot 1 variant 0x492950 is the compiler's
// deleting destructor and is not written here (see the ledger row).
AnimatedFX::~AnimatedFX() {
    if (m_visual != nullptr) {      // +0x2c
        delete m_visual;            // VisualObject's virtual deleting destructor (vtable slot +4 in the original)
        m_visual = nullptr;
    }
}

// 0x4924b0 _ZN10AnimatedFX8SetSpeedEf
// The call passes r2 = 0 (asm: MOV R2, #0 before the call through slot +0x28), so the AnimController
// SetScale index is 0. Hex-Rays shows only the controller and the speed.
void AnimatedFX::SetSpeed(float speed) {
    m_speed = speed;                                            // +0x20
    if (m_visual != nullptr) {                                  // +0x2c
        m_visual->m_animController->SetScale(speed, 0);         // AnimController slot +0x28
    }
}

// 0x4924e0 _ZNK10AnimatedFX12HasCompletedEv
// The FX is done when the particle node it drives reports no live particles: GetSpecificNode(0x70656164, 'daep') on the visual, then the
// node's getParticleCount() (vtable slot +0xf8) <= 0. A node lookup that returns nothing counts as completed.
// The node of that tag is glitch::collada::CParticleSystemSceneNode (collada::IParticleSystemSceneNode::getParticleCount), not the
// glitch::scene particle node: the earlier cast to scene::IParticleSystemSceneNode never matched, so every FX counted as completed at once
// (stub audit).
bool AnimatedFX::HasCompleted() const {
    if (m_visual == nullptr) {
        return true;
    }
    glitch::scene::ISceneNode* node = m_visual->GetSpecificNode(0x70656164);
    glitch::collada::IParticleSystemSceneNode* particles = dynamic_cast<glitch::collada::IParticleSystemSceneNode*>(node);
    if (particles == nullptr) {
        return true;
    }
    return static_cast<std::int32_t>(particles->getParticleCount()) <= 0;
}

// 0x492560 _ZN10AnimatedFX11SetEndPointERK7Point3DIfE
// Stops the particle node at the point. The node is found with GetSpecificNode(0x70656164, 'daep') (the earlier port used 0x70656E64, a tag
// no node has) and is a glitch::collada::CParticleSystemSceneNode, whose +0x178 is the particle system (a PSManager mixin). The listing
// takes system + 0x60, the PEmitterModel subobject: +8 is its emitter type, +4 its domain. With the type 0 (box) the distance from the
// requested end point to the owner's target position, times 0.3, is stored at domain +0x2c (PDBox::sizes.X) and the node is moved to
// minus half of that along its own X, keeping its Y and Z. Any other type leaves the node alone. (With no system the original would read
// address 8; the port returns.)
void AnimatedFX::SetEndPoint(const Point3D<float>& position) {
    if (m_visual == nullptr) {
        return;
    }
    glitch::collada::CParticleSystemSceneNode* node =
        dynamic_cast<glitch::collada::CParticleSystemSceneNode*>(m_visual->GetSpecificNode(0x70656164));
    if (node == nullptr || unk_28 == nullptr || node->system == nullptr) {
        return;
    }
    const Point3D<float>& target = unk_28->GetTargetPosition();
    const float dx = position.X - target.X;
    const float dy = position.Y - target.Y;
    const float dz = position.Z - target.Z;
    const float distance = std::sqrt(dx * dx + dy * dy + dz * dz);

    glitch::ps::PEmitterModel<glitch::ps::SParticle>* emitter =
        dynamic_cast<glitch::ps::PEmitterModel<glitch::ps::SParticle>*>(node->system);
    if (emitter == nullptr || emitter->emitterType != 0 || emitter->domain == nullptr) {
        return;
    }
    const float scaled = distance * 0.3f;
    static_cast<glitch::ps::PDBox*>(emitter->domain)->sizes.X = scaled;
    const glitch::core::vector3d<float>& current = node->getPosition();
    node->setPosition(scaled * -0.5f, current.Y, current.Z);
}

// 0x49267c _ZN10AnimatedFX11GetAnimatorEv
glitch::collada::ISceneNodeAnimator* AnimatedFX::GetAnimator() {
    if (m_visual != nullptr) {
        return m_visual->m_animController->GetAnim(0);
    }
    return nullptr;
}

// 0x492550 _ZN10AnimatedFX17GetAnimControllerEv
AnimController* AnimatedFX::GetAnimController() {
    if (m_visual != nullptr) {
        return m_visual->m_animController;
    }
    return nullptr;
}

// 0x492694 AnimatedFX::SetLooping(bool)
// When the FX has a visual and an animator, the animator's timeline controller (getTimelineCtrl, vptr+0x44) gets setLoop(flag)
// (vptr+0x40). The flag is stored in m_looping (+0x18) in every case.
void AnimatedFX::SetLooping(bool looping) {
    if (m_visual != nullptr) {
        glitch::collada::ISceneNodeAnimator* animator = GetAnimator();
        if (animator != nullptr) {
            animator->getTimelineCtrl()->setLoop(looping);
        }
    }
    m_looping = looping;
}

// 0x4926e4 AnimatedFX::SetEnd(void)
// With a visual and an animator: the timeline controller's jumpTo (vptr+0x0c) with its range end (rangeEndMs, +0x14).
void AnimatedFX::SetEnd() {
    if (m_visual != nullptr) {
        glitch::collada::ISceneNodeAnimator* animator = GetAnimator();
        if (animator != nullptr) {
            const std::int32_t end = animator->getTimelineCtrl()->rangeEndMs;
            animator->getTimelineCtrl()->jumpTo(end);
        }
    }
}

// 0x492744 AnimatedFX::SetStart(void)
// As SetEnd, with the range start (rangeStartMs, +0x10).
void AnimatedFX::SetStart() {
    if (m_visual != nullptr) {
        glitch::collada::ISceneNodeAnimator* animator = GetAnimator();
        if (animator != nullptr) {
            const std::int32_t start = animator->getTimelineCtrl()->rangeStartMs;
            animator->getTimelineCtrl()->jumpTo(start);
        }
    }
}

// 0x4927a4 _ZN10AnimatedFX14_HandleLoopEndEv
// Gate: speed > 0, or a callback is set. A positive loop count counts down and restarts the clip. At the last loop the looping
// flag is cleared, the first byte of the set data is set, and the end-of-loop callback runs once (then is cleared); after it the
// timeline is parked at its range end: when its range end differs from its position the clip jumps to the end, and the animator
// is animated at that end time on the visual's node.
void AnimatedFX::_HandleLoopEnd() {
    if (!(m_speed <= 0.0f) || m_endOfLoop != nullptr) {         // speed > 0, or a callback is set
        const int loops = m_loopCount;                          // +0x14
        if (loops >= 0) {
            if (loops != 0) {
                m_loopCount = loops - 1;
                SetStart();
                return;
            }
            SetLooping(false);                                  // +0x18
            if (m_setData != nullptr) {                         // +0x50
                *static_cast<unsigned char*>(m_setData) = 1;    // first byte of the set data
            }
            if (m_endOfLoop != nullptr) {
                m_endOfLoop(this, m_setData);
                m_endOfLoop = nullptr;
                (void)GetAnimator()->getTimelineCtrl();
                glitch::scene::ISceneNode* node = m_visual->m_node;
                const std::int32_t end = GetAnimator()->getTimelineCtrl()->rangeEndMs;        // +0x14
                if (end != GetAnimator()->getTimelineCtrl()->currentTimeMs) {                 // +0x04
                    SetEnd();
                }
                GetAnimator()->animateNode(node, static_cast<unsigned int>(end));
            }
        }
    }
}

// 0x4928a4 _ZN10AnimatedFX7_CBLoopEPN6glitch5scene19ITimelineControllerEPv
// The controller argument is unused. The user pointer is the FX (Load registers this).
void AnimatedFX::_CBLoop(glitch::scene::ITimelineController* /*controller*/, void* user) {
    static_cast<AnimatedFX*>(user)->_HandleLoopEnd();
}

// 0x4928ac _ZN10AnimatedFX8SetScaleERK7Point3DIfE
void AnimatedFX::SetScale(const Point3D<float>& scale) {
    if (m_visual != nullptr) {                                  // +0x2c
        unk_32 = false;                                         // +0x32
        m_visual->SetScaling(scale);
    }
}

// 0x4928c8 _ZN10AnimatedFX13ForceMaterialEi
// The original's assert path: level 2 writes through a null pointer to crash (here std::abort, as in
// GCSingleton::GetInstance); level 1 prints the assert message to stderr. Level 0 does nothing. The
// material argument is not used by any path.
void AnimatedFX::ForceMaterial(int /*material*/) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\VisualFX\\AnimatedFX.cpp", 284);
    }
}

// 0x49296c _ZN10AnimatedFX4LoadEPKcS1_fib
// Stores speed, names and loop count, builds the visual (owner null), registers _CBLoop, sets the anim speed and, when
// selfIlluminated, flags the root node.
void AnimatedFX::Load(const char* name, const char* animName, float speed, int loopCount, bool selfIlluminated) {
    m_speed = speed;                                            // +0x20
    m_name = name;                                              // +0x0c
    m_loopCount = loopCount;                                    // +0x14
    m_animName = animName;                                      // +0x10
    m_visual = new VisualObject(nullptr, std::string(name), std::string(animName));
    if (m_visual != nullptr) {
        m_visual->m_animController->SetCallbacks(&AnimatedFX::_CBLoop, this, nullptr, nullptr);
        m_visual->m_animController->SetScale(m_speed, 0);
        if (selfIlluminated) {
            SetNodeToSelfIlluminated(m_visual->m_node);
        }
    }
}

// 0x492aa0 _ZN10AnimatedFX11SyncIrrDataEb
// Places the visual: position = owner target position + offset (+0x34..+0x3c); the rotation (from the owner's node transform in
// degrees or the owner's rotation) when rotation sync applies; the scale when +0x32 is set; the explicit rotation (+0x4c) is
// applied last, otherwise the floor normal is queried (unused afterwards, but the query is made).
void AnimatedFX::SyncIrrData(bool push) {
    if (m_visual == nullptr) {
        return;
    }
    Point3D<float> pos;
    std::memcpy(&pos.X, &unk_34, sizeof(float));
    std::memcpy(&pos.Y, &unk_38, sizeof(float));
    std::memcpy(&pos.Z, &unk_3c, sizeof(float));
    Point3D<float> rotation;
    std::memcpy(&rotation.X, &unk_40, sizeof(float));
    std::memcpy(&rotation.Y, &unk_44, sizeof(float));
    std::memcpy(&rotation.Z, &unk_48, sizeof(float));
    bool syncRotation = unk_30 ? true : (push ? unk_31 : false);
    if (m_setData != nullptr && push && unk_31) {
        VisualFXManager::AnimFXSetData* last = static_cast<VisualFXManager::AnimFXSetData*>(m_setData);
        for (VisualFXManager::AnimFXSetData* next = last->unk_2c; next != nullptr; next = next->unk_2c) {
            last = next;
        }
        if (last->m_stepIndex > 0) {
            syncRotation = false;
        }
    }
    if (unk_28 != nullptr) {
        const Point3D<float>& target = unk_28->GetTargetPosition();
        pos.X += target.X;
        pos.Y += target.Y;
        pos.Z += target.Z;
        if (syncRotation) {
            VisualObject* ownerVisual = unk_28->m_visualObject;
            if (ownerVisual != nullptr) {
                const glitch::core::vector3d<float> degrees = ownerVisual->m_node->getAbsoluteTransformation().getRotationDegrees();
                rotation.X = degrees.X * 0.017453f;
                rotation.Y = degrees.Y * 0.017453f;
                rotation.Z = degrees.Z * 0.017453f;
            } else {
                rotation = unk_28->m_rotation;
            }
            std::memcpy(&unk_40, &rotation.X, sizeof(float));
            std::memcpy(&unk_44, &rotation.Y, sizeof(float));
            std::memcpy(&unk_48, &rotation.Z, sizeof(float));
            m_visual->SetRotation(rotation);
        }
        if (unk_32) {
            Point3D<float> scale = Vec3f_Origin;
            if (unk_28->GetFXScaleValue() == -1) {
                scale = unk_28->m_scale;
            } else {
                scale = unk_28->GetFXScale();
            }
            m_visual->SetScaling(scale);
        }
    }
    if (unk_4c) {
        m_visual->SetRotation(rotation);
    } else if (unk_28 == nullptr || (!syncRotation && !unk_31)) {
        Point3D<float> normal = {0.0f, 0.0f, 0.0f};
        if (unk_28 != nullptr) {
            normal = unk_28->m_pfObject.m_floorNormal;
            if (normal.X * normal.X + normal.Y * normal.Y + normal.Z * normal.Z == 0.0f) {
                Singleton<PFWorld>::s_inst.GetFloorHeightAt(pos, nullptr, &normal, nullptr, nullptr, false);
                if (normal.X * normal.X + normal.Y * normal.Y + normal.Z * normal.Z == 0.0f) {
                    normal = {0.0f, 0.0f, 1.0f};
                }
            }
        } else {
            Singleton<PFWorld>::s_inst.GetFloorHeightAt(pos, nullptr, &normal, nullptr, nullptr, false);
        }
    }
    m_visual->SetPosition(pos);
}

// 0x492e8c _ZN10AnimatedFX9SetAnimFXEbbbfiPN15VisualFXManager13AnimFXSetDataEPFvPS_S2_E
// Stores the three rotation/scale flags (+0x30, +0x31, +0x32) with a SyncIrrData sync after each, sets the
// speed, then the set data (+0x50), the loop count (+0x14) and the end-of-loop callback (+0x04). The
// flags are named after what SyncIrrData does with them (see the header comments).
void AnimatedFX::SetAnimFX(bool rotateWithOwner, bool rotateWithOwnerOnPush, bool scaleWithOwner, float speed,
                           int loopCount, void* setData, EndOfLoopCallback endOfLoop) {
    unk_30 = rotateWithOwner;               // +0x30
    SyncIrrData(false);
    unk_31 = rotateWithOwnerOnPush;         // +0x31
    SyncIrrData(true);
    unk_32 = scaleWithOwner;                // +0x32
    SyncIrrData(false);
    SetSpeed(speed);
    m_setData = setData;                    // +0x50
    m_loopCount = loopCount;                // +0x14
    m_endOfLoop = endOfLoop;                // +0x04
}
