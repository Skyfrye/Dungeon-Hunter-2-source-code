// glitch::io::CXMLReaderImpl<char / wchar_t, glitch::IReferenceCounted>: the IrrXML-style reader.
// The two instantiations do not share a layout: the attribute records are 0x30 bytes for char and
// 0x90 bytes for wchar_t, so each is an explicit specialisation. Offsets are the original's, kept as
// comments. The parser bodies are shared through templates in src/xml_reader.cpp, but every original
// entry point keeps its own member function.
//
// Text buffer: +0x08 owner (the allocation that is released with the text), +0x0c current read
// position (P), +0x10 begin of the buffer, +0x14 buffer length (including the four zero bytes the
// file read appends). Node name and node data share one string at +0x24.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

template <typename CharT, typename Super>
class CXMLReaderImpl;

template <>
// _ZTVN6glitch2io14CXMLReaderImplIcNS_17IReferenceCountedEEE: an IIrrXMLReader<char, IReferenceCounted>.
class CXMLReaderImpl<char, glitch::IReferenceCounted> : public IIrrXMLReader<char, glitch::IReferenceCounted> {
public:
    using CharType = char;
    using StringType = core::stringc;

    // One attribute record (0x30 bytes in the original).
    struct SAttribute {
        core::stringc name;   // (its c_str is returned)
        core::stringc value;  // (its c_str is returned)
    };

    // 0x573eb0 (D1): releases the text buffer (operator delete[]); the std members are destroyed after it.
    ~CXMLReaderImpl() override;

    // Parser step (vtable +0x0c). 0x576048: returns the pending closing node of an empty element, or
    // parses the next node from the current position.
    bool read() override;

    // 0x572634 (vtable +0x10): reads until the node type is 1, false at the end.
    bool readToNextElement() override;
    int getNodeType() const override;                                  // 0x572678 (+0x14)
    int getAttributeCount() const override;                            // 0x572680 (+0x18)
    const char* getAttributeName(int index) const override;            // 0x5726a8 (+0x1c)
    const char* getAttributeValue(int index) const override;           // 0x5726e4 (+0x20)
    const char* getAttributeValue(const char* name) const override;    // 0x5742a4 (+0x24)
    const char* getAttributeValueSafe(const char* name) const override;  // 0x574288 (+0x28)
    int getAttributeValueAsInt(const char* name) const override;       // 0x572720 (+0x2c)
    int getAttributeValueAsInt(int index) const override;              // 0x572738 (+0x30)
    float getAttributeValueAsFloat(const char* name) const override;   // 0x5742b8 (+0x34)
    float getAttributeValueAsFloat(int index) const override;          // 0x574354 (+0x38)
    const char* getNodeName() const override;                          // 0x572750 (+0x3c)
    const char* getNodeData() const override;                          // 0x572758 (+0x40)
    bool isEmptyElement() const override;                              // 0x572760 (+0x44)
    int getSourceFormat() const override;                              // 0x572768 (+0x48)
    int getParserFormat() const override;                              // 0x572770 (+0x4c)

    // 0x572e78: takes the whole file from the callback, detects a byte order mark and converts the
    // text. The current position (P) is not set here, as in the original.
    bool readFile(IFileReadCallBack* callback);

    // Parser pieces (member functions of the original, same names).
    bool parseCurrentNode();                 // 0x575f3c
    void parseOpeningXMLElement();           // 0x575918
    void parseClosingXMLElement();           // 0x573f54
    void parseComment();                     // 0x57405c
    bool parseCDATA();                       // 0x575d68
    bool setText(char* begin, char* end);    // 0x5757f0
    StringType replaceSpecialCharacters(const StringType& text) const;  // 0x57539c
    void createSpecialCharacterList();       // 0x5760e4

    // First attribute with this name, or nullptr. 0x574164
    const SAttribute* getAttributeByName(const char* name) const;

    // 0x572ca4 (uint32 units, copies into a new char buffer), 0x572d94 (uint16 units, same copy).
    void convertTextData(std::uint32_t* text, char* owner, int length);
    void convertTextData(std::uint16_t* text, char* owner, int length);

    void* textOwner = nullptr;   // +0x08
    char* current = nullptr;     // +0x0c (P)
    char* textData = nullptr;    // +0x10
    int textLength = 0;          // +0x14
    int nodeType = 0;            // +0x18
    int sourceFormat = 0;        // +0x1c
    int parserFormat = 0;        // +0x20
    core::stringc nodeName;        // +0x24: the node name, and the node data for text nodes
    core::stringc defaultValue;    // +0x50: returned by getAttributeValueSafe when missing
    core::svector<core::stringc> specialCharacters;  // +0x58: "&amp;", "<lt;", ">gt;", "\"quot;", "'apos;"
    bool emptyElement = false;   // +0x54
    std::vector<SAttribute> attributes;  // +0x64 begin, +0x68 end
};

