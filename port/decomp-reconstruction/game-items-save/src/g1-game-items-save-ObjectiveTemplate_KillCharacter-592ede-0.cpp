// Batch g1-game-items-save-ObjectiveTemplate_KillCharacter-592ede-0 (owner ObjectiveTemplate_KillCharacter, part 1 of 2).
// Covers the four DBG_TraceDetailedObjectiveInformation instances, the four GetPositions instances, the four complete-object
// destructors (D1), the four deleting destructors (D0, not written: see the ledger) and the four Compile instances. The four
// handleEvent instances are in the second batch. Declarations and layout come from dh2/ObjectiveTemplate_KillCharacter.hpp.
//
// The class is a template. Each body is a template definition in this file, followed by an explicit instantiation for the
// instance whose address is in the comment above it (the same convention as
// g1-game-items-save-ObjectiveTemplate_InteractWith-131786-0.cpp). The template definitions are not visible to other
// translation units.
//
// Notes:
//  * The row is m_pyData (+0x0c), typed Structs::v2QuestObjectiveStub. Every TStruct has the same member types at the same
//    offsets (m_w1 to m_w10), so the row reads go through the stub type. m_questRow (+0x24) is the same pointer, set by Compile.
//  * Row ids. The Clear rows (v2QuestClearEnemies, v2QuestClearEnemyTemplate) keep the level at +0x20 (m_w8) and the enemy at
//    +0x24 (m_w9). The Kill rows keep the enemy at +0x20 (m_w8) and the level at +0x24 (m_w9). KillCharacterRowOrder records
//    this per TStruct. The required quantity of the Kill rows, row +0x28, is ObjectiveTemplate_KillEnemies' concern.
//  * The character test TTest decides the key a character is matched by: TestCharPropId uses SafeGetCharPropsId() and
//    TestCharTemplate uses SafeGetCharPropsTemplateId() (the GetPositions listings).
//  * GetPositions and Compile read the local player through PlayerManager::GetLocalPlayer(0, true) on dword_99F76C, at
//    PlayerInfo +0x660 (the listing names it character_660; the header member is unk_660). The characters are the list
//    ObjectManager::m_characters (ObjectManager +0x60, dword_99F764).
//  * PARTIAL, DBG_TraceDetailedObjectiveInformation (all four): the listing prints the level and the enemy type from the pydata
//    name tables. Arrays::LevelList gives the level name and Arrays::CharacterTable (TestCharPropId) or
//    Arrays::Charater_Templates (TestCharTemplate) gives the enemy name; each prints "na" when the index is outside its table.
//    Those tables are declared in pydata-accessors/member_names.hpp, which conflicts with the Structs headers in one translation
//    unit, so every name prints kUnreadTableName. Replace it with names[index] when the pydata headers are unified.
//  * Compile, row level -1: the listing does not load Level +0x3c on that path, so the level argument of
//    HasEnemyOfTypeLoaded is an unset register there. HasEnemyOfTypeLoaded (0x47c7f4 and 0x47cc20) passes that argument only to
//    Character::HasCharOIDInCache, which takes one argument (0x3a2f48), so the value is never read. This port passes -1.
//  * GetPositions and Compile test neither the local player nor its character for null, as the listing does not.
//  * __sFILE is the libc FILE on the target. The stream is converted to std::FILE* with reinterpret_cast before the stdio calls,
//    as in g1-game-items-save-Objective-50c892-0.cpp.

#include "dh2/ObjectiveTemplate_KillCharacter.hpp"

#include <cstdint>
#include <cstdio>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Objective_EventReceiver.hpp"
#include "dh2/Objective_SavedQty.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/TestCharPropId.hpp"
#include "dh2/TestCharTemplate.hpp"
#include "dh2/Vector3DFList.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// The row structs and the quest event classes are only named here (as in GetObjectiveImplInstance.hpp).
namespace Structs {
class v2QuestClearEnemyTemplate;
class v2QuestKillEnemyTemplate;
class v2QuestClearEnemies;
class v2QuestKillEnemies;
}  // namespace Structs
class QE_ClearEnemyTemplate;
class QE_KillEnemyTemplate;
class QE_ClearEnemies;
class QE_KillEnemies;

