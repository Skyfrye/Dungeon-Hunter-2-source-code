// Checks the StringManager bodies of batch g1-game-ui-StringManager-afda5d-1 that run without the engine: the constructor,
// the sheet lookups, the symbol search, the id decoding, parseColors, parse, parseEx and preloadPack.
//
// The link-only stubs below stand in for part 1 of the class (isPackSheetLoaded, getSheetName, getNumberOfStrings and
// the rest), for the Application and PyDataConstants singletons, and for the engine calls. The stubs keep the values the
// tests need: the PyDataConstants table, the sheet names and the stored list counts. Sheets are preset with setList.
// preloadPackSheet is not run (isPackSheetLoaded reports every sheet loaded), because its file system is not present.
#include <cctype>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "core-platform/lc_api.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vendor-gameswf/gameswf_utf_text.hpp"

// ---- Link-only definitions.
int gAssertLevel = 0;

namespace {
alignas(Application) unsigned char g_appStorage[sizeof(Application)] = {};
unsigned char g_pyStorage[16] = {};
}  // namespace

Application& ApplicationGetInstance() {
    return *reinterpret_cast<Application*>(g_appStorage);
}

void Application::GetTitleString(char* out, int size) {
    std::snprintf(out, static_cast<std::size_t>(size), "TITLE");
}

void Application::GetVersionString(char* out, int size, bool full) {
    (void)full;
    std::snprintf(out, static_cast<std::size_t>(size), "1.0");
}

// The constants the decoding and the separators need. Other keys read as 0.
int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    const std::string table = className;
    const std::string key = constantName;
    if (table == "StringConfig") {
        if (key == "PackIDShift") return 16;
        if (key == "PackIDMask") return 0xff;
        if (key == "StrIDShift") return 0;
        if (key == "StrIDMask") return 0xffff;
    }
    if (table == "StrID") {
        if (key == "GLOBAL_DECIMAL_SEPERATOR") return 0x00030000;   // sheet 3, string 0: "."
        if (key == "GLOBAL_THOUSANDS_SEPERATOR") return 0x00030001; // sheet 3, string 1: ","
        if (key == "GLOBAL_THOUSANDS_GROUP_AT") return 0x00030002;  // sheet 3, string 2: "1000"
    }
    if (table == "FontTextColors" && key == "one") return 0x00FF00;
    return 0;
}

bool DebugSwitches::GetSwitch(const std::string&) {
    return false;
}
void DebugSwitches::load() {}
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;

template <>
void StreamReader::readAs<unsigned short>(IStreamBase*, unsigned short*) {}
bool StreamReader::readStringEx(IStreamBase*, char*, std::uint64_t) {
    return false;
}

namespace gameswf {
// The passthrough the test needs: the text is copied unchanged.
void format_utf_text(const char* src, char* dst, int delim, bool flag) {
    (void)delim;
    (void)flag;
    std::strcpy(dst, src);
}
}  // namespace gameswf

int LC_API_STRCASECMP(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) return ca - cb;
        if (ca == '\0') return 0;
    }
}

// Part 1 of the class (not linked here). Every sheet reports as loaded, the sheet names are "items" and "quests", the
// symbol pack is 8, and a sheet's count is the stored list count.
StringManager::~StringManager() {}
bool StringManager::isPackSheetLoaded(unsigned int, unsigned int) const {
    return true;
}
void StringManager::unloadPackSheet(unsigned int, unsigned int) {}
int StringManager::getSheetFilename(unsigned int, unsigned int, char* buffer, int) const {
    buffer[0] = '\0';
    return 0;
}
int StringManager::addSpace() {
    return 0;
}
const char* StringManager::getSheetName(unsigned int sheetIdx) const {
    if (sheetIdx == 0) return "items";
    if (sheetIdx == 1) return "quests";
    return "";
}
int StringManager::getSymbolPack() const {
    return 8;
}
int StringManager::getNumberOfStrings(int sheetIdx, int packIdx) const {
    return m_list_count[packIdx][sheetIdx];
}

