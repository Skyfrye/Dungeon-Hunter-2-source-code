// Checks the StringManager bodies of batch g1-game-ui-StringManager-afda5d-0 without the engine. Only this test and the
// batch source are linked. The engine parts they reach are supplied here: gAssertLevel, the storage of
// Arrays::StrID_Languages (a test-owned table of Structs::LangSheetList records) and the out-of-line virtual members of
// the two LangSheet record classes (no-op bodies, the tests fill the tables directly). CustomFree is the inline
// definition in pydata-accessors' deps/stream_reader.hpp (std::free). Not covered: the assert paths (gAssertLevel is 0).
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "dh2/StringManager.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_1.hpp"

int gAssertLevel = 0;
std::uint8_t* Arrays::StrID_Languages::members = nullptr;

Structs::LangSheetList::~LangSheetList() {}
void Structs::LangSheetList::finalize() {}
void Structs::LangSheetList::read(IStreamBase*) {}
Structs::LangSheet::~LangSheet() {}
void Structs::LangSheet::finalize() {}
void Structs::LangSheet::read(IStreamBase*) {}

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// A null-terminated string list of `count` copies of the words, as the original's sheets hold. The strings and the
// array are heap blocks, so the StringManager's CustomFree (std::free) releases them.
char** MakeList(const char* const* words, int count) {
    char** list = static_cast<char**>(std::malloc(sizeof(char*) * static_cast<std::size_t>(count + 1)));
    for (int i = 0; i < count; ++i) {
        const std::size_t n = std::strlen(words[i]) + 1;
        list[i] = static_cast<char*>(std::malloc(n));
        std::memcpy(list[i], words[i], n);
    }
    list[count] = nullptr;
    return list;
}

// Loads sheet sheetIdx of pack packIdx with `count` strings, and sets its count word as the original's loader does.
void LoadSheet(StringManager& sm, unsigned int packIdx, unsigned int sheetIdx, int count) {
    static const char* const kWords[] = {"alpha", "beta", "gamma"};
    sm.m_lists[packIdx][sheetIdx] = MakeList(kWords, count);
    sm.m_list_count[packIdx][sheetIdx] = static_cast<std::uint16_t>(count);
}

void TestTranslationTables() {
    const int igp[8] = {0, 1, 2, 3, 5, 0, 0, 4};
    const int gllive[8] = {0, 1, 2, 3, 5, 6, 7, 4};
    for (int language = 0; language < 8; ++language) {
        Check(StringManager::TranslateGameLangageToIGP(language) == igp[language], "IGP table entry");
        Check(StringManager::TranslateGameLanguageToGLLive(language) == gllive[language], "GLLive table entry");
    }
    Check(StringManager::TranslateGameLangageToIGP(8) == 0, "IGP past the table is 0");
    Check(StringManager::TranslateGameLangageToIGP(-1) == 0, "IGP of -1 is 0");
    Check(StringManager::TranslateGameLanguageToGLLive(8) == 0, "GLLive past the table is 0");
    Check(StringManager::TranslateGameLanguageToGLLive(-1) == 0, "GLLive of -1 is 0");
}

void TestAddSpaceAndSymbolPack() {
    StringManager sm;
    Check(sm.m_currentPack == -1, "constructor sets m_currentPack to -1");
    Check(sm.addSpace() == 0, "addSpace with no pack is 0");
    const int space[8] = {0, 0, 0, 0, 1, 1, 1, 0};
    for (int pack = 0; pack < 8; ++pack) {
        sm.m_currentPack = pack;
        Check(sm.addSpace() == space[pack], "addSpace per language");
    }
    sm.m_currentPack = 8;
    Check(sm.addSpace() == 0, "addSpace of the symbol pack is 0");
    Check(sm.getSymbolPack() == 8, "getSymbolPack is 8");
}

void TestConstructorClearsTables() {
    StringManager sm;
    bool allNull = true;
    bool allZero = true;
    for (unsigned int pack = 0; pack < 9; ++pack) {
        for (unsigned int sheet = 0; sheet < 37; ++sheet) {
            allNull = allNull && sm.m_lists[pack][sheet] == nullptr;
            allZero = allZero && sm.m_list_count[pack][sheet] == 0;
        }
    }
    Check(allNull, "constructor leaves every sheet list null");
    Check(allZero, "constructor leaves every count zero");
    Check(sm.getNumberOfLoadedPack() == 0, "no pack is loaded after construction");
}

