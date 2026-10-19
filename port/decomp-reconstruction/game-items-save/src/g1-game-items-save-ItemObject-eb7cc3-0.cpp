// Batch g1-game-items-save-ItemObject-eb7cc3-0: the first 20 functions of ItemObject, the dropped item in the world
// (queue order: IsUpdatable .. InitAgain). Declarations and layout come from dh2/ItemObject.hpp.
//
// InitAgain is complete: the spawn sound is VoxSoundManager::s_instance->Play3D at the object's destination, and the physics
// body is a POItem built with the PhysicalObject constructor arguments of the listing (the binary runs that constructor inline
// and then stores the POItem vtable; POItem inherits the constructor here).
//
// Static storage: s_numProjectiles and s_playerRRId are defined in this file, since the functions here are the first to
// use them. s_playerQuestRRId is not defined here (it belongs to _GetNextPlayerQuestRRId, a later batch).

#include "dh2/ItemObject.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "dh2/AnimController.hpp"
#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/POItem.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/SWFAnim.hpp"
#include "dh2/SWFAnimToolTip.hpp"
#include "dh2/VisualObject.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "gameswf/gameswf_value.h"
#include "pydata-accessors/w7_arrays_00.hpp"  // Arrays::ItemAudioVisualTable
#include "pydata-accessors/w7_structs_2.hpp"  // Structs::Item
#include "pydata-accessors/w7_structs_3.hpp"  // Structs::ItemAudioVisual

// The original's assert level (core-platform/memory.hpp). Declared here: that header clashes with dh2/VisualObject.hpp.
extern int gAssertLevel;

// The engine singletons these functions read: Singleton<Application> (frame time, PlayerManager) and
// Singleton<VisualFXManager>. They are defined in the companion file g1-game-items-save-ItemObject-eb7cc3-0_players.cpp:
// dh2/PlayerManager.hpp (net-transport's IStreamBase) cannot share a translation unit with dh2/Character.hpp (pydata's
// IStreamBase). The same split is used by g1-game-items-save-ItemInventory-cf6f6b-3_players.cpp.
namespace ItemObjectEngine {
int FrameDt();                                         // Application::GetDt() (0x31f66c), frame time in ms
int RoundRobinCount();                                 // PlayerManager +0x6c4, m_numCharacters
int ReceiverPlayerNumber(const Character* receiver);   // PlayerManager::GetPlayerByCharacter(receiver, false), PlayerInfo +0x678
bool IsLocalPlayer(const Character* character);        // PlayerManager::IsLocalPlayer(character) != 0
void DropGlowFX(AnimatedFX*& fx);                      // VisualFXManager::DropAnimatedFX(fx)
}  // namespace ItemObjectEngine

namespace {

// The original's ASSERT(expr) at ItemObject.cpp:line. gAssertLevel 2 stops the program (the original writes to address 0
// to force a crash), 1 prints the message and carries on, 0 stays silent.
void ReportItemObjectAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr,
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Items\\ItemObject.cpp", line);
    }
}

// Typed row of Arrays::ItemAudioVisualTable: element `index` of the host-stride table (same convention as
// ItemInstance::GetItem, the 20-byte listing stride is not applied to bytes).
const Structs::ItemAudioVisual* ItemAudioVisualRow(int index) {
    return reinterpret_cast<const Structs::ItemAudioVisual*>(Arrays::ItemAudioVisualTable::members) + index;
}

}  // namespace

// Static storage shared by all ItemObjects. Zero at start, as the .bss of the original.
int ItemObject::s_numProjectiles = 0;
unsigned int ItemObject::s_playerRRId = 0;

// 0x3ebbf4 _ZNK10ItemObject11IsUpdatableEv
bool ItemObject::IsUpdatable() const {
    return true;
}

// 0x3ebbfc _ZNK10ItemObject10IsAnimatedEv
bool ItemObject::IsAnimated() const {
    return true;
}

// 0x3ebc04 _ZNK10ItemObject8GetSpeedEv
// Returns m_speed (+0x3b0).
float ItemObject::GetSpeed() const {
    return m_speed;
}

// 0x3ebc0c _ZN10ItemObject16_OnItemCollectedEP10ProjectilePv
// The projectile and the user argument are not read. Counts one projectile fewer.
void ItemObject::_OnItemCollected(Projectile* /*projectile*/, void* /*user*/) {
    --s_numProjectiles;
}

// 0x3ebc34 _ZN10ItemObject21_GetCurrentPlayerRRIdEv
int ItemObject::_GetCurrentPlayerRRId() {
    return static_cast<int>(s_playerRRId);
}

