// StringManager bodies, batch g1-game-ui-StringManager-afda5d-1 (part 2 of 2: the constructor, the colour and format
// parsers, the sheet preload, the string lookups and the variadic formatters). Rebuilt from the Hex-Rays pseudocode of
// libDungeonHunter2.so and checked against the layout in dh2/StringManager.hpp. Offsets in comments are the original
// 32-bit ARM offsets; the code never uses them for addressing.
//
// Notes on the rebuild:
//  - ASSERT in the original (StringManager.cpp, lines 362 to 504) is StringManagerAssert below. gAssertLevel 2 crashes
//    in the original (a write to address 0); the port aborts. Level 1 prints to stderr and the lookup goes on. Level 0
//    is silent. The out-of-range indices that the original asserts on are indexed unguarded, as the original does.
//  - The original's operator new[](n, 0) buffers are plain allocations released with CustomFree, which the
//    pydata-accessors deps header defines as std::free. The list buffers below use std::malloc for the same pairing.
//    core-platform/memory.hpp is not included here, because its non-inline CustomFree clashes with that header.
//  - The original reads the bool flag of gameswf::format_utf_text from r3 (addSpace()). Its fifth stack argument is
//    never read by the four-parameter callee, so the port passes four arguments.
//  - PyDataConstants is pydata-accessors' engine class (Application::m_pyDataConstants, +0x2c). Its header is an
//    engine header, so this file includes it directly.
//  - preloadPackSheet opens the sheet through the file system at Application::m_device +0x34 (SavefileFileSystemPtr).
//    PARTIAL: parseEx reads its arguments from VarArgs, which has only a forward declaration. The
//    accessors varArgsCount, varArgsFloat and varArgsString read the list as empty.

#include <cctype>
#include <cmath>
#include <cstdarg>
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
#include "dh2/VarArgs.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/global/ctrl_camera.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vendor-gameswf/gameswf_utf_text.hpp"

// core-platform/memory.hpp declares this too; it is not included here (see the note above).
extern int gAssertLevel;

// StreamReader.hpp does not declare the unsigned short specialization. Its definition (0x5075b8) is in game-app, and it
// reads the 16-bit length and count fields of a sheet.
template <>
void StreamReader::readAs<unsigned short>(IStreamBase* stream, unsigned short* value);

namespace {

// The ASSERT file name of the original build.
constexpr const char* kStringManagerFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Text\\StringManager.cpp";

// The colour keys of the FontTextColors table, indexed by the markup digit.
constexpr const char* kFontColorKeys[10] = {"zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"};

// ASSERT(%s) FAILED. Level 2 crashes in the original, and level 1 prints the message and carries on.
void StringManagerAssert(const char* expr, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    }
    if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, kStringManagerFile, line);
    }
}

// strncasecmp(a, b, n) == 0: the first n characters match ignoring case, or both strings end first.
bool prefixEqualsIgnoreCase(const char* a, const char* b, std::size_t n) {
    for (std::size_t i = 0; i < n; ++i) {
        const int ca = std::tolower(static_cast<unsigned char>(a[i]));
        const int cb = std::tolower(static_cast<unsigned char>(b[i]));
        if (ca != cb) {
            return false;
        }
        if (ca == '\0') {
            return true;
        }
    }
    return true;
}

// The isTracingStringManager read the original makes around its lookups. The value is read and dropped.
void traceStringManagerSwitch() {
    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch("isTracingStringManager");
}

// PyDataConstants::getConstant(table, key) on Application::m_pyDataConstants.
int pyConstant(const char* table, const char* key) {
    return ApplicationGetInstance().m_pyDataConstants->getConstant(table, key);
}

// The colour markup for a digit: <font color="#RRGGBB"> with the FontTextColors value masked to 24 bits.
std::string fontColorTag(int digit) {
    char tag[32];
    const int color = pyConstant("FontTextColors", kFontColorKeys[digit]);
    std::snprintf(tag, sizeof tag, "<font color=\"#%06X\">", static_cast<unsigned int>(color) & 0xFFFFFFu);
    return tag;
}

