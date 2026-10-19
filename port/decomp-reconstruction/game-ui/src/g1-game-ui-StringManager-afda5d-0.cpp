// StringManager bodies, batch g1-game-ui-StringManager-afda5d-0 (20 functions, part 1 of the class: from the
// translation tables up to the constructor at 0x507d10). The class is the game's localized text cache: nine packs
// (the 8 languages and the symbol pack 8), each with 37 sheets. The layout is in dh2/StringManager.hpp.
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the assembly where Hex-Rays was
// unclear. Offsets in comments are the original 32-bit ARM offsets; the code never uses them for addressing.
//
// Notes on the rebuild:
//  - The original ASSERT (gAssertLevel 2 stores to address 0, 1 prints to stderr) is StringManagerAssert below, as in
//    game-ui FlashAnimManager.
//  - The original memsets in the constructor are 32-bit sizes (0x534 and 0x29a bytes). The port clears the whole
//    arrays with sizeof.
//  - Hex-Rays reads the newline flag of formatForMulti from the by-value argument (+8). The assembly tests r3, which is
//    the bool parameter (CMP R3, #0 in the body), so the port uses the bool.
//  - The deleting destructor 0x507b54 is compiler-generated and is not written here.
//  - The C2 constructor 0x507d6c has the same body as C1 and is not in this batch.
//  - Arrays::StrID_Languages elements are host Structs::LangSheetList records, and their sheets are Structs::LangSheet
//    records (pydata-accessors, w7_structs_1.hpp). The original 12-byte and 20-byte strides are not used to step.
//
// getNumberOfStrings(int) deviates only where the original reads garbage (no pack switched in, see its comment).

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "dh2/StringManager.hpp"
// Arrays::StrID_Languages::members. Its deps/stream_reader.hpp also gives the inline CustomFree (std::free), the
// original's CustomFree(p). core-platform/memory.hpp is not included: its non-inline CustomFree clashes with that one.
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_1.hpp"   // Structs::LangSheetList, Structs::LangSheet

// Global assert level (libDungeonHunter2.so gAssertLevel, defined in core-platform/src/memory.cpp).
extern int gAssertLevel;

namespace {

const char kStringManagerSource[] = "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp";

// The original's ASSERT(expression) at line `line` of StringManager.cpp. Level 2 stops the program (the original stores
// to address 0 to crash); level 1 prints the failure and carries on; level 0 does nothing.
void StringManagerAssert(const char* expression, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expression, kStringManagerSource, line);
    }
}

// Data in libDungeonHunter2.so, one blob CSWTCH_5544 (IDA: CSWTCH.5544, CSWTCH.5547 and CSWTCH.5550):
//   +0x00  8 x int32, IGP language codes, read by TranslateGameLangageToIGP
//   +0x20  8 x int32, GLLive language codes, read by TranslateGameLanguageToGLLive (index this + 8)
//   +0x40  8 x uint8, the space width per pack, read by addSpace (index m_currentPack)
const int kLanguageIGP[8] = {0, 1, 2, 3, 5, 0, 0, 4};
const int kLanguageGLLive[8] = {0, 1, 2, 3, 5, 6, 7, 4};
const std::uint8_t kSpaceWidth[8] = {0, 0, 0, 0, 1, 1, 1, 0};

}  // namespace

// 0x5074b0 _ZN13StringManager25TranslateGameLangageToIGPEi
int StringManager::TranslateGameLangageToIGP(int language) {
    if (static_cast<unsigned int>(language) >= 8u) {
        return 0;
    }
    return kLanguageIGP[language];
}

// 0x5074dc _ZN13StringManager29TranslateGameLanguageToGLLiveEi
int StringManager::TranslateGameLanguageToGLLive(int language) {
    if (static_cast<unsigned int>(language) >= 8u) {
        return 0;
    }
    return kLanguageGLLive[language];
}

// 0x50750c _ZN13StringManager8addSpaceEv
// The space width of the current pack. Pack 8 (the symbol pack) and -1 (no pack) give 0.
int StringManager::addSpace() {
    const unsigned int packIdx = static_cast<unsigned int>(m_currentPack);
    if (packIdx <= 7) {
        return kSpaceWidth[packIdx];
    }
    return 0;
}

