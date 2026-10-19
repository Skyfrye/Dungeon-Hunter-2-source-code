// Batch g1-game-items-save-SimpleTypeProperty-cdc6b3-2 (part 3 of 3 of SimpleTypeProperty<T>): the std::string default
// constructor, and for float, Point2D<int> and std::vector<Point3D<float>> the slots that the other two batches do not
// cover (Clone, ToString, FromString, SetDefaultValueFromString, and for Point2D<int> and the vector also IsDefaultValue
// and SetToDefaultValue). The members are explicit specializations of the class template in dh2/SimpleTypeProperty.hpp.
// Their declarations come first in this file, before any use.
//
// PARTIAL: the int return of the SetDefaultValueFromString and FromString slots. The original returns r0 left by a tail
// call into StrToObj (0x3950c8, 0x3950e0, 0x3a66bc, 0x3a66d8, 0x3f8f7c, 0x3f8fc8), and the port cannot reproduce that
// value. core-platform declares every StrToObj overload void, but the binary's overloads return different things:
// StrToObj(char const*, float&) returns the strtod value as a float (0x30f288), StrToObj(char const*, Point2D<int>&)
// returns nothing (0x30f050), and StrToObj(char const*, vector<Point3D<float>>&) returns the result of _DEBUG_OUT
// (0x30f010, a debug stub that does not parse). The ports of these six slots make the same field writes, call the same
// StrToObj, and return 0.
//
// PARTIAL: std::string default constructor. The original does not store m_offset (+0x04). Property has no default
// constructor, so this passes the object as both begin and end, which stores 0 in m_offset.
//
// PARTIAL: ToString of std::vector<Point3D<float>>. ObjToStr for this type has an empty body in the original (0x30ee60)
// and in core-platform, so the text buffer is never written and the original reads uninitialised memory. The port clears
// the buffer's first byte, so the text is empty.
//
// ToString builds its text in a 256-byte CustomAlloc buffer that is never freed, as the original does.
//
// Clone copies the object in CustomAlloc storage. The original sets the vptr, the offset, the name and the default by
// hand after operator new(size, MemoryHintState 0), which forwards to CustomAlloc, so the block pairs with the CustomFree
// in PropertyMap::DestroyPropertyMaps.

#include "dh2/SimpleTypeProperty.hpp"

#include <new>
#include <string>
#include <vector>

#include "core-platform/memory.hpp"   // CustomAlloc
#include "core-platform/obj_str.hpp"  // ObjToStr and StrToObj overloads
#include "dh2/Point2D.hpp"
#include "dh2/Point3D.hpp"

using FloatProperty = SimpleTypeProperty<float>;
using Point2DIntProperty = SimpleTypeProperty<Point2D<int>>;
using PointVectorProperty = SimpleTypeProperty<std::vector<Point3D<float>>>;

namespace {

// The member at object + m_offset. The offset is a difference of two host addresses (see Property), so this is the
// member's address on the host.
template <typename T>
T& FieldOf(const Property& property, void* object) {
    return *reinterpret_cast<T*>(static_cast<char*>(object) + property.m_offset);
}

}  // namespace

// Explicit specializations. Each is declared here before any definition or use in this file.
template <> SimpleTypeProperty<std::string>::SimpleTypeProperty();
template <> FloatProperty* FloatProperty::Clone();
template <> int FloatProperty::SetDefaultValueFromString(const char* text);
template <> int FloatProperty::FromString(void* object, const char* text);
template <> std::string FloatProperty::ToString(void* object);
template <> bool Point2DIntProperty::IsDefaultValue(void* object);
template <> void Point2DIntProperty::SetToDefaultValue(void* object);
template <> int Point2DIntProperty::SetDefaultValueFromString(const char* text);
template <> int Point2DIntProperty::FromString(void* object, const char* text);
template <> std::string Point2DIntProperty::ToString(void* object);
template <> Point2DIntProperty* Point2DIntProperty::Clone();
template <> bool PointVectorProperty::IsDefaultValue(void* object);
template <> std::string PointVectorProperty::ToString(void* object);
template <> void PointVectorProperty::SetToDefaultValue(void* object);
template <> PointVectorProperty* PointVectorProperty::Clone();
template <> int PointVectorProperty::SetDefaultValueFromString(const char* text);
template <> int PointVectorProperty::FromString(void* object, const char* text);

// 0x394f10 SimpleTypeProperty<std::string>::SimpleTypeProperty()
// The original sets the vptr, an empty name and an empty default, and leaves m_offset unset. The default string is
// empty by construction. See the PARTIAL note above for the m_offset store.
template <>
SimpleTypeProperty<std::string>::SimpleTypeProperty() : Property("", this, this), m_defaultValue() {}

// 0x394f98 SimpleTypeProperty<float>::Clone()
// The original allocates 0x24 bytes, copies m_offset, the name and the default, then sets the final vptr. Copy
// construction gives the same fields.
template <>
FloatProperty* FloatProperty::Clone() {
    return new (CustomAlloc(static_cast<unsigned>(sizeof(FloatProperty)))) FloatProperty(*this);
}

// 0x3950c8 SimpleTypeProperty<float>::SetDefaultValueFromString(char const*)
// PARTIAL: the default is cleared, then StrToObj(float&) parses the text into it, as in the original. The original
// returns the float that StrToObj returns (strtod); this returns 0 (see the PARTIAL note above).
template <>
int FloatProperty::SetDefaultValueFromString(const char* text) {
    m_defaultValue = 0.0f;
    StrToObj(text, m_defaultValue);
    return 0;
}

