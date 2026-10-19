// ObjectBase, part 2 of 2 (batch g1-game-world-ObjectBase-670ee4-1).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so. The layout is
// dh2/ObjectBase.hpp. Offsets in comments are the original 32-bit ones. The ledger names the rows that are
// partial and what is missing.
//
// Notes:
//  * LC_API_STRCMP_0 is strcmp. The min_difficulty string (+0xd4) keeps its finish pointer at +0xe4 and its
//    data pointer at +0xe8. InitPost's test "+0xe8 != +0xe4" is therefore !m_minDifficulty.empty(), the same
//    layout that ConditionData documents.
//  * dword_99F76C (the PlayerManager) and dword_99F764 (the ObjectManager) are not separate globals. The asm
//    loads them from Singleton<Application>::s_inst at +0x40 and +0x38, which are Application::m_playerManager
//    and Application::m_objectManager (Application.hpp).
//  * The six property flags bound by DeclareProperties (m_visible, m_isUnderlay, m_static, m_isGlobal,
//    m_tutorialOnly, m_demoOnly) are bool in the header. PropertyMap::AddProperty<bool> takes a bool&.
//  * The ObjectHandle at +0x2c is allocated with operator new(12, 0) and freed with CustomFree, as the original does.
//  * The deleting destructor (0x33e97c) is compiler generated and is not written here (see the ledger).

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <new>
#include <string>

#include "core-platform/memory.hpp"
#include "dh2/Application.hpp"
#include "dh2/ConditionData.hpp"
#include "dh2/Level.hpp"
#include "dh2/Character.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ctrl_camera.hpp"

// Include constraints: this translation unit does not include dh2/Character.hpp, dh2/PlayerManager.hpp or
// pydata-accessors/member_names.hpp. Character.hpp and PlayerManager.hpp bring in pydata's and net-transport's
// IStreamBase, and Level.hpp brings in net-transport's. Those two classes redefine each other, so a unit that
// includes Level.hpp next to them does not compile. The Arrays names used by InitPost are declared below.

namespace Arrays {
// Arrays::GameDifficulties is declared in pydata-accessors/member_names.hpp (names) and w7_arrays_02.hpp (rows).
// Only the name is needed here. The lookup is the explicit instantiation GetMemberIDByString<GameDifficulties> in
// pydata-accessors/src/member_ids.cpp, which returns the first matching row or -1.
struct GameDifficulties;
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

namespace {

const char kObjectBaseSource[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\ObjectManager\\ObjectBase.cpp";

// The original ASSERT(expression) at ObjectBase.cpp:line. Level 2 stops the process (the original stores to
// address 0 and faults; abort is used here, as in GameObject); level 1 prints the message.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kObjectBaseSource, line);
    }
}

}  // namespace

// 0x33e6d4 ObjectBase::TestEnableCondition(bool)
// The same gate as TestDisableCondition (a character whose savegame is missing or not quest synced returns m_enabled untouched). Then:
// a level that is present enables the object only when its difficulty index (+0xec, -1 counts as 0) does not exceed the level's
// difficulty; the object then needs !is_demo_only (+0xf1) and a true enable condition (+0x8c), and any failed test calls SetEnable(false).
// A passing object is enabled and, when asked, its enable condition is marked tested.
bool ObjectBase::TestEnableCondition(bool markTested) {
    Character* localPlayer = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
    if (localPlayer != nullptr) {
        PlayerSavegame* savegame = localPlayer->m_savegame;
        if (savegame == nullptr || !savegame->m_questSynced) {
            return m_enabled != 0;  // +0x8a
        }
    }
    Level* level = ApplicationGetInstance().GetCurrentLevel();
    bool passes = false;
    int minDifficulty = m_minDifficultyIdx;  // +0xec; -1 counts as 0
    if (minDifficulty == -1) {
        minDifficulty = 0;
    }
    if (level != nullptr && minDifficulty > level->m_difficulty) {  // Level +0x118
        passes = false;  // the original jumps straight to the disable path
    } else {
        passes = !m_demoOnly;  // +0xf1
    }
    if (!passes || !m_enableCond.IsTrue()) {  // +0x8c
        SetEnable(false);
        return m_enabled != 0;  // +0x8a
    }
    SetEnable(true);
    if (markTested) {
        m_enableCond.SetAsTested(true);
    }
    return m_enabled != 0;
}

// 0x33e840 ObjectBase::~ObjectBase()
// 0x33e998 ObjectBase::~ObjectBase()
// Both copies have the same body (the complete-object and base-object destructors), so one definition serves both.
// The original asserts !IsLocked() (the Lua lock count at +0x29), frees the ObjectHandle with CustomFree, then
// destroys the members in reverse declaration order. The implicit member destructors do that here: m_minDifficulty,
// m_disableCond, m_enableCond, m_roomName, m_gameType, m_name, and the PropertyMap template name.
ObjectBase::~ObjectBase() {
    if (m_lockCount != 0) {
        ReportAssert("!IsLocked()", 113);
    }
    if (m_handle != nullptr) {  // +0x2c
        CustomFree(m_handle);
        m_handle = nullptr;
    }
}

// 0x33e97c ObjectBase::~ObjectBase()
// skipped: the deleting destructor (D0). The original calls the destructor above and then CustomFree(this). The C++
// delete expression on an ObjectBase* produces the same sequence, so no body is written here.

