#include "glitch-core-io/io/numbers_attribute.hpp"

#include <sstream>
#include "glitch-core-io/core/strings.hpp"
#include <string>

namespace glitch::io {

// 0x31da4c _ZN6glitch2io17CNumbersAttribute6getIntEv
int CNumbersAttribute::getInt() const {
    if (count == 0) return 0;
    if (!isFloatList) return intValues[0];
    return static_cast<int>(floatValues[0]);  // __aeabi_f2iz: truncate toward zero
}

// 0x31da8c _ZN6glitch2io17CNumbersAttribute8getFloatEv
float CNumbersAttribute::getFloat() const {
    if (count == 0) return 0.f;
    if (!isFloatList) return static_cast<float>(intValues[0]);
    return floatValues[0];
}

// 0x31dacc _ZN6glitch2io17CNumbersAttribute7getBoolEv
bool CNumbersAttribute::getBool() const {
    for (std::size_t i = 0; i < count; ++i) {
        if (!isFloatList) {
            if (intValues[i] != 0) return true;
        } else if (floatValues[i] != 0.f) {
            return true;
        }
    }
    return false;
}

// 0x31ee4c _ZN6glitch2io17CNumbersAttribute12isNumberListEv
bool CNumbersAttribute::isNumberList() { return true; }

// 0x31ee54 _ZN6glitch2io17CNumbersAttribute7isFloatEv
bool CNumbersAttribute::isFloat() const { return isFloatList; }

// 0x31ee5c _ZNK6glitch2io17CNumbersAttribute7getTypeEv
int CNumbersAttribute::getType() const { return isFloatList ? 0x17 : 0x18; }

// 0x31ee70 _ZNK6glitch2io17CNumbersAttribute13getTypeStringEv
const wchar_t* CNumbersAttribute::getTypeString() const {
    return isFloatList ? L"floatlist" : L"intlist";
}

// 0x31ed50 _ZN6glitch2io17CNumbersAttribute6setIntEi
// Writes the value into every element, converting to float for float lists.
void CNumbersAttribute::setInt(int value) {
    for (std::size_t i = 0; i < count; ++i) {
        if (!isFloatList) {
            intValues[i] = value;
        } else {
            floatValues[i] = static_cast<float>(value);
        }
    }
}

// 0x31edc4 _ZN6glitch2io17CNumbersAttribute8setFloatEf
// Writes the value into every element, truncating for int lists.
void CNumbersAttribute::setFloat(float value) {
    for (std::size_t i = 0; i < count; ++i) {
        if (!isFloatList) {
            intValues[i] = static_cast<int>(value);
        } else {
            floatValues[i] = value;
        }
    }
}

// 0x31ee38 _ZN6glitch2io17CNumbersAttribute7setBoolEb
// The original tail-calls the virtual setInt (vtable +0x88) with the bool.
void CNumbersAttribute::setBool(bool value) { setInt(value ? 1 : 0); }


// 0x567340 _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core4rectIiEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::rect<std::int32_t>& value, bool f)
    : intValues{value.UpperLeftCorner.X, value.UpperLeftCorner.Y, value.LowerRightCorner.X, value.LowerRightCorner.Y}, count(4), isFloatList(false) {
    name = attrName;
    flag = f;
}

// 0x565880 _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector2dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::vector2d<float>& value, bool f)
    : floatValues{value.X, value.Y}, count(2), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x567968 _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector2dIiEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::vector2d<std::int32_t>& value, bool f)
    : intValues{value.X, value.Y}, count(2), isFloatList(false) {
    name = attrName;
    flag = f;
}

// 0x565a54 _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_5video7SColorfEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::video::SColorf& value, bool f)
    : floatValues{value.r, value.g, value.b, value.a}, count(4), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x567b3c _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core6line3dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::line3d<float>& value, bool f)
    : floatValues{value.start.X, value.start.Y, value.start.Z, value.end.X, value.end.Y, value.end.Z},
      count(6), isFloatList(true) {
    name = attrName;
    flag = f;
}


