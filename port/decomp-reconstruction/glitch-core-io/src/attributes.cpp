#include "glitch-core-io/io/attributes.hpp"

namespace glitch::io {

namespace {
// Original bounds check: unsigned index strictly below the element count.
// Negative indices therefore fail the check as well.
inline IAttribute* at(const std::vector<IAttribute*>& list, int index) {
    if (index < 0 || static_cast<std::size_t>(index) >= list.size()) return nullptr;
    return list[static_cast<std::size_t>(index)];
}
// Getters return a default when the index is out of range (count <= index).
}  // namespace

// 0x5607e4 _ZNK6glitch2io11CAttributes17getAttributeCountEv
int CAttributes::getAttributeCount() const {
    return static_cast<int>(currentAttributes().size());
}

// 0x5607fc _ZN6glitch2io11CAttributes16getAttributeNameEi
const char* CAttributes::getAttributeName(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->name.c_str() : nullptr;
}

// 0x560820 _ZN6glitch2io11CAttributes16getAttributeTypeEi
int CAttributes::getAttributeType(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getType() : 0x1e;
}

// 0x5608a0 _ZN6glitch2io11CAttributes7getBoolEi
bool CAttributes::getBool(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getBool() : false;
}

// 0x5608dc _ZN6glitch2io11CAttributes6getIntEi
int CAttributes::getInt(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getInt() : 0;
}

// 0x560918 _ZN6glitch2io11CAttributes8getFloatEi
float CAttributes::getFloat(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getFloat() : 0.f;
}

// 0x560d1c _ZN6glitch2io11CAttributes7getEnumEi
const char* CAttributes::getEnum(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getEnum() : nullptr;
}

// 0x560ce4 _ZN6glitch2io11CAttributes13getBinaryDataEiPvi
void CAttributes::getBinaryData(int index, void* data, int size) const {
    if (IAttribute* a = at(currentAttributes(), index)) a->getBinary(data, size);
}

// 0x560db0 _ZN6glitch2io11CAttributes12setAttributeEiPKc
void CAttributes::setAttribute(int index, const char* value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setString(value);
}

// 0x560e20 _ZN6glitch2io11CAttributes12setAttributeEib
void CAttributes::setAttribute(int index, bool value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setBool(value);
}

// 0x560e58 _ZN6glitch2io11CAttributes12setAttributeEii
void CAttributes::setAttribute(int index, int value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setInt(value);
}

// 0x560e90 _ZN6glitch2io11CAttributes12setAttributeEif
void CAttributes::setAttribute(int index, float value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setFloat(value);
}

// 0x560ec8 _ZN6glitch2io11CAttributes12setAttributeEiNS_5video6SColorE
void CAttributes::setAttribute(int index, glitch::video::SColor value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setColor(value);
}

// 0x560f6c _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector2dIfEE
void CAttributes::setAttribute(int index, const glitch::core::vector2d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setVector2d(value);
}

// 0x560fb8 _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector3dIfEE
void CAttributes::setAttribute(int index, const glitch::core::vector3d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setVector3d(value);
}

// 0x560ff0 _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector4dIfEE
void CAttributes::setAttribute(int index, const glitch::core::vector4d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setVector4d(value);
}

// 0x561028 _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector2dIiEE
void CAttributes::setAttribute(int index, const glitch::core::vector2d<std::int32_t>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setVector2di(value);
}

// 0x56106c _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector3dIiEE
void CAttributes::setAttribute(int index, const glitch::core::vector3d<std::int32_t>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setVector3di(value);
}

// 0x5610a4 _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8vector4dIiEE
void CAttributes::setAttribute(int index, const glitch::core::vector4d<std::int32_t>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setVector4di(value);
}

// 0x5610dc _ZN6glitch2io11CAttributes12setAttributeEiNS_4core10position2dIiEE
void CAttributes::setAttribute(int index, glitch::core::position2d<std::int32_t> value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setPosition(value);
}

// 0x56117c _ZN6glitch2io11CAttributes12setAttributeEiPvi
void CAttributes::setAttribute(int index, void* data, int size) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setBinary(data, size);
}

// 0x5611b4 _ZN6glitch2io11CAttributes12setAttributeEiPKcPKS3_
void CAttributes::setAttribute(int index, const char* value, const char* const* choices) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setEnum(value, choices);
}

// 0x56189c _ZN6glitch2io11CAttributes12setAttributeEiPv
void CAttributes::setAttribute(int index, void* userPointer) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setUserPointer(userPointer);
}

// 0x5609e8 _ZN6glitch2io11CAttributes9getColorfEi
// Out of range gives opaque black (0, 0, 0, 1).
glitch::video::SColorf CAttributes::getColorf(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getColorf() : glitch::video::SColorf{0.f, 0.f, 0.f, 1.f};
}

// 0x560a44 _ZN6glitch2io11CAttributes11getVector2dEi
glitch::core::vector2d<float> CAttributes::getVector2d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getVector2d() : glitch::core::vector2d<float>{0.f, 0.f};
}

