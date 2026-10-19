// ItemObject: a dropped item in the world. It is a GameObject that also derives from ItemInventory (the item it
// carries, at +0x374). ItemManager pools and spawns it, it shows a tooltip while a Character touches it, and Interact
// picks it up. The static DropLootTable helpers roll the loot and spawn the items.
// Original 32-bit size 0x3d0 (976): GetNewInstance<ItemObject> calls operator new(0x3d0).
// Layout: GameObject +0x000 .. +0x373, ItemInventory +0x374 .. +0x3ab, own members +0x3ac .. +0x3cf.
// Vtable pointers at +0x00 (primary, GameObject), +0x04 (PropertyMap), +0x24 (ISerializable) and +0x374 (ItemInventory).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3ec324, dtor 0x3ecd54, _ZTV10ItemObject 288 bytes).
#pragma once

#include <cstdint>

#include "dh2/GameObject.hpp"
#include "dh2/ItemInventory.hpp"

class AnimatedFX;
class Character;
class Projectile;
class SWFAnimToolTip;
template <typename T> struct Point3D;
template <typename T> struct aabb;

class ItemObject : public GameObject,                   // +0x000 GameObject, 0x374 bytes
                   public ItemInventory {               // +0x374 the item this object carries, 0x38 bytes
public:
    explicit ItemObject(ObjectBase::GO_IDS id);         // 0x3ec324 (C1), 0x3ec3cc (C2)
    ~ItemObject() override;                             // 0x3ecd54 (D1), 0x3ecde4 (D0), 0x3ece00 (D2)

    // Overrides of GameObject slots, in vtable order (primary vtable).
    void DeclareProperties() override;                  // slot 0x18: 0x3ec320, a thunk to GameObject::DeclareProperties
    void InitPost() override;                           // slot 0x1c: 0x3ebca0 (empty)
    void Update() override;                             // slot 0x2c: 0x3ebee4
    bool IsUpdatable() const override;                  // slot 0x38: 0x3ebbf4 true
    bool IsAnimated() const override;                   // slot 0x80: 0x3ebbfc true
    bool IsInteractive(GameObject* other) const override;           // slot 0x88: 0x3ec014
    int GetInteractionType(GameObject* other) const override;       // slot 0x90: 0x3ebeb4 (-1 = none)
    void Interact(GameObject* other) override;          // slot 0x98: 0x3ed144
    void SetRelativeAABB(const aabb<float>& box, bool update) override;  // slot 0x9c: 0x3ebfa0
    float GetSpeed() const override;                    // slot 0xa8: 0x3ebc04 returns m_speed

    // Non-virtual methods.
    void ShowGlow();                                    // 0x3ebca4 (empty)
    void HideGlow();                                    // 0x3ebccc drops m_glowFX
    void UpdateLocalization();                          // 0x3ebca8 updates the localized name of the item in slot 0
    void ShowTooltip();                                 // 0x3ebd5c creates m_tooltip on first use and fades it in
    void HideTooltip();                                 // 0x3ebcf8 fades m_tooltip out when it is visible
    void OnCollisionBegins(Character* character);       // 0x3ec048 forwards to GetInteractionType and ShowTooltip
    void OnCollisionEnds(Character* character);         // 0x3ebd2c clears m_tooltipCharacter and hides the tooltip
    bool HasBeenLooted() const;                         // 0x3ebffc true when the item inventory is empty
    void InitAgain(ItemInventory& source, unsigned int index, const Character* receiver);  // 0x3ec0f0 moves item index from source into this
    void InitOnce(int audioVisualIndex);                // 0x3ece80 sets m_audioVisualIndex and the mesh strings from Arrays::ItemAudioVisualTable
    void _DoAutoPickupHack(ItemObject* unk_item, const GameObject* dropper, const GameObject* killer);  // 0x3ec474 Interacts with killer when the item is Automatic
    Character* _GetNextPlayerQuestRRId(int unk_arg);    // 0x3ec504 searches the players for the next quest holder, null if none

    // Static helpers. The drop path works on an ItemInventory, not on a pooled item.
    static float _GetRandomDropPos(Point3D<float>& position, const GameObject* origin, const GameObject* target);  // 0x3ec668
    static void DropAndAwardLoot(ItemInventory& inventory, const GameObject* dropper, const GameObject* killer, int unk_arg);  // 0x3ec8a0
    static void DropInventory(ItemInventory& inventory, const GameObject* dropper, const GameObject* killer, const Character* owner);  // 0x3ec974
    static void GetInventoryToDrop(ItemInventory& inventory, int lootTableId, const GameObject* dropper, int unk_arg);  // 0x3ecae4 adds the loot table rows to inventory
    // 0x3ecba0 and 0x3eccc8 are static (the loot table id arrives in r0). Both take an ItemInventory* after lootTableId
    // (Container::DoOpen passes the container), which the two declarations below omit. Not corrected here: integrator decision.
    static void DropLootTable(int lootTableId, const GameObject* dropper, const GameObject* killer, int fixedNumPowers, bool unk_flag);  // 0x3ecba0
    static void DropLootTable(int lootTableId, const GameObject* dropper, const GameObject* killer, const Character* owner, int unk_arg);  // 0x3eccc8
    static void _OnItemCollected(Projectile* projectile, void* user);  // 0x3ebc0c decrements s_numProjectiles
    static int _GetCurrentPlayerRRId();                 // 0x3ebc34 returns s_playerRRId
    static int _GetNextPlayerRRId();                    // 0x3ebc54 returns s_playerRRId, then advances it

    // Static storage shared by all ItemObjects (not part of the object, defined in the .cpp).
    static int s_numProjectiles;                        // projectile count, decremented by _OnItemCollected
    static unsigned int s_playerRRId;                   // round-robin player id for _GetNextPlayerRRId
    static int s_playerQuestRRId;                       // round-robin player index for _GetNextPlayerQuestRRId

    // Members. GameObject occupies +0x000 .. +0x373 and the ItemInventory base +0x374 .. +0x3ab.
    int16_t m_audioVisualIndex;                         // +0x3ac row of Arrays::ItemAudioVisualTable, -1 until InitOnce
    uint8_t pad_3ae[2];                                 // +0x3ae
    float m_speed;                                      // +0x3b0 2.5f from the ctor, 6.0f from InitOnce; returned by GetSpeed
    int16_t m_spawnSoundId;                             // +0x3b4 ItemAudioVisualTable row +4, played by InitAgain on spawn
    int16_t m_pickupSoundId;                            // +0x3b6 ItemAudioVisualTable row +8, played by Interact on pickup
    int16_t m_pickupLockMs;                             // +0x3b8 ms left on the pickup lock, -1 unused; DropInventory sets 5000, Update counts down
    uint8_t pad_3ba[2];                                 // +0x3ba
    const Character* m_receiver;                        // +0x3bc set by InitAgain when non-null; Interact refuses other Characters while set
    int16_t m_pickupLockRRId;                           // +0x3c0 player RR id that holds the pickup lock, -1 none; Interact compares it with the player's RR id
    uint8_t pad_3c2[2];                                 // +0x3c2
    Character* m_tooltipCharacter;                      // +0x3c4 Character whose tooltip is shown; set by OnCollisionBegins, cleared by OnCollisionEnds
    SWFAnimToolTip* m_tooltip;                          // +0x3c8 created by ShowTooltip, deleted by Interact and the destructor
    AnimatedFX* m_glowFX;                               // +0x3cc glow effect, dropped by HideGlow
};
