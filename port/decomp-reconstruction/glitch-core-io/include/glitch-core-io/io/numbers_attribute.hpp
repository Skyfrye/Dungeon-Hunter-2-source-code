// glitch::io::CNumbersAttribute: an attribute holding a list of numbers, stored
// either as ints or as floats (the "intlist" / "floatlist" types).
#pragma once

#include <cstddef>
#include <cstdint>
#include <initializer_list>
#include <string>
#include <vector>

#include "glitch-core-io/io/attributes.hpp"

namespace glitch::io {

class CNumbersAttribute : public IAttribute {
public:
    CNumbersAttribute() = default;
    // The constructors store the components in declaration order (ARM listings of
    // the original). The list kind and element count are set as the original does.
    CNumbersAttribute(const char* attrName, const glitch::core::rect<std::int32_t>& value, bool f);      // 0x567340
    CNumbersAttribute(const char* attrName, const glitch::core::vector2d<float>& value, bool f);         // 0x565880
    CNumbersAttribute(const char* attrName, const glitch::core::vector2d<std::int32_t>& value, bool f);  // 0x567968
    CNumbersAttribute(const char* attrName, const glitch::video::SColorf& value, bool f);                // 0x565a54
    CNumbersAttribute(const char* attrName, const glitch::core::line3d<float>& value, bool f);           // 0x567b3c
    CNumbersAttribute(const char* attrName, const glitch::core::line2d<float>& value, bool f);           // 0x565ce8
    CNumbersAttribute(const char* attrName, const glitch::core::triangle3d<float>& value, bool f);       // 0x565e94
    CNumbersAttribute(const char* attrName, const glitch::core::plane3d<float>& value, bool f);          // 0x56616c
    CNumbersAttribute(const char* attrName, const glitch::core::aabbox3d<float>& value, bool f);         // 0x566318
    CNumbersAttribute(const char* attrName, const glitch::core::quaternion& value, bool f);              // 0x56653c
    CNumbersAttribute(const char* attrName, const glitch::core::CMatrix4<float>& value, bool f);         // 0x566728
    CNumbersAttribute(const char* attrName, const glitch::core::vector4d<float>& value, bool f);         // 0x5668ac
    CNumbersAttribute(const char* attrName, const glitch::core::vector3d<float>& value, bool f);         // 0x566a84
    CNumbersAttribute(const char* attrName, const glitch::core::position2d<std::int32_t>& value, bool f);  // 0x5674ec
    CNumbersAttribute(const char* attrName, const glitch::core::vector4d<std::int32_t>& value, bool f);  // 0x567620
    CNumbersAttribute(const char* attrName, const glitch::core::vector3d<std::int32_t>& value, bool f);  // 0x5677f8
    // +0x24: int storage (valid when !isFloatList)
    core::svector<int> intValues;
    // +0x30: float storage (valid when isFloatList)
    core::svector<float> floatValues;
    // +0x3c: element count, equal to the size of the active vector.
    std::size_t count = 0;
    // +0x40: true for a float list.
    bool isFloatList = false;

