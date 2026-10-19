#include "glitch-core-io/io/xml_reader.hpp"

#include <cstdlib>
#include <cstring>

#include "glitch-core-io/core/strings.hpp"

namespace glitch::io {

namespace {

// ---- shared parser -----------------------------------------------------------
// The narrow and wide readers run the same parser. Their pseudocode differs only in the unit size,
// so both are written once against the reader's CharType and StringType. Each member function of the
// two specialisations forwards here and keeps its original address in the comment.

template <typename C>
bool isWhitespace(C c) {
    return c == C(' ') || c == C('\t') || c == C('\n') || c == C('\r');
}

template <typename C>
bool isQuote(C c) {
    return c == C('\'') || c == C('"');
}

// A character that ends an element name: '>', white space, or the end of the text.
template <typename C>
bool isTagStop(C c) {
    return c == C('>') || isWhitespace(c) || c == C(0);
}

template <typename C>
std::basic_string<C, std::char_traits<C>, glitch::core::SAllocator<C>> literal(const char* text) {
    std::basic_string<C, std::char_traits<C>, glitch::core::SAllocator<C>> out;
    for (; *text; ++text) out.push_back(static_cast<C>(static_cast<unsigned char>(*text)));
    return out;
}

// Replaces the special characters of a text. Each entry of specialCharacters holds the replacement
// character followed by the entity name, including its ';' ("&amp;" is '&' then "amp;").
// The control flow follows the pseudocode, including its last-character check (see the ledger notes).
template <typename R>
typename R::StringType replaceSpecialCharactersT(const R& r, const typename R::StringType& text) {
    using S = typename R::StringType;
    using C = typename R::CharType;
    const long len = static_cast<long>(text.size());
    const std::size_t npos = S::npos;
    const std::size_t firstAmp = text.find(C('&'));
    if (len == 0 || firstAmp == npos) return text;

    S out;
    long pos = 0;                       // the text not copied yet starts here
    long next = static_cast<long>(firstAmp);
    for (;;) {
        if (static_cast<long>(len) - 2 <= next) break;  // fewer than two characters follow the '&'
        long scan = next + 1;
        bool matched = false;
        for (const S& entity : r.specialCharacters) {
            const long nameLength = static_cast<long>(entity.size()) - 1;
            if (nameLength <= 0 || next + 1 + nameLength > len) continue;
            if (text.compare(static_cast<std::size_t>(next + 1), static_cast<std::size_t>(nameLength), entity, 1,
                             static_cast<std::size_t>(nameLength)) != 0) {
                continue;
            }
            out.append(text, static_cast<std::size_t>(pos), static_cast<std::size_t>(next - pos));
            out.push_back(entity[0]);
            scan = next + static_cast<long>(entity.size());
            matched = true;
            break;
        }
        if (!matched) out.append(text, static_cast<std::size_t>(pos), static_cast<std::size_t>(next + 1 - pos));
        pos = scan;
        if (scan >= len) break;
        const std::size_t found = text.find(C('&'), static_cast<std::size_t>(scan));
        if (found == npos) break;
        next = static_cast<long>(found);
    }
    // Tail: the original appends the rest only when at least two characters remain (pos < len - 1).
    if (pos < len - 1) out.append(text, static_cast<std::size_t>(pos), npos);
    return out;
}

template <typename R>
void createSpecialCharacterListT(R& r) {
    using C = typename R::CharType;
    r.specialCharacters.push_back(literal<C>("&amp;"));
    r.specialCharacters.push_back(literal<C>("<lt;"));
    r.specialCharacters.push_back(literal<C>(">gt;"));
    r.specialCharacters.push_back(literal<C>("\"quot;"));
    r.specialCharacters.push_back(literal<C>("'apos;"));
}

template <typename R>
bool setTextT(R& r, typename R::CharType* begin, typename R::CharType* end) {
    using C = typename R::CharType;
    if (end - begin <= 2) {
        if (begin == end) return false;
        C* p = begin;
        for (;;) {
            if (!isWhitespace(*p)) break;
            if (++p == end) return false;
        }
        if (p == end) return false;
    }
    r.nodeName = replaceSpecialCharactersT(r, typename R::StringType(begin, end));
    r.nodeType = 3;
    return true;
}

// 0x574da8 / 0x575d68: "<![CDATA[" ... "]]>". The text between the markers becomes the node name.
template <typename R>
bool parseCDATAT(R& r) {
    using C = typename R::CharType;
    C* v1 = r.current;
    if (v1[1] != C('[')) return false;
    r.nodeType = 5;
    C v4 = *v1;
    C* v5 = v1;
    if (v4 != 0) {
        int count = 1;
        bool more;
        do {
            v5 = v1 + count;
            r.current = v5;
            v4 = v1[count];
            more = count++ <= 7;
            if (v4 == 0) more = false;
        } while (more);
    }
    if (v4 == 0) return true;

    C* v8 = r.current;
    C v9 = *v8;
    C* found = nullptr;
    if (v9 != 0) {
        C* v10 = v8 - 2;
        bool keepGoing;
        do {
            if (v9 == C('>') && v10[1] == C(']') && v10[0] == C(']')) {
                found = v10;
                keepGoing = false;
            } else {
                keepGoing = true;
                found = nullptr;
            }
            r.current = v10 + 3;
            v9 = v10[3];
            ++v10;
            keepGoing = keepGoing && v9 != 0;
        } while (keepGoing);
    }
    if (found) {
        r.nodeName.assign(v5, found);
    } else {
        r.nodeName.clear();
    }
    return true;
}

// 0x57405c / 0x57378c: "<!--" ... "-->" nested comment. The text between the markers becomes the name.
template <typename R>
void parseCommentT(R& r) {
    using C = typename R::CharType;
    C* v1 = r.current;  // the '!'
    C* v3 = v1 + 1;
    r.nodeType = 4;
    r.current = v3;
    C* v5 = v1 + 2;
    int depth = 1;
    C* v8 = v5;
    do {
        const C v7 = v5[-1];
        if (v7 == C('>')) {
            --depth;
        } else if (v7 == C('<')) {
            ++depth;
        } else if (v7 == 0) {
            break;  // end of the text (the original keeps going past it)
        }
        r.current = v5;
        v8 = v5++;
    } while (depth);
    C* v9 = v8 - 3;
    r.current = v9;
    if (v9 > v3 + 2) {
        r.nodeName.assign(v3 + 2, v9);
    } else {
        r.nodeName.clear();
    }
    r.current = r.current + 3;
}

// 0x573f54 / 0x573854: "</name>". The name becomes the node name.
template <typename R>
void parseClosingT(R& r) {
    using C = typename R::CharType;
    r.attributes.clear();
    r.nodeType = 2;
    r.emptyElement = false;
    C* v4 = r.current;  // the '/'
    C* v5 = v4 + 1;
    r.current = v5;
    std::size_t length = 0;
    if (*v5 != C('>')) {
        C* v7 = v4 + 2;
        C* v8 = v7;
        C v9 = 0;
        do {
            r.current = v7;
            v8 = v7;
            v9 = *v7++;
        } while (v9 != C('>') && v9 != 0);
        if (v9 != C('>')) {
            r.nodeName.assign(v5, v8);
            return;
        }
        length = static_cast<std::size_t>(v8 - v5);
    }
    r.nodeName.assign(v5, length);
    ++r.current;
}

template <typename R>
void parseOpeningT(R& r);

// 0x575f3c / 0x574f48: the node at the current position.
template <typename R>
bool parseCurrentNodeT(R& r) {
    using C = typename R::CharType;
    C* v1 = r.current;
    C* v5 = v1;
    C result = *v1;
    if (!(result == 0 || result == C('<'))) {
        do {
            r.current = ++v5;
            result = *v5;
        } while (!(result == 0 || result == C('<')));
    }
    if (result == 0) return false;
    if (v5 - v1 > 0 && setTextT(r, v1, v5)) return true;

    C* v7 = v5;
    r.current = v7 + 1;
    const C v9 = v7[1];
    if (v9 == C('/')) {
        parseClosingT(r);
        return true;
    }
    if (v9 != C('?')) {
        if (v9 != C('!')) {
            parseOpeningT(r);
            return true;
        }
        if (!parseCDATAT(r)) parseCommentT(r);
        return true;
    }
    r.nodeType = 6;
    C* v8 = v7 + 1;
    if (v7[1] != C('>')) {
        C* v10 = v7 + 2;
        C v11;
        do {
            r.current = v10;
            v8 = v10;
            v11 = *v10++;
        } while (v11 != C('>') && v11 != 0);
        if (v11 == 0) return true;  // no end marker: stop at the terminator
    }
    r.current = v8 + 1;
    return true;
}

template <typename R>
void finishOpeningT(R& r, typename R::CharType* start, typename R::CharType* v32) {
    using C = typename R::CharType;
    C* nameEnd = v32;
    if (start < v32 && *(v32 - 1) == C('/')) {
        r.emptyElement = true;
        nameEnd = v32 - 1;
    }
    r.nodeName.assign(start, nameEnd);
    ++r.current;
}

// 0x575918 / 0x5749a0: "<name attr='value' ...>" or "/>". Attributes are appended in order. The record
// keeps the attribute name and its replaced value. A NUL ends each scan here (the original runs on past
// it), so only malformed text differs.
template <typename R>
void parseOpeningT(R& r) {
    using C = typename R::CharType;
    using S = typename R::StringType;
    r.attributes.clear();
    r.nodeType = 1;
    r.emptyElement = false;

    C* const start = r.current;
    C c = *start;
    C* v6 = start;
    if (!isTagStop(c)) {
        do {
            v6 = ++r.current;
            c = *v6;
        } while (!isTagStop(c));
    }
    if (c == 0) return;
    C* const v32 = v6;  // the end of the element name (first stop character)
    if (c == C('>')) {
        finishOpeningT(r, start, v32);
        return;
    }

    for (;;) {
        while (isWhitespace(c)) {
            r.current = v6 + 1;
            v6 = r.current;
            c = *v6;
            if (c == C('>')) {
                finishOpeningT(r, start, v32);
                return;
            }
            if (c == 0) return;
        }
        if (c == C('/')) {
            r.current = v6 + 1;
            r.emptyElement = true;
            finishOpeningT(r, start, v32);
            return;
        }

        // One attribute: the name runs to '=' or white space, the value is the text between quotes.
        C* v9 = v6;
        if (c != C('=')) {
            for (;;) {
                r.current = ++v9;
                const C v10 = *v9;
                if (isWhitespace(v10) || v10 == C('=')) break;
                if (v10 == 0) return;
            }
        }
        r.current = v9 + 1;
        C result = v9[1];
        C* v12 = v9 + 1;
        if (!isQuote(result)) {
            if (result == 0) return;
            for (C* i = v9 + 2;; ++i) {
                r.current = i;
                result = *i;
                v12 = i;
                if (isQuote(result)) break;
                if (result == 0) return;
            }
        }
        if (result == 0) return;
        C* const v16 = v12 + 1;
        r.current = v16;
        const C closing = result;
        C* v17 = v16;
        std::ptrdiff_t valueLength = 0;
        if (v12[1] != closing) {
            if (v12[1] == 0) return;
            for (;;) {
                r.current = ++v17;
                result = *v17;
                if (result == closing) break;
                if (*v17 == 0) return;
            }
            valueLength = v17 - v16;
        }
        r.current = v17 + 1;

        S name(v6, v9);
        S value = replaceSpecialCharactersT(r, S(v16, v16 + valueLength));
        r.attributes.push_back(typename R::SAttribute{name, value});

        v6 = r.current;
        c = *v6;
        if (c == C('>')) {
            finishOpeningT(r, start, v32);
            return;
        }
        if (c == 0) return;
    }
}

template <typename R>
bool readT(R& r) {
    using C = typename R::CharType;
    if (r.isEmptyElement()) {
        r.nodeType = 2;
        r.emptyElement = false;
        r.attributes.clear();
        return true;
    }
    C* v5 = r.current;
    if (v5 && static_cast<std::uint32_t>(v5 - r.textData) < static_cast<std::uint32_t>(r.textLength - 1) &&
        *v5) {
        return r.parseCurrentNode();
    }
    return false;
}

}  // namespace

// ---- convertTextData --------------------------------------------------------
// The two encodings are compared through the same predicate the pseudocode uses: the code
// units are byte-swapped when the parser format and the source format fall on different sides.
namespace {
bool isSwappedFormat(int format) {
    return format <= 1 || format == 3 || format == 5;
}
std::uint32_t swap32(std::uint32_t v) {
    return (v >> 24) | ((v >> 8) & 0xFF00u) | ((v << 8) & 0xFF0000u) | (v << 24);
}
std::uint16_t swap16(std::uint16_t v) {
    return static_cast<std::uint16_t>((v >> 8) | (v << 8));
}
// Swaps each code unit up to the terminating zero (the zero itself is unchanged).
void swapUnits(std::uint32_t* text) {
    for (; text && *text; ++text) *text = swap32(*text);
}
void swapUnits(std::uint16_t* text) {
    for (; text && *text; ++text) *text = swap16(*text);
}
}  // namespace

// ---- CXMLReaderImpl<char> -------------------------------------------------

using CharReader = CXMLReaderImpl<char, glitch::IReferenceCounted>;

// 0x573eb0 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEED1Ev
// Vptr reset, then the text buffer is released (operator delete[]); the attribute and
// special-character vectors and the two strings are destroyed by their own destructors,
// which replace the original's explicit frees.
CharReader::~CXMLReaderImpl() {
    ::operator delete[](textOwner);
}

// 0x576048 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE4readEv
bool CharReader::read() { return readT(*this); }

// 0x572634 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17readToNextElementEv
bool CharReader::readToNextElement() {
    do {
        if (!read()) return false;
    } while (getNodeType() != 1);
    return true;
}

// 0x572678 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE11getNodeTypeEv
int CharReader::getNodeType() const { return nodeType; }

// 0x572680 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17getAttributeCountEv
int CharReader::getAttributeCount() const { return static_cast<int>(attributes.size()); }

// 0x5726a8 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE16getAttributeNameEi
// Indices are compared unsigned, so a negative index gives nullptr as well.
const char* CharReader::getAttributeName(int index) const {
    const auto i = static_cast<std::size_t>(static_cast<unsigned>(index));
    return i < attributes.size() ? attributes[i].name.c_str() : nullptr;
}

// 0x5726e4 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17getAttributeValueEi
const char* CharReader::getAttributeValue(int index) const {
    const auto i = static_cast<std::size_t>(static_cast<unsigned>(index));
    return i < attributes.size() ? attributes[i].value.c_str() : nullptr;
}

// 0x5742a4 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE17getAttributeValueEPKc
const char* CharReader::getAttributeValue(const char* name) const {
    const SAttribute* attribute = getAttributeByName(name);
    return attribute ? attribute->value.c_str() : nullptr;
}

// 0x574288 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE21getAttributeValueSafeEPKc
const char* CharReader::getAttributeValueSafe(const char* name) const {
    const SAttribute* attribute = getAttributeByName(name);
    return attribute ? attribute->value.c_str() : defaultValue.c_str();
}

// 0x572720 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22getAttributeValueAsIntEPKc
// Goes through the virtual float accessor (vtable +0x34), then truncates.
int CharReader::getAttributeValueAsInt(const char* name) const {
    return static_cast<int>(getAttributeValueAsFloat(name));
}

// 0x572738 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22getAttributeValueAsIntEi
int CharReader::getAttributeValueAsInt(int index) const {
    return static_cast<int>(getAttributeValueAsFloat(index));
}

// 0x5742b8 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE24getAttributeValueAsFloatEPKc
float CharReader::getAttributeValueAsFloat(const char* name) const {
    const SAttribute* attribute = getAttributeByName(name);
    if (!attribute) return 0.f;
    return static_cast<float>(std::strtod(attribute->value.c_str(), nullptr));
}

// 0x574354 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE24getAttributeValueAsFloatEi
float CharReader::getAttributeValueAsFloat(int index) const {
    const char* text = getAttributeValue(index);
    if (!text) return 0.f;
    float result = 0.f;
    glitch::core::fast_atof_move(text, result);
    return result;
}

// 0x572750 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE11getNodeNameEv
const char* CharReader::getNodeName() const { return nodeName.c_str(); }

// 0x572758 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE11getNodeDataEv
// Text nodes keep their data in the same string as the node name.
const char* CharReader::getNodeData() const { return nodeName.c_str(); }

// 0x572760 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE14isEmptyElementEv
bool CharReader::isEmptyElement() const { return emptyElement; }

// 0x572768 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15getSourceFormatEv
int CharReader::getSourceFormat() const { return sourceFormat; }

// 0x572770 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15getParserFormatEv
int CharReader::getParserFormat() const { return parserFormat; }

// 0x574164 _ZNK6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE18getAttributeByNameEPKc
const CharReader::SAttribute* CharReader::getAttributeByName(const char* name) const {
    if (!name) return nullptr;
    const core::stringc key(name);
    for (const SAttribute& attribute : attributes) {
        if (attribute.name == key) return &attribute;
    }
    return nullptr;
}

// 0x572e78 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE8readFileEPNS0_17IFileReadCallBackE
bool CharReader::readFile(IFileReadCallBack* callback) {
    const long size = callback->getSize();
    if (size < 0) return false;
    const int bufferSize = static_cast<int>(size) + 4;
    char* buffer = new char[static_cast<std::size_t>(bufferSize)];
    // The listing tests the callback's result (slot +0x08): a zero count frees the buffer and fails.
    if (!callback->read(buffer, static_cast<int>(size))) {
        delete[] buffer;
        return false;
    }
    std::memset(buffer + size, 0, 4);

    std::uint32_t head32 = 0;
    std::memcpy(&head32, buffer, sizeof head32);
    if (head32 == 0xFFFE0000u) {
        sourceFormat = 4;
        convertTextData(reinterpret_cast<std::uint32_t*>(buffer) + 1, buffer, bufferSize / 4 - 1);
        return true;
    }
    if (head32 == 0x0000FEFFu) {
        sourceFormat = 5;
        convertTextData(reinterpret_cast<std::uint32_t*>(buffer) + 1, buffer, bufferSize / 4 - 1);
        return true;
    }
    std::uint16_t head16 = 0;
    std::memcpy(&head16, buffer, sizeof head16);
    if (head16 == 0xFFFEu) {
        sourceFormat = 2;
        convertTextData(reinterpret_cast<std::uint16_t*>(buffer) + 1, buffer, bufferSize / 2 - 1);
        return true;
    }
    if (head16 != 0xFEFFu) {
        textLength = bufferSize;
        sourceFormat = 0;
        textOwner = buffer;
        textData = buffer;
        return true;
    }
    sourceFormat = 3;
    convertTextData(reinterpret_cast<std::uint16_t*>(buffer) + 1, buffer, bufferSize / 2 - 1);
    return true;
}

// 0x575f3c _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE16parseCurrentNodeEv
bool CharReader::parseCurrentNode() { return parseCurrentNodeT(*this); }

// 0x575918 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22parseOpeningXMLElementEv
void CharReader::parseOpeningXMLElement() { parseOpeningT(*this); }

// 0x573f54 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE22parseClosingXMLElementEv
void CharReader::parseClosingXMLElement() { parseClosingT(*this); }

// 0x57405c _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE12parseCommentEv
void CharReader::parseComment() { parseCommentT(*this); }

// 0x575d68 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE10parseCDATAEv
bool CharReader::parseCDATA() { return parseCDATAT(*this); }

// 0x5757f0 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE7setTextEPcS4_
bool CharReader::setText(char* begin, char* end) { return setTextT(*this, begin, end); }

// 0x57539c _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE24replaceSpecialCharactersERSbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEE
core::stringc CharReader::replaceSpecialCharacters(const core::stringc& text) const {
    return replaceSpecialCharactersT(*this, text);
}

// 0x5760e4 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE26createSpecialCharacterListEv
void CharReader::createSpecialCharacterList() { createSpecialCharacterListT(*this); }

// 0x572ca4 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15convertTextDataImEEvPT_Pci
// Copies the code units into a new char buffer (truncating), then releases the old owner.
void CXMLReaderImpl<char, glitch::IReferenceCounted>::convertTextData(std::uint32_t* text, char* owner,
                                                                    int length) {
    if (isSwappedFormat(parserFormat) != isSwappedFormat(sourceFormat)) swapUnits(text);
    char* buffer = new char[static_cast<std::size_t>(length)];
    for (int i = 0; i < length; ++i) buffer[i] = static_cast<char>(text[i]);
    delete[] owner;
    textOwner = buffer;
    textData = buffer;
    textLength = length;
}

// 0x572d94 _ZN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEE15convertTextDataItEEvPT_Pci
void CXMLReaderImpl<char, glitch::IReferenceCounted>::convertTextData(std::uint16_t* text, char* owner,
                                                                    int length) {
    if (isSwappedFormat(parserFormat) != isSwappedFormat(sourceFormat)) swapUnits(text);
    char* buffer = new char[static_cast<std::size_t>(length)];
    for (int i = 0; i < length; ++i) buffer[i] = static_cast<char>(text[i]);
    delete[] owner;
    textOwner = buffer;
    textData = buffer;
    textLength = length;
}

// ---- CXMLReaderImpl<wchar_t> ----------------------------------------------

using WideReader = CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>;

// 0x57506c _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE4readEv
bool WideReader::read() { return readT(*this); }

// 0x572778 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17readToNextElementEv
bool WideReader::readToNextElement() {
    do {
        if (!read()) return false;
    } while (getNodeType() != 1);
    return true;
}

// 0x5727bc _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE11getNodeTypeEv
int WideReader::getNodeType() const { return nodeType; }

// 0x5727c4 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17getAttributeCountEv
int WideReader::getAttributeCount() const { return static_cast<int>(attributes.size()); }

// 0x5727f4 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE16getAttributeNameEi
const wchar_t* WideReader::getAttributeName(int index) const {
    const auto i = static_cast<std::size_t>(static_cast<unsigned>(index));
    return i < attributes.size() ? attributes[i].name.c_str() : nullptr;
}

// 0x572838 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17getAttributeValueEi
const wchar_t* WideReader::getAttributeValue(int index) const {
    const auto i = static_cast<std::size_t>(static_cast<unsigned>(index));
    return i < attributes.size() ? attributes[i].value.c_str() : nullptr;
}

// 0x573ab0 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE17getAttributeValueEPKw
const wchar_t* WideReader::getAttributeValue(const wchar_t* name) const {
    const SAttribute* attribute = getAttributeByName(name);
    return attribute ? attribute->value.c_str() : nullptr;
}

// 0x573a94 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE21getAttributeValueSafeEPKw
const wchar_t* WideReader::getAttributeValueSafe(const wchar_t* name) const {
    const SAttribute* attribute = getAttributeByName(name);
    return attribute ? attribute->value.c_str() : defaultValue.c_str();
}

// 0x57287c _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22getAttributeValueAsIntEPKw
int WideReader::getAttributeValueAsInt(const wchar_t* name) const {
    return static_cast<int>(getAttributeValueAsFloat(name));
}

// 0x572894 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22getAttributeValueAsIntEi
int WideReader::getAttributeValueAsInt(int index) const {
    return static_cast<int>(getAttributeValueAsFloat(index));
}

// 0x574488 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE24getAttributeValueAsFloatEPKw
// The value is narrowed with stringw2stringc and read with strtod, as the pseudocode does. A missing
// attribute gives zero.
float WideReader::getAttributeValueAsFloat(const wchar_t* name) const {
    const SAttribute* attribute = getAttributeByName(name);
    if (!attribute) return 0.f;
    const std::string narrow = glitch::core::stringw2stringc(attribute->value.c_str());
    return static_cast<float>(std::strtod(narrow.c_str(), nullptr));
}

// 0x5743f0 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE24getAttributeValueAsFloatEi
// PARTIAL: the wrapper matches the pseudocode (virtual getAttributeValue(index), narrowing, then
// fast_atof_move). fast_atof_move (0x322bc8) is partial: it reads past its table for 16 or more
// fraction digits, so such values are not reproduced.
float WideReader::getAttributeValueAsFloat(int index) const {
    const wchar_t* text = getAttributeValue(index);
    if (!text) return 0.f;
    const std::string narrow = glitch::core::stringw2stringc(text);
    float result = 0.f;
    glitch::core::fast_atof_move(narrow.c_str(), result);
    return result;
}

// 0x5728ac _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE11getNodeNameEv
const wchar_t* WideReader::getNodeName() const { return nodeName.c_str(); }

// 0x5728b4 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE11getNodeDataEv
const wchar_t* WideReader::getNodeData() const { return nodeName.c_str(); }

// 0x5728bc _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE14isEmptyElementEv
bool WideReader::isEmptyElement() const { return emptyElement; }

// 0x5728c4 _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15getSourceFormatEv
int WideReader::getSourceFormat() const { return sourceFormat; }

// 0x5728cc _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15getParserFormatEv
int WideReader::getParserFormat() const { return parserFormat; }

// 0x5739cc _ZNK6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE18getAttributeByNameEPKw
const WideReader::SAttribute* WideReader::getAttributeByName(const wchar_t* name) const {
    if (!name) return nullptr;
    const core::stringw key(name);
    for (const SAttribute& attribute : attributes) {
        if (attribute.name == key) return &attribute;
    }
    return nullptr;
}

// 0x573928 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEED1Ev
// The text buffer is released with operator delete[], as the original does (it is always a new[] block:
// the read buffer, or the widened copy). The std members are destroyed after this body, in place of the
// original's explicit frees of its inline string buffers.
CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::~CXMLReaderImpl() {
    ::operator delete[](textOwner);
}

// 0x573104 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE8readFileEPNS0_17IFileReadCallBackE
bool WideReader::readFile(IFileReadCallBack* callback) {
    const long size = callback->getSize();
    if (size < 0) return false;
    const int bufferSize = static_cast<int>(size) + 4;
    char* buffer = new char[static_cast<std::size_t>(bufferSize)];
    // The listing tests the callback's result (slot +0x08): a zero count frees the buffer and fails.
    if (!callback->read(buffer, static_cast<int>(size))) {
        delete[] buffer;
        return false;
    }
    std::memset(buffer + size, 0, 4);

    std::uint32_t head32 = 0;
    std::memcpy(&head32, buffer, sizeof head32);
    if (head32 == 0xFFFE0000u) {
        sourceFormat = 4;
        convertTextData(reinterpret_cast<std::uint32_t*>(buffer) + 1, buffer, bufferSize / 4 - 1);
        return true;
    }
    if (head32 == 0x0000FEFFu) {
        sourceFormat = 5;
        convertTextData(reinterpret_cast<std::uint32_t*>(buffer) + 1, buffer, bufferSize / 4 - 1);
        return true;
    }
    std::uint16_t head16 = 0;
    std::memcpy(&head16, buffer, sizeof head16);
    if (head16 == 0xFFFEu) {
        sourceFormat = 2;
        convertTextData(reinterpret_cast<std::uint16_t*>(buffer) + 1, buffer, bufferSize / 2 - 1);
        return true;
    }
    if (head16 != 0xFEFFu) {
        sourceFormat = 0;
        convertTextData(buffer, buffer, bufferSize);
        return true;
    }
    sourceFormat = 3;
    convertTextData(reinterpret_cast<std::uint16_t*>(buffer) + 1, buffer, bufferSize / 2 - 1);
    return true;
}

// 0x574f48 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE16parseCurrentNodeEv
bool WideReader::parseCurrentNode() { return parseCurrentNodeT(*this); }

// 0x5749a0 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22parseOpeningXMLElementEv
void WideReader::parseOpeningXMLElement() { parseOpeningT(*this); }

// 0x573854 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE22parseClosingXMLElementEv
void WideReader::parseClosingXMLElement() { parseClosingT(*this); }

// 0x57378c _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE12parseCommentEv
void WideReader::parseComment() { parseCommentT(*this); }

// 0x574da8 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE10parseCDATAEv
bool WideReader::parseCDATA() { return parseCDATAT(*this); }

// 0x5748ac _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE7setTextEPwS4_
bool WideReader::setText(wchar_t* begin, wchar_t* end) { return setTextT(*this, begin, end); }

// 0x574520 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE24replaceSpecialCharactersERSbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEE
core::stringw WideReader::replaceSpecialCharacters(const core::stringw& text) const {
    return replaceSpecialCharactersT(*this, text);
}

// 0x575108 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE26createSpecialCharacterListEv
void WideReader::createSpecialCharacterList() { createSpecialCharacterListT(*this); }

// 0x57259c _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15convertTextDataImEEvPT_Pci
// Keeps the caller's buffer as the owner; only the byte order is changed. The text is read as
// wchar_t units (4 bytes in the original build).
void CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::convertTextData(std::uint32_t* text, char* owner,
                                                                       int length) {
    if (isSwappedFormat(parserFormat) != isSwappedFormat(sourceFormat)) swapUnits(text);
    textOwner = owner;
    textData = reinterpret_cast<wchar_t*>(text);
    textLength = length;
}

// 0x572fb0 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15convertTextDataItEEvPT_Pci
void CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::convertTextData(std::uint16_t* text, char* owner,
                                                                       int length) {
    if (isSwappedFormat(parserFormat) != isSwappedFormat(sourceFormat)) swapUnits(text);
    textOwner = owner;
    textData = reinterpret_cast<wchar_t*>(text);
    textLength = length;
}

// 0x573094 _ZN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEE15convertTextDataIcEEvPT_Pci
// Widens the text into a new wchar_t buffer (4 bytes per unit), then releases the old owner.
void CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>::convertTextData(char* text, char* owner, int length) {
    wchar_t* buffer = new wchar_t[static_cast<std::size_t>(length)];
    for (int i = 0; i < length; ++i) buffer[i] = static_cast<wchar_t>(static_cast<unsigned char>(text[i]));
    delete[] owner;
    textOwner = buffer;
    textData = buffer;
    textLength = length;
}

}  // namespace glitch::io
