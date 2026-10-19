// Batch g1-game-world-DestructibleContainer-8b39a5-0: the DestructibleContainer methods of libDungeonHunter2.so (the
// constructors and destructors, the Container overrides, Interact and the animation event callback).
// Declarations come from dh2/DestructibleContainer.hpp, which needs no change for this batch. Offsets in comments are
// the original 32-bit ones.
//
// Pydata row fields (Structs::DestructibleContainer, pydata-accessors/w7_structs_5.hpp; the element is 68 bytes in the
// original with its vptr at +0x00, and the field m_wN sits at +4*N). The names here are the uses in these bodies:
//   m_w7  (+0x1c) int32  sound id         GetSound
//   m_w8  (+0x20) bool   keep physics     KeepPhysics
//   m_w10 (+0x28) int32  loot table id    GetLoot
//   m_w12 (+0x30) char*  script name      GetScript (the listing zeroes it, see w7_arrays27.cpp)
//   m_w15 (+0x3c) int32  visual index     GetVisual
// A row is reached through the typed element pointer, never by byte offset (Track B decision 3).
//
// Include constraint: pydata-accessors/member_names.hpp is not included here. It redefines CustomFree, which
// net-transport's deps/byte_array.hpp also defines (dh2/Container.hpp pulls net-transport in). The Arrays lookups are
// declared by hand instead, as game-app and game-world do.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DestructibleContainer.hpp"
#include "dh2/Level.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/QE_DestroyGameObject.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/VisualObject.hpp"
#include "pydata-accessors/w7_arrays27.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "glitch-scene-collada-gui/collada/CEventsManager.hpp"
#include "pydata-accessors/name_table.hpp"
#include "pydata-accessors/w7_structs_5.hpp"
#include "vox-audio/vox/sound_manager.hpp"

// Engine-wide assert level (core-platform/memory.hpp, not included: see the note above).
extern int gAssertLevel;

namespace Arrays {
struct TrophyTable;  // defined in pydata-accessors/w7_arrays_00.hpp
// The explicit instantiation for DestructibleContainers is in pydata-accessors/src/member_ids.cpp; the one for TrophyTable
// is in pydata-accessors/src/tb_accessors-Arrays-0.cpp.
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

namespace {

const char kDestructibleContainerSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Containers\\DestructibleContainer.cpp";

// The original ASSERT(expression) at DestructibleContainer.cpp:line. Level 2 stops the process (the original stores to
// address 0); level 1 prints the message.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kDestructibleContainerSource, line);
    }
}

// Row `index` of Arrays::DestructibleContainers as the host element type. The caller has checked index != -1.
const Structs::DestructibleContainer& TableRow(int index) {
    return reinterpret_cast<const Structs::DestructibleContainer*>(Arrays::DestructibleContainers::members)[index];
}

}  // namespace

// 0x3a0cec _ZNK21DestructibleContainer9GetScriptEv
// The script name is the row's m_w12 string buffer. Returns null when the object has no row (m_dataId is -1).
const char* DestructibleContainer::GetScript() const {
    if (m_dataId == -1) {  // +0x374
        return nullptr;
    }
    return TableRow(m_dataId).Script;
}

// 0x3a0d28 _ZNK21DestructibleContainer9GetVisualEv
// The visual index is the row's m_w15 (+0x3c). Without a row the original returns m_dataId itself, which is -1.
int DestructibleContainer::GetVisual() const {
    if (m_dataId != -1) {  // +0x374
        return TableRow(m_dataId).Visual;
    }
    return m_dataId;
}

// 0x3a0d60 _ZNK21DestructibleContainer18GetInteractionTypeEP10GameObject
// Constant 8 (the other argument is unused).
int DestructibleContainer::GetInteractionType(GameObject* other) const {
    (void)other;
    return 8;
}

// 0x3a0d68 _ZN21DestructibleContainer9DoEffectsEv
// Empty in the original (a bare return). The "fx" animation event calls it.
void DestructibleContainer::DoEffects() {}

