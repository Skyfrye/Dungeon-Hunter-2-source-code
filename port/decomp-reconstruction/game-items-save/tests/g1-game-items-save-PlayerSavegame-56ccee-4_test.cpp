// Test for the PlayerSavegame section handlers and init routines in
// game-items-save/src/g1-game-items-save-PlayerSavegame-56ccee-4.cpp (batch g1-game-items-save-PlayerSavegame-56ccee-4).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails. _InitLevelStates is tested in the _levels_test.cpp file (its tables need the w7
// Arrays header, which cannot share a translation unit with the member_names header used here).
//
// The batch source is linked whole, so its external symbols are stand-ins here: the pydata name tables and lookup, the
// typed IStreamBase helpers (over a byte buffer: host-order words, and a 32-bit length then the bytes for a string), the
// Character, CharProperties, ItemInventory, ItemInstance and QuestSavegame members the handlers call, and the
// PlayerSavegame and QuestSavegame constructors. The player and the inventory base are a Character-sized buffer that is
// never constructed; the inventory list is placement-constructed in it.

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <map>
#include <new>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/CharProperties.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ItemInstance.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/QuestSavegame.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/structs_records.hpp"

int gAssertLevel = 0;

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
pydata::NameTable CharacterTable::m_memberNames;
}  // namespace Arrays

namespace {

int g_failures = 0;
int g_shortReads = 0;

#define CHECK(...)                                                                  \
    do {                                                                            \
        if (!(__VA_ARGS__)) {                                                       \
            std::printf("FAIL line %d: %s\n", __LINE__, #__VA_ARGS__);              \
            ++g_failures;                                                           \
        }                                                                           \
    } while (0)

// A name table from a list of strings (the strings are kept alive for the run).
void SetNameTable(pydata::NameTable& table, const std::vector<std::string>& names) {
    table.names = new char*[names.size()];
    table.size = static_cast<int>(names.size());
    for (std::size_t i = 0; i < names.size(); ++i) {
        table.names[i] = new char[names[i].size() + 1];
        std::memcpy(table.names[i], names[i].c_str(), names[i].size() + 1);
    }
}

// Byte-stream builders for the expected layouts.
void PutRaw(std::vector<unsigned char>& out, const void* p, std::size_t n) {
    const unsigned char* b = static_cast<const unsigned char*>(p);
    out.insert(out.end(), b, b + n);
}
void PutI32(std::vector<unsigned char>& out, std::int32_t v) { PutRaw(out, &v, sizeof v); }
void PutU32(std::vector<unsigned char>& out, std::uint32_t v) { PutRaw(out, &v, sizeof v); }
void PutU16(std::vector<unsigned char>& out, std::uint16_t v) { PutRaw(out, &v, sizeof v); }
void PutU8(std::vector<unsigned char>& out, std::uint8_t v) { PutRaw(out, &v, sizeof v); }
void PutStr(std::vector<unsigned char>& out, const std::string& s) {
    PutU32(out, static_cast<std::uint32_t>(s.size()));
    PutRaw(out, s.data(), s.size());
}

// The byte stream the handlers read and write. Positions are byte offsets; seek calls are recorded.
class ByteStream : public IStreamBase {
public:
    std::vector<unsigned char> bytes;
    std::uint64_t pos = 0;
    std::vector<std::uint64_t> seeks;

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return true; }
    bool canWrite() const override { return true; }
    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        const std::uint64_t avail = pos < bytes.size() ? bytes.size() - pos : 0;
        const std::uint64_t got = n < avail ? n : avail;
        if (got) std::memcpy(dst, bytes.data() + pos, static_cast<std::size_t>(got));
        return got;
    }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::uint64_t avail = pos < bytes.size() ? bytes.size() - pos : 0;
        const std::uint64_t got = n < avail ? n : avail;
        if (got) std::memcpy(dst, bytes.data() + pos, static_cast<std::size_t>(got));
        pos += got;
        return got;
    }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        if (pos + n > bytes.size()) bytes.resize(static_cast<std::size_t>(pos + n));
        if (n) std::memcpy(bytes.data() + pos, src, static_cast<std::size_t>(n));
        pos += n;
        return n;
    }
    void seek(std::uint64_t p) override {
        seeks.push_back(p);
        pos = p;
    }
    std::uint64_t tell() const override { return pos; }
    void skip(std::uint64_t n) override { pos += n; }
};

