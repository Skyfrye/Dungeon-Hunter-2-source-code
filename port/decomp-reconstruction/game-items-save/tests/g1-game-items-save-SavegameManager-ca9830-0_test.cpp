// Test for g1-game-items-save-SavegameManager-ca9830-0 (part 1 of 2).
// Covers the constructor defaults, the option accessors on Structs::GameOption rows (decOption, incOption, setOption and
// the getOption* family), the Last Slot and Tutorials section callbacks, __saveOptions (the bytes written), and the entry
// loop of __loadLanguageAndOrientation, including the device-language mapping (nativeDetectPhoneLang is a test shim).
// Not covered: saveSettings (partial, no file system), setLanguage (walks ObjectManager's lists, which need
// dh2/ObjectListItem.hpp), and the destructor beyond construction and deletion.
//
// The link shims below stand in for code in other translation units: IStreamBase's destructor and non-pure virtuals,
// the StreamReader helpers (a little-endian format in the same layout as the game's), Structs::GameOption's virtuals,
// the Character and StringManager members, the Application string accessor, and the globals.
#include <algorithm>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/Character.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/savegame_manager_language.hpp"
#include "pydata-accessors/structs_records.hpp"

// ---- Link shims -----------------------------------------------------------------------------------------------------

IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

namespace Structs {
GameOption::~GameOption() {}
void GameOption::finalize() {}
void GameOption::read(IStreamBase*) {}
}  // namespace Structs

bool Character::IsMerchant() const { return false; }
void Character::UpdateInventoryLocalization() {}

bool StringManager::switchPack(unsigned int, bool) { return true; }
StringManager* ApplicationGetStringManager() { return nullptr; }

static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
// The phone language index nativeDetectPhoneLang() answers (the core-platform one calls into the JNI environment).
int g_phoneLang = 0;
extern "C" int nativeDetectPhoneLang() { return g_phoneLang; }

bool isKOREAN_BUILD = false;
bool JAPANESE_BUILD = false;

namespace {

// Little-endian 32-bit word, the file layout of the savegame.
bool ReadU32(IStreamBase* stream, std::uint32_t& out) {
    std::uint8_t b[4] = {};
    if (stream->read(b, 4) != 4) {
        return false;
    }
    out = static_cast<std::uint32_t>(b[0]) | (static_cast<std::uint32_t>(b[1]) << 8) |
          (static_cast<std::uint32_t>(b[2]) << 16) | (static_cast<std::uint32_t>(b[3]) << 24);
    return true;
}

void WriteU32(IStreamBase* stream, std::uint32_t value) {
    const std::uint8_t b[4] = {static_cast<std::uint8_t>(value), static_cast<std::uint8_t>(value >> 8),
                               static_cast<std::uint8_t>(value >> 16), static_cast<std::uint8_t>(value >> 24)};
    stream->write(b, 4);
}

// In-memory stream that reads and writes at its position and grows on write.
class MemoryStream final : public IStreamBase {
public:
    std::vector<std::uint8_t> bytes;
    std::size_t pos = 0;

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return true; }
    bool canWrite() const override { return true; }

    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        const std::size_t start = std::min(pos, bytes.size());
        const std::size_t count = std::min<std::size_t>(bytes.size() - start, static_cast<std::size_t>(n));
        if (count != 0) {
            std::memcpy(dst, bytes.data() + start, count);
        }
        return count;
    }
    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::uint64_t count = peek(dst, n);
        pos += static_cast<std::size_t>(count);
        return count;
    }
    std::uint64_t write(const void* src, std::uint64_t n) override {
        const std::size_t end = pos + static_cast<std::size_t>(n);
        if (bytes.size() < end) {
            bytes.resize(end);
        }
        if (n != 0) {
            std::memcpy(bytes.data() + pos, src, static_cast<std::size_t>(n));
        }
        pos = end;
        return n;
    }
    void seek(std::uint64_t p) override { pos = static_cast<std::size_t>(p); }
    std::uint64_t tell() const override { return pos; }
    void skip(std::uint64_t n) override { pos += static_cast<std::size_t>(n); }
};

