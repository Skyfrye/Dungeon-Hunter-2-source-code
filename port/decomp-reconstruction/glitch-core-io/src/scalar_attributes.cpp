#include "glitch-core-io/io/scalar_attributes.hpp"

#include <cctype>
#include <cwchar>
#include <string>
#include <vector>

#include <cinttypes>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <sstream>

#include "glitch-core-io/core/strings.hpp"

namespace glitch::io {

// ---- CBoolAttribute -------------------------------------------------------

// 0x31d8f8 _ZN6glitch2io14CBoolAttribute6getIntEv
int CBoolAttribute::getInt() const { return value ? 1 : 0; }

// 0x31d900 _ZN6glitch2io14CBoolAttribute8getFloatEv
float CBoolAttribute::getFloat() const { return value ? 1.f : 0.f; }

// 0x31d914 _ZN6glitch2io14CBoolAttribute7getBoolEv
bool CBoolAttribute::getBool() const { return value; }

// 0x31d91c _ZN6glitch2io14CBoolAttribute6setIntEi
void CBoolAttribute::setInt(int v) { value = v != 0; }

// 0x31d92c _ZN6glitch2io14CBoolAttribute8setFloatEf
// NaN compares unequal to 0 and so stores true, as in the original.
void CBoolAttribute::setFloat(float v) { value = !(v == 0.f); }

// 0x31d958 _ZN6glitch2io14CBoolAttribute7setBoolEb
void CBoolAttribute::setBool(bool v) { value = v; }

// 0x31d960 _ZNK6glitch2io14CBoolAttribute7getTypeEv
int CBoolAttribute::getType() const { return 3; }

// 0x323220 _ZN6glitch2io14CBoolAttribute9setStringEPKc
// Only the exact text "true" sets the attribute; any other string sets false.
void CBoolAttribute::setString(const char* text) { value = std::strcmp(text, "true") == 0; }

// ---- CIntAttribute --------------------------------------------------------

// 0x31d978 _ZN6glitch2io13CIntAttribute6getIntEv
int CIntAttribute::getInt() const { return value; }

// 0x31d980 _ZN6glitch2io13CIntAttribute8getFloatEv
float CIntAttribute::getFloat() const { return static_cast<float>(value); }

// 0x31d990 _ZN6glitch2io13CIntAttribute7getBoolEv
bool CIntAttribute::getBool() const { return value != 0; }

// 0x31d9a0 _ZN6glitch2io13CIntAttribute6setIntEi
void CIntAttribute::setInt(int v) { value = v; }

// 0x31d9a8 _ZN6glitch2io13CIntAttribute8setFloatEf
void CIntAttribute::setFloat(float v) { value = static_cast<int>(v); }

// 0x31d9c0 _ZNK6glitch2io13CIntAttribute7getTypeEv
int CIntAttribute::getType() const { return 0; }

// 0x320908 _ZN6glitch2io13CIntAttribute9setStringEPKc
void CIntAttribute::setString(const char* text) { value = std::atoi(text); }

// ---- CFloatAttribute ------------------------------------------------------

// 0x31d9d8 _ZN6glitch2io15CFloatAttribute6getIntEv
int CFloatAttribute::getInt() const { return static_cast<int>(value); }

// 0x31d9e8 _ZN6glitch2io15CFloatAttribute8getFloatEv
float CFloatAttribute::getFloat() const { return value; }

// 0x31d9f0 _ZN6glitch2io15CFloatAttribute7getBoolEv
bool CFloatAttribute::getBool() const { return !(value == 0.f); }

// 0x31da14 _ZN6glitch2io15CFloatAttribute6setIntEi
void CFloatAttribute::setInt(int v) { value = static_cast<float>(v); }

// 0x31da2c _ZN6glitch2io15CFloatAttribute8setFloatEf
void CFloatAttribute::setFloat(float v) { value = v; }

// 0x31da34 _ZNK6glitch2io15CFloatAttribute7getTypeEv
int CFloatAttribute::getType() const { return 1; }

// 0x31da3c _ZNK6glitch2io15CFloatAttribute13getTypeStringEv
const wchar_t* CFloatAttribute::getTypeString() const { return L"float"; }

// 0x322d98 _ZN6glitch2io15CFloatAttribute9setStringEPKc
// fast_atof_move into a local, stored at +0x24 (value). A null text leaves the value unchanged here;
// the original passes it straight to the parser, which faults on it. Parsing is fast_atof_move,
// whose own row is still partial.
void CFloatAttribute::setString(const char* text) {
    if (text == nullptr) return;
    float parsed = 0.f;
    glitch::core::fast_atof_move(text, parsed);
    value = parsed;
}

// 0x32d6fc _ZN6glitch2io15CFloatAttribute10getStringWEv
// Re-decompiled: ostringstream, std::priv::__put_num<char,char_traits<char>,double> (0x30f5d8), then
// stringc2stringw (0x3262c8) - the same chain as CStringAttribute::setFloat (0x32d3d4), which is
// already closed in the ledger. The earlier "the library's digit generation is not the original's"
// caveat does not hold: 0x30f5d8 is STLport's ordinary num_put<...,double> path, so the port's
// `stream << static_cast<double>(value)` then stringc2stringw is the original's formatting.
std::wstring CFloatAttribute::getStringW() const {
    std::ostringstream stream;
    stream << static_cast<double>(value);
    return glitch::core::stringc2stringw(stream.str().c_str());
}

// ---- CEnumAttribute -------------------------------------------------------

// 0x5605a4 _ZN6glitch2io14CEnumAttribute8getFloatEv
float CEnumAttribute::getFloat() const { return static_cast<float>(getInt()); }

// 0x5605bc _ZN6glitch2io14CEnumAttribute7getBoolEv
bool CEnumAttribute::getBool() const { return getInt() != 0; }

// 0x5605d8 _ZN6glitch2io14CEnumAttribute8setFloatEf
void CEnumAttribute::setFloat(float v) { setInt(static_cast<int>(v)); }

// 0x560600 _ZN6glitch2io14CEnumAttribute7getEnumEv
// The word at +0x38 is the data pointer of the value string at +0x24 (its end pointer is +0x34), so this is the current literal's text.
const char* CEnumAttribute::getEnum() const { return value.c_str(); }

// 0x560608 _ZNK6glitch2io14CEnumAttribute7getTypeEv
int CEnumAttribute::getType() const { return 4; }

// ---- CUserPointerAttribute ------------------------------------------------
// The original is 32-bit: the pointer is truncated to int for getInt and
// printed as 0x%x. The 64-bit port keeps the same text format with the full
// pointer value, so getInt truncates and getString/setString use %llx.

// 0x560708 _ZN6glitch2io21CUserPointerAttribute6getIntEv
int CUserPointerAttribute::getInt() const {
    return static_cast<int>(reinterpret_cast<std::intptr_t>(value));
}

// 0x560710 _ZN6glitch2io21CUserPointerAttribute7getBoolEv
bool CUserPointerAttribute::getBool() const { return value != nullptr; }

// 0x560720 _ZNK6glitch2io21CUserPointerAttribute7getTypeEv
int CUserPointerAttribute::getType() const { return 0x1c; }

// 0x560728 _ZN6glitch2io21CUserPointerAttribute14setUserPointerEPv
void CUserPointerAttribute::setUserPointer(void* p) { value = p; }

// 0x560730 _ZN6glitch2io21CUserPointerAttribute14getUserPointerEv
void* CUserPointerAttribute::getUserPointer() const { return value; }

// 0x560738 _ZNK6glitch2io21CUserPointerAttribute13getTypeStringEv
const wchar_t* CUserPointerAttribute::getTypeString() const { return L"userPointer"; }

// 0x561a70 _ZN6glitch2io21CUserPointerAttribute9getStringEPc
void CUserPointerAttribute::getString(char* out) {
    std::sprintf(out, "0x%llx",
                 static_cast<unsigned long long>(reinterpret_cast<std::uintptr_t>(value)));
}

// 0x561a88 _ZN6glitch2io21CUserPointerAttribute9setStringEPKc
void CUserPointerAttribute::setString(const char* text) {
    unsigned long long raw = 0;
    std::sscanf(text, "0x%llx", &raw);
    value = reinterpret_cast<void*>(static_cast<std::uintptr_t>(raw));
}


// 0x56716c _ZN6glitch2io14CBoolAttributeC1EPKcbb
CBoolAttribute::CBoolAttribute(const char* attrName, bool v, bool f) : value(v) {
    name = attrName;
    flag = f;
}

// 0x5672a4 _ZN6glitch2io13CIntAttributeC1EPKcib
CIntAttribute::CIntAttribute(const char* attrName, int v, bool f) : value(v) {
    name = attrName;
    flag = f;
}

// 0x567208 _ZN6glitch2io15CFloatAttributeC1EPKcfb
CFloatAttribute::CFloatAttribute(const char* attrName, float v, bool f) : value(v) {
    name = attrName;
    flag = f;
}

// 0x566bf4 _ZN6glitch2io21CUserPointerAttributeC1EPKcPvb
CUserPointerAttribute::CUserPointerAttribute(const char* attrName, void* p, bool f) : value(p) {
    name = attrName;
    flag = f;
}

}  // namespace glitch::io

