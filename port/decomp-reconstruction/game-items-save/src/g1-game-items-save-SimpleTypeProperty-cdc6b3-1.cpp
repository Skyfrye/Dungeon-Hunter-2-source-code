// Batch g1-game-items-save-SimpleTypeProperty-cdc6b3-1 (part 2 of 3 of SimpleTypeProperty<T>): the ToString, FromString,
// SetDefaultValueFromString, IsDefaultValue, SetToDefaultValue and Clone slots for int, float, Point3D<float>,
// glitch::core::dimension2d<float> and glitch::core::vector3d<float>. Layout and declarations come from
// dh2/SimpleTypeProperty.hpp (the explicit specializations are declared there).
//
// The value lives at the owning object plus Property::m_offset, the byte offset measured on this host when the property
// is registered. ValueIn() adds that offset; no 32-bit offset is used as a raw address.
//
// PARTIAL: the four void-typed originals below (dimension2d and Point3D FromString and SetDefaultValueFromString) tail-call
// a StrToObj overload that Hex-Rays types void, so the return register is not defined by the pseudocode. The Property slot
// is int, so these return 0. See the notes on each.
//
// Dependencies outside this batch (the link needs them):
//   StrToObj / ObjToStr overloads        core-platform/src/obj_str.cpp
//   CustomAlloc(unsigned)                core-platform/src/memory.cpp
//   operator new(size_t, MemoryHintState) game-app/src/g1-game-app-global-f216b6-0.cpp (0x310570, dh2/global/runtime_support.hpp;
//                                        the Clone bodies call the MemoryHintState overload, not the E_MEMORY_HINT one)
//   Point3D<float>::operator==           0x312b6c, Point3D batch
//   Property::Property(...) and the SimpleTypeProperty<T> constructors: other batches (the ctor is not in this batch)
//   The vtable slots of SimpleTypeProperty<dimension2d<float>> and <vector3d<float>> (Clone copy-constructs them, which
//   emits their vtables): the slots are in the sibling batches cdc6b3-0 and cdc6b3-2.

#include "dh2/SimpleTypeProperty.hpp"

#include <new>
#include <string>

#include "core-platform/deps/glitch_core.hpp"  // glitch::core::vector3d<float>, glitch::core::dimension2d<float>
#include "core-platform/memory.hpp"           // CustomAlloc, MHS_UNRECOVERED
#include "core-platform/obj_str.hpp"          // ObjToStr, StrToObj
#include "dh2/Point3D.hpp"
#include "dh2/Property.hpp"
#include "dh2/global/runtime_support.hpp"     // operator new(size_t, MemoryHintState), 0x310570

namespace {
// The member of an owning object that a property describes: the object's address plus the property's byte offset.
template <typename T>
T* ValueIn(const Property& property, void* object) {
    return reinterpret_cast<T*>(static_cast<char*>(object) + property.m_offset);
}
}  // namespace

// ---- int ----

// 0x38bac4 _ZN18SimpleTypePropertyIiE8ToStringEPv
template <>
std::string SimpleTypeProperty<int>::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100u));
    ObjToStr(text, *ValueIn<int>(*this, object));
    // The original never frees the 0x100-byte buffer. It is kept here, as in the binary.
    return std::string(text);
}

// 0x38baac _ZN18SimpleTypePropertyIiE10FromStringEPvPKc
template <>
int SimpleTypeProperty<int>::FromString(void* object, const char* text) {
    int* value = ValueIn<int>(*this, object);
    *value = 0;
    StrToObj(text, *value);
    // The original tail-calls StrToObj(int&). That function stores atoi's result and leaves it in r0, so the parsed
    // value is the return value.
    return *value;
}

// 0x38ae00 _ZN18SimpleTypePropertyIiE14IsDefaultValueEPv
template <>
bool SimpleTypeProperty<int>::IsDefaultValue(void* object) {
    return *ValueIn<int>(*this, object) == m_defaultValue;
}

// 0x38ae1c _ZN18SimpleTypePropertyIiE17SetToDefaultValueEPv
// The original leaves the this pointer in r0 (Hex-Rays types the result as the object). The Property slot is void, so no
// value is returned.
template <>
void SimpleTypeProperty<int>::SetToDefaultValue(void* object) {
    *ValueIn<int>(*this, object) = m_defaultValue;
}

