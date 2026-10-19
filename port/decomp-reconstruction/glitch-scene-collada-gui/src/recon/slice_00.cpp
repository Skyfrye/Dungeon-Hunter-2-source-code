// Slice 00 reconstruction (see include/glitch-scene-collada-gui/recon/slice_00.hpp).
// Each function keeps the original address and mangled symbol in its comment.

#include "glitch-scene-collada-gui/recon/slice_00.hpp"

#include "glitch-core-io/io/attributes.hpp"  // glitch::io::CAttributes (setValue, loadGroup)
#include "glitch-core-io/io/read_file.hpp"
#include "glitch-core-io/io/xml_attributes.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/debugger/CTweakable.hpp"

#include <cstring>
#include <cwchar>

namespace glitch::collada::recon_00 {

// ---------------------------------------------------------------------------
// glitch::debugger::CTweakable
// ---------------------------------------------------------------------------

// 0x32d088 _ZN6glitch8debugger10CTweakable8SMappingC1ENS_2io16E_ATTRIBUTE_TYPEEPv
TweakableMapping::TweakableMapping(int t, void* v) : type(t), value(v) {}

// 0x320294 _ZN6glitch8debugger10CTweakable8SMappingaSERKS2_
TweakableMapping& TweakableMapping::operator=(const TweakableMapping& other) {
    type = other.type;    // +0x00
    value = other.value;  // +0x04
    name = other.name;    // +0x08
    text = other.text;    // +0x20
    return *this;
}

// 0x32cfc8 _ZN6glitch8debugger10CTweakableC2EPNS_7IDeviceE
// Members start empty, as the original sets its two empty string blocks and
// its empty map and list.
Tweakable::Tweakable(void* dev) : device(dev) {}

// 0x32a088 _ZN6glitch8debugger10CTweakableD1Ev, D2 at 0x404ab0 shares this body.
// Original clears the map, frees the group names and the xml string. Those are
// member destructors here; the map is cleared explicitly, as the original does.
Tweakable::~Tweakable() {
    mappings.clear();
    names.clear();
}

// 0x31f420 _ZN6glitch8debugger10CTweakable10onSetValueERKSs (empty body)
void Tweakable::onSetValue(const std::string&) {}

// 0x31f410 _ZNK6glitch8debugger10CTweakable15getInstanceNameEv
int Tweakable::getInstanceName() const {
    return instanceName;
}

// 0x31f418 _ZNK6glitch8debugger10CTweakable6getXMLEv
// Partial: the original returns the member address reinterpreted as char*.
const std::string& Tweakable::getXML() const {
    return xmlName;
}

// 0x32bb98 _ZN6glitch8debugger10CTweakable20registerVariableNameEPKc
void Tweakable::registerVariableName(const char* name) {
    if (mappings.find(name) == mappings.end()) {
        names.emplace_back(name);
    }
}

// 0x32eeb8 _ZN6glitch8debugger10CTweakable16registerVariableEPKcRNS_5video6SColorE
void Tweakable::registerVariable(const char* name, glitch::video::SColor& value) {
    registerVariableName(name);
    mappings[name] = TweakableMapping(5, &value);
}

// 0x32ef4c _ZN6glitch8debugger10CTweakable16registerVariableEPKcRf
void Tweakable::registerVariable(const char* name, float& value) {
    registerVariableName(name);
    mappings[name] = TweakableMapping(1, &value);
}

// 0x32efe0 _ZN6glitch8debugger10CTweakable16registerVariableEPKcRi
void Tweakable::registerVariable(const char* name, int& value) {
    registerVariableName(name);
    mappings[name] = TweakableMapping(0, &value);
}

// 0x328994 _ZN6glitch8debugger10CTweakable11writeValuesEPNS_2io10IWriteFileE
// Partial: the XML writer (writeElement / writeClosingTag) is not mapped; the
// group walk writeGroup(this, group, writer, 0) is not reproduced.
void Tweakable::writeValues(void* writeFile) {
    (void)writeFile;
}

// 0x32b3b4 _ZN6glitch8debugger10CTweakable8setValueERNS_2io11CAttributesEi
// Partial: the 10-way type switch reads typed values through CAttributes
// virtuals (slots +16, +92, +116, +140, +232, +296, +320, +416, +440, +464),
// none of which are mapped. Returns null for now.
void* Tweakable::setValue(void* attributes, int index) {
    (void)attributes;
    (void)index;
    return nullptr;
}

// 0x32b650 _ZN6glitch8debugger10CTweakable9loadGroupERNS_2io11CAttributesEb.clone.25
// Partial: recursion over the attribute group children; the attribute walker
// (slots +60, +64, +68) is not mapped.
int Tweakable::loadGroup(void* attributes, bool flag) {
    (void)attributes;
    (void)flag;
    return 0;
}

// 0x32b6b8 _ZN6glitch8debugger10CTweakable7loadXMLEPKcb
// Partial: CReadFile / CXMLAttributesReader are not mapped; the flow is:
// open file, read attributes, store the root group name, loadGroup, drop reader.
void Tweakable::loadXML(const char* file, bool flag) {
    (void)file;
    (void)flag;
}

// glitch::scene::SViewFrustum::intersects and intersectsWithoutBoxTest3 are the canonical bodies
// (tb/glitch_scene_SViewFrustum.hpp, src/tb_scene-collada-gui-glitch_scene_SViewFrustum-0.cpp).

// ---------------------------------------------------------------------------
// Free-standing bodies
// ---------------------------------------------------------------------------

// 0x50cf04 _ZNK6glitch5scene13CBatchMeshExtIP10GameObjectE20saveSegmentExtraDataEPKvPNS_2io10IWriteFileENS_2os8E_ENDIANE
// Empty in the original.
void BatchMeshExtExtraData::saveSegmentExtraData(const void*, void*, int) const {}

}  // namespace glitch::collada::recon_00

