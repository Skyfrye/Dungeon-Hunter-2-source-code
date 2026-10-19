// glitch::debugger::CTweakable: the debug tweaker base class. Owned by the glitch-scene-collada-gui queue (the
// engine-glitch functions at 0x31f410 .. 0x32cfc8 and 0x404ab0 in its queue.csv). This is the one canonical
// declaration; the game classes (dh2/GamepadTweaker.hpp, dh2/PlayerLightTweaker.hpp) include it by this path.
//
// A tweaker holds named variables (int, float, SColor) registered by its derived class, and a root group name
// and xml file name loaded from a tweaker XML. Original size: the base occupies +0x00 .. +0x7b (the game classes
// place their first member at +0x7c).
//
// Vtable (tools/decomp_vtable.py, _ZTVN6glitch8debugger10CTweakableE): +0x00/+0x04 ~CTweakable, +0x08
// getInstanceName, +0x0c getXML, +0x10 writeValues, +0x14 onSetValue.
//
// State of the rows that touch this class (rechecked against the listing):
//  * setValue (0x32b3b4) and loadGroup (0x32b650): the reason recorded earlier ("CAttributes not mapped") was
//    STALE - glitch-core-io's CAttributes (io/attributes.hpp, vtable slots verified against IAttributes) has every
//    getter and group call the listings use, so both bodies are written below and are `reconstructed`.
//  * writeValues (0x328994): RECONSTRUCTED. Its own body reads CXMLWriter ctor, writeXMLHeader, an open
//    L"attributes" element with no attribute pairs (empty = true), a line break, writeGroup(this, group, writer,
//    true), the closing tag, a line break, then the writer is destroyed.
//  * writeGroup (0x327be0): RECONSTRUCTED. The blocker recorded earlier (the nine attribute temporaries'
//    constructor arguments "not exposed by the listing") was WRONG: the listing constructs every one of them with
//    an empty name and its zero default (the literal at 0x8cb7d8 is "" and the value words are 0; the two colour
//    temporaries get SColorf (0,0,0,0) and (0,0,0,1); the flag byte is 1) and takes the value from the SMapping
//    afterwards through setColor/setVector2d/3d/4d or the member store. The earlier note also misread the call:
//    the element name is not L"n" - that is the standard name attribute - the element name is the mapped
//    variable's TYPE STRING, IAttribute vtable slot +0x108 (getTypeString), fetched with a second vtable call
//    before the element is written. The "value"/"range"/"desc" arguments are narrow glitch strings widened with
//    core::stringc2stringw, and the "n" argument is the variable name widened the same way.
//  * loadXML (0x32b6b8): the recorded blocker was also STALE (CReadFile, CXMLAttributesReader and CAttributes all
//    exist). Its real blocker is in glitch-core-io/os/device.hpp: IDevice's file system member (original +0x34) is
//    declared `FileSystemWin32*`, which has no vtable, while the listing calls its IFileSystem slot +0x50
//    (createXMLReader(IReadFile*)). The member needs to be the glitch::io::IFileSystem the device constructor gets
//    from CIrrFactory::createFileSystem (0x533fb0). Everything else the body needs is present. Re-checked when this
//    header was last edited: the retype has NOT landed (os/device.hpp still says `FileSystemWin32* fileSystem` at
//    +0x34 and forward-declares FileSystemWin32 from core-platform/filesystem_win32.hpp), and this file may not
//    edit another category's header, so the row stays `partial` with that one missing item.
//  * SGroup::~SGroup (0x329d64): the group record's members are recovered from the listing (see the class below);
//    the defaulted member-wise destructor is defined out of line in src/recon/slice_00.cpp so that the original
//    symbol exists, and it makes exactly the three calls the listing shows.
#pragma once

#include <cstdint>
#include <map>
#include <string>
#include <vector>

#include "glitch-shared/glitch_core.hpp"  // glitch::video::SColor

