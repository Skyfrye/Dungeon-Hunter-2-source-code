// Test for the PlayerSavegame section handlers in game-items-save/src/g1-game-items-save-PlayerSavegame-56ccee-5.cpp.
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The batch source is linked whole, so its external symbols are stand-ins here: the name tables and pydata::FindMemberName,
// the ItemInventory and ItemInstance members the inventory handler calls, the PlayerSavegame and QuestSavegame constructors
// and destructors, the level and map-location accessors, and the IStreamBase typed helpers. The helpers read and write a byte
// buffer: host-order integers, and a 32-bit length then the bytes for a string. The real helpers are in game-app.
// The player is a Character-sized buffer that is never constructed. The handlers only take the ItemInventory base of it and
// its m_equipSet byte, so the buffer is enough.
// The checks cover the handlers' reads and writes in order, the inventory calls and the equipment-set swap, the level and
// map-location calls, the skill row search and the skill-set insertion, and the sentinel and missing-pointer early exits.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "pydata-accessors/member_names.hpp"

int gAssertLevel = 0;

// ---- pydata name lookup and the tables the handlers read ----
namespace pydata {
int FindMemberName(const NameTable& table, int count, const char* name) {
    for (int i = 0; i < count; ++i) {
        if (std::strcmp(name, table.names[i]) == 0) return i;
    }
    return -1;
}
}  // namespace pydata

namespace Arrays {
pydata::NameTable ItemTable::m_memberNames;
pydata::NameTable ItemPowerTable::m_memberNames;
pydata::NameTable SkillTable::m_memberNames;
pydata::NameTable LevelList::m_memberNames;
pydata::NameTable WorldMap::m_memberNames;
}  // namespace Arrays

namespace {

int g_failures = 0;

#define CHECK(...)                                                                  \
    do {                                                                            \
        if (!(__VA_ARGS__)) {                                                       \
            std::printf("FAIL line %d: %s\n", __LINE__, #__VA_ARGS__);              \
            ++g_failures;                                                           \
        }                                                                           \
    } while (0)

// Fills a name table with copies of the strings. The test owns the copies for the life of the process.
void SetNameTable(pydata::NameTable& table, const std::vector<std::string>& names) {
    table.names = new char*[names.size()];
    for (std::size_t i = 0; i < names.size(); ++i) {
        table.names[i] = new char[names[i].size() + 1];
        std::strcpy(table.names[i], names[i].c_str());
    }
    table.size = static_cast<int>(names.size());
}

// ---- recorded stand-in state ----
int g_gold = -1;
int g_nextIndex = 10;
int g_shortReads = 0;

struct AddCall {
    ItemInstance* item;
    bool stack;
    bool convertGold;
};
struct EquipCall {
    unsigned int slot;
    unsigned int itemIdx;
    bool flag;
    int setAtCall;  // ItemInventory::m_equipSet at the time of the call
};
struct PowerCall {
    ItemInstance* item;
    int powerId;
    int variant;
};
struct SetCall {
    int index;
    int state;
    int difficulty;
};

std::vector<AddCall> g_added;
std::vector<EquipCall> g_equips;
std::vector<PowerCall> g_powers;
std::vector<SetCall> g_levelSets;
std::vector<SetCall> g_mapSets;

void ResetRecords() {
    g_gold = -1;
    g_nextIndex = 10;
    g_shortReads = 0;
    g_added.clear();
    g_equips.clear();
    g_powers.clear();
    g_levelSets.clear();
    g_mapSets.clear();
}

// ---- a byte stream standing in for the savegame stream ----
class ByteStream : public IStreamBase {
public:
    std::vector<unsigned char> data;
    std::size_t pos = 0;

    std::uint32_t size() const override { return static_cast<std::uint32_t>(data.size()); }
    bool canRead() const override { return pos < data.size(); }
    bool canWrite() const override { return true; }
    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        const std::size_t avail = data.size() - pos;
        const std::size_t take = n < avail ? static_cast<std::size_t>(n) : avail;
        std::memcpy(dst, data.data() + pos, take);
        return take;
    }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::size_t avail = data.size() - pos;
        const std::size_t take = n < avail ? static_cast<std::size_t>(n) : avail;
        std::memcpy(dst, data.data() + pos, take);
        pos += take;
        return take;
    }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        if (data.size() < pos + n) data.resize(pos + static_cast<std::size_t>(n));
        std::memcpy(data.data() + pos, src, static_cast<std::size_t>(n));
        pos += static_cast<std::size_t>(n);
        return n;
    }
    void seek(std::uint64_t p) override { pos = static_cast<std::size_t>(p); }
    std::uint64_t tell() const override { return pos; }
    void skip(std::uint64_t n) override { pos += static_cast<std::size_t>(n); }
    void seekWrite(std::uint64_t p) override { seek(p); }
    std::uint64_t tellWrite() const override { return tell(); }
};