// The whole part of a number with the group separator, used by every numeric specifier of parse and parseEx. Values
// below groupAt are written plain.
void formatWhole(char* buf, std::size_t size, int value, int groupAt, const char* group) {
    if (value < groupAt) {
        std::snprintf(buf, size, "%d", value);
        return;
    }
    const int millions = value / 1000000;
    const int thousands = value % 1000000 / 1000;
    const int units = value % 1000;
    if (millions != 0) {
        std::snprintf(buf, size, "%d%s%03d%s%03d", millions, group, thousands, group, units);
    } else if (thousands != 0) {
        std::snprintf(buf, size, "%d%s%03d", thousands, group, units);
    } else {
        std::snprintf(buf, size, "%d", units);
    }
}

// The scale of the float specifiers: f keeps the value, g divides by 1000, h multiplies by 100, i divides by 5 and m
// divides by 100.
float scaleFloatSpec(char spec, float value) {
    switch (spec) {
        case 'g':
            return static_cast<float>(value / 1000.0);
        case 'h':
            return static_cast<float>(value * 100.0);
        case 'i':
            return static_cast<float>(value / 5.0);
        case 'm':
            return static_cast<float>(value / 100.0);
        default:
            return value;
    }
}

// The text of a scaled number (specifiers f, g, h, i and m of parse and parseEx). x is already scaled. It is rounded
// by 0.05 for m and by 0.005 otherwise, the whole part is written with grouping, and when the fraction is at least
// 0.0001 the decimal separator follows, then the fraction digits. Those digits come from the "%.1f" (m) or "%.2f"
// text, with the leading "0." dropped.
void appendScaled(std::string& out, float x, bool milli, int groupAt, const char* group, const char* decimal) {
    const float step = milli ? 0.05f : 0.005f;
    x = x + (x < 0.0f ? -step : step);
    float whole = 0.0f;
    const float frac = std::modf(x, &whole);
    const float eps = x < 0.0f ? -0.005f : 0.005f;
    const float rest = frac - eps;
    char buf[32];
    formatWhole(buf, sizeof buf, static_cast<int>(whole), groupAt, group);
    out.append(buf);
    const float magnitude = std::fabs(rest);
    if (magnitude >= 0.0001) {
        out.append(decimal);
        char digits[16];
        std::snprintf(digits, sizeof digits, milli ? "%.1f" : "%.2f", static_cast<double>(magnitude));
        out.append(digits + 2);
    }
}

// The end of parse, parseEx and parseColors: the text goes through gameswf::format_utf_text with the -1 delimiter and
// the per-language space flag, and it replaces the text.
void finishText(StringManager& self, std::string& out) {
    std::vector<char> buffer(out.size() + 128);
    gameswf::format_utf_text(out.c_str(), buffer.data(), -1, self.addSpace() != 0);
    out.assign(buffer.data(), std::strlen(buffer.data()));
}

// The argument list: element i is a 12-byte VarArgs::Variant (float at +0x00, string at +0x08).
std::size_t varArgsCount(const VarArgs& args) {
    return args.m_variants.size();
}
float varArgsFloat(const VarArgs& args, std::size_t index) {
    return args.m_variants[index].number;
}
const char* varArgsString(const VarArgs& args, std::size_t index) {
    return args.m_variants[index].text;
}

// The sheet file is opened and closed through the file system at Application::m_device +0x34: open is vtable slot +0x90
// (openResource) with the file name, close is slot +0x78 (closeFile) with the stream.
IStreamBase* openSheetStream(const char* filename) {
    FileSystemWin32* fileSystem = SavefileFileSystemPtr();
    if (fileSystem == nullptr) {
        return nullptr;
    }
    return fileSystem->openResource(filename);
}
void closeSheetStream(IStreamBase*& stream) {
    FileSystemWin32* fileSystem = SavefileFileSystemPtr();
    if (fileSystem != nullptr && stream != nullptr) {
        IFileStream* file = static_cast<IFileStream*>(stream);
        fileSystem->closeFile(file);
    }
    stream = nullptr;
}

}  // namespace

// 0x507d6c StringManager::StringManager() (C2) has the same body as C1 (0x507d10), which part 0 defines. One C++
// definition emits both symbols, so there is no second definition here (link-1: it duplicated C1 and C2).

