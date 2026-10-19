// Test for the SavegameManager option batch (game-items-save/src/g1-game-items-save-SavegameManager-ca9830-1.cpp).
//   bash tools/trackb/check_tu.sh --test <this file> <batch source>
// Returns non-zero when a check fails.
//
// The other batches are not linked. The SavegameManager and Savegame constructors and destructors, the Application
// and PlayerManager objects, Character::LevelUp, ItemInventory::AddGold, the section loaders, setLanguage, and the
// StreamReader specializations are small stand-ins here. Objects that have a non-trivial constructor elsewhere are
// raw storage, and only the members the batch reads are written. The stand-ins are simple on purpose: the checks cover
// the batch source's control flow, not the stand-ins. The option rows are Structs::GameOption bytes read through the
// m_w names, as the batch does. Nothing here checks _initSettings's option fill, which is PARTIAL.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "dh2/global/Globals.hpp"
#include "pydata-accessors/structs_records.hpp"

namespace {

int g_fail = 0;

#define CHECK(cond)                                                                 \
    do {                                                                            \
        if (!(cond)) {                                                              \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);             \
            ++g_fail;                                                               \
        }                                                                           \
    } while (0)

// Stand-in state.
int g_deviceLanguage = 3;
int g_loadLangCalls = 0;
int g_loadTutorialsCalls = 0;
int g_setLanguageCalls = 0;
int g_lastSetLanguage = -99;
int g_savegameCtorCalls = 0;
int g_savegameDtorCalls = 0;
int g_levelUpCalls = 0;
int g_levelUpArg = -99;
const void* g_levelUpThis = nullptr;
int g_addGoldCalls = 0;
int g_addGoldArg = -99;
const void* g_addGoldThis = nullptr;

// Raw storage for objects this test does not construct.
alignas(Application) unsigned char g_appStorage[sizeof(Application)] = {};
alignas(PlayerManager) unsigned char g_playerManagerStorage[sizeof(PlayerManager)] = {};
alignas(PlayerInfo) unsigned char g_playerInfoStorage[sizeof(PlayerInfo)] = {};
alignas(Character) unsigned char g_characterStorage[sizeof(Character)] = {};
alignas(Structs::GameOption) unsigned char g_rows[4][sizeof(Structs::GameOption)] = {};

Structs::GameOption* RowAt(int id) { return reinterpret_cast<Structs::GameOption*>(g_rows[id]); }
Character* FakeCharacter() { return reinterpret_cast<Character*>(g_characterStorage); }
PlayerInfo* FakePlayerInfo() { return reinterpret_cast<PlayerInfo*>(g_playerInfoStorage); }

// Option row: Min at m_w4 (+0x10), Max at m_w3 (+0x0c), Type at m_w6 (+0x18), Default at m_w1 (+0x04).
void SetRow(int id, int min, int max, int type) {
    Structs::GameOption* r = RowAt(id);
    r->Default = min;
    r->Max = max;
    r->Min = min;
    r->Type = type;
}

void AddOption(SavegameManager& m, const char* name, int row, int value) {
    auto& opt = m.m_options[name];
    opt.m_definition = RowAt(row);
    opt.m_value = value;
}

int OptionValue(const SavegameManager& m, const char* name) {
    return m.m_options.find(name)->second.m_value;
}

// Fake stream: little-endian words and length-prefixed strings.
struct FakeStream {
    std::vector<unsigned char> bytes;
    std::size_t pos = 0;
};
FakeStream g_stream;
FakeStream* AsFake(IStreamBase* s) { return reinterpret_cast<FakeStream*>(s); }
IStreamBase* AsStream(FakeStream* s) { return reinterpret_cast<IStreamBase*>(s); }

void PutU32(FakeStream& s, std::uint32_t v) {
    for (int i = 0; i < 4; ++i) s.bytes.push_back(static_cast<unsigned char>(v >> (8 * i)));
}
void PutString(FakeStream& s, const char* text) {
    PutU32(s, static_cast<std::uint32_t>(std::strlen(text)));
    for (const char* p = text; *p != '\0'; ++p) s.bytes.push_back(static_cast<unsigned char>(*p));
}

std::uint32_t TakeU32(FakeStream* s) {
    std::uint32_t v = 0;
    for (int i = 0; i < 4; ++i) v |= static_cast<std::uint32_t>(s->bytes[s->pos++]) << (8 * i);
    return v;
}

}  // namespace

// ---- Stand-ins for the other batches ----------------------------------------------------------------------------

SavegameManager::SavegameManager() : m_settings(nullptr), m_lastSlot(-1), unk_0c(0), m_optionsLoaded(false),
                                     m_saveBlocked(false), m_language(0), m_autoOrientation(false) {
    for (auto& t : m_tutorials) t = 0;
}