// 0x565ce8 _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core6line2dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::line2d<float>& value, bool f)
    : floatValues{value.start.X, value.start.Y, value.end.X, value.end.Y}, count(4), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x565e94 _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core10triangle3dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::triangle3d<float>& value, bool f)
    : floatValues{value.A.X, value.A.Y, value.A.Z, value.B.X, value.B.Y, value.B.Z,
                  value.C.X, value.C.Y, value.C.Z},
      count(9), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x56616c _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core7plane3dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::plane3d<float>& value, bool f)
    : floatValues{value.Normal.X, value.Normal.Y, value.Normal.Z, value.D}, count(4), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x566318 _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core8aabbox3dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::aabbox3d<float>& value, bool f)
    : floatValues{value.MinEdge.X, value.MinEdge.Y, value.MinEdge.Z,
                  value.MaxEdge.X, value.MaxEdge.Y, value.MaxEdge.Z},
      count(6), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x56653c _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core10quaternionEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::quaternion& value, bool f)
    : floatValues{value.X, value.Y, value.Z, value.W}, count(4), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x566728 _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core8CMatrix4IfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::CMatrix4<float>& value, bool f)
    : floatValues(value.M, value.M + 16), count(16), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x5668ac _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector4dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::vector4d<float>& value, bool f)
    : floatValues{value.X, value.Y, value.Z, value.W}, count(4), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x566a84 _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector3dIfEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::vector3d<float>& value, bool f)
    : floatValues{value.X, value.Y, value.Z}, count(3), isFloatList(true) {
    name = attrName;
    flag = f;
}

// 0x5674ec _ZN6glitch2io17CNumbersAttributeC2EPKcNS_4core10position2dIiEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::position2d<std::int32_t>& value, bool f)
    : intValues{value.X, value.Y}, count(2), isFloatList(false) {
    name = attrName;
    flag = f;
}

// 0x567620 _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector4dIiEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::vector4d<std::int32_t>& value, bool f)
    : intValues{value.X, value.Y, value.Z, value.W}, count(4), isFloatList(false) {
    name = attrName;
    flag = f;
}

// 0x5677f8 _ZN6glitch2io17CNumbersAttributeC2EPKcRKNS_4core8vector3dIiEEb
CNumbersAttribute::CNumbersAttribute(const char* attrName, const glitch::core::vector3d<std::int32_t>& value, bool f)
    : intValues{value.X, value.Y, value.Z}, count(3), isFloatList(false) {
    name = attrName;
    flag = f;
}

// 0x31e120 _ZN6glitch2io17CNumbersAttribute7getRectEv
// Components beyond the stored count take the defaults of the original: the
// third is the first, the fourth is the second (as the pseudocode chains them).
glitch::core::rect<std::int32_t> CNumbersAttribute::getRect() const {
    glitch::core::rect<std::int32_t> r{0, 0, 0, 0};
    if (isFloatList) {
        if (count != 0) r.UpperLeftCorner.X = static_cast<std::int32_t>(floatValues[0]);
        if (count >= 2) r.UpperLeftCorner.Y = static_cast<std::int32_t>(floatValues[1]);
        r.LowerRightCorner.X = count >= 3 ? static_cast<std::int32_t>(floatValues[2]) : r.UpperLeftCorner.X;
        r.LowerRightCorner.Y = count >= 4 ? static_cast<std::int32_t>(floatValues[3]) : r.UpperLeftCorner.Y;
    } else {
        if (count != 0) r.UpperLeftCorner.X = intValues[0];
        if (count >= 2) r.UpperLeftCorner.Y = intValues[1];
        r.LowerRightCorner.X = count >= 3 ? intValues[2] : r.UpperLeftCorner.X;
        r.LowerRightCorner.Y = count >= 4 ? intValues[3] : r.UpperLeftCorner.Y;
    }
    return r;
}

// 0x3247b8 _ZN6glitch2io17CNumbersAttribute7setRectENS_4core4rectIiEE
// Clears the active list, then writes up to four components from the rect.
void CNumbersAttribute::setRect(glitch::core::rect<std::int32_t> value) {
    if (count == 0) return;
    const std::int32_t parts[4] = {value.UpperLeftCorner.X, value.UpperLeftCorner.Y, value.LowerRightCorner.X, value.LowerRightCorner.Y};
    if (isFloatList) {
        for (std::size_t i = 0; i < count; ++i) floatValues[i] = 0.f;
        for (std::size_t i = 0; i < count && i < 4; ++i) floatValues[i] = static_cast<float>(parts[i]);
    } else {
        for (std::size_t i = 0; i < count; ++i) intValues[i] = 0;
        for (std::size_t i = 0; i < count && i < 4; ++i) intValues[i] = parts[i];
    }
}

