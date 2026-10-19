// SimpleTypeProperty<T>: a Property whose value is a T inside the owning object (at Property::m_offset). The
// default value sits after the base, at +0x20. One instantiation per value type: bool, int, float, std::string,
// glitch::core::vector3d<float>, glitch::core::dimension2d<float>, Point2D<int>, Point3D<float> and
// std::vector<Point3D<float>>. Text conversion goes through StrToObj and ObjToStr for the scalars and the
// glitch types, and through std::string for std::string.
// Original 32-bit size is 0x20 + sizeof(T), rounded up to 4, which is the operator new size in Clone: 0x24 for
// bool, int and float; 0x28 for Point2D<int> and dimension2d<float>; 0x2c for Point3D<float> and
// vector3d<float>; 0x38 for std::string. Each instantiation has a 32-byte vtable: offset-to-top, typeinfo, then
// the six Property slots, all overridden here.
// Reconstructed from libDungeonHunter2.so pseudocode: the std::string constructor 0x33e380, the default
// constructor 0x394f10, and the per-type slots, for example bool 0x33de64..0x33eed8 and std::string
// 0x33e218..0x33f4c4.
#pragma once

#include <string>

#include "core-platform/deps/glitch_core.hpp"  // glitch::core::vector3d<float>, dimension2d<float>: the types named below
#include "dh2/Point3D.hpp"                       // Point3D<float>: the explicit specializations below need complete types
#include "dh2/Property.hpp"

template <typename T>
class SimpleTypeProperty : public Property {
public:
    SimpleTypeProperty();                                               // 0x394f10 (std::string): empty name and empty default
    // 0x33e380 (std::string): Property(name, object, field), then m_defaultValue copied from defaultValue.
    SimpleTypeProperty(void* object, const char* name, T* field, T defaultValue);
    // 0x33e244 (std::string): copies the offset, the name and the default value.
    SimpleTypeProperty& operator=(const SimpleTypeProperty& other);

    // Property slots, in vtable order.
    std::string ToString(void* object) override;                        // slot 0x00 (+0x00): value at object + m_offset, as text
    int FromString(void* object, const char* text) override;            // slot 0x04 (+0x04): parses text into the value
    bool IsDefaultValue(void* object) override;                         // slot 0x08 (+0x08): value equals m_defaultValue
    void SetToDefaultValue(void* object) override;                      // slot 0x0c (+0x0c): value = m_defaultValue
    int SetDefaultValueFromString(const char* text) override;           // slot 0x10 (+0x10): parses text into m_defaultValue
    SimpleTypeProperty* Clone() override;                               // slot 0x14 (+0x14): new object with the same offset, name and default

    // Typed default value. Original offset +0x20. Offsets +0x04 (m_offset) and +0x08 (m_name) belong to Property.
    T m_defaultValue;                                                   // +0x20
};

// Explicit specializations for bool, std::string, glitch::core::vector3d<float> and glitch::core::dimension2d<float>
// (batch cdc6b3-0), defined in game-items-save/src/g1-game-items-save-SimpleTypeProperty-cdc6b3-0.cpp.
template <> bool SimpleTypeProperty<bool>::IsDefaultValue(void* object);                                  // 0x33de64
template <> void SimpleTypeProperty<bool>::SetToDefaultValue(void* object);                               // 0x33de80
template <> int SimpleTypeProperty<bool>::SetDefaultValueFromString(const char* text);                    // 0x33e580
template <> int SimpleTypeProperty<bool>::FromString(void* object, const char* text);                     // 0x33e598
template <> std::string SimpleTypeProperty<bool>::ToString(void* object);                                 // 0x33e5b0
template <> SimpleTypeProperty<bool>* SimpleTypeProperty<bool>::Clone();                                 // 0x33eed8
template <> SimpleTypeProperty<std::string>::SimpleTypeProperty(void* object, const char* name, std::string* field, std::string defaultValue); // 0x33e380
template <> SimpleTypeProperty<std::string>& SimpleTypeProperty<std::string>::operator=(const SimpleTypeProperty& other);                       // 0x33e244
template <> std::string SimpleTypeProperty<std::string>::ToString(void* object);                          // 0x33e218
template <> int SimpleTypeProperty<std::string>::FromString(void* object, const char* text);              // 0x33f4c4
template <> bool SimpleTypeProperty<std::string>::IsDefaultValue(void* object);                           // 0x33e538
template <> void SimpleTypeProperty<std::string>::SetToDefaultValue(void* object);                        // 0x33e298
template <> int SimpleTypeProperty<std::string>::SetDefaultValueFromString(const char* text);             // 0x33e358
template <> SimpleTypeProperty<std::string>* SimpleTypeProperty<std::string>::Clone();                    // 0x33ee34
template <> bool SimpleTypeProperty<glitch::core::vector3d<float>>::IsDefaultValue(void* object);         // 0x387794
template <> void SimpleTypeProperty<glitch::core::vector3d<float>>::SetToDefaultValue(void* object);      // 0x3877f8
template <> int SimpleTypeProperty<glitch::core::vector3d<float>>::SetDefaultValueFromString(const char* text);  // 0x387a8c
template <> int SimpleTypeProperty<glitch::core::vector3d<float>>::FromString(void* object, const char* text);   // 0x387aac
template <> bool SimpleTypeProperty<glitch::core::dimension2d<float>>::IsDefaultValue(void* object);      // 0x387734
template <> void SimpleTypeProperty<glitch::core::dimension2d<float>>::SetToDefaultValue(void* object);   // 0x38777c

