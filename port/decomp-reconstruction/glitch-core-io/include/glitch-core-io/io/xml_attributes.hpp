// glitch::io::CXMLAttributesReader and CXMLAttributesWriter: attribute (de)serialisers over an
// XML reader or writer. Layout from the original offsets: +0x04 the reader or writer (reference
// counted, taken by the constructor and released by the destructor), +0x08 flag byte,
// +0x0c element name (wide string). The attribute readers are not refcounted themselves.
#pragma once

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/xml_reader.hpp"
#include "glitch-core-io/io/xml_writer.hpp"

namespace glitch::io {

class CXMLAttributesReader : public IAttributesReader {
public:
    // 0x570cd0 (C2), 0x570d18 (C1). The reader is the port's wide XML reader implementation
    // (IIrrXMLReader<wchar_t> is not in the port).
    CXMLAttributesReader(CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>* reader, bool flag, const wchar_t* name);
    ~CXMLAttributesReader() override;  // 0x570d60 (D2), 0x570d98 (D1)

    // 0x571920 (vtable +0x08): clears the attributes, then reads the elements of the XML until the closing tag of the root element
    // (the element name given to the constructor, "attributes" by default); every opening tag becomes an attribute (or a group push),
    // every closing "group" tag a pop. With the flag set the current node must be the root element, else nothing is read and false
    // is returned.
    bool read(IAttributes* attributes) override;
    // 0x57108c: one element: its "n" attribute is the attribute name, its tag the type ("group", "enum", "color", "colorf", "float",
    // "int", "bool", "string", "texture", "vector3d", "vector4d", "position", "rect", "matrix", "quaternion", "box3d", "plane",
    // "triangle", "line2d", "line3d", "stringwarray"; "binary" is recognised and ignored) and its "value" attribute the text handed to
    // the matching addStringAs<Type>; stringwarray reads "c" values "value0".. into an array.
    void readAttributeFromXML(IAttributes* attributes);

    CXMLAttributesReader(const CXMLAttributesReader&) = delete;
    CXMLAttributesReader& operator=(const CXMLAttributesReader&) = delete;

    CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>* reader = nullptr;  // +0x04
    bool flag = false;                                                       // +0x08
    const wchar_t* name = nullptr;                                           // +0x0c
};

class CXMLAttributesWriter : public IAttributesWriter {
public:
    // 0x571b00 (C2), 0x571b48 (C1)
    CXMLAttributesWriter(IXMLWriter* writer, bool flag, const wchar_t* name);
    ~CXMLAttributesWriter() override;  // 0x571b90 (D2), 0x571bc8 (D1)

    // 0x5723f8 (vtable +0x08): with the flag set the XML header is written; then the root element (the constructor's element name,
    // "attributes" by default), a line break, the attributes (writeGroup), the closing tag and a line break. Always true.
    bool write(IAttributes* attributes) override;
    // 0x571d60: a "group" element named after the current group (when it has a name), one element per attribute (type string as tag,
    // "n" the name, "value" the text; arrays as "c" and "value<i>"), every sub-group recursively, and the closing "group" tag.
    void writeGroup(IAttributes* attributes);

    CXMLAttributesWriter(const CXMLAttributesWriter&) = delete;
    CXMLAttributesWriter& operator=(const CXMLAttributesWriter&) = delete;

    IXMLWriter* writer = nullptr;  // +0x04
    bool flag = false;             // +0x08
    const wchar_t* name = nullptr; // +0x0c
};

}  // namespace glitch::io