template <>
// _ZTVN6glitch2io14CXMLReaderImplIwNS_17IReferenceCountedEEE: an IIrrXMLReader<wchar_t, IReferenceCounted>.
class CXMLReaderImpl<wchar_t, glitch::IReferenceCounted> : public IIrrXMLReader<wchar_t, glitch::IReferenceCounted> {
public:
    using CharType = wchar_t;
    using StringType = core::stringw;

    // One attribute record (0x90 bytes in the original).
    struct SAttribute {
        core::stringw name;   // (its c_str is returned)
        core::stringw value;  // (its c_str is returned)
    };

    // 0x573928 (D1): releases the text buffer (operator delete[]); the std members are destroyed after it.
    ~CXMLReaderImpl() override;

    // 0x57506c: as the narrow reader; the wide text is read in 4-byte units (wchar_t on the target).
    bool read() override;

    bool readToNextElement() override;                                    // 0x572778 (+0x10)
    int getNodeType() const override;                                     // 0x5727bc (+0x14)
    int getAttributeCount() const override;                               // 0x5727c4 (+0x18)
    const wchar_t* getAttributeName(int index) const override;            // 0x5727f4 (+0x1c)
    const wchar_t* getAttributeValue(int index) const override;           // 0x572838 (+0x20)
    const wchar_t* getAttributeValue(const wchar_t* name) const override;  // 0x573ab0 (+0x24)
    const wchar_t* getAttributeValueSafe(const wchar_t* name) const override;  // 0x573a94 (+0x28)
    int getAttributeValueAsInt(const wchar_t* name) const override;       // 0x57287c (+0x2c)
    int getAttributeValueAsInt(int index) const override;                 // 0x572894 (+0x30)
    // Float accessors (0x574488 and 0x5743f0): PARTIAL, defined in xml_reader.cpp. The text is
    // narrowed through stringw2stringc, which is itself partial.
    float getAttributeValueAsFloat(const wchar_t* name) const override;  // 0x574488 (+0x34)
    float getAttributeValueAsFloat(int index) const override;            // 0x5743f0 (+0x38)
    const wchar_t* getNodeName() const override;                          // 0x5728ac (+0x3c)
    const wchar_t* getNodeData() const override;                          // 0x5728b4 (+0x40)
    bool isEmptyElement() const override;                                 // 0x5728bc (+0x44)
    int getSourceFormat() const override;                                 // 0x5728c4 (+0x48)
    int getParserFormat() const override;                                 // 0x5728cc (+0x4c)

    // 0x573104: as the narrow reader. Without a byte order mark the bytes are widened (convertTextData<char>).
    bool readFile(IFileReadCallBack* callback);

    bool parseCurrentNode();                 // 0x574f48
    void parseOpeningXMLElement();           // 0x5749a0
    void parseClosingXMLElement();           // 0x573854
    void parseComment();                     // 0x57378c
    bool parseCDATA();                       // 0x574da8
    bool setText(wchar_t* begin, wchar_t* end);  // 0x5748ac
    StringType replaceSpecialCharacters(const StringType& text) const;  // 0x574520
    void createSpecialCharacterList();       // 0x575108

    // First attribute with this name, or nullptr. 0x5739cc
    const SAttribute* getAttributeByName(const wchar_t* name) const;

    // Converts a text buffer read from a file of the given encoding (see sourceFormat and
    // parserFormat). 0x57259c (uint32), 0x572fb0 (uint16): the buffer is kept as the owner, byte-swapping
    // the code units first when the two formats differ. 0x573094 (char): widens into a new buffer.
    void convertTextData(std::uint32_t* text, char* owner, int length);
    void convertTextData(std::uint16_t* text, char* owner, int length);
    void convertTextData(char* text, char* owner, int length);

    void* textOwner = nullptr;   // +0x08
    wchar_t* current = nullptr;  // +0x0c (P)
    wchar_t* textData = nullptr; // +0x10
    int textLength = 0;          // +0x14
    int nodeType = 0;            // +0x18
    int sourceFormat = 0;        // +0x1c
    int parserFormat = 0;        // +0x20
    core::stringw nodeName;       // +0x24: the node name, and the node data for text nodes
    core::stringw defaultValue;   // +0xb0: returned by getAttributeValueSafe when missing
    core::svector<core::stringw> specialCharacters;  // +0x58
    bool emptyElement = false;   // +0xb4
    std::vector<SAttribute> attributes;  // +0xc4 begin, +0xc8 end
};

}  // namespace glitch::io