// 0x3950e0 SimpleTypeProperty<float>::FromString(void*, char const*)
// PARTIAL: the member is cleared, then StrToObj(float&) parses the text into it. The return value is not reproduced
// (see the PARTIAL note above).
template <>
int FloatProperty::FromString(void* object, const char* text) {
    float& field = FieldOf<float>(*this, object);
    field = 0.0f;
    StrToObj(text, field);
    return 0;
}

// 0x3950fc SimpleTypeProperty<float>::ToString(void*)
// The 256-byte buffer comes from CustomAlloc and is not freed, as in the original. ObjToStr writes the text with %f.
template <>
std::string FloatProperty::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100));
    ObjToStr(text, FieldOf<float>(*this, object));
    return std::string(text);
}

// 0x3a357c SimpleTypeProperty<Point2D<int>>::IsDefaultValue(void*)
// The original compares each component after converting the int values to float, so the comparison is a float equality.
// The X test comes first and the Y test only runs when X matches.
template <>
bool Point2DIntProperty::IsDefaultValue(void* object) {
    const Point2D<int>& value = FieldOf<Point2D<int>>(*this, object);
    const bool xEqual = static_cast<float>(value.X) == static_cast<float>(m_defaultValue.X);
    return xEqual && static_cast<float>(value.Y) == static_cast<float>(m_defaultValue.Y);
}

// 0x3a35f0 SimpleTypeProperty<Point2D<int>>::SetToDefaultValue(void*)
template <>
void Point2DIntProperty::SetToDefaultValue(void* object) {
    FieldOf<Point2D<int>>(*this, object) = m_defaultValue;
}

// 0x3a66bc SimpleTypeProperty<Point2D<int>>::SetDefaultValueFromString(char const*)
// PARTIAL: Y and X of the default are cleared, then StrToObj(Point2D<int>&) parses the text into it, as in the original.
// That StrToObj returns nothing, so the value returned here is 0 (see the PARTIAL note above).
template <>
int Point2DIntProperty::SetDefaultValueFromString(const char* text) {
    m_defaultValue.Y = 0;
    m_defaultValue.X = 0;
    StrToObj(text, m_defaultValue);
    return 0;
}

// 0x3a66d8 SimpleTypeProperty<Point2D<int>>::FromString(void*, char const*)
// PARTIAL: the member is cleared, then StrToObj(Point2D<int>&) parses the text into it. The return value is not
// reproduced (see the PARTIAL note above).
template <>
int Point2DIntProperty::FromString(void* object, const char* text) {
    Point2D<int>& field = FieldOf<Point2D<int>>(*this, object);
    field.Y = 0;
    field.X = 0;
    StrToObj(text, field);
    return 0;
}

// 0x3a926c SimpleTypeProperty<Point2D<int>>::ToString(void*)
// As the float version: a 256-byte CustomAlloc buffer that is not freed, and ObjToStr writes "x,y".
template <>
std::string Point2DIntProperty::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100));
    ObjToStr(text, FieldOf<Point2D<int>>(*this, object));
    return std::string(text);
}

// 0x3a98e8 SimpleTypeProperty<Point2D<int>>::Clone()
template <>
Point2DIntProperty* Point2DIntProperty::Clone() {
    return new (CustomAlloc(static_cast<unsigned>(sizeof(Point2DIntProperty)))) Point2DIntProperty(*this);
}

// 0x3f03d8 SimpleTypeProperty<std::vector<Point3D<float>>>::IsDefaultValue(void*)
template <>
bool PointVectorProperty::IsDefaultValue(void* object) {
    return FieldOf<std::vector<Point3D<float>>>(*this, object) == m_defaultValue;
}

// 0x3f3858 SimpleTypeProperty<std::vector<Point3D<float>>>::ToString(void*)
// PARTIAL: ObjToStr for this vector type writes nothing (see the PARTIAL note above). The first byte of the buffer is
// cleared so the result is the empty string rather than an uninitialised read.
template <>
std::string PointVectorProperty::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100));
    text[0] = '\0';
    ObjToStr(text, FieldOf<std::vector<Point3D<float>>>(*this, object));
    return std::string(text);
}

// 0x3f8eb4 SimpleTypeProperty<std::vector<Point3D<float>>>::SetToDefaultValue(void*)
// The original's return value (the vector, in r0) is unused by the void slot.
template <>
void PointVectorProperty::SetToDefaultValue(void* object) {
    FieldOf<std::vector<Point3D<float>>>(*this, object) = m_defaultValue;
}

// 0x3f8ec8 SimpleTypeProperty<std::vector<Point3D<float>>>::Clone()
template <>
PointVectorProperty* PointVectorProperty::Clone() {
    return new (CustomAlloc(static_cast<unsigned>(sizeof(PointVectorProperty)))) PointVectorProperty(*this);
}

// 0x3f8f7c SimpleTypeProperty<std::vector<Point3D<float>>>::SetDefaultValueFromString(char const*)
// PARTIAL: the default is assigned an empty vector (copy-assigned from a zeroed temporary in the original), then
// StrToObj(vector&) runs. That is a debug stub, and its result is not reproduced (see the PARTIAL note above).
template <>
int PointVectorProperty::SetDefaultValueFromString(const char* text) {
    const std::vector<Point3D<float>> empty;
    m_defaultValue = empty;
    StrToObj(text, m_defaultValue);
    return 0;
}

// 0x3f8fc8 SimpleTypeProperty<std::vector<Point3D<float>>>::FromString(void*, char const*)
// PARTIAL: the member is assigned an empty vector, then StrToObj(vector&) runs. The return value is not reproduced (see
// the PARTIAL note above).
template <>
int PointVectorProperty::FromString(void* object, const char* text) {
    std::vector<Point3D<float>>& field = FieldOf<std::vector<Point3D<float>>>(*this, object);
    const std::vector<Point3D<float>> empty;
    field = empty;
    StrToObj(text, field);
    return 0;
}