// 0x507ea4 StringManager::parseColors(std::string&, char const*)
// The markup characters: ^ starts an escape, | writes byte 17, and the escapes d f g h i k p s t v # * ^ are kept with
// their ^ for later passes. The digits 0 to 9 write a <font color> tag from FontTextColors, n writes a newline and r
// writes </font>. Other escapes are dropped. The result goes through format_utf_text.
bool StringManager::parseColors(std::string& text, const char* markup) {
    if (markup == nullptr || *markup == '\0') {
        return false;
    }
    bool changed = false;  // v6
    bool escape = false;   // v8: the previous character was ^
    for (const char* p = markup; *p != '\0'; ++p) {
        const char c = *p;
        if (escape) {
            escape = false;
            switch (c) {
                case '#':
                case '*':
                case '^':
                case 'd':
                case 'f':
                case 'g':
                case 'h':
                case 'i':
                case 'k':
                case 'p':
                case 's':
                case 't':
                case 'v':
                    text.append("^");
                    text.push_back(c);
                    break;
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
                    text.append(fontColorTag(c - '0'));
                    changed = true;
                    break;
                case 'n':
                    text.push_back('\n');
                    changed = true;
                    break;
                case 'r':
                    text.append("</font>");
                    changed = true;
                    break;
                default:
                    break;
            }
        } else if (c == '^') {
            escape = true;
        } else if (c == '|') {
            text.push_back('\x11');
            changed = true;
        } else {
            text.push_back(c);
        }
    }
    finishText(*this, text);
    return changed;
}

// 0x50851c StringManager::preloadPackSheet(unsigned int, unsigned int, bool)
// Reads one sheet: a 16-bit count, then per string a 16-bit length and the bytes. A string with ^ or | is run through
// parseColors and replaced by its result. The list gets a NULL entry after the last string. The sheet is opened through
// openSheetStream (the file system openResource).
bool StringManager::preloadPackSheet(unsigned int packIdx, unsigned int sheetIdx, bool force) {
    if (isPackSheetLoaded(packIdx, sheetIdx)) {
        if (!force) {
            return true;
        }
        unloadPackSheet(packIdx, sheetIdx);
    }
    char filename[100];
    getSheetFilename(packIdx, sheetIdx, filename, 100);
    IStreamBase* stream = openSheetStream(filename);
    if (stream == nullptr) {
        return false;
    }

    std::uint16_t count = 0;  // v20
    StreamReader::readAs<unsigned short>(stream, &count);
    char** lists = static_cast<char**>(std::malloc(sizeof(char*) * (static_cast<std::size_t>(count) + 1)));
    std::string colored;  // v23: parseColors output, cleared before each string
    std::uint16_t index = 0;  // v9
    if (count != 0) {
        do {
            std::uint16_t length = 0;  // v19
            StreamReader::readAs<unsigned short>(stream, &length);
            char* str = static_cast<char*>(std::malloc(static_cast<std::size_t>(length) + 1));
            lists[index] = str;
            StreamReader::readStringEx(stream, str, length);
            str[length] = '\0';
            char* current = lists[index];
            if (std::strchr(current, '^') != nullptr || std::strchr(current, '|') != nullptr) {
                colored.clear();
                if (parseColors(colored, current)) {
                    std::free(lists[index]);
                    length = static_cast<std::uint16_t>(colored.size());
                    char* replaced = static_cast<char*>(std::malloc(static_cast<std::size_t>(length) + 1));
                    lists[index] = replaced;
                    std::strcpy(replaced, colored.c_str());
                    replaced[length] = '\0';
                }
            }
            index = static_cast<std::uint16_t>(index + 1);
        } while (count > index);
    }
    lists[count] = nullptr;
    m_lists[packIdx][sheetIdx] = lists;
    m_list_count[packIdx][sheetIdx] = count;

    traceStringManagerSwitch();
    closeSheetStream(stream);
    return true;
}

