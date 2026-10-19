// glitch::io::IAttributes: the attribute container interface, the one definition (canonical header of the
// engine unification wave, u1-core). CAttributes (io/attributes.hpp) is its implementation. The 187
// virtual methods are listed in vtable slot order (_ZTVN6glitch2io11IAttributesE, 768 bytes; slots
// +0x00..+0x08 are the IReferenceCounted base: D1, D0 and onDelete). In the binary every slot is pure.
//
// Each name has the same shape: for every value type there is an add (name, value, flag), an
// addStringAs (name, text, flag), a setAttribute by name, a get by name, a get by index and a
// setAttribute by index. The signatures are the port's (the binary lists most of the getters and setters
// as non-const; the port keeps the const qualifiers its callers use), and the byte offsets of the slots
// are in the comments.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/interfaces.hpp"

namespace glitch::io {

class IAttributes : public glitch::IReferenceCounted {
public:
    virtual int getAttributeCount() const = 0;  // +0x00c 0x5607e4
    virtual const char* getAttributeName(int index) const = 0;  // +0x010 0x5607fc
    virtual int getAttributeType(const char* name) const = 0;  // +0x014 0x5623b8: 0x1e when missing
    virtual int getAttributeType(int index) const = 0;  // +0x018 0x560820
    virtual const wchar_t* getAttributeTypeString(const char* name) const = 0;  // +0x01c 0x562388
    virtual const wchar_t* getAttributeTypeString(int index) const = 0;  // +0x020 0x56085c
    virtual bool existsAttribute(const char* name) const = 0;  // +0x024 0x562374
    virtual unsigned int findAttribute(const char* name) const = 0;  // +0x028 0x5628f4: index, or 0xffffffff
    virtual void clear() = 0;  // +0x02c 0x563b30
    virtual void push(const char* groupName) = 0;  // +0x030 0x564314
    virtual void push(const char* groupName, int groupIndex) = 0;  // +0x034 0x564644
    virtual void push(int groupIndex) = 0;  // +0x038 0x564568: group named "group<index>"
    virtual void pop() = 0;  // +0x03c 0x5618d8
    virtual int getGroupsCount() const = 0;  // +0x040 0x5618f0
    virtual void setGroup(unsigned int index) = 0;  // +0x044 0x561908
    virtual const std::string& getGroupName() const = 0;  // +0x048 0x561924
    virtual void addInt(const char* name, int value, bool flag) = 0;  // +0x04c 0x568b1c
    virtual void addStringAsInt(const char* name, const wchar_t* value, bool flag) = 0;  // +0x050 0x568a08
    virtual void setAttribute(const char* name, int value) = 0;  // +0x054 0x56b11c
    virtual int getInt(const char* name) const = 0;  // +0x058 0x562860
    virtual int getInt(int index) const = 0;  // +0x05c 0x5608dc
    virtual void setAttribute(int index, int value) = 0;  // +0x060 0x560e58
    virtual void addFloat(const char* name, float value, bool flag) = 0;  // +0x064 0x56891c
    virtual void addStringAsFloat(const char* name, const wchar_t* value, bool flag) = 0;  // +0x068 0x568808
    virtual void setAttribute(const char* name, float value) = 0;  // +0x06c 0x56b07c
    virtual float getFloat(const char* name) const = 0;  // +0x070 0x562838
    virtual float getFloat(int index) const = 0;  // +0x074 0x560918
    virtual void setAttribute(int index, float value) = 0;  // +0x078 0x560e90
    virtual void addString(const char* name, const char* value, bool flag) = 0;  // +0x07c
    virtual void setAttribute(const char* name, const char* value) = 0;  // +0x080 0x56a948
    virtual std::string getString(const char* name) const = 0;  // +0x084 0x564768
    virtual void getString(const char* name, char* out) const = 0;  // +0x088 0x564924
    virtual std::string getString(int index) const = 0;  // +0x08c 0x564240
    virtual void setAttribute(int index, const char* value) = 0;  // +0x090 0x560db0
    virtual void addString(const char* name, const wchar_t* value, bool flag) = 0;  // +0x094 0x56a798
    virtual void setAttribute(const char* name, const wchar_t* value) = 0;  // +0x098 0x56aa98
    virtual std::wstring getStringW(const char* name) const = 0;  // +0x09c 0x5637c0
    virtual void getStringW(const char* name, wchar_t* out) const = 0;  // +0x0a0 0x563858
    virtual std::wstring getStringW(int index) const = 0;  // +0x0a4 0x561950
    virtual void setAttribute(int index, const wchar_t* value) = 0;  // +0x0a8 0x560de8
    virtual void addBinary(const char* name, void* data, int size, bool flag) = 0;  // +0x0ac 0x5684d8
    virtual void addStringAsBinary(const char* name, const wchar_t* value, bool flag) = 0;  // +0x0b0 0x56840c: PARTIAL
    virtual void setAttribute(const char* name, void* data, int size) = 0;  // +0x0b4 0x56b4ac
    virtual void getBinaryData(const char* name, void* data, int size) const = 0;  // +0x0b8 0x5624ec
    virtual void getBinaryData(int index, void* data, int size) const = 0;  // +0x0bc 0x560ce4
    virtual void setAttribute(int index, void* data, int size) = 0;  // +0x0c0 0x56117c
    virtual void addArray(const char* name, core::svector<core::stringw> value, bool flag) = 0;  // +0x0c4
    virtual void setAttribute(const char* name, core::svector<core::stringw> value) = 0;  // +0x0c8
    virtual core::svector<core::stringw> getArray(const char* name) const = 0;  // +0x0cc 0x5628b0
    virtual core::svector<core::stringw> getArray(int index) const = 0;  // +0x0d0 0x563308
    virtual void setAttribute(int index, core::svector<core::stringw> value) = 0;  // +0x0d4
    virtual void addBool(const char* name, bool value, bool flag) = 0;  // +0x0d8 0x56871c
    virtual void addStringAsBool(const char* name, const wchar_t* value, bool flag) = 0;  // +0x0dc 0x568608
    virtual void setAttribute(const char* name, bool value) = 0;  // +0x0e0 0x56b1bc
    virtual bool getBool(const char* name) const = 0;  // +0x0e4 0x562888
    virtual bool getBool(int index) const = 0;  // +0x0e8 0x5608a0
    virtual void setAttribute(int index, bool value) = 0;  // +0x0ec 0x560e20
    virtual void addEnum(const char* name, const char* value, const char* const* choices, bool flag) = 0;  // +0x0f0
    virtual void addEnum(const char* name, int value, const char* const* choices, bool flag) = 0;  // +0x0f4
    virtual void setAttribute(const char* name, const char* value, const char* const* choices) = 0;  // +0x0f8
    virtual const char* getEnum(const char* name) const = 0;  // +0x0fc 0x5624c4 (the attribute's +0x80 result)
    virtual int getEnum(const char* name, const char* const* choices) const = 0;  // +0x100
    virtual int getEnum(int index, const char* const* choices) const = 0;  // +0x104
    virtual const char* getEnum(int index) const = 0;  // +0x108 0x560d1c (the attribute's +0x80 result)
    virtual void getAttributeEnumerationLiteralsOfEnumeration(const char* name, core::svector<core::stringc>& literals) const = 0;  // +0x10c
    virtual void getAttributeEnumerationLiteralsOfEnumeration(int index, core::svector<core::stringc>& literals) const = 0;  // +0x110
    virtual void setAttribute(int index, const char* value, const char* const* choices) = 0;  // +0x114 0x5611b4
    virtual void addColor(const char* name, glitch::video::SColor value, bool flag) = 0;  // +0x118 0x56a528
    virtual void addStringAsColor(const char* name, const wchar_t* value, bool flag) = 0;  // +0x11c 0x56a3ec
    virtual void setAttribute(const char* name, glitch::video::SColor value) = 0;  // +0x120 0x56abe8
    virtual glitch::video::SColor getColor(const char* name) const = 0;  // +0x124 0x5627c0
    virtual glitch::video::SColor getColor(int index) const = 0;  // +0x128 0x560954
    virtual void setAttribute(int index, glitch::video::SColor value) = 0;  // +0x12c 0x560ec8
    virtual void addColorf(const char* name, glitch::video::SColorf value, bool flag) = 0;  // +0x130 0x56a31c
    virtual void addStringAsColorf(const char* name, const wchar_t* value, bool flag) = 0;  // +0x134 0x56a240
    virtual void setAttribute(const char* name, glitch::video::SColorf value) = 0;  // +0x138 0x56b25c
    virtual glitch::video::SColorf getColorf(const char* name) const = 0;  // +0x13c 0x562768
    virtual glitch::video::SColorf getColorf(int index) const = 0;  // +0x140 0x5609e8
    virtual void setAttribute(int index, glitch::video::SColorf value) = 0;  // +0x144 0x560f0c
    virtual void addVector2di(const char* name, const glitch::core::vector2d<std::int32_t>& value, bool flag) = 0;  // +0x148 0x5692c8
    virtual void addStringAsVector2di(const char* name, const wchar_t* value, bool flag) = 0;  // +0x14c 0x5691f8
    virtual void setAttribute(const char* name, const glitch::core::vector2d<std::int32_t>& value) = 0;  // +0x150 0x567a9c
    virtual glitch::core::vector2d<std::int32_t> getVector2di(const char* name) const = 0;  // +0x154 0x5625b0
    virtual glitch::core::vector2d<std::int32_t> getVector2di(int index) const = 0;  // +0x158 0x560b40
    virtual void setAttribute(int index, const glitch::core::vector2d<std::int32_t>& value) = 0;  // +0x15c 0x561028
    virtual void addVector3di(const char* name, const glitch::core::vector3d<std::int32_t>& value, bool flag) = 0;  // +0x160 0x569158
    virtual void addStringAsVector3di(const char* name, const wchar_t* value, bool flag) = 0;  // +0x164 0x569084
    virtual void setAttribute(const char* name, const glitch::core::vector3d<std::int32_t>& value) = 0;  // +0x168 0x56b638
    virtual glitch::core::vector3d<std::int32_t> getVector3di(const char* name) const = 0;  // +0x16c 0x56256c
    virtual glitch::core::vector3d<std::int32_t> getVector3di(int index) const = 0;  // +0x170 0x560b90
    virtual void setAttribute(int index, const glitch::core::vector3d<std::int32_t>& value) = 0;  // +0x174 0x56106c
    virtual void addVector4di(const char* name, const glitch::core::vector4d<std::int32_t>& value, bool flag) = 0;  // +0x178 0x568fe4
    virtual void addStringAsVector4di(const char* name, const wchar_t* value, bool flag) = 0;  // +0x17c 0x568f0c
    virtual void setAttribute(const char* name, const glitch::core::vector4d<std::int32_t>& value) = 0;  // +0x180 0x56b578
    virtual glitch::core::vector4d<std::int32_t> getVector4di(const char* name) const = 0;  // +0x184 0x56251c
    virtual glitch::core::vector4d<std::int32_t> getVector4di(int index) const = 0;  // +0x188 0x560be4
    virtual void setAttribute(int index, const glitch::core::vector4d<std::int32_t>& value) = 0;  // +0x18c 0x5610a4
    virtual void addVector2d(const char* name, const glitch::core::vector2d<float>& value, bool flag) = 0;  // +0x190 0x56a1a0
    virtual void addStringAsVector2d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x194 0x56a0d0
    virtual void setAttribute(const char* name, const glitch::core::vector2d<float>& value) = 0;  // +0x198 0x5659b4
    virtual glitch::core::vector2d<float> getVector2d(const char* name) const = 0;  // +0x19c 0x562694
    virtual glitch::core::vector2d<float> getVector2d(int index) const = 0;  // +0x1a0 0x560a44
    virtual void setAttribute(int index, const glitch::core::vector2d<float>& value) = 0;  // +0x1a4 0x560f6c
    virtual void addVector3d(const char* name, const glitch::core::vector3d<float>& value, bool flag) = 0;  // +0x1a8 0x56a030
    virtual void addStringAsVector3d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x1ac 0x569f5c
    virtual void setAttribute(const char* name, const glitch::core::vector3d<float>& value) = 0;  // +0x1b0 0x56b7b8
    virtual glitch::core::vector3d<float> getVector3d(const char* name) const = 0;  // +0x1b4 0x562644
    virtual glitch::core::vector3d<float> getVector3d(int index) const = 0;  // +0x1b8 0x560a94
    virtual void setAttribute(int index, const glitch::core::vector3d<float>& value) = 0;  // +0x1bc 0x560fb8
    virtual void addVector4d(const char* name, const glitch::core::vector4d<float>& value, bool flag) = 0;  // +0x1c0 0x569ebc
    virtual void addStringAsVector4d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x1c4 0x569de4
    virtual void setAttribute(const char* name, const glitch::core::vector4d<float>& value) = 0;  // +0x1c8 0x56b6f8
    virtual glitch::core::vector4d<float> getVector4d(const char* name) const = 0;  // +0x1cc 0x5625f0
    virtual glitch::core::vector4d<float> getVector4d(int index) const = 0;  // +0x1d0 0x560ae8
    virtual void setAttribute(int index, const glitch::core::vector4d<float>& value) = 0;  // +0x1d4 0x560ff0
    virtual void addPosition2d(const char* name, glitch::core::position2d<std::int32_t> value, bool flag) = 0;  // +0x1d8 0x568e64
    virtual void addStringAsPosition2d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x1dc 0x568d94
    virtual void setAttribute(const char* name, glitch::core::position2d<std::int32_t> value) = 0;  // +0x1e0 0x56b978
    virtual glitch::core::position2d<std::int32_t> getPosition2d(const char* name) const = 0;  // +0x1e4 0x562728
    virtual glitch::core::position2d<std::int32_t> getPosition2d(int index) const = 0;  // +0x1e8 0x560c3c
    virtual void setAttribute(int index, glitch::core::position2d<std::int32_t> value) = 0;  // +0x1ec 0x5610dc
    virtual void addRect(const char* name, glitch::core::rect<std::int32_t> value, bool flag) = 0;  // +0x1f0 0x568ce0
    virtual void addStringAsRect(const char* name, const wchar_t* value, bool flag) = 0;  // +0x1f4 0x568c08
    virtual void setAttribute(const char* name, glitch::core::rect<std::int32_t> value) = 0;  // +0x1f8 0x56b878
    virtual glitch::core::rect<std::int32_t> getRect(const char* name) const = 0;  // +0x1fc 0x5626d8
    virtual glitch::core::rect<std::int32_t> getRect(int index) const = 0;  // +0x200 0x560c8c
    virtual void setAttribute(int index, glitch::core::rect<std::int32_t> value) = 0;  // +0x204 0x561120
    virtual void addMatrix(const char* name, const glitch::core::CMatrix4<float>& value, bool flag) = 0;  // +0x208 0x56a70c
    virtual void addStringAsMatrix(const char* name, const wchar_t* value, bool flag) = 0;  // +0x20c 0x56a638
    virtual void setAttribute(const char* name, const glitch::core::CMatrix4<float>& value) = 0;  // +0x210 0x56aee4
    virtual glitch::core::CMatrix4<float> getMatrix(const char* name) const = 0;  // +0x214 0x567e48
    virtual glitch::core::CMatrix4<float> getMatrix(int index) const = 0;  // +0x218 0x565464
    virtual void setAttribute(int index, const glitch::core::CMatrix4<float>& value) = 0;  // +0x21c 0x563b74
    virtual void addQuaternion(const char* name, glitch::core::quaternion value, bool flag) = 0;  // +0x220 0x569d00
    virtual void addStringAsQuaternion(const char* name, const wchar_t* value, bool flag) = 0;  // +0x224 0x569c18
    virtual void setAttribute(const char* name, glitch::core::quaternion value) = 0;  // +0x228 0x56add0
    virtual glitch::core::quaternion getQuaternion(const char* name) const = 0;  // +0x22c 0x5622fc
    virtual glitch::core::quaternion getQuaternion(int index) const = 0;  // +0x230 0x561224
    virtual void setAttribute(int index, glitch::core::quaternion value) = 0;  // +0x234 0x5612ac
    virtual void addBox3d(const char* name, glitch::core::aabbox3d<float> value, bool flag) = 0;  // +0x238 0x569b3c
    virtual void addStringAsBox3d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x23c 0x569a54
    virtual void setAttribute(const char* name, const glitch::core::aabbox3d<float>& value) = 0;  // +0x240
    virtual glitch::core::aabbox3d<float> getBox3d(const char* name) const = 0;  // +0x244 0x562270
    virtual glitch::core::aabbox3d<float> getBox3d(int index) const = 0;  // +0x248 0x561314
    virtual void setAttribute(int index, const glitch::core::aabbox3d<float>& value) = 0;  // +0x24c 0x5613b0
    virtual void addPlane3d(const char* name, glitch::core::plane3d<float> value, bool flag) = 0;  // +0x250 0x569998
    virtual void addStringAsPlane3d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x254 0x5698b8
    virtual void setAttribute(const char* name, const glitch::core::plane3d<float>& value) = 0;  // +0x258 0x56bf4c
    virtual glitch::core::plane3d<float> getPlane3d(const char* name) const = 0;  // +0x25c 0x5621f4
    virtual glitch::core::plane3d<float> getPlane3d(int index) const = 0;  // +0x260 0x561424
    virtual void setAttribute(int index, const glitch::core::plane3d<float>& value) = 0;  // +0x264 0x5614b0
    virtual void addTriangle3d(const char* name, glitch::core::triangle3d<float> value, bool flag) = 0;  // +0x268 0x5697ac
    virtual void addStringAsTriangle3d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x26c 0x5696c0
    virtual void setAttribute(const char* name, const glitch::core::triangle3d<float>& value) = 0;  // +0x270 0x56bdcc
    virtual glitch::core::triangle3d<float> getTriangle3d(const char* name) const = 0;  // +0x274 0x562144
    virtual glitch::core::triangle3d<float> getTriangle3d(int index) const = 0;  // +0x278 0x561514
    virtual void setAttribute(int index, const glitch::core::triangle3d<float>& value) = 0;  // +0x27c 0x5615d4
    virtual void addLine2d(const char* name, glitch::core::line2d<float> value, bool flag) = 0;  // +0x280 0x569604
    virtual void addStringAsLine2d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x284 0x569528
    virtual void setAttribute(const char* name, glitch::core::line2d<float> value) = 0;  // +0x288 0x56bcc4
    virtual glitch::core::line2d<float> getLine2d(const char* name) const = 0;  // +0x28c 0x5620d0
    virtual glitch::core::line2d<float> getLine2d(int index) const = 0;  // +0x290 0x561660
    virtual void setAttribute(int index, const glitch::core::line2d<float>& value) = 0;  // +0x294 0x5616e4
    virtual void addLine3d(const char* name, glitch::core::line3d<float> value, bool flag) = 0;  // +0x298 0x56944c
    virtual void addStringAsLine3d(const char* name, const wchar_t* value, bool flag) = 0;  // +0x29c 0x569368
    virtual void setAttribute(const char* name, glitch::core::line3d<float> value) = 0;  // +0x2a0 0x56bb8c
    virtual glitch::core::line3d<float> getLine3d(const char* name) const = 0;  // +0x2a4 0x562044
    virtual glitch::core::line3d<float> getLine3d(int index) const = 0;  // +0x2a8 0x561748
    virtual void setAttribute(int index, const glitch::core::line3d<float>& value) = 0;  // +0x2ac 0x5617e4
    virtual void addTexture(const char* name, boost::intrusive_ptr<glitch::video::ITexture> value, bool flag) = 0;  // +0x2b0
    virtual void addStringAsTexture(const char* name, const wchar_t* value, bool flag) = 0;  // +0x2b4 0x5682c0
    virtual void setAttribute(const char* name, boost::intrusive_ptr<glitch::video::ITexture> value) = 0;  // +0x2b8
    virtual boost::intrusive_ptr<glitch::video::ITexture> getTexture(const char* name) const = 0;  // +0x2bc 0x56241c
    virtual boost::intrusive_ptr<glitch::video::ITexture> getTexture(int index) const = 0;  // +0x2c0 0x56074c
    virtual void setAttribute(int index, boost::intrusive_ptr<glitch::video::ITexture> value) = 0;  // +0x2c4 0x5611ec
    virtual void addLight(const char* name, boost::intrusive_ptr<glitch::video::CLight> value, bool flag) = 0;  // +0x2c8
    virtual void addStringAsLight(const char* name, const wchar_t* value, bool flag) = 0;  // +0x2cc
    virtual void setAttribute(const char* name, boost::intrusive_ptr<glitch::video::CLight> value) = 0;  // +0x2d0
    virtual boost::intrusive_ptr<glitch::video::CLight> getLight(const char* name) const = 0;  // +0x2d4 0x5623e0
    virtual boost::intrusive_ptr<glitch::video::CLight> getLight(int index) const = 0;  // +0x2d8 0x560798
    virtual void setAttribute(int index, boost::intrusive_ptr<glitch::video::CLight> value) = 0;  // +0x2dc 0x561aa0
    virtual void addUserPointer(const char* name, void* value, bool flag) = 0;  // +0x2e0 0x568038
    virtual void addStringAsUserPointer(const char* name, const wchar_t* value, bool flag) = 0;  // +0x2e4 0x567f24
    virtual void setAttribute(const char* name, void* value) = 0;  // +0x2e8 0x56ad30
    virtual void* getUserPointer(const char* name) const = 0;  // +0x2ec 0x56201c
    virtual void* getUserPointer(int index) const = 0;  // +0x2f0 0x561858
    virtual void setAttribute(int index, void* userPointer) = 0;  // +0x2f4 0x56189c