// 0x31dbf8 _ZN6glitch2io17CNumbersAttribute11getVector2dEv
glitch::core::vector2d<float> CNumbersAttribute::getVector2d() const {
    glitch::core::vector2d<float> v{0.f, 0.f};
    if (isFloatList) {
        if (count != 0) v.X = floatValues[0];
        if (count >= 2) v.Y = floatValues[1];
    } else {
        if (count != 0) v.X = static_cast<float>(intValues[0]);
        if (count >= 2) v.Y = static_cast<float>(intValues[1]);
    }
    return v;
}

// 0x324d04 _ZN6glitch2io17CNumbersAttribute11setVector2dENS_4core8vector2dIfEE
// Clears the active list, then writes up to two components (truncated for int lists).
void CNumbersAttribute::setVector2d(glitch::core::vector2d<float> value) {
    if (count == 0) return;
    const float parts[2] = {value.X, value.Y};
    if (isFloatList) {
        for (std::size_t i = 0; i < count; ++i) floatValues[i] = 0.f;
        floatValues[0] = parts[0];
        if (count > 1) floatValues[1] = parts[1];
    } else {
        for (std::size_t i = 0; i < count; ++i) intValues[i] = 0;
        intValues[0] = static_cast<int>(parts[0]);
        if (count > 1) intValues[1] = static_cast<int>(parts[1]);
    }
}


float CNumbersAttribute::activeFloat(std::size_t i) const {
    return isFloatList ? floatValues[i] : static_cast<float>(intValues[i]);
}

std::int32_t CNumbersAttribute::activeInt(std::size_t i) const {
    return isFloatList ? static_cast<std::int32_t>(floatValues[i]) : intValues[i];
}

void CNumbersAttribute::setActive(std::size_t i, float value) {
    if (isFloatList) {
        floatValues[i] = value;
    } else {
        intValues[i] = static_cast<std::int32_t>(value);
    }
}

void CNumbersAttribute::setActive(std::size_t i, std::int32_t value) {
    if (isFloatList) {
        floatValues[i] = static_cast<float>(value);
    } else {
        intValues[i] = value;
    }
}

void CNumbersAttribute::clearActive() {
    for (std::size_t i = 0; i < count; ++i) {
        if (isFloatList) {
            floatValues[i] = 0.f;
        } else {
            intValues[i] = 0;
        }
    }
}

// 0x31db5c _ZNK6glitch2io17CNumbersAttribute11getPositionEv
glitch::core::position2d<std::int32_t> CNumbersAttribute::getPosition() const {
    glitch::core::position2d<std::int32_t> p{0, 0};
    if (count != 0) p.X = activeInt(0);
    if (count >= 2) p.Y = activeInt(1);
    return p;
}

// 0x32490c _ZN6glitch2io17CNumbersAttribute11setPositionENS_4core10position2dIiEE
void CNumbersAttribute::setPosition(glitch::core::position2d<std::int32_t> value) {
    if (count == 0) return;
    clearActive();
    setActive(0, value.X);
    if (count > 1) setActive(1, value.Y);
}

// 0x31dcb0 _ZNK6glitch2io17CNumbersAttribute11getVector3dEv
glitch::core::vector3d<float> CNumbersAttribute::getVector3d() const {
    glitch::core::vector3d<float> v{0.f, 0.f, 0.f};
    if (count != 0) v.X = activeFloat(0);
    if (count >= 2) v.Y = activeFloat(1);
    if (count >= 3) v.Z = activeFloat(2);
    return v;
}

// 0x325070 _ZN6glitch2io17CNumbersAttribute9setStringEPKc
// Irrlicht 1.5.1 CNumbersAttribute::setString: reset(), then for i < Count while the text is not at its end, skip
// to the next '-' or digit and read the number with fast_atof_move (ValueF[i] = c, or ValueI[i] = (s32)c). The
// listing has the same loops: a count of zero returns before the text is read, and the text pointer is not tested
// for null (the port returns after the reset instead of faulting).
void CNumbersAttribute::setString(const char* text) {
    if (count == 0) return;
    clearActive();
    if (text == nullptr) return;
    const char* p = text;
    for (std::size_t i = 0; i < count && *p != '\0'; ++i) {
        while (*p != '\0' && *p != '-' && (*p < '0' || *p > '9')) ++p;
        if (*p != '\0') {
            float number = 0.f;
            p = glitch::core::fast_atof_move(p, number);
            setActive(i, number);  // an int list truncates (the listing's f2iz)
        }
    }
}

// 0x324df4 _ZN6glitch2io17CNumbersAttribute11setVector3dERKNS_4core8vector3dIfEE
void CNumbersAttribute::setVector3d(const glitch::core::vector3d<float>& value) {
    if (count == 0) return;
    clearActive();
    setActive(0, value.X);
    if (count > 1) setActive(1, value.Y);
    if (count > 2) setActive(2, value.Z);
}