// 0x5088c4 StringManager::getStringIdx(int, int, unsigned int) const
// The lookup loads the sheet when it is not loaded (the original casts away const for that). A pack of 0xffffffff means
// pack 0. A string that is empty gives "#!SNL!#"; a string index past the count gives "#!WTF!#".
const char* StringManager::getStringIdx(int sheetIdx, int stringIdx, unsigned int packIdx) const {
    unsigned int pack = packIdx;
    if (packIdx == 0xffffffffu) {
        pack = 0;
    } else if (packIdx > 8) {
        StringManagerAssert("packIdx < NUMBER_OF_LANGUAGES", 489);
    }
    if (sheetIdx < 0) {
        StringManagerAssert("sheetIdx >= 0", 490);
    } else if (sheetIdx > 36) {
        StringManagerAssert("sheetIdx < NUMBER_OF_SHEETS", 491);
    }

    StringManager* self = const_cast<StringManager*>(this);
    const unsigned int sheet = static_cast<unsigned int>(sheetIdx);
    if (!isPackSheetLoaded(pack, sheet)) {
        self->preloadPackSheet(pack, sheet, false);
    }
    char** list = m_lists[pack][sheet];
    if (list == nullptr) {
        StringManagerAssert("m_lists[packIdx][sheetIdx]", 501);
    }

    const std::uint16_t count = m_list_count[pack][sheet];
    if (count == 0) {
        StringManagerAssert("m_list_count[packIdx][sheetIdx]", 503);
    }
    if (static_cast<std::int16_t>(count) > stringIdx) {
        const char* result = list[stringIdx];
        if (result == nullptr || *result == '\0') {
            return "#!SNL!#";
        }
        return result;
    }
    StringManagerAssert("stringIdx < m_list_count[packIdx][sheetIdx]", 504);
    return "#!WTF!#";
}

// 0x508c6c StringManager::getStringIdx(int, int) const
const char* StringManager::getStringIdx(int sheetIdx, int stringIdx) const {
    return getStringIdx(sheetIdx, stringIdx, static_cast<unsigned int>(m_currentPack));
}

// 0x508c74 StringManager::getStringFromSymbol(char const*) const
// The symbol's prefix before '_' names the sheet (case-insensitive). Within that sheet the symbol pack's strings are
// compared with the symbol (case-insensitive), and the match is returned from the current pack.
const char* StringManager::getStringFromSymbol(const char* symbol) const {
    traceStringManagerSwitch();
    const char* underscore = std::strchr(symbol, '_');
    const std::size_t prefixLen =
        underscore != nullptr ? static_cast<std::size_t>(underscore - symbol) : std::string::npos;
    for (unsigned int sheet = 0; sheet != 37; ++sheet) {
        if (!prefixEqualsIgnoreCase(symbol, getSheetName(sheet), prefixLen)) {
            continue;
        }
        const unsigned int symbolPack = static_cast<unsigned int>(getSymbolPack());
        (void)getStringIdx(static_cast<int>(sheet), 0, symbolPack);
        for (int index = 0; index < getNumberOfStrings(static_cast<int>(sheet), getSymbolPack()); ++index) {
            const char* candidate = getStringIdx(static_cast<int>(sheet), index, symbolPack);
            if (LC_API_STRCASECMP(symbol, candidate) == 0) {
                const char* found = getStringIdx(static_cast<int>(sheet), index);
                traceStringManagerSwitch();
                return found;
            }
        }
    }
    return nullptr;
}

// 0x508e1c StringManager::getString(int, unsigned int) const
// The id packs a pack index and a string index. The shifts and masks come from the StringConfig table. The shift
// constants are bytes in the original, so they are read as 8-bit values.
const char* StringManager::getString(int id, unsigned int packIdx) const {
    const auto packShift = static_cast<std::uint8_t>(pyConstant("StringConfig", "PackIDShift"));
    const int packMask = pyConstant("StringConfig", "PackIDMask");
    const auto strShift = static_cast<std::uint8_t>(pyConstant("StringConfig", "StrIDShift"));
    const int strMask = pyConstant("StringConfig", "StrIDMask");
    // The PackID fields give the first argument of getStringIdx, which is the sheet index, and the StrID fields give the
    // string index. The listing passes them in that order.
    return getStringIdx(packMask & (id >> packShift), strMask & (id >> strShift), packIdx);
}

// 0x508edc StringManager::getString(int) const
const char* StringManager::getString(int id) const {
    if (id < 0) {
        return nullptr;
    }
    return getString(id, static_cast<unsigned int>(m_currentPack));
}

