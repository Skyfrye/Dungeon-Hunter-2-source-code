// Batch g1-game-character-SpawnGroupManager-ae66a7-0 (all of SpawnGroupManager): the singleton that holds the spawn
// groups of the loaded level. Declarations and layout come from dh2/SpawnGroupManager.hpp.
//
// Offsets in comments are the original 32-bit offsets. Group records are the host Structs::SpawnGroup elements of
// Arrays::SpawnGroups (20 bytes per record at 32-bit); each group's entries are host Structs::SpawnInfo elements.
//
// Duplicate bodies: the C1 and C2 constructors and the D1 and D2 destructors are identical. Each pair shares one
// definition below. The deleting destructor (D0, 0x3e8f84) is compiler generated and is not written.
//
// Lists. The original closes each group's list with a sentinel inside GroupInfo; the port ends the list with nullptr
// (see dh2/SpawnGroupManager.hpp). The behaviour is unchanged.
//
// update() makes six trace probes, DebugSwitches::load then GetSwitch("isTracingSpawnGroupManager") (the name comes from a compiler clone of the
// std::string constructor at 0x3e91f0); the results are unused.

#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <map>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Random.hpp"
#include "dh2/SpawnGroupManager.hpp"
#include "dh2/SpawnSpot.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_2.hpp"

// The pydata lookup is declared here, not included: pydata-accessors/member_names.hpp conflicts with structs_records.hpp in
// one translation unit. The explicit instantiation for Arrays::SpawnGroups lives in pydata-accessors/src/member_ids.cpp.
namespace Arrays {
template <class T>
int GetMemberIDByString(const char* name);
}  // namespace Arrays

// Global assert level (libDungeonHunter2.so gAssertLevel). core-platform/memory.hpp declares it too.
extern int gAssertLevel;

namespace {

// The source path that the original passes to its ASSERT macro.
constexpr const char* kSpawnGroupManagerSource =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Objects\\Spawns\\SpawnGroupManager.cpp";

// The original ASSERT. gAssertLevel 2 stops the program (the original stores to address 0 to crash); gAssertLevel 1
// prints the message to stderr and execution continues.
void ReportAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kSpawnGroupManagerSource, line);
    }
}

// Frees every entry of a group's list. The original runs the list destructor of each group inside the map's _M_erase.
void ClearGroup(SpawnGroupManager::GroupInfo& group) {
    SpawnGroupManager::SpawnEntry* entry = group.m_spotsFirst;
    while (entry != nullptr) {
        SpawnGroupManager::SpawnEntry* next = entry->next;
        delete entry;
        entry = next;
    }
    group.m_spotsFirst = nullptr;
    group.m_spotsLast = nullptr;
}

// Appends a new entry for spot at the back of a group's list (the back insertion in InsSpawn).
void PushBack(SpawnGroupManager::GroupInfo& group, SpawnSpot* spot) {
    SpawnGroupManager::SpawnEntry* entry = new SpawnGroupManager::SpawnEntry{nullptr, group.m_spotsLast, spot};
    if (group.m_spotsLast != nullptr) {
        group.m_spotsLast->next = entry;
    } else {
        group.m_spotsFirst = entry;
    }
    group.m_spotsLast = entry;
}

// Unlinks one entry from a group's list and frees it (the unlink in DelSpawn).
void Unlink(SpawnGroupManager::GroupInfo& group, SpawnGroupManager::SpawnEntry* entry) {
    if (entry->prev != nullptr) {
        entry->prev->next = entry->next;
    } else {
        group.m_spotsFirst = entry->next;
    }
    if (entry->next != nullptr) {
        entry->next->prev = entry->prev;
    } else {
        group.m_spotsLast = entry->prev;
    }
    delete entry;
}

// The trace probe that update() makes at six points: DebugSwitches::load, then GetSwitch("isTracingSpawnGroupManager"); the result is unused.
void ProbeTracingSpawnGroupManager() {
    DebugSwitches::GetInstance()->GetSwitch("isTracingSpawnGroupManager");
}

// The Arrays::SpawnGroups record of a member id: members + 20 * id in the original, a host Structs::SpawnGroup here.
const Structs::SpawnGroup& SpawnGroupRecord(int id) {
    return reinterpret_cast<const Structs::SpawnGroup*>(Arrays::SpawnGroups::members)[id];
}

}  // namespace