// The player is a Character-sized buffer. Nothing constructs or destroys the Character; the handlers reach its
// CharProperties and ItemInventory bases and the members the stubs below read.
alignas(Character) unsigned char g_playerStorage[sizeof(Character)];
Character* FakePlayer() { return reinterpret_cast<Character*>(g_playerStorage); }
ItemInventory* FakeInventory() { return static_cast<ItemInventory*>(FakePlayer()); }

// Stand-in state written by the stubs below.
int g_equipSet = 0;                                     // what GetCurrentEquipSet returns
std::vector<std::pair<int, int>> g_setProps;            // (property id, value) passed to _SetProperty
std::vector<const void*> g_setPropSheets;               // the sheet passed to _SetProperty
std::vector<const void*> g_questSaveCalls;              // QuestSavegame::SaveQuests receivers
std::vector<const void*> g_questLoadCalls;              // QuestSavegame::LoadQuests receivers
int g_questLoadSkip = 5;                                // bytes each LoadQuests stand-in consumes
alignas(8) unsigned char g_skillListStorage[sizeof(Structs::SkillList)];
int g_skillIds[2] = {4, 6};

}  // namespace

// ---- stand-ins for the batch's external symbols ----

// IStreamBase: the virtual destructor and the two non-pure slots (seekWrite forwards to seek, tellWrite to tell), and the
// typed helpers the handlers call.
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

