// Name-keyed access to the current group of glitch::io::CAttributes. Each
// getter looks the name up, calls the matching virtual on the attribute, and
// returns the default of the original body when the name is not present.
#include <cstring>
#include <cwchar>
#include <string>

#include "glitch-core-io/io/attributes.hpp"

namespace glitch::io {

namespace {
constexpr unsigned int kNotFound = 0xffffffffu;
}  // namespace

namespace {
// The first index whose choice equals the text (strcmp), or -1. The list is null-terminated; an empty list (no first
// entry) and a null text give -1, as the original's loop does.
int choiceIndex(const char* text, const char* const* choices) {
    if (text == nullptr || choices == nullptr || choices[0] == nullptr) return -1;
    for (int i = 0; choices[i] != nullptr; ++i) {
        if (std::strcmp(text, choices[i]) == 0) return i;
    }
    return -1;
}
}  // namespace

// 0x5628f4 _ZN6glitch2io11CAttributes13findAttributeEPKc
unsigned int CAttributes::findAttribute(const char* name) const {
    const std::vector<IAttribute*>& list = currentAttributes();
    for (std::size_t i = 0; i < list.size(); ++i) {
        if (list[i]->name == name) return static_cast<unsigned int>(i);
    }
    return kNotFound;
}

// 0x561fa0 _ZN6glitch2io11CAttributes13getAttributePEPKc
IAttribute* CAttributes::getAttributeP(const char* name) const {
    unsigned int index = findAttribute(name);
    if (index == kNotFound) return nullptr;
    return currentAttributes()[index];
}

// 0x562374 _ZN6glitch2io11CAttributes15existsAttributeEPKc
bool CAttributes::existsAttribute(const char* name) const {
    return getAttributeP(name) != nullptr;
}

// 0x5623b8 _ZN6glitch2io11CAttributes16getAttributeTypeEPKc
int CAttributes::getAttributeType(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getType() : 0x1e;
}

// 0x562860 _ZN6glitch2io11CAttributes6getIntEPKc
int CAttributes::getInt(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getInt() : 0;
}

// 0x562838 _ZN6glitch2io11CAttributes8getFloatEPKc
float CAttributes::getFloat(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getFloat() : 0.f;
}

// 0x562888 _ZN6glitch2io11CAttributes7getBoolEPKc
bool CAttributes::getBool(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getBool() : false;
}

// 0x5624c4 _ZN6glitch2io11CAttributes7getEnumEPKc
const char* CAttributes::getEnum(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getEnum() : nullptr;
}

// 0x5624ec _ZN6glitch2io11CAttributes13getBinaryDataEPKcPvi
void CAttributes::getBinaryData(const char* name, void* data, int size) const {
    if (IAttribute* a = getAttributeP(name)) a->getBinary(data, size);
}

// 0x56251c _ZN6glitch2io11CAttributes12getVector4diEPKc
glitch::core::vector4d<std::int32_t> CAttributes::getVector4di(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getVector4di() : glitch::core::vector4d<std::int32_t>{0, 0, 0, 0};
}

// 0x56256c _ZN6glitch2io11CAttributes12getVector3diEPKc
glitch::core::vector3d<std::int32_t> CAttributes::getVector3di(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getVector3di() : glitch::core::vector3d<std::int32_t>{0, 0, 0};
}

// 0x5625b0 _ZN6glitch2io11CAttributes12getVector2diEPKc
glitch::core::vector2d<std::int32_t> CAttributes::getVector2di(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getVector2di() : glitch::core::vector2d<std::int32_t>{0, 0};
}

// 0x5625f0 _ZN6glitch2io11CAttributes11getVector4dEPKc
glitch::core::vector4d<float> CAttributes::getVector4d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getVector4d() : glitch::core::vector4d<float>{0.f, 0.f, 0.f, 0.f};
}

// 0x562644 _ZN6glitch2io11CAttributes11getVector3dEPKc
glitch::core::vector3d<float> CAttributes::getVector3d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getVector3d() : glitch::core::vector3d<float>{0.f, 0.f, 0.f};
}

// 0x562694 _ZN6glitch2io11CAttributes11getVector2dEPKc
glitch::core::vector2d<float> CAttributes::getVector2d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getVector2d() : glitch::core::vector2d<float>{0.f, 0.f};
}

// 0x5626d8 _ZN6glitch2io11CAttributes7getRectEPKc
glitch::core::rect<std::int32_t> CAttributes::getRect(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getRect() : glitch::core::rect<std::int32_t>{0, 0, 0, 0};
}

// 0x562728 _ZN6glitch2io11CAttributes13getPosition2dEPKc
glitch::core::position2d<std::int32_t> CAttributes::getPosition2d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getPosition() : glitch::core::position2d<std::int32_t>{0, 0};
}

