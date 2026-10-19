// Typed attribute classes. Most only expose their type code (and, where the
// literal resolved, their type name). Their value accessors are not
// reconstructed yet, except where noted in the .cpp.
#pragma once

#include <string>
#include <vector>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/numbers_attribute.hpp"

namespace glitch::io {

// CColorAttribute and CColorfAttribute share the same integer view of the colour
// (the ARM bodies are identical). getInt returns the packed colour rotated left by
// one byte (the original stores the bytes in a stack word, then reads it back
// shifted); setInt is its inverse and writes four floats byte/255 into the float list.
class CColorAttribute : public CNumbersAttribute {
public:
    CColorAttribute() = default;
    CColorAttribute(const char* attrName, const glitch::video::SColorf& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x31f2ac
    const wchar_t* getTypeString() const override;  // 0x31f2b4
    int getInt() const override;          // 0x31f12c
    float getFloat() const override;      // 0x31f18c
    void setInt(int value) override;      // 0x31f1f0
    void setFloat(float value) override;  // 0x31f284
    // 0x32324c: PARTIAL. Reads "%02x%02x%02x%02x" and passes the packed colour to setColor (+0xa0).
    void setString(const char* text) override;
    // 0x326388: the packed colour (getColor) as "%02x%02x%02x%02x", high byte first, then widened.
    std::wstring getStringW() const override;
};

class CColorfAttribute : public CNumbersAttribute {
public:
    CColorfAttribute() = default;
    CColorfAttribute(const char* attrName, const glitch::video::SColorf& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x31f114
    const wchar_t* getTypeString() const;  // 0x31f11c
    int getInt() const override;          // 0x31ef94
    float getFloat() const override;      // 0x31eff4
    void setInt(int value) override;      // 0x31f058
    void setFloat(float value) override;  // 0x31f0ec
};

class CVector2DAttribute : public CNumbersAttribute {
public:
    CVector2DAttribute() = default;
    CVector2DAttribute(const char* attrName, const glitch::core::vector2d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x31f2c4
    const wchar_t* getTypeString() const;  // 0x31f2cc
    // 0x326f90: the identity matrix with the flag set (the value is not used).
    glitch::core::CMatrix4<float> getMatrix() const override;
};

class CVector3DAttribute : public CNumbersAttribute {
public:
    CVector3DAttribute() = default;
    CVector3DAttribute(const char* attrName, const glitch::core::vector3d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x31f2dc
    const wchar_t* getTypeString() const;  // 0x31f2e4
    // 0x3273ac: translation matrix from the three components (flag clear).
    glitch::core::CMatrix4<float> getMatrix() const override;
};

class CVector4DAttribute : public CNumbersAttribute {
public:
    glitch::core::CMatrix4<float> getMatrix() const override;  // 0x3276f8: identity with floatValues in M[12..15]; a missing element reads as 0 (guard)
    CVector4DAttribute() = default;
    CVector4DAttribute(const char* attrName, const glitch::core::vector4d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x31f2f4
    const wchar_t* getTypeString() const;  // 0x31f2fc
};

class CVector2DIAttribute : public CNumbersAttribute {
public:
    CVector2DIAttribute() = default;
    CVector2DIAttribute(const char* attrName, const glitch::core::vector2d<std::int32_t>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x560484
    const wchar_t* getTypeString() const;  // 0x56048c
    glitch::core::CMatrix4<float> getMatrix() const override;  // 0x563c40 (identity, flag set)
};

class CVector3DIAttribute : public CNumbersAttribute {
public:
    CVector3DIAttribute() = default;
    CVector3DIAttribute(const char* attrName, const glitch::core::vector3d<std::int32_t>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x56049c
    const wchar_t* getTypeString() const;  // 0x5604a4
    glitch::core::CMatrix4<float> getMatrix() const override;  // 0x563d9c (identity, flag set)
};

class CVector4DIAttribute : public CNumbersAttribute {
public:
    CVector4DIAttribute() = default;
    CVector4DIAttribute(const char* attrName, const glitch::core::vector4d<std::int32_t>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x5604b4
    const wchar_t* getTypeString() const;  // 0x5604bc
    glitch::core::CMatrix4<float> getMatrix() const override;  // 0x563c04 (identity, flag set)
};

class CPosition2DAttribute : public CNumbersAttribute {
public:
    CPosition2DAttribute() = default;
    CPosition2DAttribute(const char* attrName, glitch::core::position2d<std::int32_t> value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x5604cc
    // Type name literal not resolved in strings.csv (wide literal); see NOTES.md. Partial.
    const wchar_t* getTypeString() const override;  // 0x5604d4
};

// The rect, matrix, quaternion, box, plane, triangle, line and 2D/3D/4D integer
// vector attributes share the CNumbersAttribute layout (their vtables inherit the
// CNumbersAttribute slots; addRect builds a CNumbersAttribute and sets this vtable).
class CRectAttribute : public CNumbersAttribute {
public:
    const wchar_t* getTypeString() const override;  // 0x5604ec: literal "rect" from the IDA listing
    CRectAttribute() = default;
    CRectAttribute(const char* attrName, const glitch::core::rect<std::int32_t>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x5604e4
};

class CMatrixAttribute : public CNumbersAttribute {
public:
    CMatrixAttribute() = default;
    CMatrixAttribute(const char* attrName, const glitch::core::CMatrix4<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x5604fc
    const wchar_t* getTypeString() const override;  // 0x560504
    glitch::core::quaternion getQuaternion() const override;  // 0x561da0: the matrix (getMatrix, slot +0x44) converted by quaternion::operator=(CMatrix4)
};

class CQuaternionAttribute : public CNumbersAttribute {
public:
    CQuaternionAttribute() = default;
    CQuaternionAttribute(const char* attrName, const glitch::core::quaternion& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x560514
    const wchar_t* getTypeString() const;  // 0x56051c
    glitch::core::CMatrix4<float> getMatrix() const override;  // 0x563bc4: getQuaternion (slot +0x40), flag +0x40 cleared, quaternion::getMatrix_transposed
};

class CBBoxAttribute : public CNumbersAttribute {
public:
    const wchar_t* getTypeString() const override;  // 0x560534: literal "box3d" from the IDA listing
    CBBoxAttribute() = default;
    CBBoxAttribute(const char* attrName, const glitch::core::aabbox3d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x56052c
};

class CPlaneAttribute : public CNumbersAttribute {
public:
    CPlaneAttribute() = default;
    CPlaneAttribute(const char* attrName, const glitch::core::plane3d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x560544
    const wchar_t* getTypeString() const override;  // 0x56054c: literal "plane" from the IDA listing
};

class CTriangleAttribute : public CNumbersAttribute {
public:
    CTriangleAttribute() = default;
    CTriangleAttribute(const char* attrName, const glitch::core::triangle3d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x56055c
    const wchar_t* getTypeString() const;  // 0x560564
    // 0x561d50: the plane through the triangle's corners A, B, C (see plane3d::setPlane).
    glitch::core::plane3d<float> getPlane() const;
};

class CLine2dAttribute : public CNumbersAttribute {
public:
    const wchar_t* getTypeString() const override;  // 0x56057c: literal "line2d" from the IDA listing
    CLine2dAttribute() = default;
    CLine2dAttribute(const char* attrName, const glitch::core::line2d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x560574
};

class CLine3dAttribute : public CNumbersAttribute {
public:
    const wchar_t* getTypeString() const override;  // 0x560594: literal "line3d" from the IDA listing
    CLine3dAttribute() = default;
    CLine3dAttribute(const char* attrName, const glitch::core::line3d<float>& value, bool f)
        : CNumbersAttribute(attrName, value, f) {}
    int getType() const override;  // 0x56058c
};

class CStringWArrayAttribute : public IAttribute {
public:
    CStringWArrayAttribute() = default;
    // 0x5657b0. The array argument is copied into the attribute (+0x24).
    // Partial.
    CStringWArrayAttribute(const char* attrName, core::svector<core::stringw> value, bool f);
    ~CStringWArrayAttribute() override = default;  // 0x5649bc (D1)