// 0x507534 _ZNK13StringManager18getNumberOfStringsEi
// The string count of sheet sheetIdx in the current pack. Its count word is m_list_count[m_currentPack][sheetIdx],
// read as a signed 16-bit value as the original does.
// The original does not check m_currentPack. With no pack switched in (-1) it reads a half-word of the
// m_lists pointer table, which is not a count, and that read is not reproduced. This port returns 0 for -1.
int StringManager::getNumberOfStrings(int sheetIdx) const {
    if (m_currentPack < 0) {
        return 0;
    }
    return static_cast<std::int16_t>(m_list_count[m_currentPack][sheetIdx]);
}

// 0x507550 _ZNK13StringManager18getNumberOfStringsEii
// The string count of sheet sheetIdx in pack packIdx (the original's a3). No range check, as in the original.
int StringManager::getNumberOfStrings(int sheetIdx, int packIdx) const {
    return static_cast<std::int16_t>(m_list_count[packIdx][sheetIdx]);
}

// 0x507568 _ZNK13StringManager12getSheetNameEj
// The name of sheet sheetIdx in the current pack. While no pack is current (-1) the original reads pack 0. The name is
// the m_w4 word (+0x10) of the sheet's LangSheet record.
const char* StringManager::getSheetName(unsigned int sheetIdx) const {
    const unsigned int packIdx = (m_currentPack == -1) ? 0u : static_cast<unsigned int>(m_currentPack);
    const auto* packs = static_cast<const Structs::LangSheetList*>(static_cast<const void*>(Arrays::StrID_Languages::members));
    const auto* sheets = static_cast<const Structs::LangSheet*>(packs[packIdx].list);
    return sheets[sheetIdx].name;
}

// 0x5075b0 _ZNK13StringManager13getSymbolPackEv
int StringManager::getSymbolPack() const {
    return 8;
}

// 0x507668 _ZNK13StringManager17isPackSheetLoadedEjj
// True when the sheet's string list is set (m_lists[packIdx][sheetIdx] is not null).
bool StringManager::isPackSheetLoaded(unsigned int packIdx, unsigned int sheetIdx) const {
    if (packIdx > 8) {
        StringManagerAssert("packId < NUMBER_OF_LANGUAGES", 211);
    }
    if (sheetIdx > 0x24) {
        StringManagerAssert("sheetId < NUMBER_OF_SHEETS", 213);
    }
    return m_lists[packIdx][sheetIdx] != nullptr;
}

// 0x507788 _ZN13StringManager15unloadPackSheetEjj
// The list is a null-terminated array of strings. The original frees each string from the first one up to the first
// null slot, clearing each slot as it goes, then frees the array. It then clears the list pointer (+0x08) and the
// count (+0x53c).
void StringManager::unloadPackSheet(unsigned int packIdx, unsigned int sheetIdx) {
    if (packIdx > 8) {
        StringManagerAssert("packId < NUMBER_OF_LANGUAGES", 412);
    }
    if (!isPackSheetLoaded(packIdx, sheetIdx)) {
        return;
    }
    char** list = m_lists[packIdx][sheetIdx];
    for (char** slot = list; *slot != nullptr; ++slot) {
        CustomFree(*slot);
        *slot = nullptr;
    }
    CustomFree(list);
    m_lists[packIdx][sheetIdx] = nullptr;
    m_list_count[packIdx][sheetIdx] = 0;
}

// 0x5078bc _ZNK13StringManager12isPackLoadedEj
// True when at least one sheet of the pack is loaded. The original asserts for any id past 8 except 0xffffffff.
bool StringManager::isPackLoaded(unsigned int packIdx) const {
    if (packIdx != 0xffffffffu && packIdx > 8) {
        StringManagerAssert("packId == (size_t)-1 || packId < NUMBER_OF_LANGUAGES", 191);
    }
    for (unsigned int sheetIdx = 0; sheetIdx != 37; ++sheetIdx) {
        if (isPackSheetLoaded(packIdx, sheetIdx)) {
            return true;
        }
    }
    return false;
}

// 0x50798c _ZNK13StringManager21getNumberOfLoadedPackEv
// The number of packs 0 to 8 with at least one sheet loaded.
int StringManager::getNumberOfLoadedPack() const {
    int loaded = 0;
    for (unsigned int packIdx = 0; packIdx != 9; ++packIdx) {
        loaded += isPackLoaded(packIdx) ? 1 : 0;
    }
    return loaded;
}

