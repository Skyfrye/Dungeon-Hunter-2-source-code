// Batch g1-game-items-save-TrophyManager-f8fac6-0 (owner TrophyManager, 20 functions, 18 distinct bodies).
// Reconstructed from the Hex-Rays pseudocode of libDungeonHunter2.so, checked against dh2/TrophyManager.hpp, dh2/TrophyData.hpp,
// dh2/DebugSwitches.hpp, dh2/AchievementMsg.hpp, dh2/MenuMessageManager.hpp, dh2/StringManager.hpp, the pydata record
// Structs::Trophy and the assembly for the calls whose pseudocode is unclear (the vector copy in TrophyUnlockedCB, 0x380e48).
//
// Shared conventions in this file:
//  * Trophy table rows. Arrays::TrophyTable::members is element 0 of a host-stride table of Structs::Trophy. A row is reached
//    through TableRow<Structs::Trophy>, never by stepping the 32-bit listing stride on bytes (TRACK-B decisions 2 and 3).
//    Structs::Trophy m_w1 is the description text id, m_w2 the GL index, m_w3 the GL live word, m_w4 the grade, m_w5 the label,
//    m_w6 the name text id and m_w7 the type. TrophyData keeps each under the same meaning (dh2/TrophyData.hpp).
//  * Debug switch. Several bodies look up the "isTracingTrophies" switch and drop the result: the trace output it guards is not
//    in the pseudocode. QueryTraceTrophiesSwitch keeps the lookup (DebugSwitches::load, then GetSwitch) and nothing else.
//  * Unlocked set. The savegame holds 128 bits as four 32-bit little-endian words (the original's std::bitset<128>). Bit id is
//    word id >> 5, bit id & 31. The words are built and decoded field by field here; nothing is copied over the file.
//    An id above 127 does not fit, and the original throws std::out_of_range("bitset") for it. This code throws the same.
//  * Allocation. The original allocates TrophyManager through operator new(0x1c, 4) and TrophyData through operator new(0x28, 0),
//    both of which forward to CustomAlloc, and frees them through CustomFree (the deleting destructors). This file does the same,
//    so the allocation and the release always pair.
//
// The savegame file access is the device file system (dh2/global/savefile_fs.hpp): openSavefile at slot +0x94, closeFile at +0x78.
// The unlocked set is written and read as a std::bitset<128> (IStreamBase::writeAs / readAs).

#include <algorithm>
#include <bitset>
#include <cstddef>
#include <cstdint>
#include <deque>
#include <new>
#include <stdexcept>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"
#include "dh2/AchievementMsg.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/IFileStream.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MenuMessageManager.hpp"
#include "gameswf/gameswf_value.h"
#include "vendor-gameswf/as_value.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/TrophyData.hpp"
#include "dh2/TrophyManager.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "core-platform/tb/android_jni_platform.hpp"  // NotifyTrophy
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"

// dword at ELF 0x9a2418 (_ZN13TrophyManager10s_instanceE, .bss). No other source defines it.
TrophyManager* TrophyManager::s_instance = nullptr;

namespace {

// Number of 32-bit words in the savegame's unlocked set (128 bits).
constexpr std::uint32_t kSavedWords = 4;

// The original's "isTracingTrophies" lookup: DebugSwitches::load, then GetSwitch. The result is dropped.
void QueryTraceTrophiesSwitch() {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch("isTracingTrophies");
}

// Typed row of a pydata table: element `index` of the host-stride table whose element 0 is `members`.
template <class Row>
const Row* TableRow(const std::uint8_t* members, int index) {
    return reinterpret_cast<const Row*>(members) + index;
}

// SaveTrophies' bit build. Every row that is unlocked sets its bit. Throws for an unlocked id above 127.
void PackUnlockedBits(TrophyManager* self, std::uint32_t (&words)[kSavedWords]) {
    for (std::uint32_t i = 0; i < kSavedWords; ++i) {
        words[i] = 0;
    }
    const std::uint32_t count = Arrays::TrophyTable::size;
    for (std::uint32_t id = 0; id < count; ++id) {
        if (self->IsTrophyUnlocked(static_cast<int>(id))) {
            if (id > 0x7F) {
                throw std::out_of_range("bitset");
            }
            words[id >> 5] |= std::uint32_t{1} << (id & 0x1F);
        }
    }
}

// LoadTrophies' decode. Every id whose bit is set goes through UnlockTrophy, in id order. An id above 127 throws before its bit
// is read (the original checks the range at the top of each step after the first).
void UnlockSavedTrophies(TrophyManager* self, const std::uint32_t (&words)[kSavedWords]) {
    const std::uint32_t count = Arrays::TrophyTable::size;
    for (std::uint32_t id = 0; id < count; ++id) {
        if (id > 0x7F) {
            throw std::out_of_range("bitset");
        }
        if (words[id >> 5] & (std::uint32_t{1} << (id & 0x1F))) {
            self->UnlockTrophy(static_cast<int>(id));
        }
    }
}

}  // namespace