// 0x560a94 _ZN6glitch2io11CAttributes11getVector3dEi
glitch::core::vector3d<float> CAttributes::getVector3d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getVector3d() : glitch::core::vector3d<float>{0.f, 0.f, 0.f};
}

// 0x560ae8 _ZN6glitch2io11CAttributes11getVector4dEi
glitch::core::vector4d<float> CAttributes::getVector4d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getVector4d() : glitch::core::vector4d<float>{0.f, 0.f, 0.f, 0.f};
}

// 0x560b40 _ZN6glitch2io11CAttributes12getVector2diEi
glitch::core::vector2d<std::int32_t> CAttributes::getVector2di(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getVector2di() : glitch::core::vector2d<std::int32_t>{0, 0};
}

// 0x560b90 _ZN6glitch2io11CAttributes12getVector3diEi
glitch::core::vector3d<std::int32_t> CAttributes::getVector3di(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getVector3di() : glitch::core::vector3d<std::int32_t>{0, 0, 0};
}

// 0x560be4 _ZN6glitch2io11CAttributes12getVector4diEi
glitch::core::vector4d<std::int32_t> CAttributes::getVector4di(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getVector4di() : glitch::core::vector4d<std::int32_t>{0, 0, 0, 0};
}

// 0x560c3c _ZN6glitch2io11CAttributes13getPosition2dEi
glitch::core::position2d<std::int32_t> CAttributes::getPosition2d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getPosition() : glitch::core::position2d<std::int32_t>{0, 0};
}

// 0x560c8c _ZN6glitch2io11CAttributes7getRectEi
glitch::core::rect<std::int32_t> CAttributes::getRect(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getRect() : glitch::core::rect<std::int32_t>{0, 0, 0, 0};
}

// 0x560f0c _ZN6glitch2io11CAttributes12setAttributeEiNS_5video7SColorfE
void CAttributes::setAttribute(int index, glitch::video::SColorf value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setColor(value);
}

// 0x560954 _ZNK6glitch2io11CAttributes8getColorEi
glitch::video::SColor CAttributes::getColor(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getColor() : glitch::video::SColor{0};
}

// 0x561224 _ZNK6glitch2io11CAttributes13getQuaternionEi
// The indexed default is (0, 1, 0, 0), not the identity from IAttribute::getQuaternion.
glitch::core::quaternion CAttributes::getQuaternion(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getQuaternion() : glitch::core::quaternion{0.f, 1.f, 0.f, 0.f};
}

// 0x561314 _ZNK6glitch2io11CAttributes8getBox3dEi
glitch::core::aabbox3d<float> CAttributes::getBox3d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getBBox() : glitch::core::aabbox3d<float>{};
}

// 0x561424 _ZNK6glitch2io11CAttributes10getPlane3dEi
glitch::core::plane3d<float> CAttributes::getPlane3d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getPlane() : glitch::core::plane3d<float>{{0.f, 1.f, 0.f}, -0.f};
}

// 0x561514 _ZNK6glitch2io11CAttributes13getTriangle3dEi
glitch::core::triangle3d<float> CAttributes::getTriangle3d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getTriangle() : glitch::core::triangle3d<float>{};
}

// 0x561660 _ZNK6glitch2io11CAttributes9getLine2dEi
glitch::core::line2d<float> CAttributes::getLine2d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getLine2d() : glitch::core::line2d<float>{};
}

// 0x561748 _ZNK6glitch2io11CAttributes9getLine3dEi
glitch::core::line3d<float> CAttributes::getLine3d(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getLine3d() : glitch::core::line3d<float>{};
}

// 0x561858 _ZNK6glitch2io11CAttributes14getUserPointerEi
void* CAttributes::getUserPointer(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getUserPointer() : nullptr;
}

// 0x560de8 _ZN6glitch2io11CAttributes12setAttributeEiPKw
void CAttributes::setAttribute(int index, const wchar_t* value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setString(value);
}

// 0x561120 _ZN6glitch2io11CAttributes12setAttributeEiNS_4core4rectIiEE
void CAttributes::setAttribute(int index, glitch::core::rect<std::int32_t> value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setRect(value);
}

// 0x5612ac _ZN6glitch2io11CAttributes12setAttributeEiNS_4core10quaternionE
void CAttributes::setAttribute(int index, glitch::core::quaternion value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setQuaternion(value);
}

// 0x5613b0 _ZN6glitch2io11CAttributes12setAttributeEiNS_4core8aabbox3dIfEE
void CAttributes::setAttribute(int index, const glitch::core::aabbox3d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setBBox(value);
}

// 0x5614b0 _ZN6glitch2io11CAttributes12setAttributeEiNS_4core7plane3dIfEE
void CAttributes::setAttribute(int index, const glitch::core::plane3d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setPlane(value);
}

// 0x5615d4 _ZN6glitch2io11CAttributes12setAttributeEiNS_4core10triangle3dIfEE
void CAttributes::setAttribute(int index, const glitch::core::triangle3d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setTriangle(value);
}