// 0x33ec0c ObjectBase::InitPost()
// The two ConditionData fields resolve their names. Then a non-empty min_difficulty name is looked up in the
// GameDifficulties table: the index is stored, or -1 when no row matches. The original loops over
// Arrays::GameDifficulties::size (w7_arrays_02.hpp). That declaration cannot share this translation unit with the
// name table, so the lookup uses the explicit instantiation GetMemberIDByString<GameDifficulties> (member_ids.cpp),
// which bounds the loop by the name table's count, as it does for every other Arrays table (member_ids.cpp).
void ObjectBase::InitPost() {
    m_enableCond.Init();   // ConditionData::Init on +0x8c; the original's return value is discarded
    m_disableCond.Init();  // +0xb0
    if (!m_minDifficulty.empty()) {  // +0xd4
        m_minDifficultyIdx = Arrays::GetMemberIDByString<Arrays::GameDifficulties>(m_minDifficulty.c_str());
    }
}

// 0x33f014 ObjectBase::DeclareProperties()
// Registers the properties in the original order. A flag's default is its current value for "static" and a
// literal for the others. The string properties bind the string members directly; activate_cond and
// deactivate_cond bind the condition text inside ConditionData (+0x90 and +0xb4).
void ObjectBase::DeclareProperties() {
    AddProperty<bool>("static", m_static, m_static);       // +0x84
    AddProperty<bool>("visible", m_visible, true);         // +0x80, default 1
    AddProperty<std::string>("name", m_name);              // +0x30
    AddProperty<std::string>("gametype", m_gameType);      // +0x48
    AddProperty<std::string>("roomname", m_roomName);      // +0x68
    AddProperty<bool>("isUnderlay", m_isUnderlay, false);  // +0x83
    AddProperty<bool>("isGlobal", m_isGlobal, false);      // +0x87
    AddProperty<std::string>("activate_cond", m_enableCond.m_text);     // +0x90
    AddProperty<std::string>("deactivate_cond", m_disableCond.m_text);  // +0xb4
    AddProperty<std::string>("min_difficulty", m_minDifficulty);        // +0xd4
    AddProperty<bool>("is_tutorial_only", m_tutorialOnly, false);       // +0xf0
    AddProperty<bool>("is_demo_only", m_demoOnly, false);               // +0xf1
}

// 0x33f15c ObjectBase::ObjectBase(ObjectBase::GO_IDS)
// 0x33f310 ObjectBase::ObjectBase(ObjectBase::GO_IDS)
// Both constructor copies have the same body. One definition serves both, as in GameObject.
// The base members (the PropertyMap template name, the string members, the ConditionData pair and
// m_minDifficulty) are constructed by their own constructors. This body writes the remaining fields. The original
// does not write m_visible (+0x80), m_deleteMode (+0x82), m_isUnderlay (+0x83) or m_isGlobal (+0x87), so they stay
// unset here until DeclareProperties and the property table set them.
ObjectBase::ObjectBase(GO_IDS id) {
    unk_28 = 0;                  // +0x28
    m_lockCount = 0;             // +0x29
    m_className = nullptr;       // PropertyMap::m_className (+0x20), set later by the most-derived constructor
    // +0x2c: operator new(12, 0), then ObjectHandle(). The allocation goes through CustomAlloc, which is what that
    // operator forwards to (runtime_support 0x310570); the host size is sizeof(ObjectHandle).
    void* block = CustomAlloc(static_cast<unsigned int>(sizeof(ObjectHandle)));
    m_handle = new (block) ObjectHandle();
    m_handle->m_cached = this;   // ObjectHandle +0x04 points back at this object
    m_facultative = 0;           // +0x60
    unk_64 = -1;                 // +0x64
    m_markedForDeletion = 0;     // +0x81
    m_static = false;            // +0x84
    unk_85 = 0;                  // +0x85
    m_cullState = 0;             // +0x86
    unk_88 = 0;                  // +0x88
    unk_89 = 0;                  // +0x89
    m_enabled = 1;               // +0x8a
    m_tutorialOnly = false;      // +0xf0
    m_demoOnly = false;          // +0xf1
    m_goId = id;                 // +0xf4
    unk_f8 = 0;                  // +0xf8
    unk_fc = 0;                  // +0xfc
    m_netStruct = nullptr;       // +0x100
    unk_104 = 0;                 // +0x104
    unk_108 = -1;                // +0x108
    unk_10c = 0;                 // +0x10c
    m_netOwnerId = -1;           // +0x110
    unk_114 = 0.0f;              // +0x114
    unk_118 = 0;                 // +0x118
    m_netUpdateRequested = 0;    // +0x119
    unk_11c = 0;                 // +0x11c
    m_minDifficultyIdx = -1;     // +0xec
}

// 0x34ac18 ObjectBase::SetName(char const*)
// Stores the name in m_name (+0x30), then assigns the same text to the first string of this object's ObjectManager map
// entry, Application::m_objectManager->m_objectMap[*m_handle] (the handle's m_id, ObjectManager +0x0c). The original also
// returns that entry's string; the header declares the method void, so the value is dropped.
void ObjectBase::SetName(const char* name) {
    m_name = name;
    ObjectManager* objects = ApplicationGetInstance().m_objectManager;
    if (objects != nullptr) {
        objects->m_objectMap[m_handle->m_id].m_name = name;
    }
}