namespace glitch::io {

// 0x325f30 _ZN6glitch2io14CBoolAttribute10getStringWEv
std::wstring CBoolAttribute::getStringW() const { return value ? L"true" : L"false"; }

// 0x325fdc _ZN6glitch2io13CIntAttribute10getStringWEv
// Decimal text, as int2stringw produces it.
std::wstring CIntAttribute::getStringW() const { return std::to_wstring(value); }

}  // namespace glitch::io

namespace glitch::io {

// 0x56706c _ZN6glitch2io14CEnumAttributeC1EPKcS3_PKS3_b
// IAttribute base (count 1, empty name string), the flag byte at +0x20, empty value string (+0x24) and empty table (+0x3c);
// the name is assigned, then setEnum(value, choices) fills the table and the value.
CEnumAttribute::CEnumAttribute(const char* attrName, const char* text, const char* const* choices, bool f) {
    flag = f;
    name = attrName;
    setEnum(text, choices);
}

namespace {
// LC_API_STRCASECMP_0: compares ASCII letters without regard to case.
bool equalsIgnoreCase(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int x = std::tolower(static_cast<unsigned char>(*a));
        const int y = std::tolower(static_cast<unsigned char>(*b));
        if (x != y) return false;
        if (x == 0) return true;
    }
}
}  // namespace