// 0x3251d0 _ZN6glitch2io17CNumbersAttribute11setVector2dENS_4core8vector2dIiEE
void CNumbersAttribute::setVector2d(glitch::core::vector2d<std::int32_t> value) {
    if (count == 0) return;
    clearActive();
    setActive(0, value.X);
    if (count > 1) setActive(1, value.Y);
}

// 0x325830 _ZN6glitch2io17CNumbersAttribute14setDimension2dENS_4core11dimension2dIiEE
void CNumbersAttribute::setDimension2d(glitch::core::dimension2d<std::int32_t> value) {
    if (count == 0) return;
    clearActive();
    setActive(0, value.Width);
    if (count > 1) setActive(1, value.Height);
}

// 0x31defc _ZNK6glitch2io17CNumbersAttribute9getColorfEv
// Float lists read directly; int lists divide each value by 255. Missing components
// are zero, the alpha included.
glitch::video::SColorf CNumbersAttribute::getColorf() const {
    glitch::video::SColorf c{0.f, 0.f, 0.f, 0.f};
    if (count != 0) c.r = isFloatList ? floatValues[0] : static_cast<float>(intValues[0]) / 255.f;
    if (count >= 2) c.g = isFloatList ? floatValues[1] : static_cast<float>(intValues[1]) / 255.f;
    if (count >= 3) c.b = isFloatList ? floatValues[2] : static_cast<float>(intValues[2]) / 255.f;
    if (count >= 4) c.a = isFloatList ? floatValues[3] : static_cast<float>(intValues[3]) / 255.f;
    return c;
}

// 0x31e25c _ZN6glitch2io17CNumbersAttribute13getQuaternionEv
// Missing components are zero (the W default of the original is overwritten).
glitch::core::quaternion CNumbersAttribute::getQuaternion() const {
    glitch::core::quaternion q{0.f, 0.f, 0.f, 0.f};
    if (count != 0) q.X = activeFloat(0);
    if (count >= 2) q.Y = activeFloat(1);
    if (count >= 3) q.Z = activeFloat(2);
    if (count >= 4) q.W = activeFloat(3);
    return q;
}

// 0x32465c _ZN6glitch2io17CNumbersAttribute13setQuaternionERKNS_4core10quaternionE
void CNumbersAttribute::setQuaternion(const glitch::core::quaternion& value) {
    if (count == 0) return;
    clearActive();
    setActive(0, value.X);
    if (count > 1) setActive(1, value.Y);
    if (count > 2) setActive(2, value.Z);
    if (count > 3) setActive(3, value.W);
}

// 0x326af4 _ZNK6glitch2io17CNumbersAttribute9getMatrixEv
// Identity with the first count values (row-major) replaced.
glitch::core::CMatrix4<float> CNumbersAttribute::getMatrix() const {
    glitch::core::CMatrix4<float> m = detail::identityMatrix();
    for (std::size_t k = 0; k < count && k < 16; ++k) m.M[k] = activeFloat(k);
    return m;
}

// 0x3264c4 _ZN6glitch2io17CNumbersAttribute13getFloatArrayEv
// An int list is converted into the float storage first (the float storage is
// cleared and refilled), then the float storage is returned by value.
core::svector<float> CNumbersAttribute::getFloatArray() {
    if (!isFloatList) {
        floatValues.clear();
        for (std::size_t i = 0; i < count; ++i) floatValues.push_back(static_cast<float>(intValues[i]));
    }
    return floatValues;
}

// 0x3270d8 _ZN6glitch2io17CNumbersAttribute11getIntArrayEv
// Symmetric to getFloatArray: a float list is converted into the int storage.
core::svector<std::int32_t> CNumbersAttribute::getIntArray() {
    if (isFloatList) {
        intValues.clear();
        for (std::size_t i = 0; i < count; ++i) intValues.push_back(static_cast<std::int32_t>(floatValues[i]));
    }
    return intValues;
}

// 0x31ee9c _ZN6glitch2io17CNumbersAttribute13setFloatArrayERSt6vectorIfNS_4core10SAllocatorIfLNS_6memory13E_MEMORY_HINTE0EEEE
// Clears the active list, then copies up to count values from the array.
void CNumbersAttribute::setFloatArray(core::svector<float>& values) {
    clearActive();
    if (values.empty() || count == 0) return;
    for (std::size_t i = 0; i < values.size() && i < count; ++i) setActive(i, values[i]);
}