    // Returns the first element as an int, or 0 when the list is empty.
    int getInt() const override;                       // 0x31da4c
    float getFloat() const override;                   // 0x31da8c
    // True if any element is non-zero (exact compare for float lists).
    bool getBool() const override;                     // 0x31dacc
    static bool isNumberList();                        // 0x31ee4c
    bool isFloat() const;                              // 0x31ee54
    int getType() const override;                      // 0x31ee5c
    glitch::core::rect<std::int32_t> getRect() const override;        // 0x31e120
    void setRect(glitch::core::rect<std::int32_t> value);             // 0x3247b8 (named setRect in the original)
    glitch::core::vector2d<float> getVector2d() const override;       // 0x31dbf8
    void setVector2d(glitch::core::vector2d<float> value) override;   // 0x324d04
    // +0x11c: CNumbersAttribute continues the IAttribute table (+0x10c getFloatArray .. +0x12c isFloat); this
    // overload of setVector2d is its own virtual, not an IAttribute slot.
    virtual void setVector2d(glitch::core::vector2d<std::int32_t> value);  // 0x3251d0
    glitch::core::position2d<std::int32_t> getPosition() const override;     // 0x31db5c
    void setPosition(glitch::core::position2d<std::int32_t> value) override; // 0x32490c
    glitch::core::vector3d<float> getVector3d() const override;       // 0x31dcb0
    void setVector3d(const glitch::core::vector3d<float>& value) override;   // 0x324df4
    void setDimension2d(glitch::core::dimension2d<std::int32_t> value) override;  // 0x325830
    glitch::video::SColorf getColorf() const override;                // 0x31defc
    glitch::core::quaternion getQuaternion() const override;          // 0x31e25c
    void setQuaternion(const glitch::core::quaternion& value) override;  // 0x32465c
    glitch::core::CMatrix4<float> getMatrix() const override;          // 0x326af4
    // Array accessors. The list of the other kind is cleared and refilled with the
    // converted values (getFloatArray / getIntArray); the setters write up to count values.
    core::svector<float> getFloatArray();                                  // 0x3264c4
    core::svector<std::int32_t> getIntArray();                             // 0x3270d8
    void setFloatArray(core::svector<float>& values);                      // 0x31ee9c
    void setIntArray(core::svector<std::int32_t>& values);                 // 0x324564
    glitch::core::vector4d<float> getVector4d() const override;             // 0x31ddac
    void setVector4d(const glitch::core::vector4d<float>& value) override;  // 0x324f18
    glitch::core::plane3d<float> getPlane() const override;                 // 0x31e6a4
    void setPlane(glitch::core::plane3d<float> value) override;             // 0x3256d8
    glitch::core::line2d<float> getLine2d() const override;                 // 0x31ea00
    void setLine2d(glitch::core::line2d<float> value) override;             // 0x325a6c
    void setLine2d(glitch::core::line2d<std::int32_t> value) override;      // 0x325918
    glitch::core::line3d<float> getLine3d() const override;                 // 0x31eb54
    glitch::core::aabbox3d<float> getBBox() const override;                 // 0x31e7fc
    void setBoundingBox(glitch::core::aabbox3d<float> value);               // 0x325518
    glitch::core::triangle3d<float> getTriangle() const override;           // 0x31e3b0
    void setTriangle3d(glitch::core::triangle3d<float> value);              // 0x3252bc
    glitch::video::SColor getColor() const override;                        // 0x31e080
    void setColor(glitch::video::SColor value) override;                    // 0x3249f8
    void setColor(glitch::video::SColorf value) override;                   // 0x324b78
    void setMatrix(const glitch::core::CMatrix4<float>& value) override;    // 0x325bc4
    // 0x325070: zeroes the list, then reads up to count numbers from the text: before each number the text is
    // skipped to the next digit or '-', and each number is read by fast_atof_move (an int list truncates it).
    void setString(const char* text) override;
    std::string getString() const override;     // 0x32d220 (partial: float formatting inferred)
    std::wstring getStringW() const override;   // 0x32d52c (partial: float formatting inferred)

protected:
    // Element access on the active list (float or int), with the original's conversions:
    // int reads of a float list truncate, float reads of an int list convert.
    float activeFloat(std::size_t i) const;
    std::int32_t activeInt(std::size_t i) const;
    void setActive(std::size_t i, float value);
    void setActive(std::size_t i, std::int32_t value);
    // Zeroes the first count elements of the active list.
    void clearActive();
    // Clears the active list, then writes values[i] to element i while i < count.
    // Int lists truncate float values (f2iz), float lists keep them.
    template <typename T>
    void setComponents(std::initializer_list<T> values) {
        clearActive();
        std::size_t i = 0;
        for (T v : values) {
            if (i >= count) break;
            setActive(i++, v);
        }
    }
    // Element i of the active list as a float, or 0 past the end (the original zero-fills).
    float componentF(std::size_t i) const { return i < count ? activeFloat(i) : 0.f; }

public:
    const wchar_t* getTypeString() const override;     // 0x31ee70

    void setInt(int value) override;                   // 0x31ed50
    void setFloat(float value) override;               // 0x31edc4
    void setBool(bool value) override;                 // 0x31ee38
};

}  // namespace glitch::io