SavegameManager::~SavegameManager() = default;

int SavegameManager::setLanguage(int language) {
    ++g_setLanguageCalls;
    g_lastSetLanguage = language;
    return 1;  // the original returns StringManager::switchPack's bool; the stubs report success
}

int SavegameManager::__loadLanguageAndOrientation(IStreamBase* stream, void* user) {
    (void)stream;
    (void)user;
    ++g_loadLangCalls;
    return 0;
}

int SavegameManager::__loadTutorials(IStreamBase* stream, void* user) {
    (void)stream;
    (void)user;
    ++g_loadTutorialsCalls;
    return 0;
}

Savegame::Savegame(const char* name, bool flag) : m_stream(AsStream(&g_stream)) {
    (void)name;
    (void)flag;
    ++g_savegameCtorCalls;
}

Savegame::~Savegame() { ++g_savegameDtorCalls; }

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }

int Application::GetDeviceLanguage() { return g_deviceLanguage; }

PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    (void)localId;
    (void)flag;
    return FakePlayerInfo();
}

void Character::LevelUp(int levels) {
    ++g_levelUpCalls;
    g_levelUpArg = levels;
    g_levelUpThis = this;
}

void ItemInventory::AddGold(int amount) {
    ++g_addGoldCalls;
    g_addGoldArg = amount;
    g_addGoldThis = this;
}

template <>
void StreamReader::readAs<unsigned int>(IStreamBase* stream, unsigned int* value) {
    *value = static_cast<unsigned int>(TakeU32(AsFake(stream)));
}

template <>
void StreamReader::readAs<int>(IStreamBase* stream, int* value) {
    *value = static_cast<int>(TakeU32(AsFake(stream)));
}

// Length word, then the bytes. False when the stream ends before the string does; the position stays put then.
bool StreamReader::readString(IStreamBase* stream, char* dst, std::uint64_t len) {
    FakeStream* s = AsFake(stream);
    const std::size_t p = s->pos;
    if (p + 4 > s->bytes.size()) return false;
    const std::uint32_t length = static_cast<std::uint32_t>(s->bytes[p]) |
                                 (static_cast<std::uint32_t>(s->bytes[p + 1]) << 8) |
                                 (static_cast<std::uint32_t>(s->bytes[p + 2]) << 16) |
                                 (static_cast<std::uint32_t>(s->bytes[p + 3]) << 24);
    if (p + 4 + length > s->bytes.size()) return false;
    s->pos = p + 4;
    const std::uint64_t keep = length < len - 1 ? length : len - 1;
    for (std::uint64_t i = 0; i < keep; ++i) dst[i] = static_cast<char>(s->bytes[s->pos + i]);
    dst[keep] = '\0';
    s->pos += length;
    return true;
}

// Option table of the test: row 0 is a toggle (type 0, 0..1), row 1 a two-state slider (type 2, Max 3, Min 0),
// row 2 a type 1 option (0..5), row 3 a toggle used by the cheat checks.
static PlayerManager* g_test_dword_99F76C = nullptr;
PlayerManager*& dword_99F76C = g_test_dword_99F76C;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
bool handle_cheats_inGame = false;

// ---- Checks ------------------------------------------------------------------------------------------------------