// 0x38ba94 _ZN18SimpleTypePropertyIiE25SetDefaultValueFromStringEPKc
template <>
int SimpleTypeProperty<int>::SetDefaultValueFromString(const char* text) {
    m_defaultValue = 0;
    StrToObj(text, m_defaultValue);
    // As FromString: the original returns r0 from StrToObj(int&), which is the parsed value.
    return m_defaultValue;
}

// 0x38c08c _ZN18SimpleTypePropertyIiE5CloneEv
// The original allocates sizeof(SimpleTypeProperty<int>) (0x24 on the 32-bit build) through operator new(0x24, 0), which is
// operator new(size_t, MemoryHintState) at 0x310570 (asm: MOV R1,#0; BL _Znwj15MemoryHintState). It copies the offset, the
// name and the default value into the block. The implicit copy constructor does the same copies.
template <>
SimpleTypeProperty<int>* SimpleTypeProperty<int>::Clone() {
    void* memory = ::operator new(sizeof(SimpleTypeProperty<int>), MHS_UNRECOVERED);
    return new (memory) SimpleTypeProperty<int>(*this);
}

// ---- float ----

// 0x394ed4 _ZN18SimpleTypePropertyIfE14IsDefaultValueEPv
template <>
bool SimpleTypeProperty<float>::IsDefaultValue(void* object) {
    return *ValueIn<float>(*this, object) == m_defaultValue;
}

// 0x394f00 _ZN18SimpleTypePropertyIfE17SetToDefaultValueEPv
// As for int, the original's r0 is the this pointer, and the void slot ignores it.
template <>
void SimpleTypeProperty<float>::SetToDefaultValue(void* object) {
    *ValueIn<float>(*this, object) = m_defaultValue;
}

// ---- Point3D<float> ----

// 0x389980 _ZN18SimpleTypePropertyI7Point3DIfEE8ToStringEPv
template <>
std::string SimpleTypeProperty<Point3D<float>>::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100u));
    ObjToStr(text, *ValueIn<Point3D<float>>(*this, object));
    // The original never frees the 0x100-byte buffer. It is kept here, as in the binary.
    return std::string(text);
}

// 0x38867c _ZN18SimpleTypePropertyI7Point3DIfEE10FromStringEPvPKc
// PARTIAL: the original tail-calls the void StrToObj(Point3D<float>&), so its return register is undefined here. The
// slot is int, and 0 is returned.
template <>
int SimpleTypeProperty<Point3D<float>>::FromString(void* object, const char* text) {
    Point3D<float>* value = ValueIn<Point3D<float>>(*this, object);
    value->X = 0.0f;  // +0x00
    value->Z = 0.0f;  // +0x08
    value->Y = 0.0f;  // +0x04
    StrToObj(text, *value);
    return 0;
}

// 0x3886a0 _ZN18SimpleTypePropertyI7Point3DIfEE14IsDefaultValueEPv
// The original calls Point3D<float>::operator== (component-wise, within 0.0001) on the object's value and the default.
template <>
bool SimpleTypeProperty<Point3D<float>>::IsDefaultValue(void* object) {
    return ValueIn<Point3D<float>>(*this, object)->operator==(m_defaultValue);
}

// 0x3883fc _ZN18SimpleTypePropertyI7Point3DIfEE17SetToDefaultValueEPv
// The original copies the three components. The return is the this pointer in r0, which the void slot ignores.
template <>
void SimpleTypeProperty<Point3D<float>>::SetToDefaultValue(void* object) {
    *ValueIn<Point3D<float>>(*this, object) = m_defaultValue;
}

// 0x38865c _ZN18SimpleTypePropertyI7Point3DIfEE25SetDefaultValueFromStringEPKc
// PARTIAL: as FromString. The default is zeroed (Z, X, Y, in the original's store order) and parsed; the return is 0.
template <>
int SimpleTypeProperty<Point3D<float>>::SetDefaultValueFromString(const char* text) {
    m_defaultValue.Z = 0.0f;  // +0x28
    m_defaultValue.X = 0.0f;  // +0x20
    m_defaultValue.Y = 0.0f;  // +0x24
    StrToObj(text, m_defaultValue);
    return 0;
}