// 0x508ef4 StringManager::parse(std::string&, char const*, ...)
// Formats the arguments into out, then runs the text through format_utf_text. Escapes are: # * ^ (literal), $ (an
// expansion of the spec and replacement strings, with a third string argument written once the replacement is used up),
// d k p (int, k divides by 1000, p multiplies by 100), f g h i m
// (double, scaled as in scaleFloatSpec), n (newline), s (string, or "<null>"), t (title) and v (version). A | writes
// byte 17. Returns 1 when an escape or a | was seen, 0 otherwise.
int StringManager::parse(std::string& out, const char* format, ...) {
    va_list args;
    va_start(args, format);
    if (format == nullptr || *format == '\0') {
        va_end(args);
        return 0;
    }
    const char* decimal = getString(pyConstant("StrID", "GLOBAL_DECIMAL_SEPERATOR"));
    const char* group = getString(pyConstant("StrID", "GLOBAL_THOUSANDS_SEPERATOR"));
    const int groupAt = std::atoi(getString(pyConstant("StrID", "GLOBAL_THOUSANDS_GROUP_AT")));

    int changed = 0;      // v5
    bool escape = false;  // v13
    for (const char* p = format; *p != '\0'; ++p) {
        const char c = *p;
        if (!escape) {
            if (c == '^') {
                escape = true;
            } else if (c == '|') {
                out.push_back('\x11');
                changed = 1;
            } else {
                out.push_back(c);
            }
            continue;
        }
        escape = false;
        changed = 1;
        switch (c) {
            case '#':
            case '*':
            case '^':
                out.push_back(c);
                break;
            case '$': {
                const char* spec = va_arg(args, const char*);
                const char* rep = va_arg(args, const char*);
                if (*spec == '\0') {
                    break;
                }
                unsigned char ch = static_cast<unsigned char>(*spec);  // v39
                const char* specNext = spec + 1;                       // v42
                const char* repCur = rep;                              // v40
                int phase = 0;                                         // v41: 1 once the third argument is written
                bool collecting = false;                               // v44
                std::string pending;                                   // the s buffer: "$" and the collected characters
                for (;;) {
                    if (collecting) {
                        if (phase == 0) {
                            if (*repCur != '\0' && static_cast<unsigned char>(*repCur) == ch) {
                                pending.push_back(static_cast<char>(ch));
                                ++repCur;
                            } else {
                                pending.push_back(static_cast<char>(ch));
                                out.append(pending);
                                pending.clear();
                                collecting = false;
                            }
                            if (*repCur == '\0') {
                                // The third argument is a plain char pointer, the same type as spec and rep. The listing
                                // passes the slot value itself to strlen and _M_append, so there is no extra dereference.
                                // A NULL here faults in the original too, because strlen is not guarded.
                                const char* third = va_arg(args, const char*);
                                phase = 1;
                                out.append(third);
                            }
                        } else {
                            out.push_back(static_cast<char>(ch));
                        }
                    } else if (ch == '$') {
                        pending.assign("$");
                        collecting = true;
                        ch = static_cast<unsigned char>(*specNext);
                        ++specNext;
                        if (*repCur == '$') {
                            ++repCur;
                        }
                        if (ch == 0) {
                            break;
                        }
                        continue;
                    } else {
                        out.push_back(static_cast<char>(ch));
                    }
                    ch = static_cast<unsigned char>(*specNext);
                    ++specNext;
                    if (ch == 0) {
                        break;
                    }
                }
                break;
            }
            case 'd':
            case 'k':
            case 'p': {
                const int raw = va_arg(args, int);
                int value = raw;
                if (c == 'k') {
                    value = raw / 1000;
                } else if (c == 'p') {
                    value = 100 * raw;
                }
                char buf[32];
                formatWhole(buf, sizeof buf, value, groupAt, group);
                out.append(buf);
                break;
            }
            case 'f':
            case 'g':
            case 'h':
            case 'i':
            case 'm': {
                const float value = static_cast<float>(va_arg(args, double));
                appendScaled(out, scaleFloatSpec(c, value), c == 'm', groupAt, group, decimal);
                break;
            }
            case 'n':
                out.push_back('\n');
                break;
            case 's': {
                const char* str = va_arg(args, const char*);
                out.append(str != nullptr ? str : "<null>");
                break;
            }
            case 't': {
                char title[32];
                ApplicationGetInstance().GetTitleString(title, 32);
                out.append(title);
                break;
            }
            case 'v': {
                char version[12];
                ApplicationGetInstance().GetVersionString(version, 10, true);
                out.append(version);
                break;
            }
            default:
                break;
        }
    }
    va_end(args);
    finishText(*this, out);
    return changed;
}