// The attribute classes writeGroup instantiates (CIntAttribute, CFloatAttribute, CStringAttribute, CBoolAttribute,
// CColorAttribute, CColorfAttribute, CVector2D/3D/4DAttribute) are complete types, so the typed-attribute headers are
// included here rather than forward-declared.
#include "glitch-core-io/core/strings.hpp"        // glitch::core::stringc2stringw
#include "glitch-core-io/io/attributes.hpp"       // glitch::io::IAttribute
#include "glitch-core-io/io/scalar_attributes.hpp"  // CIntAttribute, CFloatAttribute, CBoolAttribute
#include "glitch-core-io/io/typed_attributes.hpp"  // CStringAttribute, CColorAttribute, CVector*DAttribute
#include "glitch-core-io/io/xml_writer.hpp"        // glitch::io::CXMLWriter::writeElement

namespace glitch {
class IDevice;  // glitch-core-io/include/glitch-core-io/os/device.hpp
}  // namespace glitch

namespace glitch::debugger {

class CTweakable {
public:
    // A registered variable: the value kind (E_ATTRIBUTE_TYPE in the original: 0 int, 1 float, 5 SColor), the address of
    // the variable, and the name and text strings.
    class SMapping {
    public:
        // 0x32d088 _ZN6glitch8debugger10CTweakable8SMappingC1ENS_2io16E_ATTRIBUTE_TYPEEPv
        SMapping() = default;
        SMapping(int t, void* v) : type(t), value(v) {}
        // 0x320294 _ZN6glitch8debugger10CTweakable8SMappingaSERKS2_: member-wise copy, the defaulted assignment.

        int type = 0;            // +0x00
        void* value = nullptr;   // +0x04
        std::string name;        // +0x08
        std::string text;        // +0x20
    };

    // glitch::debugger::CTweakable::SGroup: the group record (0x34 bytes in the original). Layout from the
    // destructor 0x329d64, which runs the three member destructors in reverse declaration order:
    //   _ZNSt6vectorIN6glitch8debugger10CTweakable6SGroupESaIS3_EED1Ev at this+9 dwords = +0x24
    //   _ZNSt6vectorISsSaISsEED1Ev at this+6 dwords = +0x18
    //   _ZNSt4priv12_String_baseIcSaIcEE19_M_deallocate_blockEv at this+0x00 (the string member)
    // so the declaration order is string, vector<std::string>, vector<SGroup>. writeGroup's child loop advances
    // 52 (0x34) bytes per element, which is the evidence for the trailing 4-byte member that the destructor never
    // touches; the CTweakable constructor (0x32cfc8) zeroes it among the eight dwords at +0x34 .. +0x53.
    // The two vectors are the plain-allocator STLport vectors (SaISs_/SaIS3_), unlike the SAllocator ones elsewhere.
    class SGroup {
    public:
        // 0x329d64 _ZN6glitch8debugger10CTweakable6SGroupD1Ev. Defaulted and defined out of line in
        // src/recon/slice_00.cpp: the compiler's member-wise destructor is exactly the listing's three calls.
        ~SGroup();

        std::string name;                        // +0x00, the group name (writeGroup writes it as the element name)
        std::vector<std::string> variableNames;  // +0x18, the group's registered variable names
        std::vector<SGroup> groups;              // +0x24, the child groups writeGroup recurses into
        std::uint32_t unk_30 = 0;                // +0x30, zeroed by the constructor and not destroyed
    };

    // 0x32cfc8 _ZN6glitch8debugger10CTweakableC2EPNS_7IDeviceE: members start empty, the device pointer is stored.
    explicit CTweakable(glitch::IDevice* dev) : device(dev) {}

    // 0x32a088 (D1) and 0x404ab0 (D2) share one body; 0x32a124 (D0) is the deleting thunk. The original clears the map
    // and frees the group names and the xml string.
    virtual ~CTweakable() {
        mappings.clear();
        names.clear();
    }

    // +0x08 _ZNK6glitch8debugger10CTweakable15getInstanceNameEv: returns the instance name id at +0x68.
    virtual int getInstanceName() const { return instanceName; }