// 0x5616e4 _ZN6glitch2io11CAttributes12setAttributeEiNS_4core6line2dIfEE
void CAttributes::setAttribute(int index, const glitch::core::line2d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setLine2d(value);
}

// 0x5617e4 _ZN6glitch2io11CAttributes12setAttributeEiNS_4core6line3dIfEE
void CAttributes::setAttribute(int index, const glitch::core::line3d<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setLine3d(value);
}

// 0x32097c _ZN6glitch2io10IAttribute10getStringWEv
std::wstring IAttribute::getStringW() const {
    return {};
}

// 0x326268 _ZN6glitch2io10IAttribute9getStringEv
// Converts getStringW() (vtable +0x20) with the range copy at 0x3209f8, which keeps the low byte
// of each wide character (STRB in the IDA listing).
std::string IAttribute::getString() const {
    std::string out;
    for (wchar_t c : getStringW()) out.push_back(static_cast<char>(c));
    return out;
}

// 0x326588 _ZN6glitch2io10IAttribute9getMatrixEv
glitch::core::CMatrix4<float> IAttribute::getMatrix() const {
    return detail::identityMatrix();
}

// 0x31d884 _ZN6glitch2io10IAttribute9setMatrixENS_4core8CMatrix4IfEE
// Base setter does nothing (a bare return in the original).

// 0x563308 _ZN6glitch2io11CAttributes8getArrayEi
core::svector<core::stringw> CAttributes::getArray(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getArray() : core::svector<core::stringw>{};
}

// 0x565464 _ZNK6glitch2io11CAttributes9getMatrixEi
glitch::core::CMatrix4<float> CAttributes::getMatrix(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getMatrix() : detail::identityMatrix();
}

// 0x564240 _ZN6glitch2io11CAttributes9getStringEi
std::string CAttributes::getString(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getString() : std::string{};
}

// 0x561950 _ZN6glitch2io11CAttributes10getStringWEi
std::wstring CAttributes::getStringW(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getStringW() : std::wstring{};
}

// 0x56074c _ZN6glitch2io11CAttributes10getTextureEi
boost::intrusive_ptr<glitch::video::ITexture> CAttributes::getTexture(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getTexture() : boost::intrusive_ptr<glitch::video::ITexture>{};
}

// 0x560798 _ZN6glitch2io11CAttributes8getLightEi
boost::intrusive_ptr<glitch::video::CLight> CAttributes::getLight(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getLight() : boost::intrusive_ptr<glitch::video::CLight>{};
}

// 0x5611ec _ZN6glitch2io11CAttributes12setAttributeEiN5boost13intrusive_ptrINS_5video8ITextureEEE
// Forwards to the attribute's setTexture (vtable +0xfc); an out-of-range index does nothing.
void CAttributes::setAttribute(int index, boost::intrusive_ptr<glitch::video::ITexture> value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setTexture(value);
}

// 0x561aa0 _ZN6glitch2io11CAttributes12setAttributeEiN5boost13intrusive_ptrINS_5video6CLightEEE
// Forwards to the attribute's setLight (vtable +0x100). The original passes the address of a copy of the
// light reference and releases that copy after the call; the by-value parameter here has the same lifetime.
void CAttributes::setAttribute(int index, boost::intrusive_ptr<glitch::video::CLight> value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setLight(value);
}

// 0x5623e0 _ZN6glitch2io11CAttributes8getLightEPKc
boost::intrusive_ptr<glitch::video::CLight> CAttributes::getLight(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getLight() : boost::intrusive_ptr<glitch::video::CLight>{};
}

// 0x56241c _ZN6glitch2io11CAttributes10getTextureEPKc
boost::intrusive_ptr<glitch::video::ITexture> CAttributes::getTexture(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getTexture() : boost::intrusive_ptr<glitch::video::ITexture>{};
}

}  // namespace glitch::io

namespace glitch::io {

// 0x326d20 _ZN6glitch2io10IAttribute9setStringEPKw
// Narrows the wide string by truncation (as getString does) and forwards it to the
// virtual char setter.
void IAttribute::setString(const wchar_t* value) {
    std::string narrow;
    for (const wchar_t* p = value; p && *p; ++p) narrow.push_back(static_cast<char>(*p));
    setString(narrow.c_str());
}

// 0x56085c _ZN6glitch2io11CAttributes22getAttributeTypeStringEi
const wchar_t* CAttributes::getAttributeTypeString(int index) const {
    IAttribute* a = at(currentAttributes(), index);
    return a ? a->getTypeString() : L"unknown";
}

// 0x562388 _ZN6glitch2io11CAttributes22getAttributeTypeStringEPKc
const wchar_t* CAttributes::getAttributeTypeString(const char* name) const {
    IAttribute* a = getAttributeP(name);
    return a ? a->getTypeString() : L"unknown";
}

// 0x563b74 _ZN6glitch2io11CAttributes12setAttributeEiRKNS_4core8CMatrix4IfEE
void CAttributes::setAttribute(int index, const glitch::core::CMatrix4<float>& value) {
    if (IAttribute* a = at(currentAttributes(), index)) a->setMatrix(value);
}

}  // namespace glitch::io
