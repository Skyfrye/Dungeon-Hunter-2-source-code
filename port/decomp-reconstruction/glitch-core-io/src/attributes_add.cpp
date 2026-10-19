// Typed attribute creation (addX) and the by-name setters that fall back to it.
// Each addX builds the typed attribute, stores name / flag / value, and appends
// it to the current group. The by-name setters call the matching virtual when
// the name exists, and otherwise call addX with flag false.
#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/scalar_attributes.hpp"
#include "glitch-core-io/io/typed_attributes.hpp"

namespace glitch::io {

// 0x568b1c _ZN6glitch2io11CAttributes6addIntEPKcib
void CAttributes::addInt(const char* name, int value, bool flag) {
    currentAttributes().push_back(new CIntAttribute(name, value, flag));
}

// 0x56891c _ZN6glitch2io11CAttributes8addFloatEPKcfb
void CAttributes::addFloat(const char* name, float value, bool flag) {
    currentAttributes().push_back(new CFloatAttribute(name, value, flag));
}

// 0x56871c _ZN6glitch2io11CAttributes7addBoolEPKcbb
void CAttributes::addBool(const char* name, bool value, bool flag) {
    currentAttributes().push_back(new CBoolAttribute(name, value, flag));
}

// 0x568038 _ZN6glitch2io11CAttributes14addUserPointerEPKcPvb
void CAttributes::addUserPointer(const char* name, void* value, bool flag) {
    currentAttributes().push_back(new CUserPointerAttribute(name, value, flag));
}

// 0x568ce0 _ZN6glitch2io11CAttributes7addRectEPKcNS_4core4rectIiEEb
void CAttributes::addRect(const char* name, glitch::core::rect<std::int32_t> value, bool flag) {
    currentAttributes().push_back(new CRectAttribute(name, value, flag));
}

// 0x56b11c _ZN6glitch2io11CAttributes12setAttributeEPKci
void CAttributes::setAttribute(const char* name, int value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setInt(value);
    } else {
        addInt(name, value, false);
    }
}

// 0x56b07c _ZN6glitch2io11CAttributes12setAttributeEPKcf
void CAttributes::setAttribute(const char* name, float value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setFloat(value);
    } else {
        addFloat(name, value, false);
    }
}

// 0x56b1bc _ZN6glitch2io11CAttributes12setAttributeEPKcb
void CAttributes::setAttribute(const char* name, bool value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setBool(value);
    } else {
        addBool(name, value, false);
    }
}

// 0x56ad30 _ZN6glitch2io11CAttributes12setAttributeEPKcPv
void CAttributes::setAttribute(const char* name, void* value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setUserPointer(value);
    } else {
        addUserPointer(name, value, false);
    }
}

// 0x56b878 _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core4rectIiEE
void CAttributes::setAttribute(const char* name, glitch::core::rect<std::int32_t> value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setRect(value);
    } else {
        addRect(name, value, false);
    }
}

// Each typed add creates the attribute with the matching constructor and appends it.
// 0x56a1a0
void CAttributes::addVector2d(const char* name, const glitch::core::vector2d<float>& value, bool flag) {
    currentAttributes().push_back(new CVector2DAttribute(name, value, flag));
}

// 0x56a030
void CAttributes::addVector3d(const char* name, const glitch::core::vector3d<float>& value, bool flag) {
    currentAttributes().push_back(new CVector3DAttribute(name, value, flag));
}

// 0x569ebc
void CAttributes::addVector4d(const char* name, const glitch::core::vector4d<float>& value, bool flag) {
    currentAttributes().push_back(new CVector4DAttribute(name, value, flag));
}

// 0x5692c8
void CAttributes::addVector2di(const char* name, const glitch::core::vector2d<std::int32_t>& value, bool flag) {
    currentAttributes().push_back(new CVector2DIAttribute(name, value, flag));
}