void AppendU32(std::vector<std::uint8_t>& out, std::uint32_t value) {
    out.push_back(static_cast<std::uint8_t>(value));
    out.push_back(static_cast<std::uint8_t>(value >> 8));
    out.push_back(static_cast<std::uint8_t>(value >> 16));
    out.push_back(static_cast<std::uint8_t>(value >> 24));
}

void AppendString(std::vector<std::uint8_t>& out, const char* text) {
    const std::size_t len = std::strlen(text);
    AppendU32(out, static_cast<std::uint32_t>(len));
    out.insert(out.end(), text, text + len);
}

int g_failures = 0;

#define EXPECT(cond)                                                              \
    do {                                                                          \
        if (!(cond)) {                                                            \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);           \
            ++g_failures;                                                         \
        }                                                                         \
    } while (0)

}  // namespace

// StreamReader helpers used by the batch, with the same file layout as the game's.
bool StreamReader::readString(IStreamBase* stream, char* dst, std::uint64_t len) {
    std::uint32_t n = 0;
    if (!ReadU32(stream, n)) {
        return false;
    }
    const std::uint32_t keep = n < len - 1 ? n : static_cast<std::uint32_t>(len - 1);
    if (keep != 0 && stream->read(dst, keep) != keep) {
        return false;
    }
    if (n > keep) {
        stream->skip(n - keep);
    }
    dst[keep] = '\0';
    return true;
}

bool StreamReader::writeString(IStreamBase* stream, const char* src, std::uint64_t len) {
    WriteU32(stream, static_cast<std::uint32_t>(len));
    if (len != 0) {
        stream->write(src, len);
    }
    return true;
}

template <> void StreamReader::readAs<unsigned int>(IStreamBase* stream, unsigned int* value) {
    std::uint32_t v = 0;
    ReadU32(stream, v);
    *value = v;
}

template <> void StreamReader::readAs<int>(IStreamBase* stream, int* value) {
    std::uint32_t v = 0;
    ReadU32(stream, v);
    *value = static_cast<int>(v);
}

template <> void StreamReader::writeAs<unsigned int>(IStreamBase* stream, const unsigned int* value) {
    WriteU32(stream, *value);
}

template <> void StreamReader::writeAs<int>(IStreamBase* stream, const int* value) {
    WriteU32(stream, static_cast<std::uint32_t>(*value));
}

// ---- Tests ----------------------------------------------------------------------------------------------------------