namespace {

// The order of the two row ids in a row (see the notes at the top). kLevelAtW8 is true when the level is m_w8 (+0x20) and the
// enemy is m_w9 (+0x24), which is the Clear rows. It is false for the Kill rows, where the enemy is m_w8 and the level is m_w9.
template <typename TStruct>
struct KillCharacterRowOrder;

template <>
struct KillCharacterRowOrder<Structs::v2QuestClearEnemyTemplate> {
    static constexpr bool kLevelAtW8 = true;
};

template <>
struct KillCharacterRowOrder<Structs::v2QuestKillEnemyTemplate> {
    static constexpr bool kLevelAtW8 = false;
};

template <>
struct KillCharacterRowOrder<Structs::v2QuestClearEnemies> {
    static constexpr bool kLevelAtW8 = true;
};

template <>
struct KillCharacterRowOrder<Structs::v2QuestKillEnemies> {
    static constexpr bool kLevelAtW8 = false;
};

// The level id of the row: m_w8 (+0x20) or m_w9 (+0x24), by TStruct.
template <typename TStruct>
std::int32_t RowLevelId(const Structs::v2QuestObjectiveStub& row) {
    return KillCharacterRowOrder<TStruct>::kLevelAtW8 ? row.OID1 : row.OID2;
}

// The enemy id of the row: the other of m_w8 and m_w9, by TStruct.
template <typename TStruct>
std::int32_t RowEnemyId(const Structs::v2QuestObjectiveStub& row) {
    return KillCharacterRowOrder<TStruct>::kLevelAtW8 ? row.OID2 : row.OID1;
}

// The key a character is matched by, for the character test TTest. Used by GetPositions.
template <typename TTest>
struct CharacterKey;

template <>
struct CharacterKey<TestCharPropId> {
    static int Of(Character& character) { return character.SafeGetCharPropsId(); }
};

template <>
struct CharacterKey<TestCharTemplate> {
    static int Of(Character& character) { return character.SafeGetCharPropsTemplateId(); }
};

// The listing's pydata name lookup: "na" for an index below 0 or at or above the table's element count (Arrays::X::size),
// otherwise Arrays::X::m_memberNames.names[index].
inline const char* TableNameOr(const pydata::NameTable& names, std::uint32_t count, std::int32_t index) {
    return (index < 0 || static_cast<std::uint32_t>(index) >= count) ? "na" : names.names[index];
}

// The enemy table of a character test: CharacterTable for TestCharPropId, Charater_Templates for TestCharTemplate.
template <typename TTest>
struct EnemyTable;

template <>
struct EnemyTable<TestCharPropId> {
    static const char* Name(std::int32_t id) { return TableNameOr(Arrays::CharacterTable::m_memberNames, Arrays::CharacterTable::size, id); }
};

template <>
struct EnemyTable<TestCharTemplate> {
    static const char* Name(std::int32_t id) {
        return TableNameOr(Arrays::Charater_Templates::m_memberNames, Arrays::Charater_Templates::size, id);
    }
};

// A character's world position (GameObject::m_position, +0x160 .. +0x168), as the vector type Vector3DFList stores.
glitch::core::vector3d<float> PositionOf(const Character& character) {
    const Point3D<float>& position = character.m_position;
    return glitch::core::vector3d<float>{position.X, position.Y, position.Z};
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// DBG_TraceDetailedObjectiveInformation (slot 0x0c). The listing writes the header line, the type name, the level, the enemy
// type, Qty (m_requiredQty, +0x2c) and CurrQty (m_currentQty, +0x20), then calls Objective_EventReceiver's DBG for the base
// lines. The level name is Arrays::LevelList::m_memberNames and the enemy name is the character test's table (EnemyTable), "na" outside
// the table.

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
int ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::DBG_TraceDetailedObjectiveInformation(
    __sFILE* stream) const {
    std::FILE* out = reinterpret_cast<std::FILE*>(stream);
    const Structs::v2QuestObjectiveStub* row = this->m_pyData;  // +0x0c, the listing's v4

    static_cast<void>(std::fwrite("\t  ObjectiveTemplate_KillEnemies\n", 1, 0x21, out));
    const char* constantName =
        ApplicationGetInstance().m_pyDataConstants->getConstantName("v2QuestObjectiveType", row->Type);  // row +0x04
    std::fprintf(out, "\t    Type      : %s\n", constantName);
    // The level is row +0x20 for the Clear rows and +0x24 for the Kill rows (m_w8 and m_w9), the enemy the other one.
    std::fprintf(out, "\t    Level     : %s\n",
                 TableNameOr(Arrays::LevelList::m_memberNames, Arrays::LevelList::size, RowLevelId<TStruct>(*row)));
    std::fprintf(out, "\t    EnemyType : %s\n", EnemyTable<TTest>::Name(RowEnemyId<TStruct>(*row)));
    std::fprintf(out, "\t    Qty       : %d\n", this->m_requiredQty);
    std::fprintf(out, "\t    CurrQty   : %d\n\n", this->m_currentQty);
    return Objective_EventReceiver::DBG_TraceDetailedObjectiveInformation(stream);
}

// 0x47b08c _ZNK31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate,
                                             Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;

// 0x47b1f8 _ZNK31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate,
                                             Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;

// 0x47b4d4 _ZNK31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId,
                                             Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;

// 0x47b640 _ZNK31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE37DBG_TraceDetailedObjectiveInformationEP7__sFILE
template int ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId,
                                             Objective_SavedQty>::DBG_TraceDetailedObjectiveInformation(__sFILE* stream) const;

// ---------------------------------------------------------------------------------------------------------------------
// GetPositions (slot 0x20). With Qty - CurrQty > 0 points remain: the list is set to that size, the local player's character
// position is the origin, and every live character of the matching enemy id in ObjectManager::m_characters is added by
// addClosest. The listing returns a float in its result register; the header declares void and nothing reads it.

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
void ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::GetPositions(Vector3DFList& positions) const {
    const Structs::v2QuestObjectiveStub& row = *this->m_pyData;      // +0x0c, the listing's v4
    const int remaining = this->m_requiredQty - this->m_currentQty;  // +0x2c - +0x20
    if (remaining <= 0) {
        return;
    }
    positions.setNew(remaining);
    Character* player = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660 (character_660 in the listing)
    positions.setCharacterPosition(PositionOf(*player));                 // the character's m_position (+0x160)

    const std::int32_t enemyId = RowEnemyId<TStruct>(row);
    for (Character* character : dword_99F764->m_characters) {  // ObjectManager +0x60, the character list
        if (character != nullptr && CharacterKey<TTest>::Of(*character) == enemyId && !character->IsDead()) {
            positions.addClosest(PositionOf(*character));
        }
    }
}

// 0x47c6f0 _ZNK31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId,
                                              Objective_SavedQty>::GetPositions(Vector3DFList& positions) const;

// 0x47c914 _ZNK31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate,
                                              Objective_SavedQty>::GetPositions(Vector3DFList& positions) const;

// 0x47ca18 _ZNK31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId,
                                              Objective_SavedQty>::GetPositions(Vector3DFList& positions) const;

// 0x47cb1c _ZNK31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE12GetPositionsER13Vector3DFList
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate,
                                              Objective_SavedQty>::GetPositions(Vector3DFList& positions) const;

// ---------------------------------------------------------------------------------------------------------------------
// ~ObjectiveTemplate_KillCharacter, complete-object form (D1). The listing stores the vtable pointers and calls the base
// destructor (Objective_SavedQty, Objective_Qty, Objective_EventReceiver, Objective). The stores are the compiler's, so the
// body is empty. The deleting form (D0) is compiler generated: see the note below.

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::~ObjectiveTemplate_KillCharacter() {}

// 0x47d244 _ZN31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
template ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate,
                                         Objective_SavedQty>::~ObjectiveTemplate_KillCharacter();

// 0x47d294 _ZN31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyED1Ev
template ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate,
                                         Objective_SavedQty>::~ObjectiveTemplate_KillCharacter();

// 0x47d334 _ZN31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyED1Ev
template ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId,
                                         Objective_SavedQty>::~ObjectiveTemplate_KillCharacter();

// 0x47d5b4 _ZN31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyED1Ev
template ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId,
                                         Objective_SavedQty>::~ObjectiveTemplate_KillCharacter();

// The deleting destructors 0x47d7e8, 0x47d840, 0x47e78c and 0x47e7e4 (D0) are not written. Each runs the complete-object
// destructor above and then CustomFree(this); the C++ delete expression produces that form.

// ---------------------------------------------------------------------------------------------------------------------
// Compile (slot 0x08). Copies the row to m_questRow. When the row level is -1 or equals the current level's index in
// Arrays::LevelList (Level +0x3c), the count of loaded enemies of the row's type is stored in m_requiredQty. A positive count
// marks the objective valid. When the count does not exceed CurrQty, the objective is completed and Unregister runs
// (vtable slot 0x1c). See the note at the top for the -1 path.

template <typename TStruct, typename TEvent, typename TTest, typename TBase>
void ObjectiveTemplate_KillCharacter<TStruct, TEvent, TTest, TBase>::Compile() {
    m_questRow = reinterpret_cast<TStruct*>(this->m_pyData);  // +0x24 <- +0x0c
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    const Structs::v2QuestObjectiveStub& row = *this->m_pyData;  // the listing reads m_questRow, the same row
    const std::int32_t rowLevel = RowLevelId<TStruct>(row);
    std::int32_t levelIndex = -1;  // the listing's level argument: -1 when the row level is -1, see the note at the top
    if (rowLevel == -1 || (levelIndex = level->m_levelListIndex, rowLevel == levelIndex)) {  // Level +0x3c
        const int count = Objective_EventReceiver::HasEnemyOfTypeLoaded<TTest>(RowEnemyId<TStruct>(row), levelIndex);
        this->m_requiredQty = count;  // +0x2c
        if (count > 0) {
            this->m_valid = true;  // +0x08
            if (count <= this->m_currentQty) {  // +0x20
                this->SetIsCompleted();
                this->Unregister();  // vtable slot 0x1c
            }
        }
    }
}

// 0x47eec0 _ZN31ObjectiveTemplate_KillCharacterIN7Structs24v2QuestKillEnemyTemplateE20QE_KillEnemyTemplate16TestCharTemplate18Objective_SavedQtyE7CompileEv
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemyTemplate, QE_KillEnemyTemplate, TestCharTemplate,
                                              Objective_SavedQty>::Compile();

// 0x47ef50 _ZN31ObjectiveTemplate_KillCharacterIN7Structs25v2QuestClearEnemyTemplateE21QE_ClearEnemyTemplate16TestCharTemplate18Objective_SavedQtyE7CompileEv
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemyTemplate, QE_ClearEnemyTemplate, TestCharTemplate,
                                              Objective_SavedQty>::Compile();

// 0x47efe0 _ZN31ObjectiveTemplate_KillCharacterIN7Structs18v2QuestKillEnemiesE14QE_KillEnemies14TestCharPropId18Objective_SavedQtyE7CompileEv
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestKillEnemies, QE_KillEnemies, TestCharPropId,
                                              Objective_SavedQty>::Compile();

// 0x47f070 _ZN31ObjectiveTemplate_KillCharacterIN7Structs19v2QuestClearEnemiesE15QE_ClearEnemies14TestCharPropId18Objective_SavedQtyE7CompileEv
template void ObjectiveTemplate_KillCharacter<Structs::v2QuestClearEnemies, QE_ClearEnemies, TestCharPropId,
                                              Objective_SavedQty>::Compile();