// Explicit specializations of the members for the instantiations below are defined in
// game-items-save/src/g1-game-items-save-SimpleTypeProperty-cdc6b3-1.cpp (batch cdc6b3-1). They are declared here so every
// translation unit sees them before its first use of the class.
template <> std::string SimpleTypeProperty<int>::ToString(void* object);                    // 0x38bac4
template <> int SimpleTypeProperty<int>::FromString(void* object, const char* text);        // 0x38baac
template <> bool SimpleTypeProperty<int>::IsDefaultValue(void* object);                     // 0x38ae00
template <> void SimpleTypeProperty<int>::SetToDefaultValue(void* object);                  // 0x38ae1c
template <> int SimpleTypeProperty<int>::SetDefaultValueFromString(const char* text);       // 0x38ba94
template <> SimpleTypeProperty<int>* SimpleTypeProperty<int>::Clone();                      // 0x38c08c
template <> bool SimpleTypeProperty<float>::IsDefaultValue(void* object);                   // 0x394ed4
template <> void SimpleTypeProperty<float>::SetToDefaultValue(void* object);                // 0x394f00
template <> std::string SimpleTypeProperty<Point3D<float>>::ToString(void* object);         // 0x389980
template <> int SimpleTypeProperty<Point3D<float>>::FromString(void* object, const char* text);      // 0x38867c
template <> bool SimpleTypeProperty<Point3D<float>>::IsDefaultValue(void* object);          // 0x3886a0
template <> void SimpleTypeProperty<Point3D<float>>::SetToDefaultValue(void* object);       // 0x3883fc
template <> int SimpleTypeProperty<Point3D<float>>::SetDefaultValueFromString(const char* text);  // 0x38865c
template <> SimpleTypeProperty<Point3D<float>>* SimpleTypeProperty<Point3D<float>>::Clone(); // 0x389ee4
template <> std::string SimpleTypeProperty<glitch::core::dimension2d<float>>::ToString(void* object);            // 0x387b54
template <> int SimpleTypeProperty<glitch::core::dimension2d<float>>::FromString(void* object, const char* text); // 0x387b34
template <> int SimpleTypeProperty<glitch::core::dimension2d<float>>::SetDefaultValueFromString(const char* text);  // 0x387b18
template <> SimpleTypeProperty<glitch::core::dimension2d<float>>* SimpleTypeProperty<glitch::core::dimension2d<float>>::Clone(); // 0x387f04
template <> std::string SimpleTypeProperty<glitch::core::vector3d<float>>::ToString(void* object);                    // 0x387ad0
template <> SimpleTypeProperty<glitch::core::vector3d<float>>* SimpleTypeProperty<glitch::core::vector3d<float>>::Clone(); // 0x387e40

// The constructor of every instantiation except std::string: the binary has no out-of-line copy (the scalar, vector and
// Point3D properties build it inline at their AddProperty<T> sites), and the body is the std::string one: Property(name,
// object, field), then the default value copied from the argument (link-1; the callers named the out-of-line symbol).
template <typename T>
SimpleTypeProperty<T>::SimpleTypeProperty(void* object, const char* name, T* field, T defaultValue)
    : Property(name, object, field), m_defaultValue(defaultValue) {}