// 0x389ee4 _ZN18SimpleTypePropertyI7Point3DIfEE5CloneEv
// The original allocates through operator new(0x2c, 0), which is operator new(size_t, MemoryHintState) (asm: BL
// _Znwj15MemoryHintState), not the E_MEMORY_HINT overload.
template <>
SimpleTypeProperty<Point3D<float>>* SimpleTypeProperty<Point3D<float>>::Clone() {
    void* memory = ::operator new(sizeof(SimpleTypeProperty<Point3D<float>>), MHS_UNRECOVERED);
    return new (memory) SimpleTypeProperty<Point3D<float>>(*this);
}

// ---- glitch::core::dimension2d<float> ----

// 0x387b54 _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE8ToStringEPv
template <>
std::string SimpleTypeProperty<glitch::core::dimension2d<float>>::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100u));
    ObjToStr(text, *ValueIn<glitch::core::dimension2d<float>>(*this, object));
    // The original never frees the 0x100-byte buffer. It is kept here, as in the binary.
    return std::string(text);
}

// 0x387b34 _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE10FromStringEPvPKc
// PARTIAL: the original tail-calls the void StrToObj(dimension2d<float>&), so its return register is undefined here.
// 0 is returned for the int slot.
template <>
int SimpleTypeProperty<glitch::core::dimension2d<float>>::FromString(void* object, const char* text) {
    glitch::core::dimension2d<float>* value = ValueIn<glitch::core::dimension2d<float>>(*this, object);
    value->Height = 0.0f;  // +0x04
    value->Width = 0.0f;   // +0x00
    StrToObj(text, *value);
    return 0;
}

// 0x387b18 _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE25SetDefaultValueFromStringEPKc
// PARTIAL: as FromString. The default is zeroed (Height, then Width) and parsed; the return is 0.
template <>
int SimpleTypeProperty<glitch::core::dimension2d<float>>::SetDefaultValueFromString(const char* text) {
    m_defaultValue.Height = 0.0f;  // +0x24
    m_defaultValue.Width = 0.0f;   // +0x20
    StrToObj(text, m_defaultValue);
    return 0;
}

// 0x387f04 _ZN18SimpleTypePropertyIN6glitch4core11dimension2dIfEEE5CloneEv
// The original allocates through operator new(0x28, 0), which is operator new(size_t, MemoryHintState) (asm: BL
// _Znwj15MemoryHintState), not the E_MEMORY_HINT overload.
template <>
SimpleTypeProperty<glitch::core::dimension2d<float>>* SimpleTypeProperty<glitch::core::dimension2d<float>>::Clone() {
    void* memory = ::operator new(sizeof(SimpleTypeProperty<glitch::core::dimension2d<float>>), MHS_UNRECOVERED);
    return new (memory) SimpleTypeProperty<glitch::core::dimension2d<float>>(*this);
}

// ---- glitch::core::vector3d<float> ----

// 0x387ad0 _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE8ToStringEPv
template <>
std::string SimpleTypeProperty<glitch::core::vector3d<float>>::ToString(void* object) {
    char* text = static_cast<char*>(CustomAlloc(0x100u));
    ObjToStr(text, *ValueIn<glitch::core::vector3d<float>>(*this, object));
    // The original never frees the 0x100-byte buffer. It is kept here, as in the binary.
    return std::string(text);
}

// 0x387e40 _ZN18SimpleTypePropertyIN6glitch4core8vector3dIfEEE5CloneEv
// The original allocates through operator new(0x2c, 0), which is operator new(size_t, MemoryHintState) (asm: BL
// _Znwj15MemoryHintState), not the E_MEMORY_HINT overload.
template <>
SimpleTypeProperty<glitch::core::vector3d<float>>* SimpleTypeProperty<glitch::core::vector3d<float>>::Clone() {
    void* memory = ::operator new(sizeof(SimpleTypeProperty<glitch::core::vector3d<float>>), MHS_UNRECOVERED);
    return new (memory) SimpleTypeProperty<glitch::core::vector3d<float>>(*this);
}
