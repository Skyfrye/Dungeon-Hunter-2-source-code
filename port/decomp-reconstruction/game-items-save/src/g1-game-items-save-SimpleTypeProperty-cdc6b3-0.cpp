// Batch g1-game-items-save-SimpleTypeProperty-cdc6b3-0 (part 1 of 3): the SimpleTypeProperty<T> members for bool,
// std::string, glitch::core::vector3d<float> and glitch::core::dimension2d<float>, at 0x33de64..0x33f4c4 and
// 0x387734..0x387aac. Every function here is an explicit specialization of a member of the template declared in
// dh2/SimpleTypeProperty.hpp, and each one is declared in that header.
//
// Layout (see dh2/Property.hpp and dh2/SimpleTypeProperty.hpp): vptr +0x00, m_offset +0x04, m_name +0x08 (Property),
// m_defaultValue +0x20. A property's value lives at object + m_offset, where m_offset is the host byte distance from the
// object to the member, measured when the property is made.
//
// PARTIAL: the int result of four slots. The slots return int, but the originals return a register that is not an int.
// 0x33e358 and 0x33f4c4 (std::string) tail-call std::string::_M_assign, which returns this (the address of the string),
// and that address cannot be kept in an int on a 64-bit host. 0x387a8c and 0x387aac (vector3d) tail-call the void
// StrToObj(vector3d), so r0 is whatever that function leaves behind. All four return 0 here. PropertyMap::
// SetTemplateParameter returns the 0x33e358 result to its caller, so that caller sees 0 for a std::string property.
//
// Calls into other batches that the link needs:
//   Property::Property(char const*, void*, void*)   0x399a88, Property batch (the SimpleTypeProperty constructor calls it)
//   Not in this batch: the ToString, Clone and FromString slots of vector3d and dimension2d, and the other
//   SimpleTypeProperty constructors (parts 2 and 3).
//
// Clone copy-constructs the new object (new SimpleTypeProperty(*this)). The original allocates 0x38 or 0x24 bytes, runs
// the default constructor, and copies m_offset, m_name and m_defaultValue, and the implicit copy constructor copies the
// same three members. This avoids a link dependency on the default constructor 0x394f10 (part 2 or 3).

#include "dh2/SimpleTypeProperty.hpp"

#include <cstdint>
#include <cstring>
#include <string>

#include "core-platform/memory.hpp"   // CustomAlloc (0x310454)
#include "core-platform/obj_str.hpp"   // ObjToStr and StrToObj for bool and the glitch vector3d

namespace {
using Vector3f = glitch::core::vector3d<float>;
using Dimension2f = glitch::core::dimension2d<float>;

// The member at object + m_offset. m_offset is the byte distance between the object and the member, measured with host
// pointers when the property was made, so this is valid on 64-bit.
template <typename T>
T& ValueAt(void* object, std::int32_t offset) {
    return *reinterpret_cast<T*>(static_cast<char*>(object) + offset);
}
}  // namespace

// ----- bool -----

// 0x33de64 _ZN18SimpleTypePropertyIbE14IsDefaultValueEPv
template <>
bool SimpleTypeProperty<bool>::IsDefaultValue(void* object) {
    return ValueAt<bool>(object, m_offset) == m_defaultValue;  // +0x20: m_defaultValue
}

// 0x33de80 _ZN18SimpleTypePropertyIbE17SetToDefaultValueEPv
template <>
void SimpleTypeProperty<bool>::SetToDefaultValue(void* object) {
    ValueAt<bool>(object, m_offset) = m_defaultValue;  // +0x20: m_defaultValue
}

// 0x33e580 _ZN18SimpleTypePropertyIbE25SetDefaultValueFromStringEPKc
// The default is cleared, then parsed. The original returns StrToObj's result, which is the bool it stored.
template <>
int SimpleTypeProperty<bool>::SetDefaultValueFromString(const char* text) {
    m_defaultValue = false;  // +0x20
    StrToObj(text, m_defaultValue);
    return m_defaultValue;
}

// 0x33e598 _ZN18SimpleTypePropertyIbE10FromStringEPvPKc
template <>
int SimpleTypeProperty<bool>::FromString(void* object, const char* text) {
    bool& value = ValueAt<bool>(object, m_offset);
    value = false;
    StrToObj(text, value);
    return value;  // the same bool the original returns from StrToObj
}

// 0x33e5b0 _ZN18SimpleTypePropertyIbE8ToStringEPv
// The original takes a 0x100-byte block from CustomAlloc, writes the value into it, copies the text into the result and
// never frees the block. That is kept here as it is in the binary.
template <>
std::string SimpleTypeProperty<bool>::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100u));
    ObjToStr(text, ValueAt<bool>(object, m_offset));
    return std::string(text);
}

// 0x33eed8 _ZN18SimpleTypePropertyIbE5CloneEv
template <>
SimpleTypeProperty<bool>* SimpleTypeProperty<bool>::Clone() {
    return new SimpleTypeProperty<bool>(*this);
}

// ----- std::string -----