void TestFormatForMulti() {
    Check(StringManager::formatForMulti("hello", false) == "hello", "ASCII text is returned unchanged");
    Check(StringManager::formatForMulti("hello", true) == "hello", "ASCII text ignores multiline");
    Check(StringManager::formatForMulti(std::string(), true).empty(), "empty text stays empty");
    Check(StringManager::formatForMulti("a\xdf", false) == "a\xdf", "0xdf is not a wide byte");

    const std::string wide("\xe4\xb8\xad", 3);
    Check(StringManager::formatForMulti(wide, false) == "<font face='wqy-zenhei'>" + wide + "</font>",
          "wide text is wrapped without newlines");
    Check(StringManager::formatForMulti(wide, true) == "\n<font face='wqy-zenhei'>" + wide + "</font>\n",
          "wide text with multiline gets newlines");

    // The wide byte after a NUL still triggers the wrap, and the tag body stops at the NUL (C string %s).
    const std::string afterNul("a\0\xe4", 3);
    Check(StringManager::formatForMulti(afterNul, false) == "<font face='wqy-zenhei'>a</font>",
          "a NUL cuts the wrapped body");
    // A wide byte at index 0 wraps directly.
    const std::string lead("\xe0x", 2);
    Check(StringManager::formatForMulti(lead, false) == "<font face='wqy-zenhei'>\xe0x</font>",
          "a leading wide byte wraps");
}

void TestLoadedSheetsAndCounts() {
    StringManager sm;
    LoadSheet(sm, 2, 5, 2);
    Check(sm.isPackSheetLoaded(2, 5), "loaded sheet is reported");
    Check(!sm.isPackSheetLoaded(2, 4), "neighbour sheet is not loaded");
    Check(sm.isPackLoaded(2), "pack with a loaded sheet is loaded");
    Check(!sm.isPackLoaded(3), "empty pack is not loaded");
    Check(sm.getNumberOfLoadedPack() == 1, "one pack is loaded");
    Check(sm.getNumberOfStrings(5, 2) == 2, "count of sheet 5 in pack 2");
    Check(sm.getNumberOfStrings(4, 2) == 0, "count of an empty sheet is 0");

    sm.m_currentPack = 2;
    Check(sm.getNumberOfStrings(5) == 2, "count in the current pack");
    sm.m_currentPack = -1;
    Check(sm.getNumberOfStrings(5) == 0, "no current pack gives 0 (partial case)");

    sm.unloadPackSheet(2, 5);
    Check(sm.m_lists[2][5] == nullptr, "unloadPackSheet clears the list");
    Check(sm.m_list_count[2][5] == 0, "unloadPackSheet clears the count");
    Check(!sm.isPackSheetLoaded(2, 5), "unloaded sheet is not loaded");
    Check(sm.getNumberOfLoadedPack() == 0, "no pack is loaded after the sheet is unloaded");
    sm.unloadPackSheet(2, 5);  // unloading an empty sheet is a no-op
    Check(!sm.isPackSheetLoaded(2, 5), "second unload leaves the sheet empty");
}

void TestUnloadPack() {
    StringManager sm;
    LoadSheet(sm, 4, 0, 1);
    LoadSheet(sm, 4, 36, 3);
    Check(sm.isPackLoaded(4), "pack 4 is loaded before unloadPack");
    sm.unloadPack(4);
    Check(!sm.isPackLoaded(4), "unloadPack clears every sheet of the pack");
    Check(sm.m_lists[4][36] == nullptr && sm.m_list_count[4][36] == 0, "last sheet of the pack is cleared");
    sm.unloadPack(0xffffffffu);  // the sentinel does nothing
    Check(sm.getNumberOfLoadedPack() == 0, "sentinel unload changes nothing");
}