// ---- byte builders for the input streams ----
void PutRaw(std::vector<unsigned char>& out, const void* p, std::size_t n) {
    const unsigned char* bytes = static_cast<const unsigned char*>(p);
    out.insert(out.end(), bytes, bytes + n);
}
void PutInt(std::vector<unsigned char>& out, std::int32_t v) { PutRaw(out, &v, sizeof v); }
void PutU16(std::vector<unsigned char>& out, std::uint16_t v) { PutRaw(out, &v, sizeof v); }
void PutU8(std::vector<unsigned char>& out, std::uint8_t v) { PutRaw(out, &v, sizeof v); }
void PutString(std::vector<unsigned char>& out, const std::string& s) {
    PutInt(out, static_cast<std::int32_t>(s.size()));
    PutRaw(out, s.data(), s.size());
}
std::int32_t IntAt(const std::vector<unsigned char>& bytes, std::size_t offset) {
    std::int32_t v = 0;
    std::memcpy(&v, bytes.data() + offset, sizeof v);
    return v;
}

// The player is a Character-sized buffer. Nothing constructs or destroys the Character; the handlers reach its ItemInventory
// base (static_cast) and the ItemInventory::m_equipSet byte.
alignas(Character) unsigned char g_playerStorage[sizeof(Character)];
Character* FakePlayer() { return reinterpret_cast<Character*>(g_playerStorage); }
ItemInventory* FakeInventory() { return static_cast<ItemInventory*>(FakePlayer()); }

void* SentinelUser(std::intptr_t value) { return reinterpret_cast<void*>(value); }

}  // namespace

// ---- stand-ins for the batch's external symbols ----

// IStreamBase: the virtual destructor and the two non-pure slots of the base vtable (seekWrite forwards to seek, tellWrite
// to tell), and the typed helpers the handlers call (game-app defines the real ones).
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