    // The member templates getEnum<T>(name) / getEnum<T>(index) / addEnum<T>(name, value, flag) of the binary, one instance per video enum.
    // Every video enum is an int32_t alias in the port, so each instance is a member of its own name carrying the original symbol as
    // an assembler label. getEnum<T>: the enum's name table (video::getStringsInternal(T*)) is handed to the virtual getEnum(.., choices)
    // (+0x100 by name, +0x104 by index); addEnum<T>: to the virtual addEnum(name, int, choices, flag) (+0xf4).
    // Defined in src/attributes_enum_templates.cpp.
    int32_t getEnumBlendFactor(const char* name)  // 0x5e09cc
        asm("_ZN6glitch2io11IAttributes7getEnumINS_5video14E_BLEND_FACTOREEET_PKc");
    int32_t getEnumCompareFunc(const char* name)  // 0x5e0a2c
        asm("_ZN6glitch2io11IAttributes7getEnumINS_5video14E_COMPARE_FUNCEEET_PKc");
    int32_t getEnumStencilOp(const char* name)  // 0x5e0a5c
        asm("_ZN6glitch2io11IAttributes7getEnumINS_5video12E_STENCIL_OPEEET_PKc");
    int32_t getEnumPolygonMode(const char* name)  // 0x5e09fc
        asm("_ZN6glitch2io11IAttributes7getEnumINS_5video14E_POLYGON_MODEEEET_PKc");
    int32_t getEnumTextureFilterType(const char* name)  // 0x5fde3c
        asm("_ZN6glitch2io11IAttributes7getEnumINS_5video21E_TEXTURE_FILTER_TYPEEEET_PKc");
    int32_t getEnumTextureClamp(const char* name)  // 0x5fde6c
        asm("_ZN6glitch2io11IAttributes7getEnumINS_5video15E_TEXTURE_CLAMPEEET_PKc");
    int32_t getEnumIndexType(int index)  // 0x5a03cc
        asm("_ZN6glitch2io11IAttributes7getEnumINS_5video12E_INDEX_TYPEEEET_i");
    void addEnumShaderParameterValueType(const char* name, int32_t value, bool flag)  // 0x5ba66c
        asm("_ZN6glitch2io11IAttributes7addEnumINS_5video29E_SHADER_PARAMETER_VALUE_TYPEEEEN5boost10disable_ifINS5_11is_integralIT_EEvE4typeEPKcS8_b");
};

}  // namespace glitch::io