// 0x33e380 _ZN18SimpleTypePropertyISsEC1EPvPKcPSsSs
// Property(name, object, field), then the default value is copied from defaultValue.
template <>
SimpleTypeProperty<std::string>::SimpleTypeProperty(void* object, const char* name, std::string* field,
                                                    std::string defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}

// 0x33e244 _ZN18SimpleTypePropertyISsEaSERKS0_
// Copies the offset, then the name and the default value. A self-assignment does nothing.
template <>
SimpleTypeProperty<std::string>& SimpleTypeProperty<std::string>::operator=(const SimpleTypeProperty& other) {
    m_offset = other.m_offset;  // +0x04
    if (&m_name != &other.m_name) {
        m_name = other.m_name;  // +0x08
    }
    if (&m_defaultValue != &other.m_defaultValue) {
        m_defaultValue = other.m_defaultValue;  // +0x20
    }
    return *this;
}

// 0x33ee34 _ZN18SimpleTypePropertyISsE5CloneEv
template <>
SimpleTypeProperty<std::string>* SimpleTypeProperty<std::string>::Clone() {
    return new SimpleTypeProperty<std::string>(*this);
}

// 0x33e218 _ZN18SimpleTypePropertyISsE8ToStringEPv
template <>
std::string SimpleTypeProperty<std::string>::ToString(void* object) {
    return ValueAt<std::string>(object, m_offset);
}

// 0x33f4c4 _ZN18SimpleTypePropertyISsE10FromStringEPvPKc
// PARTIAL: the original's int result is the address of the string (see the header comment). This returns 0.
template <>
int SimpleTypeProperty<std::string>::FromString(void* object, const char* text) {
    ValueAt<std::string>(object, m_offset).assign(text, text + std::strlen(text));
    return 0;
}

// 0x33e298 _ZN18SimpleTypePropertyISsE17SetToDefaultValueEPv
template <>
void SimpleTypeProperty<std::string>::SetToDefaultValue(void* object) {
    std::string& value = ValueAt<std::string>(object, m_offset);
    if (&value != &m_defaultValue) {
        value = m_defaultValue;
    }
}

// 0x33e358 _ZN18SimpleTypePropertyISsE25SetDefaultValueFromStringEPKc
// PARTIAL: the same int result as 0x33f4c4. This returns 0.
template <>
int SimpleTypeProperty<std::string>::SetDefaultValueFromString(const char* text) {
    m_defaultValue.assign(text, text + std::strlen(text));
    return 0;
}

// 0x33e538 _ZN18SimpleTypePropertyISsE14IsDefaultValueEPv
// The original compares the length, then memcmp's the bytes, which is std::string equality.
template <>
bool SimpleTypeProperty<std::string>::IsDefaultValue(void* object) {
    return ValueAt<std::string>(object, m_offset) == m_defaultValue;
}

// ----- glitch::core::vector3d<float> -----

// 0x387794 _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE14IsDefaultValueEPv
template <>
bool SimpleTypeProperty<Vector3f>::IsDefaultValue(void* object) {
    const Vector3f& value = ValueAt<Vector3f>(object, m_offset);
    return value.X == m_defaultValue.X && value.Y == m_defaultValue.Y && value.Z == m_defaultValue.Z;
}

// 0x3877f8 _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE17SetToDefaultValueEPv
template <>
void SimpleTypeProperty<Vector3f>::SetToDefaultValue(void* object) {
    Vector3f& value = ValueAt<Vector3f>(object, m_offset);
    value.X = m_defaultValue.X;
    value.Y = m_defaultValue.Y;
    value.Z = m_defaultValue.Z;
}

// 0x387a8c _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE25SetDefaultValueFromStringEPKc
// PARTIAL: the original tail-calls the void StrToObj(vector3d), so its int result is undefined. This returns 0.
template <>
int SimpleTypeProperty<Vector3f>::SetDefaultValueFromString(const char* text) {
    m_defaultValue.X = 0;  // +0x20
    m_defaultValue.Y = 0;  // +0x24
    m_defaultValue.Z = 0;  // +0x28
    StrToObj(text, m_defaultValue);
    return 0;
}

// 0x387aac _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE10FromStringEPvPKc
// PARTIAL: the same int result as 0x387a8c. This returns 0.
template <>
int SimpleTypeProperty<Vector3f>::FromString(void* object, const char* text) {
    Vector3f& value = ValueAt<Vector3f>(object, m_offset);
    value.X = 0;
    value.Y = 0;
    value.Z = 0;
    StrToObj(text, value);
    return 0;
}

// ----- glitch::core::dimension2d<float> -----

// 0x387734 _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE14IsDefaultValueEPv
// The width is compared first, and the height only when the widths are equal.
template <>
bool SimpleTypeProperty<Dimension2f>::IsDefaultValue(void* object) {
    const Dimension2f& value = ValueAt<Dimension2f>(object, m_offset);
    return value.Width == m_defaultValue.Width && value.Height == m_defaultValue.Height;
}

// 0x38777c _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE17SetToDefaultValueEPv
template <>
void SimpleTypeProperty<Dimension2f>::SetToDefaultValue(void* object) {
    Dimension2f& value = ValueAt<Dimension2f>(object, m_offset);
    value.Width = m_defaultValue.Width;
    value.Height = m_defaultValue.Height;
}