template <>
void IStreamBase::readAs<bool>(bool& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
template <>
void IStreamBase::readAs<int>(int& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
template <>
void IStreamBase::readAs<unsigned int>(unsigned int& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
template <>
void IStreamBase::readAs<unsigned short>(unsigned short& value) {
    if (read(&value, sizeof value) != sizeof value) ++g_shortReads;
}
template <>
void IStreamBase::readAs<unsigned char>(unsigned char& value) {
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
template <>
void IStreamBase::writeAs<unsigned int>(const unsigned int& value) {
    write(&value, sizeof value);
}
template <>
void IStreamBase::writeAs<unsigned short>(const unsigned short& value) {
    write(&value, sizeof value);
}
template <>
void IStreamBase::writeAs<unsigned char>(const unsigned char& value) {
    write(&value, sizeof value);
}
void IStreamBase::writeAs(const std::string& value) {
    const std::uint32_t length = static_cast<std::uint32_t>(value.size());
    write(&length, sizeof length);
    if (length != 0) write(value.data(), length);
}

// Character, CharProperties, ItemInventory, ItemInstance and QuestSavegame members the handlers call.
const void* Character::GetCharSkillList() const { return g_skillListStorage; }
int CharProperties::_GetType(int propId) const { return (propId % 2 == 0) ? 0x20 : 0x00; }
void CharProperties::_SetProperty(Structs::CharacterProperties& sheet, int propId, int value) {
    g_setProps.emplace_back(propId, value);
    g_setPropSheets.push_back(&sheet);
}
int ItemInventory::GetCurrentEquipSet(int slot) const { return g_equipSet; }

ItemInstance::ItemInstance(int itemId, unsigned int qty)
    : m_itemId(itemId), m_qty(static_cast<std::int16_t>(qty)), m_value(0), m_pickUpType(-1), unk_68(true), unk_69(false) {}
ItemInstance::~ItemInstance() {}
int ItemInstance::GetItemId() const { return m_itemId; }
int ItemInstance::GetNumPowers() const { return static_cast<int>(m_powers.size()); }
int ItemInstance::GetPowerId(unsigned int idx) const { return m_powers[idx].m_powerId; }

QuestSavegame::QuestSavegame() {
    for (int d = 0; d < 3; ++d) {
        m_compiled[d] = false;
        m_currentQuest[d] = -1;
        m_currentPrimaryQuest[d] = -1;
        m_act[d] = 1;
        m_minAct[d] = 1;
    }
    m_owner = nullptr;
}
QuestSavegame::~QuestSavegame() {}
void QuestSavegame::SaveQuests(IStreamBase* stream) { g_questSaveCalls.push_back(this); }
void QuestSavegame::LoadQuests(IStreamBase* stream) {
    g_questLoadCalls.push_back(this);
    stream->skip(static_cast<std::uint64_t>(g_questLoadSkip));
}

// PlayerSavegame constructor and destructor: the batch defines neither. The blank state set here is what the checks use.
PlayerSavegame::PlayerSavegame() : m_name(), m_skillSets(2) {
    m_slot = 0;
    m_savegame = nullptr;
    m_saveBlocked = false;
    m_player = nullptr;
    m_questSynced = false;
    m_playerLevel = 1;
    m_playerClass = -1;
    m_saveDate = 0;
    m_unlockedDifficulty = 0;
    m_skills = nullptr;
    m_skillsSize = 0;
    m_saveMode = 0;
    unk_194 = false;
    for (int d = 0; d < 3; ++d) {
        m_levelEntryPoint[d] = 0;
        m_useSpawnPoint[d] = false;
        unk_50[d] = 0;
        m_seeds[d] = 0;
        m_levelStates[d] = nullptr;
        m_worldMapStates[d] = nullptr;
        m_faeries[d] = nullptr;
        m_faeryCount[d] = 0;
        m_currentFaery[d] = -1;
    }
}
PlayerSavegame::~PlayerSavegame() {}

namespace {

// Frees the arrays a check allocated for a save object.
void FreeFaeries(PlayerSavegame& save) {
    for (int d = 0; d < 3; ++d) {
        delete[] save.m_faeries[d];
        save.m_faeries[d] = nullptr;
    }
    delete[] save.m_skills;
    save.m_skills = nullptr;
}

// Each faery array of five records, with a level and a state per record.
void MakeFaeries(PlayerSavegame& save, int d, std::uint16_t levelBase) {
    save.m_faeries[d] = new PlayerSavegame::FaeryRecord[5]();
    save.m_faeryCount[d] = 5;
    for (int i = 0; i < 5; ++i) {
        save.m_faeries[d][i].level = static_cast<std::uint16_t>(levelBase + i);
        save.m_faeries[d][i].state = static_cast<std::uint8_t>(i % 2);
    }
}

// ---- checks ----

void TestLoadUseSpawnPoint() {
    PlayerSavegame save;
    ByteStream in;
    in.bytes = {1, 0, 1};
    PlayerSavegame::__LoadUseSpawnPoint(&in, &save);
    CHECK(save.m_useSpawnPoint[0] == true);
    CHECK(save.m_useSpawnPoint[1] == false);
    CHECK(save.m_useSpawnPoint[2] == true);
    CHECK(in.pos == 3);
}

void TestLevelNameRoundTrip() {
    PlayerSavegame save;
    save.m_saveDate = 0x11223344u;
    for (int d = 0; d < 3; ++d) {
        save.unk_50[d] = 10 + d;
        save.m_seeds[d] = 20 + d;
        save.m_questLog.m_act[d] = 30 + d;
    }
    ByteStream out;
    PlayerSavegame::__SaveLevelName(&out, &save);
    std::vector<unsigned char> expected;
    PutU32(expected, 0x11223344u);
    for (int d = 0; d < 3; ++d) {
        PutI32(expected, 10 + d);
        PutI32(expected, 20 + d);
        PutI32(expected, 30 + d);
    }
    CHECK(out.bytes == expected);

    PlayerSavegame loaded;
    ByteStream in;
    in.bytes = expected;
    PlayerSavegame::__LoadLevelName(&in, &loaded);
    CHECK(loaded.m_saveDate == 0x11223344u);
    for (int d = 0; d < 3; ++d) {
        CHECK(loaded.unk_50[d] == 10 + d);
        CHECK(loaded.m_seeds[d] == 20 + d);
        CHECK(loaded.m_questLog.m_act[d] == 30 + d);
        CHECK(loaded.m_volatileQuestLog.m_act[d] == 30 + d);
    }
    CHECK(in.pos == expected.size());
}

void TestCurrentFaery() {
    PlayerSavegame save;
    for (int d = 0; d < 3; ++d) {
        MakeFaeries(save, d, 0);
        save.m_currentFaery[d] = 7 + d;
    }
    ByteStream out;
    PlayerSavegame::__SaveCurrentFaery(&out, &save);
    std::vector<unsigned char> expected;
    for (int d = 0; d < 3; ++d) PutI32(expected, 7 + d);
    CHECK(out.bytes == expected);

    // A missing faery array stops the section after the earlier difficulties.
    delete[] save.m_faeries[1];
    save.m_faeries[1] = nullptr;
    ByteStream partial;
    PlayerSavegame::__SaveCurrentFaery(&partial, &save);
    CHECK(partial.bytes.size() == 4);

    PlayerSavegame loaded;
    for (int d = 0; d < 3; ++d) MakeFaeries(loaded, d, 0);
    ByteStream in;
    in.bytes = expected;
    PlayerSavegame::__LoadCurrentFaery(&in, &loaded);
    for (int d = 0; d < 3; ++d) CHECK(loaded.m_currentFaery[d] == 7 + d);
    FreeFaeries(save);
    FreeFaeries(loaded);
}

void TestFaeriesRoundTrip() {
    PlayerSavegame save;
    for (int d = 0; d < 3; ++d) {
        MakeFaeries(save, d, static_cast<std::uint16_t>(100 * d));
        save.m_currentFaery[d] = d;
    }
    ByteStream out;
    PlayerSavegame::__SaveFaeries(&out, &save);
    std::vector<unsigned char> expected;
    for (int d = 0; d < 3; ++d) {
        PutI32(expected, d);
        PutU32(expected, 5);
        for (int i = 0; i < 5; ++i) {
            PutU16(expected, static_cast<std::uint16_t>(100 * d + i));
            PutU8(expected, static_cast<std::uint8_t>(i % 2));
        }
    }
    CHECK(out.bytes == expected);

    PlayerSavegame loaded;
    for (int d = 0; d < 3; ++d) MakeFaeries(loaded, d, 0);
    ByteStream in;
    in.bytes = expected;
    PlayerSavegame::__LoadFaeries(&in, &loaded);
    CHECK(in.pos == expected.size());
    for (int d = 0; d < 3; ++d) {
        CHECK(loaded.m_currentFaery[d] == d);
        for (int i = 0; i < 5; ++i) {
            CHECK(loaded.m_faeries[d][i].level == 100 * d + i);
            CHECK(loaded.m_faeries[d][i].state == i % 2);
        }
    }

    // A record count that differs from m_faeryCount ends the section after the index word.
    PlayerSavegame mismatch;
    for (int d = 0; d < 3; ++d) MakeFaeries(mismatch, d, 0);
    mismatch.m_faeryCount[0] = 4;
    ByteStream bad;
    bad.bytes = expected;
    PlayerSavegame::__LoadFaeries(&bad, &mismatch);
    CHECK(bad.pos == 8);
    FreeFaeries(save);
    FreeFaeries(loaded);
    FreeFaeries(mismatch);
}

void TestInitFaeries() {
    PlayerSavegame save;
    save._InitFaeries();
    for (int d = 0; d < 3; ++d) {
        CHECK(save.m_faeries[d] != nullptr);
        CHECK(save.m_faeryCount[d] == 5);
        for (int i = 0; i < 5; ++i) {
            CHECK(save.m_faeries[d][i].level == 0);
            CHECK(save.m_faeries[d][i].state == 0);
        }
    }
    // An existing array is kept.
    save.m_faeries[0][0].level = 9;
    const PlayerSavegame::FaeryRecord* kept = save.m_faeries[0];
    save._InitFaeries();
    CHECK(save.m_faeries[0] == kept);
    CHECK(save.m_faeries[0][0].level == 9);
    FreeFaeries(save);
}

void TestLoadProperties() {
    // A null owner is an ASSERT on m_player; nothing is read.
    PlayerSavegame orphan;
    ByteStream none;
    none.bytes = {0, 0, 0, 0};
    PlayerSavegame::__LoadProperties(&none, &orphan);
    CHECK(none.pos == 0);

    PlayerSavegame save;
    save.m_player = FakePlayer();
    g_setProps.clear();
    g_setPropSheets.clear();
    std::vector<unsigned char> body;
    PutI32(body, 224);
    for (int i = 0; i < 224; ++i) PutI32(body, i * 10);
    PutU8(body, 1);  // unk_194 as a bool byte
    ByteStream in;
    in.bytes = body;
    PlayerSavegame::__LoadProperties(&in, &save);
    CHECK(in.pos == body.size());
    CHECK(g_setProps.size() == 112);  // the even ids have the saved bit in this stand-in
    for (std::size_t k = 0; k < g_setProps.size() && k < 112; ++k) {
        CHECK(g_setProps[k].first == static_cast<int>(2 * k));
        CHECK(g_setProps[k].second == static_cast<int>(2 * k) * 10);
    }
    if (!g_setPropSheets.empty()) {
        CHECK(g_setPropSheets[0] == static_cast<const void*>(&FakePlayer()->CharProperties::m_savedProps));
    }
    CHECK(save.unk_194 == true);

    // A count other than 224 ends the section before any property.
    PlayerSavegame other;
    other.m_player = FakePlayer();
    ByteStream wrong;
    wrong.bytes.clear();
    PutI32(wrong.bytes, 223);
    PlayerSavegame::__LoadProperties(&wrong, &other);
    CHECK(wrong.pos == 4);
    CHECK(other.unk_194 == false);
}

void TestQuestsSaveAndLoad() {
    PlayerSavegame save;
    ByteStream out;
    g_questSaveCalls.clear();
    save.m_saveMode = 1;
    PlayerSavegame::__SaveQuests(&out, &save);
    CHECK(g_questSaveCalls.size() == 1 && g_questSaveCalls[0] == &save.m_questLog);
    save.m_saveMode = 0;
    PlayerSavegame::__SaveQuests(&out, &save);
    CHECK(g_questSaveCalls.size() == 2 && g_questSaveCalls[1] == &save.m_volatileQuestLog);

    // Load: the quest log is loaded, the stream rewinds to the start, then the volatile log is loaded from there.
    g_questLoadCalls.clear();
    ByteStream in;
    in.pos = 3;
    in.bytes.assign(16, 0);
    PlayerSavegame::__LoadQuests(&in, &save);
    CHECK(g_questLoadCalls.size() == 2);
    CHECK(g_questLoadCalls.size() == 2 && g_questLoadCalls[0] == &save.m_questLog);
    CHECK(g_questLoadCalls.size() == 2 && g_questLoadCalls[1] == &save.m_volatileQuestLog);
    CHECK(in.seeks.size() == 1 && in.seeks[0] == 3);
    CHECK(in.pos == 8);
}

void TestLoadPlayerName() {
    PlayerSavegame save;
    ByteStream in;
    PutStr(in.bytes, "Bob");
    PlayerSavegame::__LoadPlayerName(&in, &save);
    CHECK(save.m_name == "Bob");
}

void TestPlayerClass() {
    SetNameTable(Arrays::CharacterTable::m_memberNames, {"knight", "mage"});
    PlayerSavegame save;
    save.m_playerClass = 1;
    ByteStream out;
    PlayerSavegame::__SavePlayerClass(&out, &save);
    std::vector<unsigned char> expected;
    PutStr(expected, "mage");
    CHECK(out.bytes == expected);

    save.m_playerClass = -1;
    ByteStream none;
    PlayerSavegame::__SavePlayerClass(&none, &save);
    CHECK(none.bytes.empty());

    PlayerSavegame loaded;
    ByteStream in;
    PutStr(in.bytes, "mage");
    PlayerSavegame::__LoadPlayerClass(&in, &loaded);
    CHECK(loaded.m_playerClass == 1);

    ByteStream unknown;
    PutStr(unknown.bytes, "wizard");
    PlayerSavegame::__LoadPlayerClass(&unknown, &loaded);
    CHECK(loaded.m_playerClass == -1);
}

void TestFastTravelList() {
    PlayerSavegame save;
    save.m_fastTravelUnlocked[0].set(0);
    save.m_fastTravelUnlocked[0].set(63);
    save.m_fastTravelUnlocked[1].set(5);
    ByteStream out;
    PlayerSavegame::__SaveFastTravelList(&out, &save);
    std::string first(64, '0');
    first[0] = '1';
    first[63] = '1';
    std::string second(64, '0');
    second[64 - 1 - 5] = '1';
    const std::string third(64, '0');
    std::vector<unsigned char> expected;
    PutStr(expected, first);
    PutStr(expected, second);
    PutStr(expected, third);
    CHECK(out.bytes == expected);

    PlayerSavegame loaded;
    ByteStream in;
    in.bytes = expected;
    PlayerSavegame::__LoadFastTravelList(&in, &loaded);
    CHECK(loaded.m_fastTravelUnlocked[0] == save.m_fastTravelUnlocked[0]);
    CHECK(loaded.m_fastTravelUnlocked[1] == save.m_fastTravelUnlocked[1]);
    CHECK(loaded.m_fastTravelUnlocked[2] == save.m_fastTravelUnlocked[2]);

    // A string longer than 64 characters ends the section before the difficulty is stored.
    PlayerSavegame longer;
    longer.m_fastTravelUnlocked[0].set(3);
    ByteStream tooLong;
    PutStr(tooLong.bytes, std::string(65, '1'));
    PlayerSavegame::__LoadFastTravelList(&tooLong, &longer);
    CHECK(longer.m_fastTravelUnlocked[0].test(3));
    CHECK(longer.m_fastTravelUnlocked[0].count() == 1);

    // Any other character than 0 or 1 is an error, as the bitset string reader is.
    PlayerSavegame bad;
    ByteStream badBits;
    PutStr(badBits.bytes, "10x0");
    bool threw = false;
    try {
        PlayerSavegame::__LoadFastTravelList(&badBits, &bad);
    } catch (const std::invalid_argument&) {
        threw = true;
    }
    CHECK(threw);
}

void TestInitSkills() {
    auto* list = reinterpret_cast<Structs::SkillList*>(g_skillListStorage);
    list->ListSize = 2;
    list->List = static_cast<void*>(g_skillIds);

    PlayerSavegame save;
    save.m_player = FakePlayer();
    save.m_skillSets[0][1] = 2;
    save._InitSkills();
    CHECK(save.m_skillsSize == 2);
    CHECK(save.m_skills != nullptr);
    CHECK(save.m_skills[0].id == 4 && save.m_skills[0].level == 0);
    CHECK(save.m_skills[1].id == 6 && save.m_skills[1].level == 0);
    CHECK(save.m_skillSets[0].empty());

    // Existing rows are kept, and the sets are left alone.
    save.m_skillSets[1][2] = 3;
    save._InitSkills();
    CHECK(save.m_skillsSize == 2);
    CHECK(save.m_skillSets[1].size() == 1);
    FreeFaeries(save);
}

void TestSaveSkills() {
    SetNameTable(Arrays::SkillTable::m_memberNames, {"strength", "agility", "magic"});
    PlayerSavegame save;
    ByteStream nullOut;
    PlayerSavegame::__SaveSkills(&nullOut, &save);
    CHECK(nullOut.bytes.empty());

    save.m_skillsSize = 2;
    save.m_skills = new PlayerSavegame::SkillRecord[2]();
    save.m_skills[0].id = 2;
    save.m_skills[0].level = 5;
    save.m_skills[1].id = 0;
    save.m_skills[1].level = 7;
    save.m_skillSets[0][3] = 4;
    ByteStream out;
    PlayerSavegame::__SaveSkills(&out, &save);
    std::vector<unsigned char> expected;
    PutI32(expected, 2);
    PutStr(expected, "magic");
    PutU16(expected, 5);
    PutStr(expected, "strength");
    PutU16(expected, 7);
    PutU32(expected, 1);
    PutI32(expected, 3);
    PutI32(expected, 4);
    PutU32(expected, 0);
    CHECK(out.bytes == expected);
    FreeFaeries(save);
}

void TestSaveInventory() {
    SetNameTable(Arrays::ItemTable::m_memberNames, {"sword", "bow", "ring"});
    SetNameTable(Arrays::ItemPowerTable::m_memberNames, {"fire", "ice"});

    // A null owner writes nothing.
    PlayerSavegame orphan;
    ByteStream none;
    PlayerSavegame::__SaveInventory(&none, &orphan);
    CHECK(none.bytes.empty());

    PlayerSavegame save;
    save.m_player = FakePlayer();
    ItemInventory* inventory = FakeInventory();
    inventory->m_gold = 77;
    g_equipSet = 1;
    using SlotList = std::vector<ItemInventory::ItemSlot*>;
    new (&inventory->m_items) SlotList();

    ItemInstance first(1, 3);  // "bow"
    first.m_value = 9;
    first.unk_68 = true;
    ItemInstance::PowerInfo power;
    power.m_powerId = 0;  // "fire"
    first.m_powers.push_back(power);
    ItemInstance second(2, 1);  // "ring"
    second.unk_68 = false;
    ItemInventory::ItemSlot slotA{&first, {2, -1}, {0, 0}};
    ItemInventory::ItemSlot slotB{&second, {-1, 0}, {0, 0}};
    inventory->m_items.push_back(&slotA);
    inventory->m_items.push_back(&slotB);

    ByteStream out;
    PlayerSavegame::__SaveInventory(&out, &save);
    std::vector<unsigned char> expected;
    PutU32(expected, 77);
    PutU32(expected, 1);
    PutU32(expected, 2);
    PutStr(expected, "bow");
    PutI32(expected, 2);
    PutI32(expected, -1);
    PutI32(expected, 3);
    PutI32(expected, 9);
    PutU8(expected, 1);
    PutU32(expected, 1);
    PutStr(expected, "fire");
    PutStr(expected, "ring");
    PutI32(expected, -1);
    PutI32(expected, 0);
    PutI32(expected, 1);
    PutI32(expected, 0);
    PutU8(expected, 0);
    PutU32(expected, 0);
    CHECK(out.bytes == expected);

    inventory->m_items.~SlotList();
}

}  // namespace

int main() {
    TestLoadUseSpawnPoint();
    TestLevelNameRoundTrip();
    TestCurrentFaery();
    TestFaeriesRoundTrip();
    TestInitFaeries();
    TestLoadProperties();
    TestQuestsSaveAndLoad();
    TestLoadPlayerName();
    TestPlayerClass();
    TestFastTravelList();
    TestInitSkills();
    TestSaveSkills();
    TestSaveInventory();
    if (g_shortReads != 0) {
        std::printf("FAIL: %d short stream reads\n", g_shortReads);
        ++g_failures;
    }
    if (g_failures == 0) {
        std::printf("g1-game-items-save-PlayerSavegame-56ccee-4 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-items-save-PlayerSavegame-56ccee-4 test: %d failure(s)\n", g_failures);
    return 1;
}