// 0x5079c0 _ZN13StringManager10unloadPackEj
// Unloads every sheet of a loaded pack. The sentinel 0xffffffff does nothing.
void StringManager::unloadPack(unsigned int packIdx) {
    if (packIdx == 0xffffffffu) {
        return;
    }
    if (packIdx > 8) {
        StringManagerAssert("packId < NUMBER_OF_LANGUAGES", 394);
    }
    if (isPackLoaded(packIdx)) {
        for (unsigned int sheetIdx = 0; sheetIdx != 37; ++sheetIdx) {
            unloadPackSheet(packIdx, sheetIdx);
        }
    }
}

// 0x507a94 _ZN13StringManager10switchPackEjb
// Makes packIdx the current pack. With unloadOld, the current pack is unloaded first, unless it is already packIdx
// (then nothing happens). Returns true when the current pack changed.
bool StringManager::switchPack(unsigned int packIdx, bool unloadOld) {
    if (unloadOld) {
        if (static_cast<unsigned int>(m_currentPack) == packIdx) {
            return false;
        }
        if (m_currentPack != -1) {
            unloadPack(static_cast<unsigned int>(m_currentPack));
        }
    }
    if (static_cast<unsigned int>(m_currentPack) != packIdx) {
        m_currentPack = static_cast<int>(packIdx);
        return true;
    }
    return false;
}

// 0x507ae0 _ZN13StringManager14unloadAllPacksEv
void StringManager::unloadAllPacks() {
    for (unsigned int packIdx = 0; packIdx != 9; ++packIdx) {
        unloadPack(packIdx);
    }
}

// 0x507b08 _ZN13StringManagerD1Ev
// The complete destructor (vtable slot 0). The compiler sets the vptr on entry, as the original's first store does.
// 0x507b70 _ZN13StringManagerD2Ev is the base-object copy with the same body, so it has no second definition here.
StringManager::~StringManager() {
    for (unsigned int packIdx = 0; packIdx != 9; ++packIdx) {
        unloadPack(packIdx);
    }
}

// 0x507bbc _ZNK13StringManager16getSheetFilenameEjjPci
// Writes "text/<file name>" for sheet sheetIdx of pack packIdx to buffer and returns the count, as sprintf does. The
// original never reads bufferSize (a5) and writes without a bound, and the port does the same.
int StringManager::getSheetFilename(unsigned int packIdx, unsigned int sheetIdx, char* buffer, int bufferSize) const {
    static_cast<void>(bufferSize);
    const auto* packs = static_cast<const Structs::LangSheetList*>(static_cast<const void*>(Arrays::StrID_Languages::members));
    const auto* sheets = static_cast<const Structs::LangSheet*>(packs[packIdx].list);
    return std::sprintf(buffer, "text/%s", sheets[sheetIdx].filename);
}

// 0x507c0c _ZN13StringManager14formatForMultiESsb
// Text with a byte above 0xdf (the original's test for non-ASCII text) is wrapped in a wqy-zenhei font tag. When
// multiline is set, a newline goes before and after the tag. Any other text is returned unchanged. The tag text stops
// at the first NUL, as the original's %s does. The original formats the result into a 60-byte stack buffer; this port
// builds it without that limit.
std::string StringManager::formatForMulti(std::string text, bool multiline) {
    bool wide = false;
    for (const char c : text) {
        if (static_cast<unsigned char>(c) > 0xdf) {
            wide = true;
            break;
        }
    }
    if (!wide) {
        return text;
    }
    const char* newline = multiline ? "\n" : "";
    std::string out(newline);
    out += "<font face='wqy-zenhei'>";
    out += text.c_str();
    out += "</font>";
    out += newline;
    return out;
}

// 0x507d10 _ZN13StringManagerC1Ev
// Sets the current pack to -1 and clears both tables (the C2 copy at 0x507d6c has the same body).
StringManager::StringManager() {
    m_currentPack = -1;
    std::memset(m_lists, 0, sizeof m_lists);
    std::memset(m_list_count, 0, sizeof m_list_count);
}