    // +0x0c _ZNK6glitch8debugger10CTweakable6getXMLEv. Verified against Hex-Rays 0x31f418: the original body is one
    // instruction, `return this + 112`, i.e. the ADDRESS of the xml-name member at +0x70 as a char*, which is the
    // address of the std::string object rather than its text. The mangled symbol carries no return type, so this
    // signature is symbol-compatible; returning the string itself is a deliberate port deviation (a pointer into a
    // std::string is not a usable interface) and is the only deviation on this row.
    virtual const std::string& getXML() const { return xmlName; }
    // Not an original virtual: the C-string form of the same member, for the callers that compare it with
    // LC_API_STRCMP (the material-renderer path). Non-virtual, so no symbol is involved.
    const char* getXMLString() const { return xmlName.c_str(); }

    // +0x10 _ZN6glitch8debugger10CTweakable11writeValuesEPNS_2io10IWriteFileE.
    // Verified against the assembly of 0x328994 and matched call by call: CXMLWriter over the write file,
    // writeXMLHeader, an L"attributes" element with no attribute pairs (the bool argument is 0 = NOT empty, and
    // every one of the five name/value pairs is null), writeLineBreak, writeGroup(this, this+0x1c, writer, false),
    // writeClosingTag(L"attributes"), writeLineBreak, then the writer's destructor. The group argument is this+0x1c
    // - the CTweakable's own variable-name list, i.e. this member - NOT the root group name at +0x54: the original
    // reinterprets it as an SGroup and writeGroup then walks it at +0x18 as the group's own variable list, so the
    // two agree. The port cannot reinterpret (its STL objects are not STLport sizes), so a temporary SGroup holding
    // the same names in the same order is passed instead, which produces the same document.
    // Deviations: the null write-file guard, and the temporary SGroup above. The row is `partial` only because
    // writeGroup is (see there); this body itself is complete.
    virtual void writeValues(glitch::io::IWriteFile* writeFile) {
        if (writeFile == nullptr) {
            return;
        }
        glitch::io::CXMLWriter writer(writeFile);
        writer.writeXMLHeader();
        writer.writeElement(L"attributes", false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr,
                            nullptr, nullptr, nullptr);
        writer.writeLineBreak();
        SGroup group;
        group.variableNames = names;
        writeGroup(group, writer, false);
        writer.writeClosingTag(L"attributes");
        writer.writeLineBreak();
    }

    // +0x14 _ZN6glitch8debugger10CTweakable10onSetValueERKSs: empty in the original; derived classes override it.
    virtual void onSetValue(const std::string& name) { (void)name; }

    // 0x32bb98 _ZN6glitch8debugger10CTweakable20registerVariableNameEPKc: adds the name to the group list unless it is
    // already mapped.
    void registerVariableName(const char* name) {
        if (mappings.find(name) == mappings.end()) {
            names.emplace_back(name);
        }
    }

    // 0x32eeb8 _ZN6glitch8debugger10CTweakable16registerVariableEPKcRNS_5video6SColorE: maps the name to an SColor (kind 5).
    void registerVariable(const char* name, glitch::video::SColor& value) {
        registerVariableName(name);
        mappings[name] = SMapping(5, &value);
    }

    // 0x32ef4c _ZN6glitch8debugger10CTweakable16registerVariableEPKcRf: maps the name to a float (kind 1).
    void registerVariable(const char* name, float& value) {
        registerVariableName(name);
        mappings[name] = SMapping(1, &value);
    }

    // 0x32efe0 _ZN6glitch8debugger10CTweakable16registerVariableEPKcRi: maps the name to an int (kind 0).
    void registerVariable(const char* name, int& value) {
        registerVariableName(name);
        mappings[name] = SMapping(0, &value);
    }