    core::svector<core::stringw> array;  // +0x24
    core::svector<core::stringw> getArray() const override;  // 0x562f10
    void setArray(core::svector<core::stringw> value) override;  // 0x5632a4
    int getType() const override;  // 0x5606f0
    const wchar_t* getTypeString() const override;  // 0x5606f8: literal "stringwarray" from the IDA listing
};

// The value is held twice, as in the original: a narrow string at +0x24 and a wide
// string at +0x3c. isWide (+0x21) says which copy is current. The constructor always
// sets isWide, and the setters and getters convert between the two forms.
class CStringAttribute : public IAttribute {
public:
    CStringAttribute() = default;
    CStringAttribute(const char* attrName, const wchar_t* value, bool f);  // 0x565c00
    // 0x567d60: the name and flag are set, isWide is cleared, and the value goes through setString.
    CStringAttribute(const char* attrName, const char* value, bool f);
    // 0x566f7c: name and flag are set, isWide is cleared and the data is written as lowercase
    // hex text by setBinary (the narrow copy).
    CStringAttribute(const char* attrName, void* data, int size, bool f);
    ~CStringAttribute() override = default;                                  // 0x3266a8

    std::string narrow;   // +0x24
    std::wstring wide;    // +0x3c
    bool isWide = true;   // +0x21