// 0x509a08 StringManager::preloadPack(unsigned int)
// Loads every sheet of a pack that is not loaded yet. Sheets already loaded are skipped.
bool StringManager::preloadPack(unsigned int packIdx) {
    if (packIdx > 8) {
        StringManagerAssert("packId < NUMBER_OF_LANGUAGES", 362);
    }
    for (unsigned int i = 0; i != 37; ++i) {
        while (isPackSheetLoaded(packIdx, i)) {
            if (++i == 37) {
                return true;
            }
        }
        preloadPackSheet(packIdx, i, false);
    }
    return true;
}

// 0x509aec StringManager::parseEx(std::string&, char const*, VarArgs const&)
// The same escapes as parse, with the arguments taken from the VarArgs list instead of the variadic list. An escape
// that needs an argument the list does not have writes nothing. Returns 1 only when a | was seen, as in the listing.
// PARTIAL: the list is read as empty until VarArgs is declared (see varArgsCount).
int StringManager::parseEx(std::string& out, const char* format, const VarArgs& args) {
    if (format == nullptr || *format == '\0') {
        return 0;
    }
    const char* decimal = getString(pyConstant("StrID", "GLOBAL_DECIMAL_SEPERATOR"));
    const char* group = getString(pyConstant("StrID", "GLOBAL_THOUSANDS_SEPERATOR"));
    const int groupAt = std::atoi(getString(pyConstant("StrID", "GLOBAL_THOUSANDS_GROUP_AT")));

    const std::size_t argCount = varArgsCount(args);
    std::size_t argIndex = 0;  // v16
    bool escape = false;       // v15
    int changed = 0;           // v7
    for (const char* p = format; *p != '\0'; ++p) {
        const char c = *p;
        if (!escape) {
            if (c == '^') {
                escape = true;
            } else if (c == '|') {
                out.push_back('\x11');
                changed = 1;
            } else {
                out.push_back(c);
            }
            continue;
        }
        escape = false;
        switch (c) {
            case '#':
            case '*':
            case '^':
                out.push_back(c);
                break;
            case 'd':
            case 'k':
            case 'p': {
                if (argIndex >= argCount) {
                    break;
                }
                const float raw = varArgsFloat(args, argIndex);
                ++argIndex;
                float x = raw;
                if (c == 'k') {
                    x = static_cast<float>(raw / 1000.0);
                } else if (c == 'p') {
                    x = static_cast<float>(raw * 100.0);
                }
                char buf[32];
                formatWhole(buf, sizeof buf, static_cast<int>(x), groupAt, group);
                out.append(buf);
                break;
            }
            case 'f':
            case 'g':
            case 'h':
            case 'i':
            case 'm': {
                if (argIndex >= argCount) {
                    break;
                }
                const float raw = varArgsFloat(args, argIndex);
                ++argIndex;
                appendScaled(out, scaleFloatSpec(c, raw), c == 'm', groupAt, group, decimal);
                break;
            }
            case 'n':
                out.push_back('\n');
                break;
            case 's': {
                if (argIndex >= argCount) {
                    break;
                }
                const char* str = varArgsString(args, argIndex);
                ++argIndex;
                if (str != nullptr) {
                    out.append(str);
                }
                break;
            }
            case 't': {
                char title[32];
                ApplicationGetInstance().GetTitleString(title, 32);
                out.append(title);
                break;
            }
            case 'v': {
                char version[12];
                ApplicationGetInstance().GetVersionString(version, 10, true);
                out.append(version);
                break;
            }
            default:
                break;
        }
    }
    finishText(*this, out);
    return changed;
}