// 0x569158
void CAttributes::addVector3di(const char* name, const glitch::core::vector3d<std::int32_t>& value, bool flag) {
    currentAttributes().push_back(new CVector3DIAttribute(name, value, flag));
}

// 0x568fe4
void CAttributes::addVector4di(const char* name, const glitch::core::vector4d<std::int32_t>& value, bool flag) {
    currentAttributes().push_back(new CVector4DIAttribute(name, value, flag));
}

// 0x568e64
void CAttributes::addPosition2d(const char* name, glitch::core::position2d<std::int32_t> value, bool flag) {
    currentAttributes().push_back(new CPosition2DAttribute(name, value, flag));
}

// 0x569604
void CAttributes::addLine2d(const char* name, glitch::core::line2d<float> value, bool flag) {
    currentAttributes().push_back(new CLine2dAttribute(name, value, flag));
}

// 0x56944c
void CAttributes::addLine3d(const char* name, glitch::core::line3d<float> value, bool flag) {
    currentAttributes().push_back(new CLine3dAttribute(name, value, flag));
}

// 0x5697ac
void CAttributes::addTriangle3d(const char* name, glitch::core::triangle3d<float> value, bool flag) {
    currentAttributes().push_back(new CTriangleAttribute(name, value, flag));
}

// 0x569b3c
void CAttributes::addBox3d(const char* name, glitch::core::aabbox3d<float> value, bool flag) {
    currentAttributes().push_back(new CBBoxAttribute(name, value, flag));
}

// 0x569998
void CAttributes::addPlane3d(const char* name, glitch::core::plane3d<float> value, bool flag) {
    currentAttributes().push_back(new CPlaneAttribute(name, value, flag));
}

// 0x569d00
void CAttributes::addQuaternion(const char* name, glitch::core::quaternion value, bool flag) {
    currentAttributes().push_back(new CQuaternionAttribute(name, value, flag));
}

// 0x56a31c
void CAttributes::addColorf(const char* name, glitch::video::SColorf value, bool flag) {
    currentAttributes().push_back(new CColorfAttribute(name, value, flag));
}

// 0x56a70c
void CAttributes::addMatrix(const char* name, const glitch::core::CMatrix4<float>& value, bool flag) {
    currentAttributes().push_back(new CMatrixAttribute(name, value, flag));
}

// By-name setters: set the existing attribute through its virtual, else add with flag false.
// 0x5659b4
void CAttributes::setAttribute(const char* name, const glitch::core::vector2d<float>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setVector2d(value); else addVector2d(name, value, false);
}

// 0x567a9c
void CAttributes::setAttribute(const char* name, const glitch::core::vector2d<std::int32_t>& value) {
    // The listing calls slot +0xcc (setVector2di) on the existing attribute.
    if (IAttribute* a = getAttributeP(name)) a->setVector2di(value); else addVector2di(name, value, false);
}

// 0x56b7b8
void CAttributes::setAttribute(const char* name, const glitch::core::vector3d<float>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setVector3d(value); else addVector3d(name, value, false);
}

// 0x56b6f8
void CAttributes::setAttribute(const char* name, const glitch::core::vector4d<float>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setVector4d(value); else addVector4d(name, value, false);
}

// 0x56b638
void CAttributes::setAttribute(const char* name, const glitch::core::vector3d<std::int32_t>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setVector3di(value); else addVector3di(name, value, false);
}

// 0x56b578
void CAttributes::setAttribute(const char* name, const glitch::core::vector4d<std::int32_t>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setVector4di(value); else addVector4di(name, value, false);
}

// 0x56b978
void CAttributes::setAttribute(const char* name, glitch::core::position2d<std::int32_t> value) {
    if (IAttribute* a = getAttributeP(name)) a->setPosition(value); else addPosition2d(name, value, false);
}

// 0x56bcc4
void CAttributes::setAttribute(const char* name, glitch::core::line2d<float> value) {
    if (IAttribute* a = getAttributeP(name)) a->setLine2d(value); else addLine2d(name, value, false);
}