// 0x3a0da0 _ZN21DestructibleContainer8InteractEP10GameObject
// A hit (hits left, +0x6f4, not zero): the counter drops first, then the visual plays the clip total - hits left (loop false, unused 0, animation index 0) when it is set, and the container's
// sound plays in 3D at its position (no check on the sound manager). With no hits left: the level assert (line 231), the DestroyGameObject quest event (v2QuestObjectiveType, the interacting
// object as the character, unk_64 as the target id, GetDataId() as the match id) on the current level, then Container::Interact. When the interacting GameObject is a Character that IsPlayer(), its
// property 217 is incremented, and when the value passes 199 for a local player, the trophy "destroy_200_breakables" is unlocked (UnlockTrophy with -1 when the name is not found).
// The original's int return is not part of the void declaration.
void DestructibleContainer::Interact(GameObject* other) {
    if (unk_6f4 != 0) {  // +0x6f4 hits left
        const int hitsLeft = unk_6f4 - 1;
        unk_6f4 = hitsLeft;
        if (m_visualObject != nullptr) {  // +0x2d8
            const unsigned int clip = static_cast<unsigned int>(unk_6f0) - static_cast<unsigned int>(hitsLeft);
            // VisualObject +0x38 m_animController, vtable +0x1c PlayClip(clip, loop = false, unused = 0, animIndex = 0).
            m_visualObject->m_animController->PlayClip(clip, false, 0, 0);
        }
        const glitch::core::vector3d<float> at{m_position.X, m_position.Y, m_position.Z};
        VoxSoundManager::s_instance->Play3D(GetSound(), at, false, 1, -1.0f, -1.0f);
        return;
    }

    // Destroy path.
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        ReportAssert("level", 231);
    }
    {
        QE_DestroyGameObject event;
        event.eventId_ = static_cast<std::uint32_t>(
            ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "DestroyGameObject"));
        event.m_character = other;
        event.m_targetId = unk_64;
        event.m_flag0 = 0;
        event.m_flag1 = 0;
        event.m_value = -1;
        event.m_matchId = GetDataId();
        level->RaiseAsync(event);
    }

    Container::Interact(other);

    // ObjectBase::GetHandle of the interacting object, then ObjectHandle::operator Character*.
    ObjectHandle handle = other->GetHandle();
    Character* character = handle;
    if (character == nullptr || !character->IsPlayer()) {  // vtable +0x28 IsPlayer
        return;
    }
    // Character +0x560 is its CharProperties base; property 217 has no name in the tree (the breakables counter).
    character->PROPS_AddInt(217, 1);
    if (character->PROPS_GetInt(217, false) <= 199) {
        return;
    }
    // dword_99F76C is Application::m_playerManager (+0x40).
    if (!ApplicationGetInstance().m_playerManager->IsLocalPlayer(character)) {
        return;
    }
    // The original walks Arrays::TrophyTable::m_memberNames with strcmp; the port's lookup for that table is the same
    // search (-1 when no name matches or the table is empty).
    const int trophy = Arrays::GetMemberIDByString<Arrays::TrophyTable>("destroy_200_breakables");
    TrophyManager::s_instance->UnlockTrophy(trophy);
}

// 0x3a10f8 _ZNK21DestructibleContainer11KeepPhysicsEv
// The row is found by the data_desc string (m_dataDesc, +0x378; its data pointer is at +0x38c, the same word
// GetSound reads). Returns false when no row matches.
bool DestructibleContainer::KeepPhysics() const {
    const int row = Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(m_dataDesc.c_str());
    if (row == -1) {
        return false;
    }
    return TableRow(row).KeepSolid;  // +0x20
}

// 0x3a1140 _ZNK21DestructibleContainer8GetSoundEv
// The sound id is the row's m_w7 (+0x1c). Returns -1 when no row matches.
int DestructibleContainer::GetSound() const {
    const int row = Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(m_dataDesc.c_str());
    if (row != -1) {
        return TableRow(row).InteractSound;  // +0x1c
    }
    return row;
}

// 0x3a1180 _ZNK21DestructibleContainer7GetLootEv
// The loot table id is the row's m_w10 (+0x28). Returns -1 when no row matches.
int DestructibleContainer::GetLoot() const {
    const int row = Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(m_dataDesc.c_str());
    if (row != -1) {
        return TableRow(row).Loot;  // +0x28
    }
    return row;
}

