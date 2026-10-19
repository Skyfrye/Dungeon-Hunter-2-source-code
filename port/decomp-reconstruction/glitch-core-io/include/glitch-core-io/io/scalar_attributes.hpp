// Single-value attribute subclasses of glitch::io::IAttribute: bool, int,
// float, enum and user pointer. Member offsets are from the original object.
#pragma once

#include "glitch-core-io/io/attributes.hpp"

namespace glitch::io {

class CBoolAttribute : public IAttribute {
public:
    const wchar_t* getTypeString() const override;  // 0x31d968: literal "bool" from the IDA listing
    CBoolAttribute() = default;
    CBoolAttribute(const char* attrName, bool v, bool f);  // 0x56716c
    bool value = false;  // +0x21

    int getInt() const override;          // 0x31d8f8
    float getFloat() const override;      // 0x31d900
    bool getBool() const override;        // 0x31d914
    void setInt(int v) override;          // 0x31d91c
    void setFloat(float v) override;      // 0x31d92c
    void setBool(bool v) override;        // 0x31d958
    int getType() const override;         // 0x31d960 (returns 3)
    void setString(const char* text) override;  // 0x323220 ("true" only)
    std::wstring getStringW() const override;   // 0x325f30
};

class CIntAttribute : public IAttribute {
public:
    const wchar_t* getTypeString() const override;  // 0x31d9c8: literal "int" from the IDA listing
    CIntAttribute() = default;
    CIntAttribute(const char* attrName, int v, bool f);  // 0x5672a4
    int value = 0;  // +0x24

    int getInt() const override;          // 0x31d978
    float getFloat() const override;      // 0x31d980
    bool getBool() const override;        // 0x31d990
    void setInt(int v) override;          // 0x31d9a0
    void setFloat(float v) override;      // 0x31d9a8
    int getType() const override;         // 0x31d9c0 (returns 0)
    void setString(const char* text) override;  // 0x320908 (atoi)
    std::wstring getStringW() const override;   // 0x325fdc
};

class CFloatAttribute : public IAttribute {
public:
    CFloatAttribute() = default;
    CFloatAttribute(const char* attrName, float v, bool f);  // 0x567208
    float value = 0.f;  // +0x24

    int getInt() const override;          // 0x31d9d8
    float getFloat() const override;      // 0x31d9e8
    bool getBool() const override;        // 0x31d9f0
    void setInt(int v) override;          // 0x31da14
    void setFloat(float v) override;      // 0x31da2c
    int getType() const override;         // 0x31da34 (returns 1)
    const wchar_t* getTypeString() const; // 0x31da3c
    void setString(const char* text) override;   // 0x322d98: fast_atof_move of the text
    std::wstring getStringW() const override;    // 0x32d6fc: stream text, widened
};

// Enumeration attribute (0x48 bytes): an IAttribute (name +0x08, flag +0x20) with the current literal as a string at +0x24 and
// the table of literals at +0x3c (a vector of strings, filled by setEnum). The integer view is the index of the current
// literal in the table (compared without regard to case).
class CEnumAttribute : public IAttribute {
public:
    CEnumAttribute() = default;  // not in the original (tests)
    // 0x56706c (C1): the name and flag, an empty value and table, then setEnum(value, choices).
    CEnumAttribute(const char* attrName, const char* value, const char* const* choices, bool f);
    ~CEnumAttribute() override = default;  // 0x56532c (D1): the table and the strings are released by the members

    std::string value;                // +0x24, the current literal
    core::svector<core::stringc> literals;  // +0x3c

    const wchar_t* getTypeString() const override;  // 0x560610: literal "enum" from the IDA listing
    int getType() const override;                   // 0x560608 (returns 4)
    int getInt() const override;                    // 0x561e98: the index of the value in the table, -1 for an empty table
    float getFloat() const override;                // 0x5605a4: (float)getInt()
    bool getBool() const override;                  // 0x5605bc: getInt() != 0
    const char* getEnum() const override;           // 0x560600: the value string's data pointer
    std::string getString() const override;         // 0x562d0c
    std::wstring getStringW() const override;       // 0x562a84: each byte sign-extended to a wide character
    void setInt(int index) override;                // 0x567eb8: the literal at the index, empty for an index out of range
    void setFloat(float v) override;                // 0x5605d8: setInt((int)v)
    void setString(const char* text) override;      // 0x567144: assigns the value (a null value is taken as empty)
    void setEnum(const char* text, const char* const* choices) override;  // 0x5656c8: appends the choices, then setString(text)
};

class CUserPointerAttribute : public IAttribute {
public:
    CUserPointerAttribute() = default;
    CUserPointerAttribute(const char* attrName, void* p, bool f);  // 0x566bf4
    void* value = nullptr;  // +0x24

    int getInt() const override;          // 0x560708
    bool getBool() const override;        // 0x560710
    int getType() const override;         // 0x560720 (returns 0x1c)
    void setUserPointer(void* p) override;  // 0x560728
    void* getUserPointer() const;         // 0x560730
    const wchar_t* getTypeString() const; // 0x560738
    void getString(char* out);            // 0x561a70 (non-const: _ZN...9getStringEPc)
    void setString(const char* text);     // 0x561a88
};

}  // namespace glitch::io