void TestSwitchPack() {
    StringManager sm;
    Check(sm.switchPack(3, true), "first switch changes the pack");
    Check(sm.m_currentPack == 3, "switch sets the current pack");
    Check(!sm.switchPack(3, true), "switching to the current pack changes nothing");
    Check(!sm.switchPack(3, false), "switching to the current pack without unload changes nothing");

    LoadSheet(sm, 3, 0, 1);
    Check(sm.switchPack(5, false), "switch without unload changes the pack");
    Check(sm.m_currentPack == 5, "current pack is 5");
    Check(sm.isPackLoaded(3), "switch without unload keeps the old pack loaded");
    Check(!sm.switchPack(5, true), "switch to the same pack with unload changes nothing");

    Check(sm.switchPack(6, true), "switch with unload changes the pack");
    Check(sm.m_currentPack == 6, "current pack is 6");
    Check(sm.isPackLoaded(3), "pack 3 is not current, so it stays loaded");

    LoadSheet(sm, 6, 1, 2);
    Check(sm.switchPack(7, true), "switch away from a loaded pack");
    Check(!sm.isPackLoaded(6), "switch with unload unloads the old current pack");
    Check(sm.m_currentPack == 7, "current pack is 7");

    sm.m_currentPack = -1;
    Check(sm.switchPack(0, true), "switch from no pack with unload");
    Check(sm.m_currentPack == 0, "current pack is 0");
}

void TestUnloadAllPacks() {
    StringManager sm;
    LoadSheet(sm, 0, 0, 1);
    LoadSheet(sm, 8, 2, 2);
    Check(sm.getNumberOfLoadedPack() == 2, "two packs are loaded");
    sm.unloadAllPacks();
    Check(sm.getNumberOfLoadedPack() == 0, "unloadAllPacks clears every pack");
}

void TestDestructorUnloadsPacks() {
    {
        StringManager sm;
        LoadSheet(sm, 1, 1, 3);
        LoadSheet(sm, 7, 35, 1);
    }  // the destructor unloads packs 0 to 8
    StringManager* heap = new StringManager();
    LoadSheet(*heap, 8, 0, 2);
    delete heap;  // the deleting destructor runs ~StringManager, then frees the object
    Check(true, "destructors run without faults");
}

// Lookups through the Arrays::StrID_Languages table. Each pack record points at 37 LangSheet records; a sheet's file
// name is its m_w2 word and its display name is m_w4.
void TestSheetNamesAndFilenames() {
    static Structs::LangSheetList packs[9];
    static Structs::LangSheet sheets0[37];
    static Structs::LangSheet sheets1[37];
    static char file0[] = "menu/main.txt";
    static char name0[] = "NAME0";
    static char name1[] = "NAME1";
    sheets0[5].filename = file0;
    sheets0[5].name = name0;
    sheets1[5].name = name1;
    packs[0].list = sheets0;
    packs[1].list = sheets1;
    Arrays::StrID_Languages::members = reinterpret_cast<std::uint8_t*>(packs);

    StringManager sm;
    sm.m_currentPack = 1;
    Check(std::strcmp(sm.getSheetName(5), "NAME1") == 0, "sheet name comes from the current pack");
    sm.m_currentPack = -1;
    Check(std::strcmp(sm.getSheetName(5), "NAME0") == 0, "no current pack reads pack 0");

    char buffer[64];
    const int written = sm.getSheetFilename(0, 5, buffer, static_cast<int>(sizeof buffer));
    Check(std::strcmp(buffer, "text/menu/main.txt") == 0, "sheet filename is text/<file>");
    Check(written == static_cast<int>(std::strlen("text/menu/main.txt")), "filename count matches sprintf");

    Arrays::StrID_Languages::members = nullptr;
}

}  // namespace

int main() {
    TestTranslationTables();
    TestAddSpaceAndSymbolPack();
    TestConstructorClearsTables();
    TestFormatForMulti();
    TestLoadedSheetsAndCounts();
    TestUnloadPack();
    TestSwitchPack();
    TestUnloadAllPacks();
    TestDestructorUnloadsPacks();
    TestSheetNamesAndFilenames();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("StringManager tests passed\n");
    return 0;
}