template <>
void IStreamBase::readAs<int>(int& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
template <>
void IStreamBase::readAs<unsigned int>(unsigned int& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
template <>
void IStreamBase::readAs<unsigned char>(unsigned char& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
template <>
void IStreamBase::readAs<unsigned short>(unsigned short& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
void IStreamBase::readAs(std::string& value) {
    std::uint32_t length = 0;
    if (read(&length, sizeof length) != sizeof length) {
        ++g_shortReads;
        return;
    }
    value.assign(length, '\0');
    if (length != 0 && read(&value[0], length) != length) ++g_shortReads;
}
template <>
void IStreamBase::writeAs<int>(const int& value) {
    write(&value, sizeof value);
}
void IStreamBase::writeAs(const std::string& value) {
    const std::uint32_t length = static_cast<std::uint32_t>(value.size());
    write(&length, sizeof length);
    if (length != 0) write(value.data(), length);
}

// pydata name tables: defined above with the FindMemberName stand-in.

// ItemInventory and ItemInstance members the inventory handler calls.
void ItemInventory::SetGold(int amount) { g_gold = amount; }
int ItemInventory::_AddItemInstance(ItemInstance* item, bool stack, bool convertGold) {
    g_added.push_back(AddCall{item, stack, convertGold});
    return g_nextIndex++;
}
int ItemInventory::_EquipItemToSlot(unsigned int slot, unsigned int itemIdx, bool flag) {
    g_equips.push_back(EquipCall{slot, itemIdx, flag, m_equipSet});
    return 0;
}

ItemInstance::ItemInstance(int itemId, unsigned int qty)
    : m_itemId(itemId), m_qty(static_cast<std::int16_t>(qty)), m_value(0), m_pickUpType(-1), unk_68(true), unk_69(false) {}
ItemInstance::~ItemInstance() {}
void ItemInstance::SetValue(int value) { m_value = value; }
void ItemInstance::AddPower(int powerId, int variant) { g_powers.push_back(PowerCall{this, powerId, variant}); }

// PlayerSavegame and QuestSavegame: constructors and destructors (the batch file defines none of them), and the accessors the
// level-state handlers call (their real bodies are in the other PlayerSavegame batches).
PlayerSavegame::PlayerSavegame() {}
PlayerSavegame::~PlayerSavegame() {}
QuestSavegame::QuestSavegame() {}
QuestSavegame::~QuestSavegame() {}

// The stand-in levels are 100 * difficulty + level and the stand-in locations 200 * difficulty + location.
int PlayerSavegame::SG_GetLevelState(int level, int difficulty) const { return 100 * difficulty + level; }
int PlayerSavegame::SG_GetMapLocState(int location, int difficulty) const { return 200 * difficulty + location; }
void PlayerSavegame::SG_SetLevelState(int level, int state, int difficulty) {
    g_levelSets.push_back(SetCall{level, state, difficulty});
}
void PlayerSavegame::SG_SetMapLocState(int location, int state, int difficulty) {
    g_mapSets.push_back(SetCall{location, state, difficulty});
}

// ---- checks ----

// __LoadInventory: a null player skips the section, and no byte is read.
void TestInventoryMissingPlayer() {
    ResetRecords();
    PlayerSavegame save;
    save.m_player = nullptr;
    ByteStream stream;
    PutInt(stream.data, 250);
    PlayerSavegame::__LoadInventory(&stream, &save);
    CHECK(stream.pos == 0);
    CHECK(g_gold == -1);
    CHECK(g_added.empty());
}

// __LoadInventory: the gold, the equipment set, two items with their slots, powers and pick-up flags. Each equipped slot runs
// with the equipment set the original forces (0 for the first slot, 1 for the second), and the header's set is restored.
void TestInventoryLoad() {
    ResetRecords();
    SetNameTable(Arrays::ItemTable::m_memberNames, {"sword", "bow", "ring"});
    SetNameTable(Arrays::ItemPowerTable::m_memberNames, {"fire", "ice"});
    std::memset(g_playerStorage, 0, sizeof g_playerStorage);
    FakeInventory()->m_equipSet = 9;

    PlayerSavegame save;
    save.m_player = FakePlayer();

    ByteStream stream;
    PutInt(stream.data, 250);  // gold
    PutInt(stream.data, 1);    // equipment set
    PutInt(stream.data, 2);    // item count
    // sword: slot 3 in set 0, none in set 1, quantity 1, value 40, pick-up flag 1, two powers (fire, unknown).
    PutString(stream.data, "sword");
    PutInt(stream.data, 3);
    PutInt(stream.data, -1);
    PutInt(stream.data, 1);
    PutInt(stream.data, 40);
    PutU8(stream.data, 1);
    PutInt(stream.data, 2);
    PutString(stream.data, "fire");
    PutString(stream.data, "unknown");
    // bow: not in set 0, slot 5 in set 1, quantity 2, value 7, pick-up flag 0, no powers.
    PutString(stream.data, "bow");
    PutInt(stream.data, -1);
    PutInt(stream.data, 5);
    PutInt(stream.data, 2);
    PutInt(stream.data, 7);
    PutU8(stream.data, 0);
    PutInt(stream.data, 0);

    PlayerSavegame::__LoadInventory(&stream, &save);

    CHECK(stream.pos == stream.data.size());
    CHECK(g_shortReads == 0);
    CHECK(g_gold == 250);
    CHECK(FakeInventory()->m_equipSet == 1);  // the header's set, restored after the equips

    CHECK(g_added.size() == 2);
    if (g_added.size() == 2) {
        CHECK(g_added[0].stack && g_added[0].convertGold);
        CHECK(g_added[1].stack && g_added[1].convertGold);
        ItemInstance* sword = g_added[0].item;
        ItemInstance* bow = g_added[1].item;
        CHECK(sword->m_itemId == 0);  // "sword" is row 0
        CHECK(sword->m_qty == 1);
        CHECK(sword->m_value == 40);
        CHECK(sword->unk_68 == true);
        CHECK(bow->m_itemId == 1);  // "bow" is row 1
        CHECK(bow->m_qty == 2);
        CHECK(bow->m_value == 7);
        CHECK(bow->unk_68 == false);
    }

    // Powers: fire is row 0 of the power table, unknown is not in the table and gets -1, both with variant -1.
    CHECK(g_powers.size() == 2);
    if (g_powers.size() == 2) {
        CHECK(g_powers[0].item == g_added[0].item && g_powers[0].powerId == 0 && g_powers[0].variant == -1);
        CHECK(g_powers[1].item == g_added[0].item && g_powers[1].powerId == -1 && g_powers[1].variant == -1);
    }

    // Equips: sword in slot 3 at set 0 (index 10), then bow in slot 5 at set 1 (index 11).
    CHECK(g_equips.size() == 2);
    if (g_equips.size() == 2) {
        CHECK(g_equips[0].slot == 3 && g_equips[0].itemIdx == 10 && g_equips[0].flag == true && g_equips[0].setAtCall == 0);
        CHECK(g_equips[1].slot == 5 && g_equips[1].itemIdx == 11 && g_equips[1].flag == true && g_equips[1].setAtCall == 1);
    }

    for (const AddCall& call : g_added) delete call.item;
}

// __LoadInventory: a name that is not in the item table gives row -1. The item is still built (the constructor's own assert
// covers that case) and the equip is skipped when its slot is -1. The gold is set even when there are no items.
void TestInventoryUnknownItemAndEmpty() {
    ResetRecords();
    SetNameTable(Arrays::ItemTable::m_memberNames, {"sword", "bow", "ring"});
    SetNameTable(Arrays::ItemPowerTable::m_memberNames, {"fire", "ice"});
    std::memset(g_playerStorage, 0, sizeof g_playerStorage);
    PlayerSavegame save;
    save.m_player = FakePlayer();

    ByteStream stream;
    PutInt(stream.data, 0);  // gold
    PutInt(stream.data, 0);  // set
    PutInt(stream.data, 0);  // no items
    PlayerSavegame::__LoadInventory(&stream, &save);
    CHECK(stream.pos == stream.data.size());
    CHECK(g_gold == 0);
    CHECK(g_added.empty());

    ResetRecords();
    ByteStream unknown;
    PutInt(unknown.data, 0);
    PutInt(unknown.data, 0);
    PutInt(unknown.data, 1);
    PutString(unknown.data, "nope");
    PutInt(unknown.data, -1);
    PutInt(unknown.data, -1);
    PutInt(unknown.data, 1);
    PutInt(unknown.data, 0);
    PutU8(unknown.data, 0);
    PutInt(unknown.data, 0);
    PlayerSavegame::__LoadInventory(&unknown, &save);
    CHECK(unknown.pos == unknown.data.size());
    CHECK(g_added.size() == 1);
    if (g_added.size() == 1) {
        CHECK(g_added[0].item->m_itemId == -1);
        delete g_added[0].item;
    }
    CHECK(g_equips.empty());
}

// __SaveLevelStates: three level blocks, then three location blocks. Each block starts with its count, then each name and its
// state. The sentinel user writes nothing.
void TestSaveLevelStatesAndSentinel() {
    ResetRecords();
    SetNameTable(Arrays::LevelList::m_memberNames, {"L0", "L1"});
    SetNameTable(Arrays::WorldMap::m_memberNames, {"W0", "W1", "W2"});
    PlayerSavegame save;

    ByteStream sentinelOut;
    PlayerSavegame::__SaveLevelStates(&sentinelOut, SentinelUser(-104));
    CHECK(sentinelOut.data.empty());
    PlayerSavegame::__SaveLevelStates(&sentinelOut, SentinelUser(-116));
    CHECK(sentinelOut.data.empty());

    ByteStream out;
    PlayerSavegame::__SaveLevelStates(&out, &save);
    // Level block: count (4) + 2 entries of (name 4+2, state 4) = 24 bytes, three times. Location block: 4 + 3 * 10 = 34, three times.
    CHECK(out.data.size() == 3 * 24 + 3 * 34);
    CHECK(IntAt(out.data, 0) == 2);
    CHECK(IntAt(out.data, 24) == 2);
    CHECK(IntAt(out.data, 48) == 2);
    // Level 1 in difficulty 2: the block starts at 48, its entry 1 at 62, the name takes 6 bytes, the state is at 68.
    CHECK(IntAt(out.data, 68) == 201);
    // Location blocks start at 72. Location 2 in difficulty 1: the block starts at 106, its entry 2 at 130, the name takes 6
    // bytes, the state is at 136.
    CHECK(IntAt(out.data, 72) == 3);
    CHECK(IntAt(out.data, 136) == 202);
}

// __LoadLevelStates: the round trip of the bytes above. The sentinel user reads nothing. Names outside the table are read
// and dropped.
void TestLoadLevelStatesRoundTrip() {
    ResetRecords();
    SetNameTable(Arrays::LevelList::m_memberNames, {"L0", "L1"});
    SetNameTable(Arrays::WorldMap::m_memberNames, {"W0", "W1", "W2"});
    PlayerSavegame save;

    ByteStream out;
    PlayerSavegame::__SaveLevelStates(&out, &save);

    ByteStream in;
    in.data = out.data;
    PlayerSavegame::__LoadLevelStates(&in, &save);
    CHECK(in.pos == in.data.size());
    CHECK(g_shortReads == 0);
    CHECK(g_levelSets.size() == 6);
    CHECK(g_mapSets.size() == 9);
    if (g_levelSets.size() == 6) {
        CHECK(g_levelSets[5].index == 1 && g_levelSets[5].state == 201 && g_levelSets[5].difficulty == 2);
    }
    if (g_mapSets.size() == 9) {
        CHECK(g_mapSets[5].index == 2 && g_mapSets[5].state == 202 && g_mapSets[5].difficulty == 1);
    }

    ResetRecords();
    ByteStream sentinelIn;
    sentinelIn.data = out.data;
    PlayerSavegame::__LoadLevelStates(&sentinelIn, SentinelUser(-116));
    CHECK(sentinelIn.pos == 0);
    CHECK(g_levelSets.empty());
    CHECK(g_mapSets.empty());

    // A name that is not in the table is read (with its state) and sets nothing.
    ResetRecords();
    ByteStream unknown;
    PutInt(unknown.data, 1);
    PutString(unknown.data, "ZZ");
    PutInt(unknown.data, 5);  // the state of the unknown level, read and dropped
    // The remaining counts: two level blocks (difficulties 1 and 2) and three location blocks, all empty.
    for (int block = 0; block < 5; ++block) PutInt(unknown.data, 0);
    PlayerSavegame::__LoadLevelStates(&unknown, &save);
    CHECK(unknown.pos == unknown.data.size());
    CHECK(g_levelSets.empty());
    CHECK(g_mapSets.empty());
}

// __LoadSkills: the rows are matched by name (a name that is not in the table is read into nothing), and then the two skill
// sets are read into the maps by slot. A repeated slot takes the last value.
void TestLoadSkills() {
    ResetRecords();
    SetNameTable(Arrays::SkillTable::m_memberNames, {"Bash", "Fire", "Ice"});

    PlayerSavegame::SkillRecord rows[2] = {{0, 0, {0, 0}}, {1, 0, {0, 0}}};  // row 0 is Bash, row 1 is Fire
    PlayerSavegame save;
    save.m_player = FakePlayer();
    save.m_skills = rows;
    save.m_skillsSize = 2;
    save.m_skillSets.clear();
    save.m_skillSets.push_back(std::map<int, int>());
    save.m_skillSets.push_back(std::map<int, int>());

    ByteStream stream;
    PutInt(stream.data, 3);       // three rows
    PutString(stream.data, "Fire");
    PutU16(stream.data, 7);
    PutString(stream.data, "Ice");  // not in the rows: its level is read and dropped
    PutU16(stream.data, 9);
    PutString(stream.data, "Missing");  // index -1: no row has id -1, so it is dropped as well
    PutU16(stream.data, 5);
    PutInt(stream.data, 2);       // set 0: two entries
    PutInt(stream.data, 4);
    PutInt(stream.data, 40);
    PutInt(stream.data, 6);
    PutInt(stream.data, 60);
    PutInt(stream.data, 0);       // set 1: none

    PlayerSavegame::__LoadSkills(&stream, &save);

    CHECK(stream.pos == stream.data.size());
    CHECK(g_shortReads == 0);
    CHECK(rows[0].level == 0);  // Bash was not in the stream
    CHECK(rows[1].level == 7);  // Fire
    CHECK(save.m_skillSets[0].size() == 2);
    CHECK(save.m_skillSets[0].at(4) == 40);
    CHECK(save.m_skillSets[0].at(6) == 60);
    CHECK(save.m_skillSets[1].empty());

    // A repeated slot in set 1 keeps the last value.
    ByteStream again;
    PutInt(again.data, 0);        // no rows
    PutInt(again.data, 2);        // set 0: slot 8 twice
    PutInt(again.data, 8);
    PutInt(again.data, 1);
    PutInt(again.data, 8);
    PutInt(again.data, 2);
    PutInt(again.data, 1);        // set 1: slot 3
    PutInt(again.data, 3);
    PutInt(again.data, 33);
    save.m_skillSets.clear();
    save.m_skillSets.push_back(std::map<int, int>());
    save.m_skillSets.push_back(std::map<int, int>());
    PlayerSavegame::__LoadSkills(&again, &save);
    CHECK(again.pos == again.data.size());
    CHECK(save.m_skillSets[0].size() == 1);
    CHECK(save.m_skillSets[0].at(8) == 2);
    CHECK(save.m_skillSets[1].at(3) == 33);
}

// __LoadSkills: a null skill table or a null player skips the section. Nothing is read.
void TestLoadSkillsMissingPointers() {
    ResetRecords();
    SetNameTable(Arrays::SkillTable::m_memberNames, {"Bash"});
    PlayerSavegame::SkillRecord rows[1] = {{0, 0, {0, 0}}};

    PlayerSavegame noTable;
    noTable.m_player = FakePlayer();
    noTable.m_skills = nullptr;
    noTable.m_skillsSize = 1;
    noTable.m_skillSets.clear();
    noTable.m_skillSets.push_back(std::map<int, int>());
    noTable.m_skillSets.push_back(std::map<int, int>());
    ByteStream first;
    PutInt(first.data, 1);
    PlayerSavegame::__LoadSkills(&first, &noTable);
    CHECK(first.pos == 0);

    PlayerSavegame noPlayer;
    noPlayer.m_player = nullptr;
    noPlayer.m_skills = rows;
    noPlayer.m_skillsSize = 1;
    noPlayer.m_skillSets.clear();
    noPlayer.m_skillSets.push_back(std::map<int, int>());
    noPlayer.m_skillSets.push_back(std::map<int, int>());
    ByteStream second;
    PutInt(second.data, 1);
    PlayerSavegame::__LoadSkills(&second, &noPlayer);
    CHECK(second.pos == 0);
    CHECK(rows[0].level == 0);
}

int main() {
    TestInventoryMissingPlayer();
    TestInventoryLoad();
    TestInventoryUnknownItemAndEmpty();
    TestSaveLevelStatesAndSentinel();
    TestLoadLevelStatesRoundTrip();
    TestLoadSkills();
    TestLoadSkillsMissingPointers();
    if (g_failures == 0) {
        std::printf("PlayerSavegame-56ccee-5 tests passed\n");
        return 0;
    }
    std::printf("%d check(s) failed\n", g_failures);
    return 1;
}