    // 0x327be0 _ZN6glitch8debugger10CTweakable10writeGroupERNS1_6SGroupERNS_2io10CXMLWriterEb. Verified against the
    // assembly of 0x327be0 and matched block by block:
    //   * the wide literal L"group" (0x8beb80) is built once, up front;
    //   * when the flag is set, the element named by it is opened (empty = false) and a line break follows;
    //   * for every name of the group's variable list (this+0x04 map lookup by name) the mapping's type drives a
    //     ten-way switch (0 int, 1 float, 2 string, 3 bool, 5 SColor, 6 SColorf, 7 vector2d, 8 vector3d, 9 vector4d,
    //     default: no attribute at all) that materialises one stack attribute: CIntAttribute("", 0, true),
    //     CFloatAttribute("", 0, true), CStringAttribute("", "", true), CBoolAttribute("", false, true),
    //     CColorAttribute("", SColorf(0,0,0,0), true), CColorfAttribute("", SColorf(0,0,0,1), true), and the three
    //     CNumbersAttribute vector forms, each value taken from the mapped address;
    //   * the attribute is written as an empty element whose NAME is the attribute's own type string
    //     (IAttribute vtable slot +0x108, getTypeString: "int", "float", "string", "bool", "color", "colorf",
    //     "vector2d", "vector3d", "vector4d"), with the pairs n/variable-name, value/SMapping::name, range/...,
    //     desc/... and a null fifth pair:
    //     writeElement(typeString, true, L"n", stringc2stringw(variableName).c_str(), L"value",
    //                  stringc2stringw(mapping.name).c_str(), L"range", <see below>, L"desc", <see below>,
    //                  nullptr, nullptr);
    //   * the last two values are the SAME pointer in the listing: R3 = R1, the address of the local std::wstring
    //     that holds the widened value text, not its character data. CXMLWriter::writeAttribute takes a
    //     const wchar_t* and writeText (slot +0x20) walks it with wcslen/escape, so the original emits the bytes
    //     of a stack object as wide characters - address-derived text. That is the one thing the row cannot
    //     reproduce (see the body), and it is why this row is `partial` while everything else on it is verified;
    //   * then every child group is recursed into with the flag set (52 = 0x34 bytes per SGroup);
    //   * finally, when the flag is set, the tag is closed and a line break follows.
    // The listing's own wide literals are L"n" (0x8de1f0), L"value" (0x8beb98), L"range" (0x8bebb0), L"desc"
    // (0x8bebc8) and L"group" (0x8beb80); all five are read from the image as UTF-32 (four bytes per character),
    // which is why IDA's narrow-string pass printed the last three as unreadable data.
    // Deviation: the stack attributes are destroyed by their own destructors where the original inlines the same
    // release, and writeValues returns early on a null write file (host guard). The body is inline further down.

    // 0x32b3b4 _ZN6glitch8debugger10CTweakable8setValueERNS_2io11CAttributesEi. Verified against Hex-Rays
    // 0x32b3b4: getAttributeName(index) (slot +0x10) names the attribute, the mapping with that name is looked up
    // in the map, and the ten-way switch on the mapping's type writes the attribute's typed value through the
    // mapped pointer - getInt(+0x5c), getFloat(+0x74), getString(+0x8c), getBool(+0xe8), getColor(+0x128),
    // getColorf(+0x140), getVector2d(+0x1a0), getVector3d(+0x1b8), getVector4d(+0x1d0). The onSetValue virtual
    // (slot +0x14) is then called with the mapping's key name, also when the type matched no case; an unmapped name
    // returns without a call. Deviations: a null name returns early (the original feeds it to the STLport map
    // lookup, which dereferences it), and the original's return value - the value the find or onSetValue left in
    // R0, read by no caller - is not modelled. Both are host-necessitated and observable-equivalent.
    // Defined out of line in src/recon/slice_00.cpp so the mangled symbol exists even when nothing calls it.
    void setValue(glitch::io::CAttributes& attributes, int index);

