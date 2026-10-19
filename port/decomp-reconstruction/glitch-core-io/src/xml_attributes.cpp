#include "glitch-core-io/io/xml_attributes.hpp"

#include <string>
#include <vector>

#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/iattributes.hpp"

namespace glitch::io {

// 0x570cd0 _ZN6glitch2io20CXMLAttributesReaderC2EPNS0_13IIrrXMLReaderIwNS_17IReferenceCountedEEEbPKw
// 0x570d18 (C1) is the same body.
CXMLAttributesReader::CXMLAttributesReader(CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>* readerArg,
                                           bool flagArg, const wchar_t* nameArg)
    : reader(readerArg), flag(flagArg), name(nameArg) {
    ++reader->referenceCounter;
}

// 0x570d60 _ZN6glitch2io20CXMLAttributesReaderD2Ev (D1 at 0x570d98 is the same body)
CXMLAttributesReader::~CXMLAttributesReader() {
    if (reader) reader->drop();
}

// 0x57108c _ZN6glitch2io20CXMLAttributesReader20readAttributeFromXMLEPNS0_11IAttributesE
// The element's tag (vtable +0x3c getNodeName) chooses the type; the attribute name is the narrowed "n" attribute (+0x24
// getAttributeValue). Every type but "group", "enum", "string", "stringwarray" and "binary" passes the "value" attribute, still wide,
// to the matching addStringAs<Type> (flag false); "group" pushes the group, "enum" adds an enum whose literal is the narrowed value
// (no choices), "string" adds a string from the narrowed value, "binary" is compared and then ignored.
void CXMLAttributesReader::readAttributeFromXML(IAttributes* attributes) {
    const std::wstring tag(reader->getNodeName());
    const std::string attributeName = glitch::core::stringw2stringc(reader->getAttributeValue(L"n"));
    const char* const nameText = attributeName.c_str();

    if (tag == L"group") {
        attributes->push(nameText);
    } else if (tag == L"enum") {
        const std::string literal = glitch::core::stringw2stringc(reader->getAttributeValue(L"value"));
        attributes->addEnum(nameText, literal.c_str(), nullptr, false);
    } else if (tag == L"color") {
        attributes->addStringAsColor(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"colorf") {
        attributes->addStringAsColorf(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"float") {
        attributes->addStringAsFloat(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"int") {
        attributes->addStringAsInt(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"bool") {
        attributes->addStringAsBool(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"string") {
        const std::string text = glitch::core::stringw2stringc(reader->getAttributeValue(L"value"));
        attributes->addString(nameText, text.c_str(), false);
    } else if (tag == L"texture") {
        attributes->addStringAsTexture(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"vector3d") {
        attributes->addStringAsVector3d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"vector4d") {
        attributes->addStringAsVector4d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"position") {
        attributes->addStringAsPosition2d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"rect") {
        attributes->addStringAsRect(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"matrix") {
        attributes->addStringAsMatrix(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"quaternion") {
        attributes->addStringAsQuaternion(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"box3d") {
        attributes->addStringAsBox3d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"plane") {
        attributes->addStringAsPlane3d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"triangle") {
        attributes->addStringAsTriangle3d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"line2d") {
        attributes->addStringAsLine2d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"line3d") {
        attributes->addStringAsLine3d(nameText, reader->getAttributeValue(L"value"), false);
    } else if (tag == L"stringwarray") {
        // "c" (+0x2c getAttributeValueAsInt) entries named "value0" .. "value<c-1>".
        glitch::core::svector<glitch::core::stringw> values;
        const int count = reader->getAttributeValueAsInt(L"c");
        const std::wstring prefix(L"value");
        for (int i = 0; i < count; ++i) {
            const std::wstring key = prefix + glitch::core::int2stringw(i);
            values.push_back(glitch::core::stringw(reader->getAttributeValue(key.c_str())));
        }
        attributes->addArray(nameText, values, false);
    } else {
        (void)(tag == L"binary");  // compared by the original; nothing is read for it
    }
}

// 0x571920 _ZN6glitch2io20CXMLAttributesReader4readEPNS0_11IAttributesE
// The attributes are cleared (vtable +0x2c). The root element name is the constructor's name, or "attributes". Without the flag, or
// with the flag when the current node is that root element, the XML is read node by node (+0x0c): an opening tag (type 1) goes to
// readAttributeFromXML, a closing tag (type 2) of the root element ends the read, a closing "group" tag pops the group (+0x3c).
// With the flag set and another current node nothing is read and the answer is false.
bool CXMLAttributesReader::read(IAttributes* attributes) {
    attributes->clear();
    std::wstring root(L"attributes");
    if (name != nullptr) root = name;
    if (flag && !(root == reader->getNodeName())) return false;
    while (reader->read()) {
        const int type = reader->getNodeType();
        if (type == 1) {
            readAttributeFromXML(attributes);
            continue;
        }
        if (type != 2) continue;
        const std::wstring closing(reader->getNodeName());
        if (root == closing) break;
        if (closing == L"group") attributes->pop();
    }
    return true;
}

// 0x571b00 _ZN6glitch2io20CXMLAttributesWriterC2EPNS0_10IXMLWriterEbPKw
// 0x571b48 (C1) is the same body.
CXMLAttributesWriter::CXMLAttributesWriter(IXMLWriter* writerArg, bool flagArg, const wchar_t* nameArg)
    : writer(writerArg), flag(flagArg), name(nameArg) {
    ++writer->referenceCounter;
}

// 0x571b90 _ZN6glitch2io20CXMLAttributesWriterD2Ev (D1 at 0x571bc8 is the same body)
CXMLAttributesWriter::~CXMLAttributesWriter() {
    if (writer) writer->drop();
}

// 0x5723f8 _ZN6glitch2io20CXMLAttributesWriter5writeEPNS0_11IAttributesE
bool CXMLAttributesWriter::write(IAttributes* attributes) {
    if (flag) writer->writeXMLHeader();
    std::wstring root(L"attributes");
    if (name != nullptr) root = name;
    writer->writeElement(root.c_str(), false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr);
    writer->writeLineBreak();
    writeGroup(attributes);
    writer->writeClosingTag(root.c_str());
    writer->writeLineBreak();
    return true;
}

// 0x571d60 _ZN6glitch2io20CXMLAttributesWriter10writeGroupEPNS0_11IAttributesE
void CXMLAttributesWriter::writeGroup(IAttributes* attributes) {
    // The current group's name (getGroupName, +0x48), widened byte by byte with sign extension.
    {
        const std::string& group = attributes->getGroupName();
        if (!group.empty()) {
            std::wstring groupName;
            for (char c : group) groupName.push_back(static_cast<wchar_t>(c));
            writer->writeElement(L"group", false, L"n", groupName.c_str(), nullptr, nullptr, nullptr, nullptr, nullptr, nullptr,
                                 nullptr, nullptr);
            writer->writeLineBreak();
        }
    }
    // One element per attribute: the type string is the tag. A "stringwarray" (type 22) carries "n", "c" and "value<i>" lists, every
    // other type "n" and "value" (the attribute's text through getStringW).
    for (int index = 0; index < attributes->getAttributeCount(); ++index) {
        if (attributes->getAttributeType(index) == 22) {
            const glitch::core::svector<glitch::core::stringw> array = attributes->getArray(index);
            glitch::core::svector<glitch::core::stringw> names;
            glitch::core::svector<glitch::core::stringw> values;
            names.push_back(L"n");
            values.push_back(glitch::core::to_stringw(glitch::core::stringc2stringw(attributes->getAttributeName(index))));
            names.push_back(L"c");
            values.push_back(glitch::core::to_stringw(glitch::core::int2stringw(static_cast<int>(array.size()))));
            const std::wstring prefix(L"value");
            for (unsigned i = 0; i < array.size(); ++i) {
                names.push_back(glitch::core::stringw((prefix + glitch::core::int2stringw(static_cast<int>(i))).c_str()));
                values.push_back(array[i]);
            }
            writer->writeElement(attributes->getAttributeTypeString(index), true, names, values);
        } else {
            const wchar_t* typeString = attributes->getAttributeTypeString(index);
            const std::wstring attributeName = glitch::core::stringc2stringw(attributes->getAttributeName(index));
            const std::wstring text = attributes->getStringW(index);
            writer->writeElement(typeString, true, L"n", attributeName.c_str(), L"value", text.c_str(), nullptr, nullptr, nullptr,
                                 nullptr, nullptr, nullptr);
        }
        writer->writeLineBreak();
    }
    // The sub-groups: each is made current (setGroup, +0x44), written, and left again (pop, +0x3c).
    for (unsigned child = 0; child < static_cast<unsigned>(attributes->getGroupsCount()); ++child) {
        attributes->setGroup(child);
        writeGroup(attributes);
        attributes->pop();
    }
    if (!attributes->getGroupName().empty()) {
        writer->writeClosingTag(L"group");
        writer->writeLineBreak();
    }
}

}  // namespace glitch::io