namespace spawn_group_detail {

// The entry that a roll lands in, as in update() (0x3e9404..0x3e946c). Entry i takes the roll when the running remainder
// (roll minus the weights of entries 0..i) becomes negative. Returns nullptr when the roll is not below the total weight.
const Structs::SpawnInfo* ChooseSpawnEntry(const Structs::SpawnInfo* entries, std::uint32_t count, int roll) {
    int remaining = roll;
    for (std::uint32_t i = 0; i < count; ++i) {
        remaining -= entries[i].Prob;  // +0x08 weight
        if (remaining < 0) {
            return &entries[i];
        }
    }
    return nullptr;
}

}  // namespace spawn_group_detail

// 0x3e8b3c SpawnGroupManager::SpawnGroupManager() (C2)
// 0x3e8b84 SpawnGroupManager::SpawnGroupManager() (C1, same body)
// The vptr is set by the language. The original leaves an empty rb-tree (root zero, count zero, leftmost and rightmost at
// the header), which is the empty state of m_groups.
SpawnGroupManager::SpawnGroupManager() {}

// 0x3e8c40 SpawnGroupManager::GetGroup(char const*)
// Returns the group named name, or end() when the name is not a spawn group. The original begins with a walk down the tree
// whose result is never used and which writes nothing; it is omitted. Then it finds the node with lower_bound and keeps it
// only when its key equals the member id, which is std::map::find.
std::map<int, SpawnGroupManager::GroupInfo>::iterator SpawnGroupManager::GetGroup(const char* name) {
    return m_groups.find(Arrays::GetMemberIDByString<Arrays::SpawnGroups>(name));
}

// 0x3e8f24 SpawnGroupManager::~SpawnGroupManager() (D1, complete object)
// 0x3e8fa0 SpawnGroupManager::~SpawnGroupManager() (D2, same body as D1)
// Frees every group's list and clears the map. The original does the tree erase only when the map is not empty, and
// clear() on an empty map does nothing.
SpawnGroupManager::~SpawnGroupManager() {
    for (auto& node : m_groups) {
        ClearGroup(node.second);
    }
    m_groups.clear();
}

// 0x3e8f84 SpawnGroupManager::~SpawnGroupManager() (D0, deleting destructor)
// SKIPPED: the compiler emits the deleting destructor for `delete` of a SpawnGroupManager. The original calls D1 and then
// CustomFree(this), which is what operator delete does.

// 0x3e907c SpawnGroupManager::DelSpawn(SpawnSpot*)
// Removes every entry of spot from the list of the group named by spot->m_group. A group whose list becomes empty is erased
// from the map. A name that is not a spawn group changes nothing.
// A null spot: the original asserts (line 263) and then reads spot->m_group at +904, which faults. The port aborts after the
// assert, at every level.
void SpawnGroupManager::DelSpawn(SpawnSpot* spot) {
    if (spot == nullptr) {
        ReportAssert("ss", 263);
        std::abort();
    }
    const int id = Arrays::GetMemberIDByString<Arrays::SpawnGroups>(spot->m_group.c_str());
    if (id == -1) {
        return;
    }
    auto it = m_groups.find(id);
    if (it == m_groups.end()) {
        return;
    }
    GroupInfo& group = it->second;
    SpawnEntry* entry = group.m_spotsFirst;
    while (entry != nullptr) {
        SpawnEntry* next = entry->next;
        if (entry->spot == spot) {
            Unlink(group, entry);
        }
        entry = next;
    }
    if (group.m_spotsFirst == nullptr) {
        m_groups.erase(it);
    }
}