// 0x56bf4c
void CAttributes::setAttribute(const char* name, const glitch::core::plane3d<float>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setPlane(value); else addPlane3d(name, value, false);
}

// 0x56add0
void CAttributes::setAttribute(const char* name, glitch::core::quaternion value) {
    if (IAttribute* a = getAttributeP(name)) a->setQuaternion(value); else addQuaternion(name, value, false);
}

// 0x56aee4
void CAttributes::setAttribute(const char* name, const glitch::core::CMatrix4<float>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setMatrix(value); else addMatrix(name, value, false);
}

}  // namespace glitch::io

namespace glitch::io {

// 0x56a528 _ZN6glitch2io11CAttributes8addColorEPKcNS_5video6SColorEb
// Each byte of the colour (low byte first) becomes one float, byte / 255.
void CAttributes::addColor(const char* name, glitch::video::SColor value, bool flag) {
    const std::uint32_t c = value.color;
    const float parts[4] = {
        static_cast<float>(c & 0xffu) * (1.0f / 255.0f),
        static_cast<float>((c >> 8) & 0xffu) * (1.0f / 255.0f),
        static_cast<float>((c >> 16) & 0xffu) * (1.0f / 255.0f),
        static_cast<float>(c >> 24) * (1.0f / 255.0f),
    };
    currentAttributes().push_back(new CColorAttribute(name, glitch::video::SColorf{parts[0], parts[1], parts[2], parts[3]}, flag));
}

// 0x56a3ec _ZN6glitch2io11CAttributes16addStringAsColorEPKcPKwb
// Appends a colour built from four zero floats, then sets the wide value through the attribute's
// setString(wchar_t) virtual (vtable +0x94), which parses the hex text.
void CAttributes::addStringAsColor(const char* name, const wchar_t* value, bool flag) {
    IAttribute* attr = new CColorAttribute(name, glitch::video::SColorf{0.f, 0.f, 0.f, 0.f}, flag);
    currentAttributes().push_back(attr);
    attr->setString(value);
}

// 0x56abe8 _ZN6glitch2io11CAttributes12setAttributeEPKcNS_5video6SColorE
void CAttributes::setAttribute(const char* name, glitch::video::SColor value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setColor(value);
        return;
    }
    addColor(name, value, false);
}

// 0x56b25c _ZN6glitch2io11CAttributes12setAttributeEPKcNS_5video7SColorfE
void CAttributes::setAttribute(const char* name, glitch::video::SColorf value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setColor(value);
        return;
    }
    addColorf(name, value, false);
}

// 0x560d58 _ZN6glitch2io11CAttributes7addEnumEPKciPKS3_b
// Adds the enumeration with an empty value, then sets the index on the attribute just added.
void CAttributes::addEnum(const char* name, int value, const char* const* choices, bool flag) {
    addEnum(name, "", choices, flag);
    currentAttributes().back()->setInt(value);
}

// 0x568580 _ZN6glitch2io11CAttributes7addEnumEPKcS3_PKS3_b
// A new CEnumAttribute (0x48 bytes) appended to the current group.
void CAttributes::addEnum(const char* name, const char* value, const char* const* choices, bool flag) {
    currentAttributes().push_back(new CEnumAttribute(name, value, choices, flag));
}

// 0x56b400 _ZN6glitch2io11CAttributes12setAttributeEPKcS3_PKS3_
// An existing attribute takes the value and choices through setEnum (slot +0xf8); otherwise a new CEnumAttribute with the flag
// clear is appended.
void CAttributes::setAttribute(const char* name, const char* value, const char* const* choices) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setEnum(value, choices);
        return;
    }
    currentAttributes().push_back(new CEnumAttribute(name, value, choices, false));
}

// 0x56ba54 _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core8aabbox3dIfEE
// The existing box goes through setBBox (slot +0xec). A missing box is a CBBoxAttribute: the original
// runs the CNumbersAttribute box constructor (0x566318), then writes the CBBoxAttribute vtable.
void CAttributes::setAttribute(const char* name, const glitch::core::aabbox3d<float>& value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setBBox(value);
        return;
    }
    currentAttributes().push_back(new CBBoxAttribute(name, value, false));
}