// 0x329d64 _ZN6glitch8debugger10CTweakable6SGroupD1Ev
// The canonical CTweakable::SGroup (debugger/CTweakable.hpp) declares its members in the listing's order:
// std::string (+0x00), std::vector<std::string> (+0x18), std::vector<SGroup> (+0x24), plus the 4-byte member at
// +0x30 that the destructor never touches (the writeGroup child loop advances 52 bytes). Its defaulted
// destructor is emitted out of line here so that the original symbol exists; the compiler runs exactly the three
// calls the listing shows - ~vector<SGroup>, ~vector<std::string>, then the string's _M_deallocate_block.
namespace glitch::debugger {

CTweakable::SGroup::~SGroup() = default;

// 0x32b3b4 _ZN6glitch8debugger10CTweakable8setValueERNS_2io11CAttributesEi
// Verified against Hex-Rays 0x32b3b4: getAttributeName(index) names the attribute, the mapping with that name is
// looked up in the map, and the ten-way switch on the mapping's type writes the attribute's typed value through
// the mapped pointer (the CAttributes getters at vtable +0x5c int, +0x74 float, +0x8c string, +0xe8 bool, +0x128
// SColor, +0x140 SColorf, +0x1a0/+0x1b8/+0x1d0 vector2/3/4d). The onSetValue virtual (+0x14) is then called with
// the mapping's key name, also in the switch's default case; an unmapped name returns without a call.
// Deviations: a null name returns early (the original passes it to the STLport map lookup, which dereferences it),
// and the original's return value (the value the find or onSetValue left in R0, read by no caller) is not modelled.
// The body is out of line so the symbol exists even though nothing in the tree calls it yet (loadXML, its caller,
// is still partial).
void CTweakable::setValue(glitch::io::CAttributes& attributes, int index) {
    const char* name = attributes.getAttributeName(index);
    if (name == nullptr) return;
    std::map<std::string, SMapping>::iterator it = mappings.find(name);
    if (it == mappings.end()) return;
    SMapping& mapping = it->second;
    switch (mapping.type) {
        case 0:  // int
            *static_cast<int*>(mapping.value) = attributes.getInt(index);
            break;
        case 1:  // float
            *static_cast<float*>(mapping.value) = attributes.getFloat(index);
            break;
        case 2:  // std::string (the original assigns the returned string into the mapped one)
            *static_cast<std::string*>(mapping.value) = attributes.getString(index);
            break;
        case 3:  // bool
            *static_cast<bool*>(mapping.value) = attributes.getBool(index);
            break;
        case 5:  // SColor (the original copies the 4-byte result)
            *static_cast<glitch::video::SColor*>(mapping.value) = attributes.getColor(index);
            break;
        case 6:  // SColorf
            *static_cast<glitch::video::SColorf*>(mapping.value) = attributes.getColorf(index);
            break;
        case 7:  // vector2d<float>
            *static_cast<glitch::core::vector2d<float>*>(mapping.value) = attributes.getVector2d(index);
            break;
        case 8:  // vector3d<float>
            *static_cast<glitch::core::vector3d<float>*>(mapping.value) = attributes.getVector3d(index);
            break;
        case 9:  // vector4d<float>
            *static_cast<glitch::core::vector4d<float>*>(mapping.value) = attributes.getVector4d(index);
            break;
        default:
            break;
    }
    onSetValue(it->first);
}

// 0x32b650 _ZN6glitch8debugger10CTweakable9loadGroupERNS_2io11CAttributesEb.clone.25
// Verified against Hex-Rays 0x32b650: the group count (slot +0x40) is read once and drives a do/while over the
// group indices; each index is entered with setGroup(i) (slot +0x44), the recursion runs on the same container,
// and pop() (slot +0x3c) leaves it. The bool is unused in this clone, and the this pointer is never dereferenced.
// Deviation: the listing returns the value pop() left in R0, but the port's IAttributes::pop() returns void and
// every caller of loadGroup discards the result, so this returns 0. The source cannot spell the .clone.25 suffix.
int CTweakable::loadGroup(glitch::io::CAttributes& attributes, bool flag) {
    (void)flag;
    const int count = attributes.getGroupsCount();
    if (count == 0) return 0;
    int i = 0;
    do {
        attributes.setGroup(static_cast<unsigned int>(i));
        loadGroup(attributes, flag);
        attributes.pop();
        ++i;
    } while (i != count);
    return 0;
}

// 0x32b6b8 _ZN6glitch8debugger10CTweakable7loadXMLEPKcb
// The flag is unused. Host guard: a file system that gives no reader ends the load.
void CTweakable::loadXML(const char* file, bool) {
    glitch::io::CReadFile readFile(file, false);
    if (!readFile.isOpen()) {
        return;
    }
    glitch::io::IXMLReader* xml = device->fileSystem->createXMLReader(&readFile);
    if (xml == nullptr) {
        return;
    }
    {
        glitch::io::CXMLAttributesReader reader(static_cast<glitch::io::CXMLReaderImpl<wchar_t, glitch::IReferenceCounted>*>(xml), false, nullptr);
        glitch::io::CAttributes attributes(device->videoDriver);
        reader.read(&attributes);
        while (!attributes.getGroupName().empty()) {
            attributes.pop();
        }
        const std::string root = attributes.getString("Tweakable");
        if (!root.empty()) {
            rootGroup = root;
        }
        loadGroup(attributes, false);
    }
    xml->drop();
}

}  // namespace glitch::debugger