    int getType() const override;  // 0x31f30c
    const wchar_t* getTypeString() const;  // 0x31f314
    std::string getString() const override;   // 0x3260d0
    std::wstring getStringW() const override; // 0x325e78
    void setString(const char* value) override;      // 0x326444
    void setString(const wchar_t* value) override;   // 0x326da4
    int getInt() const override;                     // 0x3271e4
    float getFloat() const override;                 // 0x327290
    bool getBool() const override;                   // 0x327798
    void setInt(int value) override;                 // 0x326ec4
    void setFloat(float value) override;             // 0x32d3d4
    void getBinary(void* data, int size) const override;  // 0x31f324: PARTIAL, see typed_attributes.cpp
    void setBinary(void* data, int size) override;        // 0x3274a0
};

class CLightAttribute : public IAttribute {
public:
    CLightAttribute() = default;
    // 0x56514c (D1): drops the driver (+0x28); the light is released after this body.
    ~CLightAttribute() override;
    boost::intrusive_ptr<glitch::video::CLight> light;  // +0x24
    // Reference counted driver (+0x28).
    glitch::video::IVideoDriver* driver = nullptr;
    // 0x566c90: the light and the driver are kept with a reference each.
    CLightAttribute(const char* attrName, const boost::intrusive_ptr<glitch::video::CLight>& value,
                    glitch::video::IVideoDriver* drv, bool f);
    // 0x56377c: "light" when a light is set, else the empty string.
    std::wstring getStringW() const override;
    bool getBool() const override;  // 0x5606c4
    void setString(const char*) override;  // 0x5606d4 (no-op)
    int getType() const override;  // 0x5606d8
    const wchar_t* getTypeString() const override;  // 0x5606e0: literal "light" from the IDA listing
    // Returns a new reference to the light (0x5606a8; count bumped at +0x00 of the light).
    boost::intrusive_ptr<glitch::video::CLight> getLight() const override;
    // Partial: the decompiled setter keeps the new reference and drops the old one, as
    // intrusive_ptr assignment does; the light's count is at +0x00 in the original.
    void setLight(boost::intrusive_ptr<glitch::video::CLight> value) override;  // 0x5633ec
    // "light" when a light is set, else the empty string (0x561dd8 writes into buf).
    void getString(char* buf);  // 0x561dd8 (non-const: _ZN...9getStringEPc)
    std::string getString() const override;  // 0x562ae4
};

class CTextureAttribute : public IAttribute {
public:
    CTextureAttribute() = default;
    // 0x566ea0. The texture is retained (+0x24) and the driver is kept with a reference (+0x28).
    CTextureAttribute(const char* attrName, const boost::intrusive_ptr<glitch::video::ITexture>& value,
                      glitch::video::IVideoDriver* drv, bool f);
    ~CTextureAttribute() override;  // 0x5653c8: drops the driver, then the texture

    boost::intrusive_ptr<glitch::video::ITexture> texture;  // +0x24
    glitch::video::IVideoDriver* driver = nullptr;           // +0x28 (reference counted)
    bool getBool() const override;  // 0x560654
    int getType() const override;  // 0x560690
    const wchar_t* getTypeString() const override;  // 0x560698: literal "texture" from the IDA listing
    boost::intrusive_ptr<glitch::video::ITexture> getTexture() const override;  // 0x560638
    void setTexture(const boost::intrusive_ptr<glitch::video::ITexture>& value) override;  // 0x560664
    std::string getString() const override;   // 0x561e00: io::toString(texture, driver)
    std::wstring getStringW() const override; // 0x564834: the string widened (empty when there is no texture)
    void getString(char* buf);                // 0x564a20 (non-const): the string copied out, "" without a texture
    void setString(const char* value) override;  // 0x56522c: io::fromString(value, driver) then setTexture
};

// A string attribute with its own type (CBinaryAttribute derives from CStringAttribute: its D1 0x5650dc runs the
// CStringAttribute destructor, and CAttributes::addStringAsBinary builds a CStringAttribute and writes this vtable over it).
class CBinaryAttribute : public CStringAttribute {
public:
    CBinaryAttribute() = default;
    CBinaryAttribute(const char* attrName, void* data, int size, bool f) : CStringAttribute(attrName, data, size, f) {}
    int getType() const override;  // 0x560620 (returns 0x19)
    const wchar_t* getTypeString() const override;  // 0x560628: literal "binary" from the IDA listing
};


}  // namespace glitch::io