// 0x566db0 _ZN6glitch2io11CAttributes12setAttributeEPKcN5boost13intrusive_ptrINS_5video6CLightEEE
// A new light attribute keeps the light, with the container's driver and the flag clear.
void CAttributes::setAttribute(const char* name, boost::intrusive_ptr<glitch::video::CLight> value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setLight(value);
        return;
    }
    currentAttributes().push_back(new CLightAttribute(name, value, driver, false));
}

// 0x568238 _ZN6glitch2io11CAttributes8addLightEPKcN5boost13intrusive_ptrINS_5video6CLightEEEb
// The light attribute's constructor keeps the light and the driver, each with a reference.
void CAttributes::addLight(const char* name, boost::intrusive_ptr<glitch::video::CLight> value, bool flag) {
    currentAttributes().push_back(new CLightAttribute(name, value, driver, flag));
}

// 0x568384 _ZN6glitch2io11CAttributes10addTextureEPKcN5boost13intrusive_ptrINS_5video8ITextureEEEb
// Appends a texture attribute holding the texture, with the container's driver as its driver.
void CAttributes::addTexture(const char* name, boost::intrusive_ptr<glitch::video::ITexture> value, bool flag) {
    currentAttributes().push_back(new CTextureAttribute(name, value, driver, flag));
}

// 0x56b35c _ZN6glitch2io11CAttributes12setAttributeEPKcN5boost13intrusive_ptrINS_5video8ITextureEEE
// A new texture attribute is added with flag clear; the constructor keeps the texture.
void CAttributes::setAttribute(const char* name, boost::intrusive_ptr<glitch::video::ITexture> value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setTexture(value);
        return;
    }
    currentAttributes().push_back(new CTextureAttribute(name, value, driver, false));
}

// 0x56afa8 _ZN6glitch2io11CAttributes12setAttributeEPKcSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEE
// A new array attribute is added with flag clear; the CStringWArrayAttribute constructor keeps the array.
void CAttributes::setAttribute(const char* name, core::svector<core::stringw> value) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setArray(value);
        return;
    }
    currentAttributes().push_back(new CStringWArrayAttribute(name, value, false));
}

// 0x56a8b4 _ZN6glitch2io11CAttributes8addArrayEPKcSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEEb
// The new attribute is built with the CStringWArrayAttribute constructor, which keeps the array.
void CAttributes::addArray(const char* name, core::svector<core::stringw> value, bool flag) {
    currentAttributes().push_back(new CStringWArrayAttribute(name, value, flag));
}

// 0x5632ac _ZN6glitch2io11CAttributes12setAttributeEiSt6vectorISbIwSt11char_traitsIwENS_4core10SAllocatorIwLNS_6memory13E_MEMORY_HINTE0EEEENS6_ISA_LS8_0EEEE
void CAttributes::setAttribute(int index, core::svector<core::stringw> value) {
    if (index < 0 || static_cast<std::size_t>(index) >= currentAttributes().size()) return;
    currentAttributes()[static_cast<std::size_t>(index)]->setArray(value);
}

// 0x5641ac _ZN6glitch2io11CAttributes44getAttributeEnumerationLiteralsOfEnumerationEPKcRSt6vectorISbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEENS8_ISC_LSA_0EEEE
// The attribute with this name; when its type (slot +0x104) is 4 (enumeration) the output vector is assigned the literal
// table at +0x3c. Anything else leaves the output alone.
void CAttributes::getAttributeEnumerationLiteralsOfEnumeration(const char* name, core::svector<core::stringc>& literals) const {
    const IAttribute* a = getAttributeP(name);
    if (a != nullptr && a->getType() == 4) literals = static_cast<const CEnumAttribute*>(a)->literals;
}