    // 0x32b650 _ZN6glitch8debugger10CTweakable9loadGroupERNS_2io11CAttributesEb.clone.25. Verified against
    // Hex-Rays 0x32b650: the group count (slot +0x40, read once) drives a do/while over the group indices; each
    // index is entered with setGroup(i) (slot +0x44), the recursion runs on the same container, and pop() (slot
    // +0x3c) leaves it. The bool is unused in this clone and this pointer is never dereferenced. Deviation: the
    // listing returns the value pop() left in R0, but the port's IAttributes::pop() returns void and every caller
    // of loadGroup discards the result, so this returns 0; the source cannot spell the .clone.25 suffix either.
    // Defined out of line in src/recon/slice_00.cpp so the mangled symbol exists even when nothing calls it.
    int loadGroup(glitch::io::CAttributes& attributes, bool flag);

    // 0x32b6b8 _ZN6glitch8debugger10CTweakable7loadXMLEPKcb (verified against the decompilation): CReadFile(file, false); only when the file
    // opened, the wide XML reader of the device's file system (slot +0x50 createXMLReader(IReadFile*)) feeds a CXMLAttributesReader, a
    // CAttributes on the device's video driver is read from it, the group stack is popped until the group name is empty, the string attribute
    // "Tweakable" (when not empty) becomes rootGroup (+0x54), loadGroup runs, and the reader is dropped. Defined in src/recon/slice_00.cpp.
    void loadXML(const char* file, bool flag);