// 0x562768 _ZN6glitch2io11CAttributes9getColorfEPKc
// Missing name gives opaque black (0, 0, 0, 1), as in the indexed getter.
glitch::video::SColorf CAttributes::getColorf(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getColorf() : glitch::video::SColorf{0.f, 0.f, 0.f, 1.f};
}

// 0x5627c0 _ZNK6glitch2io11CAttributes8getColorEPKc
// The original unpacks the four bytes and repacks them in the same order, so the
// value is returned unchanged.
glitch::video::SColor CAttributes::getColor(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getColor() : glitch::video::SColor{0};
}

// 0x5622fc _ZN6glitch2io11CAttributes13getQuaternionEPKc
// Missing name gives (X, Y, Z, W) = (0, 1, 0, 0).
glitch::core::quaternion CAttributes::getQuaternion(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getQuaternion() : glitch::core::quaternion{0.f, 1.f, 0.f, 0.f};
}

// 0x562270 _ZN6glitch2io11CAttributes8getBox3dEPKc
glitch::core::aabbox3d<float> CAttributes::getBox3d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getBBox() : glitch::core::aabbox3d<float>{};
}

// 0x5621f4 _ZN6glitch2io11CAttributes10getPlane3dEPKc
// Missing name gives normal (0, 1, 0) with D = -0.0f.
glitch::core::plane3d<float> CAttributes::getPlane3d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getPlane() : glitch::core::plane3d<float>{{0.f, 1.f, 0.f}, -0.f};
}

// 0x562144 _ZN6glitch2io11CAttributes13getTriangle3dEPKc
glitch::core::triangle3d<float> CAttributes::getTriangle3d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getTriangle() : glitch::core::triangle3d<float>{};
}

// 0x5620d0 _ZN6glitch2io11CAttributes9getLine2dEPKc
glitch::core::line2d<float> CAttributes::getLine2d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getLine2d() : glitch::core::line2d<float>{};
}

// 0x562044 _ZN6glitch2io11CAttributes9getLine3dEPKc
glitch::core::line3d<float> CAttributes::getLine3d(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getLine3d() : glitch::core::line3d<float>{};
}

// 0x56201c _ZN6glitch2io11CAttributes14getUserPointerEPKc
void* CAttributes::getUserPointer(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getUserPointer() : nullptr;
}

// 0x5628b0 _ZN6glitch2io11CAttributes8getArrayEPKc
core::svector<core::stringw> CAttributes::getArray(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getArray() : core::svector<core::stringw>{};
}

// 0x567e48 _ZN6glitch2io11CAttributes9getMatrixEPKc
glitch::core::CMatrix4<float> CAttributes::getMatrix(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getMatrix() : detail::identityMatrix();
}

// 0x564768 _ZN6glitch2io11CAttributes9getStringEPKc
std::string CAttributes::getString(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getString() : std::string{};
}

// 0x564924 _ZN6glitch2io11CAttributes9getStringEPKcPc
void CAttributes::getString(const char* name, char* out) const {
    IAttribute* a = getAttributeP(name);
    if (a) {
        std::strcpy(out, a->getString().c_str());
    } else {
        *out = '\0';
    }
}

// 0x5637c0 _ZN6glitch2io11CAttributes10getStringWEPKc
std::wstring CAttributes::getStringW(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getStringW() : std::wstring{};
}

// 0x563858 _ZN6glitch2io11CAttributes10getStringWEPKcPw
void CAttributes::getStringW(const char* name, wchar_t* out) const {
    IAttribute* a = getAttributeP(name);
    if (a) {
        std::wcscpy(out, a->getStringW().c_str());
    } else {
        *out = L'\0';
    }
}

// 0x562458 _ZN6glitch2io11CAttributes7getEnumEPKcPKS3_
// Compares the text of the attribute's slot +0x80 (IAttribute::getEnum, null in the base, so a non-enumeration attribute
// gives -1).
int CAttributes::getEnum(const char* name, const char* const* choices) const {
    const IAttribute* a = getAttributeP(name);
    if (a == nullptr || choices == nullptr) return -1;
    return choiceIndex(a->getEnum(), choices);
}

// 0x561f04 _ZN6glitch2io11CAttributes7getEnumEiPKPKc
// As the name form, for the attribute at index. Out-of-range indices give -1.
int CAttributes::getEnum(int index, const char* const* choices) const {
    const auto& attributes = currentAttributes();
    if (index < 0 || static_cast<std::size_t>(index) >= attributes.size()) return -1;
    const IAttribute* a = attributes[static_cast<std::size_t>(index)];
    if (a == nullptr || choices == nullptr) return -1;
    return choiceIndex(a->getEnum(), choices);
}

}  // namespace glitch::io