// 0x37f9d0 TrophyManager::Init()
int TrophyManager::Init() {
    return 1;
}

// 0x37f9d8 TrophyManager::Terminate()
int TrophyManager::Terminate() {
    return 1;
}

// 0x37f9e0 TrophyManager::UnlockTrophiesGameCenter()
// Empty in the original. The GameCenter path does nothing in this build.
void TrophyManager::UnlockTrophiesGameCenter() {
}

// 0x37f9e4 TrophyManager::IsTrophyUnlocking(int)
// True when id is in m_unlocking. TrophyUnlockedCB never removes an id from m_unlocking (see there), so an id stays true after
// its unlock has started.
bool TrophyManager::IsTrophyUnlocking(int id) {
    return std::find(m_unlocking.begin(), m_unlocking.end(), id) != m_unlocking.end();
}

// 0x37fab4 TrophyManager::UnlockTrophiesGLLive()
// Every unlocked row is reported to the GL Live bridge: NotifyTrophy(m_glIndex) (0x532b6c), in index order over
// Arrays::TrophyTable::size.
void TrophyManager::UnlockTrophiesGLLive() {
    const std::uint32_t count = Arrays::TrophyTable::size;
    for (std::uint32_t i = 0; i < count; ++i) {
        const TrophyData* trophy = m_trophies[i];
        if (trophy->m_unlocked) {
            NotifyTrophy(trophy->m_glIndex);
        }
    }
}

// 0x37fc98 TrophyManager::UnloadTrophies()
// Each row is destroyed and freed (the original calls its deleting destructor through slot +0x04), its element is nulled, and the
// vector is emptied. Its capacity is kept, as in the original.
void TrophyManager::UnloadTrophies() {
    for (TrophyData*& trophy : m_trophies) {
        if (trophy) {
            trophy->~TrophyData();
            CustomFree(trophy);
            trophy = nullptr;
        }
    }
    m_trophies.clear();
}

// 0x37fdf0 TrophyManager::~TrophyManager() (D1)
// 0x37fec8 TrophyManager::~TrophyManager() (D2). Same body; one definition covers both.
// The original sets the vptr, calls UnloadTrophies, then frees m_unlocking and m_trophies. The member vectors release themselves
// here, in the same order (reverse declaration: m_unlocking, then m_trophies).
TrophyManager::~TrophyManager() {
    UnloadTrophies();
}

// 0x37fe88 TrophyManager::DeleteInstance()
// Runs the destructor, then CustomFree on the object. Like the original, it leaves s_instance pointing at the freed object.
void TrophyManager::DeleteInstance() {
    TrophyManager* instance = s_instance;
    if (instance) {
        instance->~TrophyManager();
        CustomFree(instance);
    }
}

// 0x37ff60 TrophyManager::GetTrophyData(int)
// Linear search of m_trophies for the row whose m_id is id. When none matches, the original looks up the trace switch and returns null.
TrophyData* TrophyManager::GetTrophyData(int id) {
    for (TrophyData* trophy : m_trophies) {
        if (trophy->m_id == id) {
            return trophy;
        }
    }
    QueryTraceTrophiesSwitch();
    return nullptr;
}