namespace {

void CheckQueries() {
    SavegameManager m;
    SetRow(0, 0, 1, 0);
    SetRow(1, 0, 3, 2);
    SetRow(2, 0, 5, 1);
    SetRow(3, 0, 1, 0);

    // Missing names.
    CHECK(!m.hasOption("Nope"));
    CHECK(m.getOption("Nope") == -1);
    CHECK(!m.isOptionAtMin("Nope"));
    CHECK(!m.isOptionAtMax("Nope"));
    CHECK(!m.isOptionToggled("Nope"));

    // Type 0 toggle at Min.
    AddOption(m, "Sound", 0, 0);
    CHECK(m.hasOption("Sound"));
    CHECK(m.getOption("Sound") == 0);
    CHECK(m.isOptionAtMin("Sound"));
    CHECK(!m.isOptionAtMax("Sound"));
    CHECK(!m.isOptionToggled("Sound"));

    // Type 0 toggle at Max.
    AddOption(m, "Light", 3, 1);
    CHECK(m.isOptionAtMax("Light"));
    CHECK(m.isOptionToggled("Light"));
    CHECK(!m.isOptionAtMin("Light"));

    // Type 2 compares with Max - 1 (Max 3, so 2 is at max).
    AddOption(m, "Slider", 1, 2);
    CHECK(m.isOptionAtMax("Slider"));
    CHECK(!m.isOptionToggled("Slider"));  // type 2 is never toggled
    AddOption(m, "Slider", 1, 3);
    CHECK(!m.isOptionAtMax("Slider"));

    // Type 1: at max when the value equals Max (5), toggled needs type 0.
    AddOption(m, "Volume", 2, 5);
    CHECK(m.isOptionAtMax("Volume"));
    CHECK(!m.isOptionToggled("Volume"));
    CHECK(!m.isOptionAtMin("Volume"));
    AddOption(m, "Volume", 2, 0);
    CHECK(m.isOptionAtMin("Volume"));
}

void CheckToggle() {
    SavegameManager m;
    SetRow(0, 0, 1, 0);
    SetRow(2, 0, 5, 1);
    AddOption(m, "Sound", 0, 0);
    m.toggleOption("Sound");                  // Min -> Max
    CHECK(OptionValue(m, "Sound") == 1);
    m.toggleOption("Sound");                  // Max -> Min (not Min, so Min)
    CHECK(OptionValue(m, "Sound") == 0);
    AddOption(m, "Sound", 0, 7);              // neither Min nor Max: becomes Min
    m.toggleOption("Sound");
    CHECK(OptionValue(m, "Sound") == 0);

    AddOption(m, "Volume", 2, 2);             // type 1: never toggled
    m.toggleOption("Volume");
    CHECK(OptionValue(m, "Volume") == 2);

    m.toggleOption("Missing");                // no entry, no change, no crash
    CHECK(!m.hasOption("Missing"));
}

void CheckAutoOrientationAndLanguage() {
    SavegameManager m;
    m.m_autoOrientation = true;
    CHECK(m.getAutoReorientation() == 1);     // no option: the fallback byte
    m.m_autoOrientation = false;
    CHECK(m.getAutoReorientation() == 0);
    SetRow(0, 0, 1, 0);
    AddOption(m, "AutoOrientation", 0, 0);
    m.m_autoOrientation = true;
    CHECK(m.getAutoReorientation() == 0);     // the option wins

    m.m_language = 5;
    CHECK(m.getLanguage() == 5);              // no option: m_language
    AddOption(m, "Language", 2, 2);
    CHECK(m.getLanguage() == 2);
    AddOption(m, "Language", 2, -1);
    CHECK(m.getLanguage() == g_deviceLanguage);  // -1 means the device language
}

void CheckCheats() {
    SavegameManager m;
    SetRow(0, 0, 1, 0);
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
    FakePlayerInfo()->unk_660 = FakeCharacter();

    // Cheats off: no call.
    handle_cheats_inGame = false;
    AddOption(m, "LevelUp", 0, 0);
    m.toggleOption("LevelUp");
    CHECK(g_levelUpCalls == 0);
    CHECK(OptionValue(m, "LevelUp") == 1);    // the toggle still happens

    // LevelUp: the local player's character levels up by 0 (the arg), once per toggle.
    handle_cheats_inGame = true;
    AddOption(m, "LevelUp", 0, 0);
    m.toggleOption("LevelUp");
    CHECK(g_levelUpCalls == 1);
    CHECK(g_levelUpArg == 0);
    CHECK(g_levelUpThis == FakeCharacter());

    // GiveGold: 0x200000 gold on the character's inventory subobject (Character +0x37c).
    AddOption(m, "GiveGold", 0, 0);
    m.toggleOption("GiveGold");
    CHECK(g_addGoldCalls == 1);
    CHECK(g_addGoldArg == 0x200000);
    CHECK(g_addGoldThis == static_cast<ItemInventory*>(FakeCharacter()));
    CHECK(g_levelUpCalls == 1);

    // Another name: no cheat.
    AddOption(m, "Other", 0, 0);
    m.toggleOption("Other");
    CHECK(g_levelUpCalls == 1);
    CHECK(g_addGoldCalls == 1);

    // No character on the local player: nothing runs.
    FakePlayerInfo()->unk_660 = nullptr;
    AddOption(m, "GiveGold", 0, 0);
    m.toggleOption("GiveGold");
    CHECK(g_addGoldCalls == 1);
    AddOption(m, "LevelUp", 0, 0);
    m.toggleOption("LevelUp");
    CHECK(g_levelUpCalls == 1);

    handle_cheats_inGame = false;
    FakePlayerInfo()->unk_660 = FakeCharacter();
}

void CheckLoadOptions() {
    SavegameManager m;
    SetRow(0, 0, 1, 0);
    SetRow(2, 0, 5, 1);
    AddOption(m, "Sound", 0, 0);
    AddOption(m, "Volume", 2, 0);

    // Three entries; "Unknown" is read and dropped. The count word is 3.
    FakeStream s;
    PutU32(s, 3);
    PutString(s, "Sound");
    PutU32(s, 1);
    PutString(s, "Unknown");
    PutU32(s, 9);
    PutString(s, "Volume");
    PutU32(s, 4);
    g_stream = s;
    g_stream.pos = 0;
    SavegameManager::__loadOptions(AsStream(&g_stream), &m);
    CHECK(OptionValue(m, "Sound") == 1);
    CHECK(OptionValue(m, "Volume") == 4);
    CHECK(!m.hasOption("Unknown"));

    // A truncated stream stops at the first short read; earlier values stay.
    FakeStream t;
    PutU32(t, 2);
    PutString(t, "Sound");
    PutU32(t, 0);
    PutU32(t, 7);                       // second name length, but no bytes follow
    g_stream = t;
    g_stream.pos = 0;
    SavegameManager::__loadOptions(AsStream(&g_stream), &m);
    CHECK(OptionValue(m, "Sound") == 0);
    CHECK(OptionValue(m, "Volume") == 4);

    // A zero count reads nothing.
    FakeStream z;
    PutU32(z, 0);
    g_stream = z;
    g_stream.pos = 0;
    SavegameManager::__loadOptions(AsStream(&g_stream), &m);
    CHECK(OptionValue(m, "Volume") == 4);
}

void CheckInitSettingsTutorials() {
    SavegameManager m;
    m._initSettings(true);              // languageOnly: clear, no fill
    CHECK(m.m_options.empty());
    for (unsigned char flag : m.m_tutorials) CHECK(flag == 1);
}

void CheckLoadSettings() {
    SavegameManager m;
    ApplicationGetInstance().m_savegameManager = &m;

    // languageOnly: the language and orientation entries only, then the saved language is passed on.
    m.m_language = 4;
    g_loadLangCalls = 0;
    g_setLanguageCalls = 0;
    g_savegameCtorCalls = 0;
    m.loadSettings(true);
    CHECK(g_savegameCtorCalls == 1);
    CHECK(m.m_settings != nullptr);
    CHECK(g_loadLangCalls == 1);
    CHECK(g_setLanguageCalls == 1);
    CHECK(g_lastSetLanguage == 4);
    CHECK(!m.m_saveBlocked);

    // languageOnly with language -1: saving is blocked.
    m.m_language = -1;
    m.loadSettings(true);
    CHECK(m.m_saveBlocked);
    CHECK(g_savegameDtorCalls == 1);    // the previous settings file was deleted

    // Full load: options and tutorials, then the language. With no language option and -1 the save is blocked
    // and the language falls back to 0.
    SavegameManager full;
    ApplicationGetInstance().m_savegameManager = &full;
    full.m_language = -1;
    g_loadTutorialsCalls = 0;
    g_setLanguageCalls = 0;
    g_savegameDtorCalls = 0;
    g_stream = FakeStream();
    PutU32(g_stream, 0);                // no options in the stream
    g_stream.pos = 0;
    full.loadSettings(false);
    CHECK(g_loadTutorialsCalls == 1);
    CHECK(full.m_saveBlocked);
    CHECK(full.m_optionsLoaded);
    CHECK(g_lastSetLanguage == 0);
    CHECK(g_setLanguageCalls == 2);     // once before the load, once for the fallback
    CHECK(g_savegameDtorCalls == 0);    // the first settings file of this manager

    // Full load with a language: passed on with no save block.
    SavegameManager ok;
    ApplicationGetInstance().m_savegameManager = &ok;
    ok.m_language = 6;
    g_loadTutorialsCalls = 0;
    g_setLanguageCalls = 0;
    g_stream = FakeStream();
    PutU32(g_stream, 0);
    g_stream.pos = 0;
    ok.loadSettings(false);
    CHECK(!ok.m_saveBlocked);
    CHECK(ok.m_optionsLoaded);
    CHECK(g_lastSetLanguage == 6);
    CHECK(g_loadTutorialsCalls == 1);
}

}  // namespace

int main() {
    dword_99F76C = reinterpret_cast<PlayerManager*>(g_playerManagerStorage);
    CheckQueries();
    CheckToggle();
    CheckAutoOrientationAndLanguage();
    CheckCheats();
    CheckLoadOptions();
    CheckInitSettingsTutorials();
    CheckLoadSettings();
    if (g_fail != 0) {
        std::printf("%d check(s) failed\n", g_fail);
        return 1;
    }
    std::printf("SavegameManager ca9830-1: all checks passed\n");
    return 0;
}