namespace {

void TestConstructorDefaults() {
    SavegameManager fresh;
    EXPECT(fresh.m_settings == nullptr);
    EXPECT(fresh.m_lastSlot == -1);
    EXPECT(fresh.unk_0c == 0);
    EXPECT(!fresh.m_optionsLoaded);
    EXPECT(!fresh.m_saveBlocked);
    EXPECT(fresh.m_language == -1);
    EXPECT(!fresh.m_autoOrientation);
    EXPECT(fresh.m_options.empty());
}

void TestOptionAccessors() {
    // Rows as the file lays them out: m_w1 Default, m_w2 Label, m_w3 Max, m_w4 Min, m_w5 Step, m_w6 Type, m_w7 ValueStr.
    Structs::GameOption volume;
    volume.Default = 5;
    volume.Label = 10;
    volume.Max = 10;
    volume.Min = 0;
    volume.Step = 2;
    volume.Type = 1;
    volume.ValueStr = 3;

    Structs::GameOption slider;  // Type 2: the clamp is Max - 1 = 5.
    slider.Default = 0;
    slider.Label = 20;
    slider.Max = 6;
    slider.Min = 0;
    slider.Step = 1;
    slider.Type = 2;
    slider.ValueStr = 0;

    Structs::GameOption toggle;  // Type 0: inc and dec do nothing.
    toggle.Default = 1;
    toggle.Label = 30;
    toggle.Max = 1;
    toggle.Min = 0;
    toggle.Step = 1;
    toggle.Type = 0;
    toggle.ValueStr = 0;

    SavegameManager mgr;
    mgr.m_options.emplace("Volume", SavegameManager::_GameOption{&volume, 9});
    mgr.m_options.emplace("Slider", SavegameManager::_GameOption{&slider, 4});
    mgr.m_options.emplace("Toggle", SavegameManager::_GameOption{&toggle, 1});

    // decOption: value -= Step, clamped at Min.
    mgr.decOption("Volume");
    EXPECT(mgr.getOptionString("Volume") == 7 + 3);  // value 7, ValueStr 3
    mgr.decOption("Volume");
    mgr.decOption("Volume");
    mgr.decOption("Volume");
    mgr.decOption("Volume");  // 9 -> 7 -> 5 -> 3 -> 1 -> clamped at 0
    EXPECT(mgr.m_options.at("Volume").m_value == 0);

    // incOption: value += Step, clamped at Max.
    mgr.setOption("Volume", 8);
    mgr.incOption("Volume");
    EXPECT(mgr.m_options.at("Volume").m_value == 10);
    mgr.incOption("Volume");
    EXPECT(mgr.m_options.at("Volume").m_value == 10);

    // Type 2 clamps at Max - 1.
    mgr.incOption("Slider");
    EXPECT(mgr.m_options.at("Slider").m_value == 5);
    mgr.incOption("Slider");
    EXPECT(mgr.m_options.at("Slider").m_value == 5);
    mgr.decOption("Slider");
    EXPECT(mgr.m_options.at("Slider").m_value == 4);

    // Type 0 is left alone by both.
    mgr.incOption("Toggle");
    mgr.decOption("Toggle");
    EXPECT(mgr.m_options.at("Toggle").m_value == 1);

    // Missing names: no insert, no change.
    const std::size_t before = mgr.m_options.size();
    mgr.setOption("Missing", 4);
    mgr.incOption("Missing");
    mgr.decOption("Missing");
    EXPECT(mgr.m_options.size() == before);
    EXPECT(mgr.m_options.find("Missing") == mgr.m_options.end());

    // setOption stores the value.
    mgr.setOption("Volume", 7);
    EXPECT(mgr.m_options.at("Volume").m_value == 7);

    // Getters.
    EXPECT(mgr.getOptionType("Volume") == 1);
    EXPECT(mgr.getOptionType("Toggle") == 0);
    EXPECT(mgr.getOptionType("Missing") == -1);
    EXPECT(mgr.getOptionString("Volume") == 10);
    EXPECT(mgr.getOptionString("Missing") == -1);
    EXPECT(mgr.getOptionLabel("Volume") == 10);
    EXPECT(mgr.getOptionLabel("Missing") == -1);
    EXPECT(mgr.getOptionMax("Volume") == 10);
    EXPECT(mgr.getOptionMax("Slider") == 5);
    EXPECT(mgr.getOptionMax("Toggle") == 1);
    EXPECT(mgr.getOptionMax("Missing") == -1);
}

void TestLastSlotRoundTrip() {
    SavegameManager mgr;
    MemoryStream stream;
    mgr.m_lastSlot = 0x01020304;
    EXPECT(SavegameManager::__saveLastSlot(&stream, &mgr) == 4);
    EXPECT((stream.bytes == std::vector<std::uint8_t>{4, 3, 2, 1}));

    mgr.m_lastSlot = 0;
    stream.seek(0);
    EXPECT(SavegameManager::__loadLastSlot(&stream, &mgr) == 4);
    EXPECT(mgr.m_lastSlot == 0x01020304);
}

void TestTutorialsRoundTrip() {
    SavegameManager mgr;
    for (int i = 0; i < 14; ++i) {
        mgr.m_tutorials[i] = static_cast<std::uint8_t>(i + 1);
    }
    MemoryStream stream;
    EXPECT(SavegameManager::__saveTutorials(&stream, &mgr) == 14);
    EXPECT(stream.bytes.size() == 14);
    EXPECT(stream.bytes.front() == 1 && stream.bytes.back() == 14);

    SavegameManager loaded;
    stream.seek(0);
    EXPECT(SavegameManager::__loadTutorials(&stream, &loaded) == 14);
    EXPECT(std::memcmp(loaded.m_tutorials, mgr.m_tutorials, 14) == 0);
}

void TestSaveOptionsLayout() {
    Structs::GameOption volume;
    volume.Type = 1;
    Structs::GameOption toggle;
    toggle.Type = 0;

    SavegameManager mgr;
    mgr.m_options.emplace("Volume", SavegameManager::_GameOption{&volume, 7});
    mgr.m_options.emplace("Sound", SavegameManager::_GameOption{&toggle, 1});

    // Count, then the entries in key order: "Sound" sorts before "Volume".
    std::vector<std::uint8_t> expected;
    AppendU32(expected, 2);
    AppendString(expected, "Sound");
    AppendU32(expected, 1);
    AppendString(expected, "Volume");
    AppendU32(expected, 7);

    MemoryStream stream;
    EXPECT(SavegameManager::__saveOptions(&stream, &mgr) == 0);
    EXPECT(stream.bytes == expected);
}

void TestLoadLanguageAndOrientationStopsAfterBoth() {
    // Korean build: m_language is forced to 5 after the file entries are read.
    isKOREAN_BUILD = true;

    std::vector<std::uint8_t> bytes;
    AppendU32(bytes, 3);
    AppendString(bytes, "AutoOrientation");
    AppendU32(bytes, 1);
    AppendString(bytes, "Language");
    AppendU32(bytes, 2);
    AppendString(bytes, "Other");  // must not be read: both names were found
    AppendU32(bytes, 9);

    SavegameManager mgr;
    MemoryStream stream;
    stream.bytes = bytes;
    EXPECT(SavegameManager::__loadLanguageAndOrientation(&stream, &mgr) == 0);
    EXPECT(mgr.m_autoOrientation);
    EXPECT(mgr.m_language == 5);
    // Count (4) + AutoOrientation entry (4 + 15 + 4) + Language entry (4 + 8 + 4).
    EXPECT(stream.pos == 4 + 23 + 16);

    isKOREAN_BUILD = false;
}

void TestLoadLanguageAndOrientationEmptyAndJapanese() {
    // Count 0 reads nothing after the count.
    std::vector<std::uint8_t> none;
    AppendU32(none, 0);
    SavegameManager empty;
    MemoryStream emptyStream;
    emptyStream.bytes = none;
    SavegameManager::__loadLanguageAndOrientation(&emptyStream, &empty);
    EXPECT(emptyStream.pos == 4);
    EXPECT(!empty.m_autoOrientation);

    // Neither the Korean nor the Japanese build: the language comes from the phone language index
    // (1->2, 2->1, 3->7, 4->3, 5->4, 6->5, 7->6, anything else 0).
    const int expectedLanguage[9] = {0, 2, 1, 7, 3, 4, 5, 6, 0};
    for (int phone = 0; phone < 9; ++phone) {
        g_phoneLang = phone;
        SavegameManager probe;
        MemoryStream probeStream;
        probeStream.bytes = none;
        SavegameManager::__loadLanguageAndOrientation(&probeStream, &probe);
        EXPECT(probe.m_language == expectedLanguage[phone]);
    }
    g_phoneLang = 0;

    // A zero AutoOrientation value clears the flag; with Japanese set, m_language is 4.
    std::vector<std::uint8_t> zero;
    AppendU32(zero, 1);
    AppendString(zero, "AutoOrientation");
    AppendU32(zero, 0);
    SavegameManager mgr;
    mgr.m_autoOrientation = true;
    MemoryStream stream;
    stream.bytes = zero;
    JAPANESE_BUILD = true;
    SavegameManager::__loadLanguageAndOrientation(&stream, &mgr);
    EXPECT(!mgr.m_autoOrientation);
    EXPECT(mgr.m_language == 4);
    JAPANESE_BUILD = false;
}

void TestDestructorDeletesNothingWhenUnset() {
    SavegameManager* mgr = new SavegameManager();
    delete mgr;  // m_settings is null, so only the members are destroyed
}

}  // namespace

int main() {
    TestConstructorDefaults();
    TestOptionAccessors();
    TestLastSlotRoundTrip();
    TestTutorialsRoundTrip();
    TestSaveOptionsLayout();
    TestLoadLanguageAndOrientationStopsAfterBoth();
    TestLoadLanguageAndOrientationEmptyAndJapanese();
    TestDestructorDeletesNothingWhenUnset();
    if (g_failures == 0) {
        std::printf("g1-game-items-save-SavegameManager-ca9830-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-items-save-SavegameManager-ca9830-0 test: %d failure(s)\n", g_failures);
    return 1;
}