// 0x324564 _ZN6glitch2io17CNumbersAttribute11setIntArrayERSt6vectorIiNS_4core10SAllocatorIiLNS_6memory13E_MEMORY_HINTE0EEEE
void CNumbersAttribute::setIntArray(core::svector<std::int32_t>& values) {
    clearActive();
    if (values.empty() || count == 0) return;
    for (std::size_t i = 0; i < values.size() && i < count; ++i) setActive(i, values[i]);
}

// 0x31ddac _ZN6glitch2io17CNumbersAttribute11getVector4dEv
glitch::core::vector4d<float> CNumbersAttribute::getVector4d() const {
    return {componentF(0), componentF(1), componentF(2), componentF(3)};
}

// 0x324f18 _ZN6glitch2io17CNumbersAttribute11setVector4dERKNS_4core8vector4dIfEE
void CNumbersAttribute::setVector4d(const glitch::core::vector4d<float>& value) {
    setComponents<float>({value.X, value.Y, value.Z, value.W});
}

// 0x31e6a4 _ZNK6glitch2io17CNumbersAttribute8getPlaneEv
glitch::core::plane3d<float> CNumbersAttribute::getPlane() const {
    return {{componentF(0), componentF(1), componentF(2)}, componentF(3)};
}

// 0x3256d8 _ZN6glitch2io17CNumbersAttribute8setPlaneENS_4core7plane3dIfEE
void CNumbersAttribute::setPlane(glitch::core::plane3d<float> value) {
    setComponents<float>({value.Normal.X, value.Normal.Y, value.Normal.Z, value.D});
}

// 0x31ea00 _ZNK6glitch2io17CNumbersAttribute9getLine2dEv
glitch::core::line2d<float> CNumbersAttribute::getLine2d() const {
    return {{componentF(0), componentF(1)}, {componentF(2), componentF(3)}};
}

// 0x325a6c _ZN6glitch2io17CNumbersAttribute9setLine2dENS_4core6line2dIfEE
void CNumbersAttribute::setLine2d(glitch::core::line2d<float> value) {
    setComponents<float>({value.start.X, value.start.Y, value.end.X, value.end.Y});
}

// 0x325918 _ZN6glitch2io17CNumbersAttribute9setLine2dENS_4core6line2dIiEE
void CNumbersAttribute::setLine2d(glitch::core::line2d<std::int32_t> value) {
    setComponents<std::int32_t>({value.start.X, value.start.Y, value.end.X, value.end.Y});
}

// 0x31eb54 _ZNK6glitch2io17CNumbersAttribute9getLine3dEv
glitch::core::line3d<float> CNumbersAttribute::getLine3d() const {
    return {{componentF(0), componentF(1), componentF(2)}, {componentF(3), componentF(4), componentF(5)}};
}

// 0x31e7fc _ZNK6glitch2io17CNumbersAttribute7getBBoxEv
glitch::core::aabbox3d<float> CNumbersAttribute::getBBox() const {
    return {{componentF(0), componentF(1), componentF(2)}, {componentF(3), componentF(4), componentF(5)}};
}

// 0x325518 _ZN6glitch2io17CNumbersAttribute14setBoundingBoxENS_4core8aabbox3dIfEE
void CNumbersAttribute::setBoundingBox(glitch::core::aabbox3d<float> value) {
    setComponents<float>({value.MinEdge.X, value.MinEdge.Y, value.MinEdge.Z,
                          value.MaxEdge.X, value.MaxEdge.Y, value.MaxEdge.Z});
}

// 0x31e3b0 _ZNK6glitch2io17CNumbersAttribute11getTriangleEv
glitch::core::triangle3d<float> CNumbersAttribute::getTriangle() const {
    return {{componentF(0), componentF(1), componentF(2)},
            {componentF(3), componentF(4), componentF(5)},
            {componentF(6), componentF(7), componentF(8)}};
}

// 0x3252bc _ZN6glitch2io17CNumbersAttribute12setTriangle3dENS_4core11triangle3dIfEE
void CNumbersAttribute::setTriangle3d(glitch::core::triangle3d<float> value) {
    setComponents<float>({value.A.X, value.A.Y, value.A.Z, value.B.X, value.B.Y, value.B.Z,
                          value.C.X, value.C.Y, value.C.Z});
}