// 0x380058 TrophyManager::IsTrophyUnlocked(int)
// The row's m_unlocked, or false when there is no row for id.
bool TrophyManager::IsTrophyUnlocked(int id) {
    TrophyData* trophy = GetTrophyData(id);
    return trophy != nullptr && trophy->m_unlocked;
}

// 0x38006c TrophyManager::SaveTrophies()
// Opens "achievements.savegame" for writing on the device file system (slot +0x94), writes the unlocked set as a
// std::bitset<128> (the bit build is PackUnlockedBits; an unlocked id above 127 throws out_of_range) and closes the stream
// (slot +0x78). Nothing happens without a device file system or when the file does not open.
void TrophyManager::SaveTrophies() {
    FileSystemWin32* fileSystem = SavefileFileSystemPtr();
    if (fileSystem == nullptr) {
        return;
    }
    IFileStream* stream = fileSystem->openSavefile("achievements.savegame", true);
    if (stream != nullptr) {
        std::uint32_t words[kSavedWords];
        PackUnlockedBits(s_instance, words);
        std::bitset<128> unlocked;
        for (std::size_t bit = 0; bit < 128; ++bit) {
            unlocked[bit] = (words[bit >> 5] >> (bit & 31)) & 1u;
        }
        stream->writeAs<std::bitset<128>>(unlocked);
        fileSystem->closeFile(stream);
    }
}

// 0x3801c4 TrophyManager::InitTrophies()
// Appends one TrophyData per Arrays::TrophyTable row, in row order. The row's words fill the fields (see dh2/TrophyData.hpp): name
// text (m_w6), description text (m_w1), unlocked false, type (m_w7), grade (m_w4), label (m_w5), GL live (m_w3), GL index (m_w2).
// The original queries the trace switch once per row, before the row is appended.
void TrophyManager::InitTrophies() {
    const std::uint32_t count = Arrays::TrophyTable::size;
    for (std::uint32_t i = 0; i < count; ++i) {
        const Structs::Trophy* row = TableRow<Structs::Trophy>(Arrays::TrophyTable::members, static_cast<int>(i));
        void* block = CustomAlloc(static_cast<unsigned int>(sizeof(TrophyData)));  // operator new(0x28, 0) in the original
        TrophyData* trophy = new (block) TrophyData();
        trophy->m_id = static_cast<std::int32_t>(i);
        trophy->m_nameTextId = row->Name;
        trophy->m_descTextId = row->Desc;
        trophy->m_unlocked = false;
        trophy->m_type = row->Type;
        trophy->m_grade = row->Grade;
        trophy->m_label = row->Label;
        trophy->m_glLive = row->GLLive;
        trophy->m_glIndex = row->GLIndex;
        QueryTraceTrophiesSwitch();
        m_trophies.push_back(trophy);
    }
}

// 0x380474 TrophyManager::TrophyManager() (C1)
// 0x380508 TrophyManager::TrophyManager() (C2). Same body; one definition covers both.
// The original sets the vptr, zeroes the vectors and calls InitTrophies. The members default-construct here, and the vptr is the compiler's.
TrophyManager::TrophyManager() {
    InitTrophies();
}

// 0x3804c0 TrophyManager::CreateInstance()
// Creates the singleton when there is none. The original allocates operator new(0x1c, 4) (CustomAlloc) and constructs in place.
void TrophyManager::CreateInstance() {
    if (!s_instance) {
        void* block = CustomAlloc(static_cast<unsigned int>(sizeof(TrophyManager)));
        s_instance = new (block) TrophyManager();
    }
}