// 0x3a11c0 _ZNK21DestructibleContainer9GetDataIdEv
// -1 when the data_desc string is empty, otherwise the row found by that string. The original compares the string's
// two pointer words at +0x388 and +0x38c, which is the empty test of its std::string (the same layout as
// ObjectBase::m_minDifficulty at +0xd4, see g1-game-world-ObjectBase-670ee4-1.cpp).
int DestructibleContainer::GetDataId() const {
    if (m_dataDesc.empty()) {
        return -1;
    }
    return Arrays::GetMemberIDByString<Arrays::DestructibleContainers>(m_dataDesc.c_str());
}

// 0x3a11dc _ZN21DestructibleContainer8InitPostEv
// Container::InitPost first. When the visual is set, the timeline callbacks are installed (Container's animation
// callback, this class's event callback), and the clip count of the animation (GetNumClip(0), vtable +0x10) gives the
// hit counter: when it is above 3, the total hits (+0x6f0) and the hits left (+0x6f4) are both set to count - 3.
void DestructibleContainer::InitPost() {
    Container::InitPost();
    VisualObject* visual = m_visualObject;  // +0x2d8
    if (visual != nullptr) {
        AnimController* anim = visual->m_animController;  // VisualObject +0x38
        // vtable +0x2c SetCallbacks(animCallback, user, eventCallback, user)
        anim->SetCallbacks(&Container::__Callback, this, &DestructibleContainer::__EventCallback, this);
        const unsigned int clipCount = static_cast<unsigned int>(anim->GetNumClip(0));  // vtable +0x10
        if (clipCount > 3) {
            const int hits = static_cast<int>(clipCount - 3);
            unk_6f0 = hits;  // +0x6f0 total hits
            unk_6f4 = hits;  // +0x6f4 hits left
        }
    }
}

// 0x3a1270 _ZN21DestructibleContainer17DeclarePropertiesEv
// Thunk: a tail branch to Container::DeclareProperties (0x3a083c).
void DestructibleContainer::DeclareProperties() {
    Container::DeclareProperties();
}

// 0x3a1274 _ZN21DestructibleContainer15__EventCallbackERKN6glitch7collada15STriggeredEventEPv
// The animation event callback (user is the container). "fx" runs DoEffects(). "opened" asserts that a level exists (line 69), raises the DestroyGameObject quest event (no character, value -1, the
// container's unk_64 as the target id and GetDataId() as the match id) and then forwards to Container::__EventCallback, which runs DoOpen. Any other name is forwarded to Container::__EventCallback.
void DestructibleContainer::__EventCallback(const glitch::collada::STriggeredEvent& event, void* user) {
    DestructibleContainer* container = static_cast<DestructibleContainer*>(user);
    const char* name = event.eventName;
    if (std::strcmp(name, "fx") == 0) {
        container->DoEffects();
        return;
    }
    if (std::strcmp(name, "opened") != 0) {
        Container::__EventCallback(event, user);
        return;
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    if (level == nullptr) {
        ReportAssert("level", 69);
    }
    {
        QE_DestroyGameObject event2;
        event2.eventId_ = static_cast<std::uint32_t>(
            ApplicationGetPyDataConstants()->getConstant("v2QuestObjectiveType", "DestroyGameObject"));
        event2.m_character = nullptr;
        event2.m_targetId = container->unk_64;
        event2.m_flag0 = 0;
        event2.m_flag1 = 0;
        event2.m_value = -1;
        event2.m_matchId = container->GetDataId();
        level->RaiseAsync(event2);
    }
    Container::__EventCallback(event, user);
}

// 0x3a1418 _ZN21DestructibleContainerD1Ev (complete-object destructor)
// 0x3a147c _ZN21DestructibleContainerD2Ev (base-object destructor, same body)
// The pseudocode resets the three vtable pointers and calls Container::~Container. In C++ those are the implicit steps of
// the destructor chain, so the body is empty.
DestructibleContainer::~DestructibleContainer() {}

// 0x3a14bc _ZN21DestructibleContainerC1EN10ObjectBase6GO_IDSE
// 0x3a1508 _ZN21DestructibleContainerC2EN10ObjectBase6GO_IDSE
// Container(id), then the hit counters +0x6f4 and +0x6f0 start at zero.
DestructibleContainer::DestructibleContainer(ObjectBase::GO_IDS id) : Container(id) {
    unk_6f4 = 0;  // +0x6f4 hits left
    unk_6f0 = 0;  // +0x6f0 total hits
}
