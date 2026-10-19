// Batch g1-game-world-Container-e6443a-0 (part 1 of 2): the constant Container getters, IsDead, IsInteractive,
// the obstacle values, SetState, Spawn, the timeline callback, IsZonable (a thunk), Deserialize and Serialize.
// Declarations come from dh2/Container.hpp. The NetStructContainer members and the constructors are in part 2.
//
// Layout facts used here (original 32-bit offsets, named in dh2/Container.hpp and its bases):
//   GameObject +0x2d8  m_visualObject      VisualObject*
//   VisualObject +0x08 m_node              RootSceneNode*
//   VisualObject +0x38 m_animController    AnimController* (PlayClip is its vtable slot +0x20)
//   RootSceneNode +0x11c unk_011c          flags word of the node (bit 0x400 set by SetState, bit 0x200 cleared by __Callback)
//   Container +0x390 m_deathReset, +0x394 m_state
//   ObjectBase +0x81 m_markedForDeletion   set by ObjectBase::Delete
//

#include "dh2/Container.hpp"

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"

// 0x39f324 _ZNK9Container11IsUpdatableEv
bool Container::IsUpdatable() const {
    return false;
}

// 0x39f32c _ZNK9Container9GetScriptEv
const char* Container::GetScript() const {
    return nullptr;
}

// 0x39f334 _ZNK9Container9GetVisualEv
int Container::GetVisual() const {
    return -1;
}

// 0x39f33c _ZNK9Container9GetDataIdEv
int Container::GetDataId() const {
    return -1;
}

// 0x39f344 _ZNK9Container7GetLootEv
int Container::GetLoot() const {
    return -1;
}

// 0x39f34c _ZNK9Container8GetSoundEv
int Container::GetSound() const {
    return -1;
}

// 0x39f354 _ZNK9Container11KeepPhysicsEv
bool Container::KeepPhysics() const {
    return false;
}

// 0x39f35c _ZNK9Container21GetLootFixedNumPowersEv
int Container::GetLootFixedNumPowers() const {
    return -1;
}

// 0x39f364 _ZNK9Container6IsDeadEv
// The original is (unsigned)(state - 3) <= 1: true for ACTIVATE (3) and OPENED (4) only.
bool Container::IsDead() const {
    return static_cast<unsigned int>(m_state) - 3u <= 1u;
}

// 0x39f37c _ZNK9Container10IsAnimatedEv
bool Container::IsAnimated() const {
    return true;
}

// 0x39f384 _ZNK9Container13IsInteractiveEP10GameObject
// True when the object is not marked for deletion (byte +0x81) and the state is IDLE. The second argument is unused.
bool Container::IsInteractive(GameObject* by) const {
    (void)by;
    return m_markedForDeletion == 0 && m_state == STATE_IDLE;
}

// 0x39f3a8 _ZNK9Container10IsObstacleEv
bool Container::IsObstacle() const {
    return true;
}

// 0x39f3b0 _ZNK9Container17GetObstacleRadiusEv
// The original returns the bit pattern 0x43160000, which is 150.0f.
float Container::GetObstacleRadius() const {
    return 150.0f;
}

// 0x39f3bc _ZNK9Container19GetObstacleStrengthEv
// The original returns the bit pattern 0x41200000, which is 10.0f.
float Container::GetObstacleStrength() const {
    return 10.0f;
}

// 0x39f3cc _ZN9Container8SetStateENS_5StateE
// Clears bit 0x400 of the visual's node flags when entering ACTIVATE, sets it for every other state, then stores
// the state. The visual and its node are dereferenced without a null check, as in the original. The original's
// int return (its first argument, r0) is not part of the void declaration.
void Container::SetState(State state) {
    RootSceneNode* node = m_visualObject->m_node;
    if (state == STATE_ACTIVATE) {
        node->flags &= ~0x400u;
    } else {
        node->flags |= 0x400u;
    }
    m_state = state;
}

// 0x39f3f0 _ZN9Container5SpawnEv
// From PRESPAWN with a visual: enter SPAWN and play "spawn" (PlayClip with loop 0, unused 0, animIndex 0).
// The original's int return (r0 on the fall-through path) is not part of the void declaration.
void Container::Spawn() {
    if (m_visualObject != nullptr && m_state == STATE_PRESPAWN) {
        SetState(STATE_SPAWN);
        m_visualObject->m_animController->PlayClip("spawn", false, 0, 0);
    }
}

// 0x39f44c _ZN9Container10__CallbackEPN6glitch5scene19ITimelineControllerEPv
// The timeline callback (user is the Container). SPAWN becomes IDLE and plays "idle"; ACTIVATE becomes OPENED and plays "idleactive". In any other state the controller's getLoop()
// (vtable +0x44) decides: a controller that does not loop clears bit 0x200 of the visual node's flags (RootSceneNode +0x11c). The original's int return is not part of the void declaration.
void Container::__Callback(glitch::scene::ITimelineController* controller, void* user) {
    Container* container = static_cast<Container*>(user);
    if (container->m_state == STATE_SPAWN) {
        container->SetState(STATE_IDLE);
        container->m_visualObject->m_animController->PlayClip("idle", false, 0, 0);
    } else if (container->m_state == STATE_ACTIVATE) {
        container->SetState(STATE_OPENED);
        container->m_visualObject->m_animController->PlayClip("idleactive", false, 0, 0);
    } else if (!controller->getLoop()) {
        container->m_visualObject->m_node->flags &= ~0x200u;
    }
}

// 0x39f534 _ZNK9Container9IsZonableEv
// Thunk: the original is a tail branch to GameObject::MeetCondition (0x38ab60).
bool Container::IsZonable() const {
    return GameObject::MeetCondition();
}

// 0x39f6f0 _ZN9Container11DeserializeEP11IStreamBase
// Runs only when m_deathReset is set or the current level has neither Level +0xf3 (m_cameFromOtherLevel) nor +0xf4 (m_loadingCheckpoint) set. GameObject::Deserialize, then the state byte.
// With a visual the state is applied (SetState): OPENED releases the physics body unless KeepPhysics() (vtable +0xdc) and plays "idleactive"; IDLE plays "idle". Other states only set the state.
void Container::Deserialize(IStreamBase* stream) {
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (m_deathReset || (!level->m_cameFromOtherLevel && !level->m_loadingCheckpoint)) {
        GameObject::Deserialize(stream);
        unsigned char stateByte;
        stream->readAs<unsigned char>(stateByte);
        if (m_visualObject != nullptr) {
            SetState(static_cast<State>(stateByte));
            VisualObject* visual = m_visualObject;
            if (m_state == STATE_OPENED) {
                if (!KeepPhysics()) {
                    SetPhysicalObject(nullptr, false);
                }
                if (visual != nullptr) {
                    visual->m_animController->PlayClip("idleactive", false, 0, 0);
                }
            } else if (m_state == STATE_IDLE) {
                if (visual != nullptr) {
                    visual->m_animController->PlayClip("idle", false, 0, 0);
                }
            }
        }
    }
}

// 0x39f8e0 _ZN9Container9SerializeEP11IStreamBase
// GameObject fields first, then the state as one byte.
void Container::Serialize(IStreamBase* stream) {
    GameObject::Serialize(stream);
    const unsigned char stateByte = static_cast<unsigned char>(m_state);
    stream->writeAs<unsigned char>(stateByte);
}