// 0x3ebc54 _ZN10ItemObject18_GetNextPlayerRRIdEv
// Returns the current round-robin id, then advances it modulo the count at PlayerManager +0x6c4 (m_numCharacters).
// A zero count is a division by zero here; the original's ARM divide is not reproduced.
int ItemObject::_GetNextPlayerRRId() {
    const int result = static_cast<int>(s_playerRRId++);
    s_playerRRId = s_playerRRId % static_cast<unsigned int>(ItemObjectEngine::RoundRobinCount());
    return result;
}

// 0x3ebca0 _ZN10ItemObject8InitPostEv
void ItemObject::InitPost() {
}

// 0x3ebca4 _ZN10ItemObject8ShowGlowEv
void ItemObject::ShowGlow() {
}

// 0x3ebca8 _ZN10ItemObject18UpdateLocalizationEv
// Refreshes the localized name and text of the item at index 0.
void ItemObject::UpdateLocalization() {
    if (ItemInstance* item = ItemInventory::GetItem(0)) {
        item->UpdateLocalization();
    }
}

// 0x3ebccc _ZN10ItemObject8HideGlowEv
// Gives the glow effect (+0x3cc) back to the VisualFXManager pool. The pointer is cleared by DropAnimatedFX.
void ItemObject::HideGlow() {
    if (m_glowFX) {
        ItemObjectEngine::DropGlowFX(m_glowFX);
    }
}

// 0x3ebcf8 _ZN10ItemObject11HideTooltipEv
// Fades the tooltip out (100) when it exists and is visible.
void ItemObject::HideTooltip() {
    if (m_tooltip && m_tooltip->IsVisible()) {
        m_tooltip->FadeOut(100);
    }
}

// 0x3ebd2c _ZN10ItemObject15OnCollisionEndsEP9Character
// When a Character stops touching this item and this item is not its object of interest (Character +0x14a4), the tooltip
// is hidden and the tooltip Character is cleared.
void ItemObject::OnCollisionEnds(Character* character) {
    if (character) {
        if (this != character->m_objectOfInterest) {
            HideTooltip();
            m_tooltipCharacter = nullptr;
        }
    }
}

// 0x3ebd5c _ZN10ItemObject11ShowTooltipEv
// Creates the tooltip on first use and fades it in once: the item name goes into the "_text_itemname.text" field, the
// text colour comes from the item, the anim is placed at m_position, and the "linkToPlayer" callback gets the receiving
// player's number (PlayerInfo +0x678, unk_678 in dh2/PlayerInfo.hpp). The item is read without a null check, as in the
// original.
void ItemObject::ShowTooltip() {
    ItemInstance* item = ItemInventory::GetItem(0);
    if (!m_tooltip) {
        m_tooltip = new SWFAnimToolTip();
    }
    if (!m_tooltip->IsVisible()) {
        m_tooltip->FadeIn();
        m_tooltip->m_swfAnim->BindText("_text_itemname.text");
        m_tooltip->m_swfAnim->SetText(item->m_name.c_str());
        m_tooltip->m_swfAnim->SetTextColor(static_cast<unsigned int>(item->GetColor()), 0xFF000000u);
        m_tooltip->m_swfAnim->SetPosition3D(m_position);

        // The receiver's player record. The value is passed as a gameswf number (the original stores a double).
        const int playerNumber = ItemObjectEngine::ReceiverPlayerNumber(m_receiver);
        SWFAnim* anim = m_tooltip->m_swfAnim;
        RenderFX* menu = anim->m_menu;  // SWFAnim +0x08, a MenuFX (derives from RenderFX)
        gameswf::character* character = anim->m_anim.GetChar();
        gameswf::as_value linkArg;
        linkArg.set_double(static_cast<double>(playerNumber));
        menu->InvokeASCallback(character, "linkToPlayer", &linkArg, 1);
        linkArg.drop_refs();
    }
}

// 0x3ebeb4 _ZNK10ItemObject18GetInteractionTypeEP10GameObject
// Returns -1 (no interaction type) in every case. When IsInteractive (a virtual call) holds, the original also reads the
// item at index 0 and drops the result.
int ItemObject::GetInteractionType(GameObject* other) const {
    if (IsInteractive(other)) {
        ItemInventory::GetItem(0);
    }
    return -1;
}

// 0x3ebee4 _ZN10ItemObject6UpdateEv
// Stops the item at its destination, runs the GameObject update, keeps the tooltip at the item and hides it when the
// Character's object of interest moves on, updates the tooltip anim, and counts the pick-up lock down (m_pickupLockMs
// +0x3b8, in ms) while it is positive.
void ItemObject::Update() {
    if (GameObject::IsAtDestination()) {
        GameObject::Stop();
    }
    GameObject::Update();
    if (m_tooltip) {
        if (m_tooltip->IsVisible()) {
            m_tooltip->m_swfAnim->SetPosition3D(m_position);
            if (m_tooltipCharacter) {
                if (this != m_tooltipCharacter->m_objectOfInterest) {
                    HideTooltip();
                }
            }
        }
        m_tooltip->Update();
    }
    if (m_pickupLockMs > 0) {
        m_pickupLockMs = static_cast<std::int16_t>(m_pickupLockMs - ItemObjectEngine::FrameDt());
    }
}

