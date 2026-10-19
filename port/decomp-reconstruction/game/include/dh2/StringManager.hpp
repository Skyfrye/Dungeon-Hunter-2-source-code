// StringManager: the game's localized text cache. It holds 9 packs (the 8 languages plus the symbol pack 8), each with
// 37 sheets. A loaded sheet is an array of NUL-terminated strings, and m_list_count gives its length. Lookups default to
// m_currentPack, the pack chosen by switchPack (-1 until then).
// Original 32-bit size 0x7d8 (2008), allocated with operator new(0x7d8) (see Application::m_stringManager).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x507d10, dtor 0x507b08). The assertion strings in the
// original name the tables m_lists and m_list_count.
#pragma once

#include <cstdint>
#include <string>

struct VarArgs;

class StringManager {
public:
    // The original constructor sets m_currentPack to -1 and zeroes both tables.
    StringManager();                                                    // C1 0x507d10, C2 0x507d6c

    // Vtable slot 0 is the complete destructor (0x507b08; its D2 copy is 0x507b70), slot 1 the deleting one (0x507b54).
    virtual ~StringManager();

    // Static: they read only their argument, not the object.
    static int TranslateGameLangageToIGP(int language);                 // 0x5074b0 table CSWTCH_5544, 8 languages
    static int TranslateGameLanguageToGLLive(int language);             // 0x5074dc table CSWTCH_5544, offset 8
    static std::string formatForMulti(std::string text, bool multiline); // 0x507c0c wraps non-ASCII text in a wqy-zenhei font tag

    // Current pack and symbol pack.
    int addSpace();                                                     // 0x50750c per-language space width of m_currentPack (CSWTCH_5544), 0 past 7
    int getNumberOfStrings(int sheetIdx) const;                         // 0x507534 count in m_currentPack
    int getNumberOfStrings(int sheetIdx, int packIdx) const;            // 0x507550
    const char* getSheetName(unsigned int sheetIdx) const;              // 0x507568 sheet name of m_currentPack (pack 0 while it is -1)
    int getSymbolPack() const;                                          // 0x5075b0 returns 8, the symbol pack index
    int getSheetFilename(unsigned int packIdx, unsigned int sheetIdx, char* buffer, int bufferSize) const;  // 0x507bbc "text/%s"

    // Pack and sheet loading.
    bool isPackSheetLoaded(unsigned int packIdx, unsigned int sheetIdx) const;  // 0x507668
    void unloadPackSheet(unsigned int packIdx, unsigned int sheetIdx);          // 0x507788
    bool isPackLoaded(unsigned int packIdx) const;                              // 0x5078bc
    int getNumberOfLoadedPack() const;                                          // 0x50798c
    void unloadPack(unsigned int packIdx);                                      // 0x5079c0
    bool switchPack(unsigned int packIdx, bool unloadOld);                      // 0x507a94 makes packIdx current
    void unloadAllPacks();                                                      // 0x507ae0
    bool preloadPackSheet(unsigned int packIdx, unsigned int sheetIdx, bool force);  // 0x50851c reads the sheet file
    bool preloadPack(unsigned int packIdx);                                     // 0x509a08 preloads every sheet of a pack

    // Colour markup. parseColors appends markup to text with its colour tags expanded. parse and parseEx format into out.
    bool parseColors(std::string& text, const char* markup);                    // 0x507ea4
    int parse(std::string& out, const char* format, ...);                       // 0x508ef4
    int parseEx(std::string& out, const char* format, const VarArgs& args);     // 0x509aec

    // Lookups. A pack id of 0xffffffff is treated as pack 0.
    const char* getStringIdx(int sheetIdx, int stringIdx, unsigned int packIdx) const;  // 0x5088c4
    const char* getStringIdx(int sheetIdx, int stringIdx) const;                // 0x508c6c uses m_currentPack
    const char* getStringFromSymbol(const char* symbol) const;                  // 0x508c74 searches sheets by the prefix before '_'
    const char* getString(int id, unsigned int packIdx) const;                  // 0x508e1c id decoded with PyDataConstants StringConfig shifts and masks
    const char* getString(int id) const;                                        // 0x508edc uses m_currentPack

    // Layout. The vtable pointer sits at +0x00 (implicit, the class is polymorphic).
    int m_currentPack;                                                  // +0x04 current pack, -1 until switchPack
    char** m_lists[9][37];                                              // +0x08 string arrays, one per pack and sheet (0x534 bytes)
    uint16_t m_list_count[9][37];                                       // +0x53c string count per pack and sheet (0x29a bytes)
    uint8_t pad_7d6[2];                                                 // +0x7d6
};