// ---- Test helpers.
namespace {

int g_failures = 0;

#define CHECK(cond)                                                              \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Stores a list of strings as a sheet of the given pack, with the NULL terminator the original keeps.
void setList(StringManager& sm, unsigned int pack, unsigned int sheet, const std::vector<std::string>& items) {
    char** list = static_cast<char**>(std::malloc(sizeof(char*) * (items.size() + 1)));
    for (std::size_t i = 0; i < items.size(); ++i) {
        list[i] = static_cast<char*>(std::malloc(items[i].size() + 1));
        std::strcpy(list[i], items[i].c_str());
    }
    list[items.size()] = nullptr;
    sm.m_lists[pack][sheet] = list;
    sm.m_list_count[pack][sheet] = static_cast<std::uint16_t>(items.size());
}

// A VarArgs reference for parseEx. The stubbed list never reads the object.
const VarArgs& emptyArgs() {
    alignas(8) static unsigned char storage[16] = {};
    return *reinterpret_cast<const VarArgs*>(storage);
}

void testConstructor() {
    StringManager sm;
    CHECK(sm.m_currentPack == -1);
    CHECK(sm.m_lists[0][0] == nullptr);
    CHECK(sm.m_lists[8][36] == nullptr);
    CHECK(sm.m_list_count[0][0] == 0);
    CHECK(sm.m_list_count[8][36] == 0);
}

void testLookups(StringManager& sm) {
    setList(sm, 0, 0, {"hello", "", "world"});
    CHECK(std::strcmp(sm.getStringIdx(0, 0, 0), "hello") == 0);
    CHECK(std::strcmp(sm.getStringIdx(0, 1, 0), "#!SNL!#") == 0);  // empty string
    CHECK(std::strcmp(sm.getStringIdx(0, 2, 0), "world") == 0);
    CHECK(std::strcmp(sm.getStringIdx(0, 5, 0), "#!WTF!#") == 0);  // past the count
    CHECK(std::strcmp(sm.getStringIdx(0, 2, 0xffffffffu), "world") == 0);  // pack -1 means pack 0

    sm.m_currentPack = 0;
    CHECK(std::strcmp(sm.getStringIdx(0, 0), "hello") == 0);
    CHECK(std::strcmp(sm.getStringIdx(0, 2), "world") == 0);
}

void testGetString(StringManager& sm) {
    setList(sm, 0, 2, {"a", "b"});
    sm.m_currentPack = 0;
    // The id packs the sheet in bits 16..23 and the string in bits 0..15 (StringConfig stub).
    CHECK(std::strcmp(sm.getString(0x00020001, 0), "b") == 0);
    CHECK(std::strcmp(sm.getString(0x00020000), "a") == 0);
    CHECK(sm.getString(-1) == nullptr);
}

void testFromSymbol(StringManager& sm) {
    setList(sm, 0, 0, {"first_in_pack0", "second_in_pack0"});
    setList(sm, 8, 0, {"ITEMS_FIRST", "items_second"});
    sm.m_currentPack = 0;
    CHECK(std::strcmp(sm.getStringFromSymbol("items_second"), "second_in_pack0") == 0);
    CHECK(std::strcmp(sm.getStringFromSymbol("ITEMS_FIRST"), "first_in_pack0") == 0);  // case-insensitive
    CHECK(sm.getStringFromSymbol("nothing_here") == nullptr);
    CHECK(sm.getStringFromSymbol("items_missing") == nullptr);
}

void testParseColors(StringManager& sm) {
    std::string text;
    CHECK(sm.parseColors(text, "a|b"));
    CHECK(text == std::string("a\x11" "b"));

    text.clear();
    CHECK(!sm.parseColors(text, "x^zy"));  // an unknown escape is dropped and reports no change
    CHECK(text == "xy");

    text.clear();
    CHECK(sm.parseColors(text, "^1A"));
    CHECK(text == "<font color=\"#00FF00\">A");

    text.clear();
    CHECK(sm.parseColors(text, "^n^r"));
    CHECK(text == "\n</font>");

    text.clear();
    CHECK(!sm.parseColors(text, "^^"));  // a kept escape reports no change
    CHECK(text == "^^");
}

void testParse(StringManager& sm) {
    std::string out;
    CHECK(sm.parse(out, "^d", 1234) == 1);
    CHECK(out == "1,234");

    out.clear();
    sm.parse(out, "^d", 999);
    CHECK(out == "999");

    out.clear();
    sm.parse(out, "^k", 2500);
    CHECK(out == "2");

    out.clear();
    sm.parse(out, "^p", 3);
    CHECK(out == "300");

    out.clear();
    sm.parse(out, "^s", "abc");
    CHECK(out == "abc");

    out.clear();
    sm.parse(out, "^s", static_cast<const char*>(nullptr));
    CHECK(out == "<null>");

    out.clear();
    sm.parse(out, "^f", 2.0);
    CHECK(out == "2");

    out.clear();
    sm.parse(out, "^f", 1000.0);
    CHECK(out == "1,000");

    out.clear();
    sm.parse(out, "^f", 2.5);
    CHECK(out == "2.50");

    out.clear();
    sm.parse(out, "^t");
    CHECK(out == "TITLE");

    out.clear();
    CHECK(sm.parse(out, "a|b") == 1);
    CHECK(out == std::string("a\x11" "b"));

    out.clear();
    CHECK(sm.parse(out, "plain") == 0);
    CHECK(out == "plain");
}

// The $ escape: the spec "$ab" is matched against the replacement, and once the replacement is used up the third
// argument (a plain char pointer) is written. The pending "$ab" is dropped in that case, as in the listing.
void testDollar(StringManager& sm) {
    std::string out;
    CHECK(sm.parse(out, "^$", "$ab", "ab", "VALUE") == 1);
    CHECK(out == "VALUE");

    out.clear();
    sm.parse(out, "L^$R", "$ab", "ab", "VALUE");
    CHECK(out == "LVALUER");

    // A spec that does not match writes its own characters and never reads the third argument.
    out.clear();
    sm.parse(out, "^$", "$ab", "ax", "VALUE");
    CHECK(out == "$ab");
}

void testParseEx(StringManager& sm) {
    std::string out;
    // With no arguments, the argument specifiers write nothing and the newline and text stay.
    CHECK(sm.parseEx(out, "a^d b^n", emptyArgs()) == 0);
    CHECK(out == "a b\n");

    out.clear();
    CHECK(sm.parseEx(out, "x|", emptyArgs()) == 1);
    CHECK(out == std::string("x\x11"));

    out.clear();
    CHECK(sm.parseEx(out, "", emptyArgs()) == 0);
    CHECK(out.empty());
}

void testPreloadPack(StringManager& sm) {
    CHECK(sm.preloadPack(0));
    CHECK(sm.preloadPack(9));  // out of range is asserted (silent at level 0) and still returns 1
}

}  // namespace

int main() {
    // The PyDataConstants pointer the lookups read (Application::m_pyDataConstants, +0x2c).
    ApplicationGetInstance().m_pyDataConstants = reinterpret_cast<PyDataConstants*>(g_pyStorage);

    testConstructor();
    StringManager sm;
    testLookups(sm);
    testGetString(sm);
    testFromSymbol(sm);
    setList(sm, 0, 3, {".", ",", "1000"});  // the separators: sheet 3 of pack 0
    sm.m_currentPack = 0;
    testParseColors(sm);
    testParse(sm);
    testDollar(sm);
    testParseEx(sm);
    testPreloadPack(sm);

    if (g_failures == 0) {
        std::printf("all StringManager checks passed\n");
        return 0;
    }
    std::fprintf(stderr, "%d check(s) failed\n", g_failures);
    return 1;
}