// 0x564148 _ZN6glitch2io11CAttributes44getAttributeEnumerationLiteralsOfEnumerationEiRSt6vectorISbIcSt11char_traitsIcENS_4core10SAllocatorIcLNS_6memory13E_MEMORY_HINTE0EEEENS6_ISA_LS8_0EEEE
// As the name form for the attribute at the index (an index past the end does nothing).
void CAttributes::getAttributeEnumerationLiteralsOfEnumeration(int index, core::svector<core::stringc>& literals) const {
    const auto& attributes = currentAttributes();
    if (index < 0 || static_cast<std::size_t>(index) >= attributes.size()) return;
    const IAttribute* a = attributes[static_cast<std::size_t>(index)];
    if (a->getType() == 4) literals = static_cast<const CEnumAttribute*>(a)->literals;
}

// 0x5684d8 _ZN6glitch2io11CAttributes9addBinaryEPKcPvib
void CAttributes::addBinary(const char* name, void* data, int size, bool flag) {
    currentAttributes().push_back(new CStringAttribute(name, data, size, flag));
}

// Searches the current group for an attribute with this name (the original compares the
// names directly, not through getAttributeP). Returns the attribute or nullptr.
namespace {
IAttribute* findInGroup(std::vector<IAttribute*>& list, const char* name, std::size_t* where) {
    for (std::size_t i = 0; i < list.size(); ++i) {
        if (list[i]->name == name) {
            if (where != nullptr) *where = i;
            return list[i];
        }
    }
    return nullptr;
}
}  // namespace

// 0x56a948 _ZN6glitch2io11CAttributes12setAttributeEPKcS3_
// Found: a non-null value goes to setString(char) (+0x90); a null value drops the
// attribute and removes it from the group. Not found: a non-null value adds a new
// narrow string attribute with flag false.
void CAttributes::setAttribute(const char* name, const char* value) {
    auto& list = currentAttributes();
    std::size_t where = 0;
    if (IAttribute* a = findInGroup(list, name, &where)) {
        if (value != nullptr) {
            a->setString(value);
        } else {
            a->drop();
            list.erase(list.begin() + static_cast<std::ptrdiff_t>(where));
        }
        return;
    }
    if (value != nullptr) list.push_back(new CStringAttribute(name, value, false));
}

// 0x56aa98 _ZN6glitch2io11CAttributes12setAttributeEPKcPKw
// Same as the narrow overload, with the wide setString (+0x94) and a wide-value add.
void CAttributes::setAttribute(const char* name, const wchar_t* value) {
    auto& list = currentAttributes();
    std::size_t where = 0;
    if (IAttribute* a = findInGroup(list, name, &where)) {
        if (value != nullptr) {
            a->setString(value);
        } else {
            a->drop();
            list.erase(list.begin() + static_cast<std::ptrdiff_t>(where));
        }
        return;
    }
    if (value != nullptr) list.push_back(new CStringAttribute(name, value, false));
}

// 0x56b4ac _ZN6glitch2io11CAttributes12setAttributeEPKcPvi
void CAttributes::setAttribute(const char* name, void* data, int size) {
    if (IAttribute* a = getAttributeP(name)) {
        a->setBinary(data, size);
    } else {
        currentAttributes().push_back(new CStringAttribute(name, data, size, false));
    }
}

// 0x56bb8c _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core8line3dIfEE
void CAttributes::setAttribute(const char* name, glitch::core::line3d<float> value) {
    if (IAttribute* a = getAttributeP(name)) a->setLine3d(value); else addLine3d(name, value, false);
}

// 0x56bdcc _ZN6glitch2io11CAttributes12setAttributeEPKcNS_4core10triangle3dIfEE
void CAttributes::setAttribute(const char* name, const glitch::core::triangle3d<float>& value) {
    if (IAttribute* a = getAttributeP(name)) a->setTriangle(value); else addTriangle3d(name, value, false);
}

}  // namespace glitch::io