    // 0x327be0 _ZN6glitch8debugger10CTweakable10writeGroupERNS1_6SGroupERNS_2io10CXMLWriterEb. Inline because the
    // header is the one translation unit the row is owned by; every type it needs is complete above. See the
    // block-by-block comment on the declaration.
    void writeGroup(SGroup& group, glitch::io::CXMLWriter& writer, bool flag) {
        if (flag) {
            writer.writeElement(L"group", false, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr, nullptr,
                                nullptr, nullptr);
            writer.writeLineBreak();
        }
        for (std::size_t i = 0; i < group.variableNames.size(); ++i) {
            const std::string& variableName = group.variableNames[i];
            const std::map<std::string, SMapping>::iterator it = mappings.find(variableName);
            if (it == mappings.end()) {
                continue;
            }
            SMapping& mapping = it->second;
            glitch::io::IAttribute* attribute = nullptr;
            // One attribute per mapping kind, all of them built with an empty name and their zero default exactly
            // as the listing does; the mapped value is written into it afterwards.
            glitch::io::CIntAttribute intAttribute("", 0, true);
            glitch::io::CFloatAttribute floatAttribute("", 0.0f, true);
            glitch::io::CStringAttribute stringAttribute("", "", true);
            glitch::io::CBoolAttribute boolAttribute("", false, true);
            glitch::io::CColorAttribute colorAttribute("", glitch::video::SColorf{}, true);
            glitch::io::CColorfAttribute colorfAttribute("", glitch::video::SColorf{}, true);
            glitch::io::CVector2DAttribute vector2dAttribute("", glitch::core::vector2d<float>{}, true);
            glitch::io::CVector3DAttribute vector3dAttribute("", glitch::core::vector3d<float>{}, true);
            glitch::io::CVector4DAttribute vector4dAttribute("", glitch::core::vector4d<float>{}, true);
            glitch::core::vector2d<float> vector2d{};
            glitch::core::vector3d<float> vector3d{};
            glitch::core::vector4d<float> vector4d{};
            glitch::video::SColor color{};
            glitch::video::SColorf colorf{};
            switch (mapping.type) {
                case 0:  // int
                    intAttribute.value = *static_cast<int*>(mapping.value);
                    attribute = &intAttribute;
                    break;
                case 1:  // float
                    floatAttribute.value = *static_cast<float*>(mapping.value);
                    attribute = &floatAttribute;
                    break;
                case 2:  // std::string
                    stringAttribute.setString(static_cast<std::string*>(mapping.value)->c_str());
                    attribute = &stringAttribute;
                    break;
                case 3:  // bool
                    boolAttribute.value = *static_cast<bool*>(mapping.value);
                    attribute = &boolAttribute;
                    break;
                case 5:  // SColor
                    color = *static_cast<glitch::video::SColor*>(mapping.value);
                    colorAttribute.setColor(color);
                    attribute = &colorAttribute;
                    break;
                case 6:  // SColorf
                    colorf = *static_cast<glitch::video::SColorf*>(mapping.value);
                    colorfAttribute.setColor(colorf);
                    attribute = &colorfAttribute;
                    break;
                case 7:  // vector2d<float>
                    vector2d = *static_cast<glitch::core::vector2d<float>*>(mapping.value);
                    vector2dAttribute.setVector2d(vector2d);
                    attribute = &vector2dAttribute;
                    break;
                case 8:  // vector3d<float>
                    vector3d = *static_cast<glitch::core::vector3d<float>*>(mapping.value);
                    vector3dAttribute.setVector3d(vector3d);
                    attribute = &vector3dAttribute;
                    break;
                case 9:  // vector4d<float>
                    vector4d = *static_cast<glitch::core::vector4d<float>*>(mapping.value);
                    vector4dAttribute.setVector4d(vector4d);
                    attribute = &vector4dAttribute;
                    break;
                default:  // the listing leaves the attribute pointer null and the original then dereferences it
                    break;
            }
            if (attribute == nullptr) {
                continue;
            }
            // The element name is the attribute's own type string (IAttribute vtable slot +0x108); the listing
            // fetches it with a second vtable call right before the element is written. The "n" value (the variable
            // name) and the "value" text are the two narrow SMapping strings, widened exactly as the listing does:
            // the map key is read at key+0x20 and SMapping::name (+0x40) at mapping+0x20.
            // PARTIAL, and only on the last two pairs: the listing passes R3 = R1 for "range" AND "desc", where R1
            // is the ADDRESS of the local std::wstring holding the value text (the decompiler prints both as one
            // variable, v21). The original therefore feeds a wstring OBJECT to CXMLWriter::writeAttribute's
            // const wchar_t* parameter, and writeText (slot +0x20) emits memory words as wide characters - address
            // derived text that no port can copy verbatim and that differs on every run. The port writes the value
            // text in both places instead of reproducing address garbage; this is the single observable difference
            // and the reason the row stays `partial`.
            const std::wstring typeString(attribute->getTypeString());
            const std::wstring name = glitch::core::stringc2stringw(variableName.c_str());
            const std::wstring value = glitch::core::stringc2stringw(mapping.name.c_str());
            writer.writeElement(typeString.c_str(), true, L"n", name.c_str(), L"value", value.c_str(), L"range",
                                value.c_str(), L"desc", value.c_str(), nullptr, nullptr);
        }
        for (std::size_t i = 0; i < group.groups.size(); ++i) {
            writeGroup(group.groups[i], writer, true);
        }
        if (flag) {
            writer.writeClosingTag(L"group");
            writer.writeLineBreak();
        }
    }

    // +0x04 original std::map<std::string, SMapping>, keyed by the registered name.
    std::map<std::string, SMapping> mappings;  // +0x04
    // +0x1c original group name list (the push_back target of registerVariableName).
    std::vector<std::string> names;            // +0x1c
    uint8_t pad_28[0x2c];                      // +0x28 .. +0x53, not mapped
    // +0x54 root group name, assigned from the loaded XML.
    std::string rootGroup;                     // +0x54
    uint8_t pad_58[0x10];                      // +0x58 .. +0x67, not mapped
    // +0x68 instance name id, returned by getInstanceName.
    int instanceName = 0;                      // +0x68
    // +0x6c device pointer (glitch::IDevice* in the original).
    glitch::IDevice* device = nullptr;         // +0x6c
    // +0x70 xml file name, returned by getXML.
    std::string xmlName;                       // +0x70
    uint8_t pad_74[8];                         // +0x74 .. +0x7b, not mapped
};

}  // namespace glitch::debugger