// 0x3e9238 SpawnGroupManager::update(double)
// Counts every group down by the frame time (Application::GetDt, in ms). When a countdown runs out the group picks one of
// its SpawnInfo entries by weight, collects the spots that may take a spawn, and spawns the entry's count of characters at
// spots drawn at random. The countdown is reset to the group's interval (Arrays::SpawnGroups +0x08), or to 1000 when no spot
// is ready. The argument is not read; Level::Update passes 0.0.
//
// The six points marked "probe" make the "isTracingSpawnGroupManager" trace probe (see the file comment).
void SpawnGroupManager::update(double /*dt*/) {
    static unsigned int spawnUniqueId = 0;  // SpawnGroupManager::update(double)::spawnUniqueId

    const int dt = ApplicationGetInstance().GetDt();
    std::vector<SpawnSpot*> candidates;  // the original's temporary vector; its capacity is kept across groups
    for (auto node = m_groups.begin(); node != m_groups.end(); ++node) {
        const int id = node->first;
        GroupInfo& group = node->second;
        group.m_timer -= dt;  // +0x08
        if (group.m_timer > 0) {
            continue;
        }

        // The countdown ran out. The first probe runs here, before the interval is stored.
        ProbeTracingSpawnGroupManager();
        const Structs::SpawnGroup& record = SpawnGroupRecord(id);
        group.m_timer = record.Delay;  // +0x08 of the record: the interval
        const std::uint32_t entryCount = record.SpawnsSize;  // +0x0c
        const auto* entries = static_cast<const Structs::SpawnInfo*>(record.Spawns);  // +0x10
        if (entryCount == 0) {
            continue;
        }
        int totalWeight = 0;
        for (std::uint32_t i = 0; i < entryCount; ++i) {
            totalWeight += entries[i].Prob;
        }
        if (totalWeight <= 0) {
            continue;
        }

        // Random::GetRandom(total, false). The Hex-Rays call has no second argument: the original calls the clone
        // _ZN6Random9GetRandomEib.clone.1_4, which draws from the ordinary stream (s_seed), so the flag is false.
        const int roll = static_cast<int>(Random::GetRandom(totalWeight, false));
        const Structs::SpawnInfo* chosen = spawn_group_detail::ChooseSpawnEntry(entries, entryCount, roll);
        if (chosen == nullptr) {
            continue;
        }
        // probe: the chosen entry's +0x0c is zero.
        if (chosen->Qty == 0) {
            ProbeTracingSpawnGroupManager();
            continue;
        }

        // Candidate spots, in list order. A zoned group (record +0x04) skips a spot that has zoning enabled and is not
        // in a zone; every other spot is a candidate.
        candidates.clear();
        for (const SpawnEntry* entry = group.m_spotsFirst; entry != nullptr; entry = entry->next) {
            SpawnSpot* spot = entry->spot;
            if (record.ActiveSpotOnly && spot->IsZonable() && spot->m_zoningEnabled && !spot->m_inZone) {
                continue;
            }
            candidates.push_back(spot);
        }
        if (candidates.empty()) {
            ProbeTracingSpawnGroupManager();  // no candidate spot
            group.m_timer = 1000;
            continue;
        }
        ProbeTracingSpawnGroupManager();  // candidates exist
        if (chosen->Qty <= 0) {
            continue;
        }

        // Spawn chosen->m_w3 characters. Each one picks a candidate spot at random and removes it from the candidates.
        for (int spawned = 0;;) {
            const unsigned int pick = Random::GetRandom(static_cast<int>(candidates.size()), false);
            SpawnSpot* spot = candidates[pick];
            const auto found = std::find(candidates.begin(), candidates.end(), spot);
            if (found != candidates.end()) {
                candidates.erase(found);
            }

            char name[32];
            std::snprintf(name, sizeof name, "Spawn_%05u", ++spawnUniqueId);
            ObjectHandle handle = dword_99F764->Spawn("Character", name, true, true);
            Character* character = handle;
            if (character != nullptr) {
                character->InitSpawned(chosen->Char, spot->m_position);  // +0x04 of the entry: the character props id
                spot->PlaceObject(character);
                ProbeTracingSpawnGroupManager();  // after a placed character
            }

            ++spawned;
            if (chosen->Qty <= spawned) {
                break;
            }
            if (candidates.empty()) {
                ProbeTracingSpawnGroupManager();  // the candidates ran out before the count was reached
                break;
            }
        }
    }
}

// 0x3ea098 SpawnGroupManager::InsSpawn(SpawnSpot*)
// Appends spot to the list of the group named by spot->m_group. A name that is not a spawn group (member id -1) does
// nothing. A group that does not exist yet is created with timer 0. The original returns the new list node, or -1 when the
// name is unknown. Both callers ignore the result, so the port returns void.
// A null spot: the original asserts (line 229) and then reads spot->m_group at +904, which faults. The port aborts after the
// assert, at every level.
void SpawnGroupManager::InsSpawn(SpawnSpot* spot) {
    if (spot == nullptr) {
        ReportAssert("ss", 229);
        std::abort();
    }
    const int id = Arrays::GetMemberIDByString<Arrays::SpawnGroups>(spot->m_group.c_str());
    if (id == -1) {
        return;
    }
    auto it = m_groups.find(id);
    if (it == m_groups.end()) {
        GroupInfo& group = m_groups[id];
        group.m_timer = 0;  // +0x08
        PushBack(group, spot);
    } else {
        PushBack(it->second, spot);
    }
}

// 0x3ea730 SpawnGroupManager::GetInstance()
// The function-local static sgm. The original's guard variable, its _cxa_guard calls and its atexit registration of the
// destructor are what a function-local static compiles to, so the port uses one.
SpawnGroupManager* SpawnGroupManager::GetInstance() {
    static SpawnGroupManager sgm;
    return &sgm;
}