// 0x31e080 _ZN6glitch2io17CNumbersAttribute8getColorEv
// Packs the four components (x255 truncated to bytes, as the original does) into one word:
// byte 0 = component 0, byte 1 = component 1, byte 2 = component 2, byte 3 = component 3.
glitch::video::SColor CNumbersAttribute::getColor() const {
    const glitch::video::SColorf c = getColorf();
    const auto toByte = [](float v) {
        return static_cast<std::uint32_t>(static_cast<std::uint8_t>(static_cast<std::uint32_t>(v * 255.0f)));
    };
    return {toByte(c.r) | (toByte(c.g) << 8) | (toByte(c.b) << 16) | (toByte(c.a) << 24)};
}

// 0x3249f8 _ZN6glitch2io17CNumbersAttribute8setColorENS_5video6SColorE
// Int lists take the raw bytes; float lists take byte / 255.
void CNumbersAttribute::setColor(glitch::video::SColor value) {
    clearActive();
    const std::uint32_t c = value.color;
    const std::uint32_t parts[4] = {c & 0xffu, (c >> 8) & 0xffu, (c >> 16) & 0xffu, c >> 24};
    for (std::size_t i = 0; i < 4 && i < count; ++i) {
        if (isFloatList) {
            setActive(i, static_cast<float>(parts[i]) / 255.0f);
        } else {
            setActive(i, static_cast<std::int32_t>(parts[i]));
        }
    }
}

// 0x324b78 _ZN6glitch2io17CNumbersAttribute8setColorENS_5video7SColorfE
// Int lists take component x255 (truncated); float lists take the components unchanged.
void CNumbersAttribute::setColor(glitch::video::SColorf value) {
    clearActive();
    const float parts[4] = {value.r, value.g, value.b, value.a};
    for (std::size_t i = 0; i < 4 && i < count; ++i) {
        setActive(i, isFloatList ? parts[i] : parts[i] * 255.0f);
    }
}

// 0x325bc4 _ZN6glitch2io17CNumbersAttribute9setMatrixENS_4core8CMatrix4IfEE
// Row-major copy of the first count elements, converted to the list kind (integer lists
// truncate). The original also stores a zero byte at argument+0x40; the argument is the callee's
// by-value copy, so that store is not observable and is not reproduced.
void CNumbersAttribute::setMatrix(const glitch::core::CMatrix4<float>& value) {
    clearActive();
    for (std::size_t i = 0; i < 16 && i < count; ++i) setActive(i, value.M[i]);
}

// 0x32d220 _ZNK6glitch2io17CNumbersAttribute9getStringEv
// Re-decompiled and disassembled: the listing loops i over the count at +0x3c; the separator ", "
// (asc_8BF310) is appended only when i < count - 1, so there is no trailing separator. An int list
// (+0x40 clear) appends int2stringc(values[i]) for each element; a float list builds an
// ostringstream, streams the element through std::priv::__put_num<char,char_traits<char>,double>
// (0x30f5d8) and appends the stream's text. The port's loop, its std::to_string (the same "%d" as
// int2stringc, core_strings.cpp) and its `os << static_cast<double>(value)` reproduce all three.
std::string CNumbersAttribute::getString() const {
    std::string out;
    for (std::size_t i = 0; i < count; ++i) {
        if (isFloatList) {
            std::ostringstream os;
            os << static_cast<double>(i < floatValues.size() ? floatValues[i] : 0.f);
            out += os.str();
        } else {
            out += std::to_string(i < intValues.size() ? intValues[i] : 0);
        }
        if (i + 1 < count) out += ", ";
    }
    return out;
}

// 0x32d52c _ZNK6glitch2io17CNumbersAttribute10getStringWEv
// Re-decompiled: same loop as getString (separator added only while i < count - 1, wide ", " at
// asc_8BEC10, appended with wcslen). An int list appends int2stringw (0x325f7c), a float list streams
// the element through __put_num<char,char_traits<char>,double> and widens the stream text with
// stringc2stringw (0x3262c8, the each-byte widening the port inlines). Both branches and the
// separator match.
std::wstring CNumbersAttribute::getStringW() const {
    std::wstring out;
    for (std::size_t i = 0; i < count; ++i) {
        if (isFloatList) {
            std::ostringstream os;
            os << static_cast<double>(i < floatValues.size() ? floatValues[i] : 0.f);
            for (char c : os.str()) out += static_cast<wchar_t>(static_cast<unsigned char>(c));
        } else {
            out += std::to_wstring(i < intValues.size() ? intValues[i] : 0);
        }
        if (i + 1 < count) out += L", ";
    }
    return out;
}

}  // namespace glitch::io
