// Batch g1-game-ui-pack4-0efacf-0: MenuHUDConfirm, SlideEventCharacter, SortByEquipability, SortByValueAndClass and
// SortModuleByDistance (12 ELF rows). Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against
// the assembly. Offsets in comments are the original 32-bit ARM offsets; the layouts are in dh2/<Class>.hpp.
//
// Blocker: SortByValueAndClass breaks ties with II_Item_sortbyname (dh2/global/item_sort.hpp). Its definition is queued under
// tinyxml-and-c-libs (0x3fd1dc, skipped: blocked), so this file needs that symbol to link.

#include "dh2/MenuHUDConfirm.hpp"

#include <cmath>

#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuFX.hpp"
#include "glitch-shared/glitch_core.hpp"

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/Module.hpp"
#include "dh2/Point3D.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/SlideEventCharacter.hpp"
#include "dh2/SortByEquipability.hpp"
#include "dh2/SortByValueAndClass.hpp"
#include "dh2/SortModuleByDistance.hpp"
#include "dh2/global/item_sort.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

namespace {

// PyDataConstants::getConstant(className, name) on Application::m_pyDataConstants (dword_99F758 in the binary).
int PyDataConstant(const char* className, const char* name) {
    return ApplicationGetInstance().m_pyDataConstants->getConstant(className, name);
}

// The float field of a pydata item row that SortByValueAndClass multiplies the value by. The switch in the binary picks
// one of nine ItemBase words (m_w8..m_w16, +0x20..+0x40 in the original) by the character's m_charPropsId.
using ItemFloatField = float Structs::ItemBase::*;

ItemFloatField ValueMultiplierField(int charPropsId) {
    switch (charPropsId) {
        case 263: return &Structs::ItemBase::WarriorEquipValue;   // +0x20
        case 264: return &Structs::ItemBase::BerserkerEquipValue;  // +0x30
        case 265: return &Structs::ItemBase::PaladdinEquipValue;  // +0x2c
        case 290: return &Structs::ItemBase::MageEquipValue;   // +0x24
        case 291: return &Structs::ItemBase::IllusionistEquipValue;  // +0x40
        case 292: return &Structs::ItemBase::NecromancerEquipValue;  // +0x3c
        case 325: return &Structs::ItemBase::RogueEquipValue;  // +0x28
        case 326: return &Structs::ItemBase::ArcherEquipValue;  // +0x38
        case 327: return &Structs::ItemBase::AssassinEquipValue;  // +0x34
        default: return nullptr;                     // no multiplier: the values are compared as they are
    }
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// MenuHUDConfirm

// 0x42abb4 MenuHUDConfirm::MenuHUDConfirm(void)   (C1). C2 at 0x42ac78 has the same body: one definition serves both.
// The base is built with the name "menu_hud_confirm". The vtable pointer is set by the compiler.
MenuHUDConfirm::MenuHUDConfirm() : MenuConfirmBase("menu_hud_confirm") {}

// 0x42aa1c MenuHUDConfirm::~MenuHUDConfirm()   (D1). D2 at 0x42aa6c has the same body.
// The class has no members of its own. The base destructor (MenuConfirmBase) runs after the vtable is set.
MenuHUDConfirm::~MenuHUDConfirm() = default;

// 0x42aa50 MenuHUDConfirm::~MenuHUDConfirm()   (D0, deleting destructor): compiler-generated for delete. Not written.

// 0x42abf4 MenuHUDConfirm::GetInstance(void)
// Function-local static, constructed on first use. The guard and the atexit registration of the destructor are the
// compiler's, as the original's __cxa_guard and _aeabi_atexit calls are.
MenuHUDConfirm* MenuHUDConfirm::GetInstance() {
    static MenuHUDConfirm instance;
    return &instance;
}

// ---------------------------------------------------------------------------------------------------------------------
// SlideEventCharacter

// 0x41f6c4 SlideEventCharacter::SlideEventCharacter(gameswf::character*)   (C1). C2 at 0x41f77c has the same body.
// The binary does not write m_tracking (+0x08) or m_fired (+0x18); the game allocator returns zeroed memory, so both start false.
SlideEventCharacter::SlideEventCharacter(gameswf::character* character) : m_character(character) {
    // PixelSlideDist is an int; the original converts it to float and multiplies by the double constant 20.0.
    m_slideDist = static_cast<float>(static_cast<float>(PyDataConstant("SlideEventConfig", "PixelSlideDist")) * 20.0);
    m_timingTolerance = PyDataConstant("SlideEventConfig", "TimingTolerance");
    m_startTime = -1;
    m_angleTolerance = PyDataConstant("SlideEventConfig", "AngleTolerance");
    m_tracking = false;  // not written by the binary (zeroed allocation)
    m_fired = false;     // not written by the binary (zeroed allocation)
    m_startX = 0.0f;
    m_startY = 0.0f;
    m_lastX = 0.0f;
    m_lastY = 0.0f;
}

// 0x41f77c SlideEventCharacter::SlideEventCharacter(gameswf::character*)   (C2). Same body as C1 (0x41f6c4).

// 0x4236c0 SlideEventCharacter::Test(RenderFX::Event&,MenuFX*)
// Only events on this character count. A press (type 4) clears the fired latch; while the latch is set nothing happens. A slide
// starts at the first sample (time and touch point recorded) or restarts when the timing window (m_timingTolerance, unsigned) has
// elapsed. Otherwise the latest sample is stored and, once the distance from the start exceeds m_slideDist, the slide angle
// (vector2d::getAngle) picks one of eight sectors within m_angleTolerance degrees, tested in the order Left (180), Right (0), Up
// (90), Down (270), UpRight (45), UpLeft (135), DownLeft (225), DownRight (315). A hit runs the trace switch read and the
// "OnSlide<Direction>" callback on the character; no hit clears the fired latch. The slide then ends. The binary return value
// (r0) is not used: MenuBase::TestSlideEvents discards it (0x423d6c), so the method is void.
void SlideEventCharacter::Test(RenderFX::Event& event, MenuFX* menu) {
    if (static_cast<const void*>(m_character) != static_cast<const void*>(event.target)) {
        return;
    }
    if (static_cast<int>(event.type) == 4) {
        m_fired = false;
    } else if (m_fired) {
        return;
    }
    const int now = ApplicationGetInstance().m_lastTickTime;  // dword_99F79C, Application +0x70
    if (!m_tracking || static_cast<unsigned int>(now - m_startTime) > static_cast<unsigned int>(m_timingTolerance)) {
        m_tracking = true;
        m_startTime = now;
        m_startX = event.x;
        m_startY = event.y;
        return;
    }
    m_lastX = event.x;
    m_lastY = event.y;
    const float dx = event.x - m_startX;
    const float dy = event.y - m_startY;
    const float length = std::sqrt(dx * dx + dy * dy);
    if (!(m_slideDist < length)) {
        return;
    }
    glitch::core::vector2d<float> slide;
    slide.X = dx;
    slide.Y = dy;
    const float angle = slide.getAngle();
    m_fired = true;
    const float tolerance = static_cast<float>(static_cast<unsigned int>(m_angleTolerance));
    auto distance = [angle](float center) {
        const float diff = angle - center;
        return diff < 0.0f ? -diff : diff;
    };
    struct Sector {
        float center;
        const char* callback;
    };
    static const Sector sectors[] = {
        {180.0f, "OnSlideLeft"}, {0.0f, "OnSlideRight"},     {90.0f, "OnSlideUp"},        {270.0f, "OnSlideDown"},
        {45.0f, "OnSlideUpRight"}, {135.0f, "OnSlideUpLeft"}, {225.0f, "OnSlideDownLeft"}, {315.0f, "OnSlideDownRight"},
    };
    bool hit = false;
    for (const Sector& sector : sectors) {
        if (tolerance > distance(sector.center)) {
            DebugSwitches::s_inst.load();
            (void)DebugSwitches::s_inst.GetSwitch("isTracingTraceSlideAngleTrigger");
            menu->InvokeASCallback(m_character, sector.callback, nullptr, 0);
            hit = true;
            break;
        }
    }
    if (!hit) {
        m_fired = false;
    }
    m_tracking = false;
}

// ---------------------------------------------------------------------------------------------------------------------
// SortByEquipability

// 0x3fd5d0 SortByEquipability::operator()(ItemInventory::Item const&,ItemInventory::Item const&)
// The comparison looks at one equipment slot. The slot class decides which slots count as "in use": a hand slot
// (LeftHand or RightHand), a ring finger slot (LeftHandRingFinger or RightHandRingFinger) or any other slot. The
// comparison of the two items falls back to SortByValueAndClass when both are equippable or both are not.
bool SortByEquipability::operator()(const ItemInventory::Item& a, const ItemInventory::Item& b) {
    Character* const owner = m_character;
    ItemInventory* const inventory = owner;  // the ItemInventory base, Character +0x37c
    const int slot = m_equipSlot;
    const bool aEquippable = a.m_item->IsEquippableBy(owner);
    const bool bEquippable = b.m_item->IsEquippableBy(owner);

    auto equipped = [inventory](int slotId) {
        return inventory->GetEquippedItem(static_cast<unsigned int>(slotId));
    };

    const bool hand = slot == PyDataConstant("EquipmentSlots", "LeftHand") ||
                      slot == PyDataConstant("EquipmentSlots", "RightHand");
    const bool ring = slot == PyDataConstant("EquipmentSlots", "LeftHandRingFinger") ||
                      slot == PyDataConstant("EquipmentSlots", "RightHandRingFinger");

    bool aInSlots;  // v15: a is equipped in one of the slots this class looks at
    bool bInSlots;  // v22: b is
    if (hand) {
        const int leftHand = PyDataConstant("EquipmentSlots", "LeftHand");
        const int rightHand = PyDataConstant("EquipmentSlots", "RightHand");
        aInSlots = a.m_item == equipped(leftHand) || a.m_item == equipped(rightHand);
        bInSlots = b.m_item == equipped(leftHand) || b.m_item == equipped(rightHand);
    } else if (ring) {
        const int leftRing = PyDataConstant("EquipmentSlots", "LeftHandRingFinger");
        const int rightRing = PyDataConstant("EquipmentSlots", "RightHandRingFinger");
        aInSlots = a.m_item == equipped(leftRing) || a.m_item == equipped(rightRing);
        bInSlots = b.m_item == equipped(leftRing) || b.m_item == equipped(rightRing);
    } else {
        aInSlots = a.m_item == equipped(slot);
        bInSlots = b.m_item == equipped(slot);
    }

    if (aInSlots) {
        return !bInSlots || a.m_item == equipped(slot);
    }
    if (bInSlots) {
        return aInSlots;
    }
    if (aEquippable == bEquippable) {
        SortByValueAndClass byValue{owner};
        return byValue(a, b);
    }
    return aEquippable;
}

// ---------------------------------------------------------------------------------------------------------------------
// SortByValueAndClass

// 0x3fd1e8 SortByValueAndClass::operator()(ItemInventory::Item const&,ItemInventory::Item const&)
// Each item's value (ItemInstance +0x54) is scaled by the class multiplier of the character (ItemBase float words, see
// ValueMultiplierField). The scaled values are truncated to int and compared, larger first. Equal values fall back to
// II_Item_sortbyname.
bool SortByValueAndClass::operator()(const ItemInventory::Item& a, const ItemInventory::Item& b) {
    int valueA = a.m_item->m_value;
    int valueB = b.m_item->m_value;
    const ItemFloatField field = ValueMultiplierField(m_character->m_charPropsId);
    if (field != nullptr) {
        valueA = static_cast<int>(static_cast<float>(valueA) * a.m_item->GetItem()->*field);
        valueB = static_cast<int>(static_cast<float>(valueB) * b.m_item->GetItem()->*field);
    }
    if (valueA == valueB) {
        return II_Item_sortbyname(a, b);
    }
    return valueA > valueB;
}

// ---------------------------------------------------------------------------------------------------------------------
// SortModuleByDistance

// 0x341bcc SortModuleByDistance::operator()(Module const*,Module const*)
// True when a is nearer to the reference module (m_origin) than b. Each distance is the Euclidean length of the offset
// between the two GameObject::m_position values (+0x160, +0x164, +0x168), and the two lengths are compared directly.
bool SortModuleByDistance::operator()(const Module* a, const Module* b) {
    const Point3D<float>& origin = m_origin->m_position;
    const Point3D<float>& pa = a->m_position;
    const Point3D<float>& pb = b->m_position;

    const float dxA = origin.X - pa.X;
    const float dyA = origin.Y - pa.Y;
    const float dzA = origin.Z - pa.Z;
    const float distA = std::sqrt(dxA * dxA + dyA * dyA + dzA * dzA);

    const float dxB = origin.X - pb.X;
    const float dyB = origin.Y - pb.Y;
    const float dzB = origin.Z - pb.Z;
    const float distB = std::sqrt(dxB * dxB + dyB * dyB + dzB * dzB);

    return distA < distB;
}