// 0x3ebfa0 _ZN10ItemObject15SetRelativeAABBERK4aabbIfEb
// The box argument is not read. Unless update is set, the object's own relative box is grown by 1.5 on the x and y
// extents only (m_relAabb[0], [1], [3], [4]: min x, min y, max x, max y; z is kept). Then the absolute box is refreshed.
void ItemObject::SetRelativeAABB(const aabb<float>& /*box*/, bool update) {
    if (!update) {
        m_relAabb[0] = m_relAabb[0] * 1.5f;
        m_relAabb[1] = m_relAabb[1] * 1.5f;
        m_relAabb[3] = m_relAabb[3] * 1.5f;
        m_relAabb[4] = m_relAabb[4] * 1.5f;
    }
    GameObject::UpdateAbsoluteAABB();
}

// 0x3ebffc _ZNK10ItemObject13HasBeenLootedEv
// True when the item inventory (ItemInventory base) holds no items.
bool ItemObject::HasBeenLooted() const {
    return ItemInventory::GetNumItems() == 0;
}

// 0x3ec014 _ZNK10ItemObject13IsInteractiveEP10GameObject
// Interactive while the object is visible (ObjectBase +0x80, m_visible), not marked for deletion (+0x81) and not looted.
// The argument is not read.
bool ItemObject::IsInteractive(GameObject* /*other*/) const {
    if (!m_markedForDeletion && m_visible) {
        return !HasBeenLooted();
    }
    return false;
}

// 0x3ec048 _ZN10ItemObject17OnCollisionBeginsEP9Character
// A Character touches an item that still holds something. When the item has no interaction type (-1), a moving Character
// becomes the pending interactor (GameObject +0x2e4, Update calls Interact with it). Otherwise, when the Character's
// object of interest is this item and the Character is the local player, the tooltip is shown for that Character.
void ItemObject::OnCollisionBegins(Character* character) {
    if (!character) {
        return;
    }
    if (HasBeenLooted()) {
        return;
    }
    if (GetInteractionType(character) == -1) {
        if (character->SM_IsMoving(false)) {
            m_pendingInteractor = character;
        }
    } else if (this == character->m_objectOfInterest) {
        if (ItemObjectEngine::IsLocalPlayer(character)) {
            m_tooltipCharacter = character;
            ShowTooltip();
        }
    }
}

// 0x3ec0f0 _ZN10ItemObject9InitAgainER13ItemInventoryjPK9Character
// The item at `index` moves from source into this object (stacked, gold not converted); the spawn and pick-up sound ids come
// from the Arrays::ItemAudioVisualTable row named by the item row's m_w21 (+0x54, -1 = none), read from the row's +4 and +8
// halfwords (m_w1 and m_w2 in the pydata model); the visual's animation controller plays clip 0 (PlayClip slot +0x1c with
// arguments 0, false, 0, 0; the item's GetColor is called and its result dropped, as in the original); the receiver is stored
// when given. When no item is at index 0, ASSERT ("ii", line 455) is reported and the rest runs as before. Then the spawn sound
// plays at the destination (+0x1a8) as a 3D sound, the physics body is created (a POItem in the application's physics world,
// owned by this object, not static, circle, sensor, not a bullet, group -3, category 0x40, mask 4), and the glow is shown.
void ItemObject::InitAgain(ItemInventory& source, unsigned int index, const Character* receiver) {
    source.TransferItemTo(index, *this, true, false);
    ItemInstance* item = ItemInventory::GetItem(0);
    if (item) {
        const Structs::Item* row = item->GetItem();
        if (row->AudioVisualID != -1) {
            const Structs::ItemAudioVisual* audio = ItemAudioVisualRow(row->AudioVisualID);
            // The original loads these as 16-bit halfwords (LDRH / STRH).
            m_spawnSoundId = static_cast<std::int16_t>(audio->AudioDrop);
            m_pickupSoundId = static_cast<std::int16_t>(audio->AudioPickup);
        }
        if (m_visualObject) {
            item->GetColor();
            m_visualObject->m_animController->PlayClip(0u, false, 0, 0u);
        }
        if (receiver) {
            m_receiver = receiver;
        }
    } else {
        ReportItemObjectAssert("ii", 455);
    }
    const glitch::core::vector3d<float> soundPosition{m_destination.X, m_destination.Y, m_destination.Z};
    VoxSoundManager::s_instance->Play3D(m_spawnSoundId, soundPosition, false, 1, -1.0f, -1.0f);
    POItem* body = new POItem(ApplicationGetInstance().m_physicalWorld, this, false, true, true, false, -3, 0x40, 4, 0);
    SetPhysicalObject(body, false);
    ShowGlow();
}