// 0x561e98 _ZN6glitch2io14CEnumAttribute6getIntEv
// An empty table gives -1; otherwise the first literal that equals the value (strcasecmp). The listing's loop has no end
// test, so a value that matches no literal walks past the table there; -1 is returned for that case here.
int CEnumAttribute::getInt() const {
    for (std::size_t i = 0; i < literals.size(); ++i) {
        if (equalsIgnoreCase(value.c_str(), literals[i].c_str())) return static_cast<int>(i);
    }
    return -1;
}

// 0x567eb8 _ZN6glitch2io14CEnumAttribute6setIntEi
void CEnumAttribute::setInt(int index) {
    if (index < 0 || static_cast<std::size_t>(index) >= literals.size()) {
        value.clear();
        return;
    }
    value.assign(literals[static_cast<std::size_t>(index)].data(), literals[static_cast<std::size_t>(index)].size());
}

// 0x5656c8 _ZN6glitch2io14CEnumAttribute7setEnumEPKcPKS3_
// The null-terminated choices are appended to the table (the vector is only reserved, never cleared, so a second call
// adds the literals again), then the value goes through setString (slot +0x90).
void CEnumAttribute::setEnum(const char* text, const char* const* choices) {
    if (choices != nullptr) {
        std::size_t count = 0;
        while (choices[count] != nullptr) ++count;
        literals.reserve(literals.size() + count);
        for (std::size_t i = 0; i < count; ++i) literals.emplace_back(choices[i]);
    }
    setString(text);
}

// 0x562a84 _ZN6glitch2io14CEnumAttribute10getStringWEv
// A wide string of the value, each byte sign-extended (the listing loads the bytes as signed chars).
std::wstring CEnumAttribute::getStringW() const {
    std::wstring wide;
    for (const char c : value) wide.push_back(static_cast<wchar_t>(static_cast<signed char>(c)));
    return wide;
}

// 0x31d968 _ZNK6glitch2io14CBoolAttribute13getTypeStringEv
// The wide literal is read from the IDA listing (UTF-32LE, cross-referenced only from this function).
const wchar_t* CBoolAttribute::getTypeString() const { return L"bool"; }

// 0x31d9c8 _ZNK6glitch2io13CIntAttribute13getTypeStringEv
// The wide literal is read from the IDA listing (UTF-32LE, cross-referenced only from this function).
const wchar_t* CIntAttribute::getTypeString() const { return L"int"; }

// 0x560610 _ZNK6glitch2io14CEnumAttribute13getTypeStringEv
// The wide literal is read from the IDA listing (UTF-32LE, cross-referenced only from this function).
const wchar_t* CEnumAttribute::getTypeString() const { return L"enum"; }

// 0x562d0c _ZNK6glitch2io14CEnumAttribute9getStringEv
// Copies the value string at +0x24.
std::string CEnumAttribute::getString() const { return value; }

// 0x567144 _ZN6glitch2io14CEnumAttribute9setStringEPKc
// The original takes the length of the value and assigns the text, so it has no null case;
// a null value is taken as the empty string here.
void CEnumAttribute::setString(const char* text) { value = text != nullptr ? text : ""; }

}  // namespace glitch::io