// 0x380e48 TrophyManager::TrophyUnlockedCB(int)
// When the queue held one message the HUD popup is started: the node cache of AchievementMsg is refreshed and the start callback
// is invoked on the HUD root (the MenuMessageManager<AchievementMsg, 1>::Invoke body, inlined in the original).
// The original copies s_instance->m_unlocking into a local vector (a call to the std::vector<int> copy constructor, confirmed in the
// assembly of 0x380e48 with the member's address as the source), searches the copy for id and erases it from the copy. It returns when id is not there or has no row. The copy is freed
// at the end and nothing writes it back, so id stays in m_unlocking. This port keeps that behaviour (the test checks it).
void TrophyManager::TrophyUnlockedCB(int id) {
    TrophyManager* self = s_instance;
    std::vector<int> pending(self->m_unlocking);
    const auto found = std::find(pending.begin(), pending.end(), id);
    if (found == pending.end()) {
        return;
    }
    pending.erase(found);

    TrophyData* trophy = self->GetTrophyData(id);
    if (!trophy) {
        return;
    }
    // The original makes three trace-switch lookups here, all with their result dropped.
    QueryTraceTrophiesSwitch();
    QueryTraceTrophiesSwitch();
    QueryTraceTrophiesSwitch();

    trophy->m_unlocked = true;

    // Title and description: StringManager::getString of the name and description ids. An id of -1 leaves the text empty.
    StringManager* strings = ApplicationGetInstance().m_stringManager;
    AchievementMsg message(std::string(), std::string(), 0, 0, 0);
    if (trophy->m_nameTextId != -1) {
        message.assign(strings->getString(trophy->m_nameTextId));
    }
    if (trophy->m_descTextId != -1) {
        message.m_desc.assign(strings->getString(trophy->m_descTextId));
    }
    message.m_trophyType = trophy->m_type;
    message.m_grade = trophy->m_grade;
    message.m_label = trophy->m_label;

    // The message is queued only while a level is loaded. The popup for a queue that held one message is not rebuilt here.
    if (ApplicationGetInstance().GetCurrentLevel() != nullptr) {
        std::deque<AchievementMsg>& queue = MenuMessageManager<AchievementMsg, 1>::s_inst.m_queues[0];
        queue.push_back(message);
        if (queue.size() == 1) {
            const char* startFunction = AchievementMsg::s_StartFuncName;
            MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
            if (hud != nullptr) {
                AchievementMsg::s_NodeCachedChar.RefreshCacheIfStale(AchievementMsg::s_NodeName, hud);
                gameswf::character* node = AchievementMsg::s_NodeCachedChar.GetChar();
                gameswf::as_value argument;
                argument.set_double(0.0);
                hud->InvokeASCallback(node, startFunction, &argument, 1);
            }
        }
    }

    SaveTrophies();
}

// 0x3813b8 TrophyManager::UnlockTrophy(int)
// A non-negative id that is neither unlocked nor unlocking is appended to m_unlocking, then TrophyUnlockedCB runs for it. The
// original's vector growth is the STL's, so push_back covers it.
void TrophyManager::UnlockTrophy(int id) {
    if (id >= 0 && !IsTrophyUnlocked(id) && !IsTrophyUnlocking(id)) {
        m_unlocking.push_back(id);
        TrophyUnlockedCB(id);
    }
}

// 0x3814c8 TrophyManager::DBG_UnlockAllTrophies()
// UnlockTrophy for every row id, in order.
void TrophyManager::DBG_UnlockAllTrophies() {
    const std::uint32_t count = Arrays::TrophyTable::size;
    for (std::uint32_t i = 0; i < count; ++i) {
        UnlockTrophy(static_cast<int>(i));
    }
}

// 0x38151c TrophyManager::LoadTrophies()
// Opens "achievements.savegame" for reading on the device file system (slot +0x94), reads the std::bitset<128>, restores every
// set bit through UnlockTrophy (UnlockSavedTrophies) and closes the stream (slot +0x78). Nothing happens without a device
// file system or when the file does not open.
void TrophyManager::LoadTrophies() {
    FileSystemWin32* fileSystem = SavefileFileSystemPtr();
    if (fileSystem == nullptr) {
        return;
    }
    IFileStream* stream = fileSystem->openSavefile("achievements.savegame", false);
    if (stream != nullptr) {
        std::bitset<128> unlocked;
        stream->readAs<std::bitset<128>>(unlocked);
        std::uint32_t words[kSavedWords] = {0, 0, 0, 0};
        for (std::size_t bit = 0; bit < 128; ++bit) {
            if (unlocked[bit]) {
                words[bit >> 5] |= std::uint32_t{1} << (bit & 31);
            }
        }
        UnlockSavedTrophies(this, words);
        fileSystem->closeFile(stream);
    }
}
