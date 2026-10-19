// glitch::io::IAttribute (interface subset) and glitch::io::CAttributes
// (group tree of attributes, with name lookup and indexed access).
// Reconstructed from libDungeonHunter2.so.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/iattributes.hpp"

namespace glitch::io {

namespace detail {
// Zeroed 16 values with the diagonal set to 1 and the identity flag (+0x40) set, as the original fills it (0x326588).
inline glitch::core::CMatrix4<float> identityMatrix() {
    glitch::core::CMatrix4<float> m{};
    m.M[0] = m.M[5] = m.M[10] = m.M[15] = 1.f;
    m.flag = true;
    return m;
}
}  // namespace detail

// glitch::io::IAttribute: one attribute of a container. Reference counted; the name is the glitch string at +0x08
// (its character data is read at +0x1c) and the flag byte at +0x20. The virtual methods are listed in vtable
// slot order (_ZTVN6glitch2io10IAttributeE, 276 bytes: +0x00/+0x04 the destructors, +0x08 onDelete, +0x0c
// getInt .. +0x100 setLight, then +0x104 getType and +0x108 getTypeString, which are pure in the binary and
// have inert defaults here). The base getters answer the defaults of the original bodies (0x31d5d0 .. 0x31d81c);
// the base setters do nothing. CNumbersAttribute continues the table from +0x10c (see numbers_attribute.hpp).
class IAttribute : public glitch::IReferenceCounted {
public:
    // +0x1c (c_str of the glitch string at +0x08): attribute name.
    std::string name;
    // +0x20: flag passed to the constructors; the io attribute code never reads it.
    bool flag = false;

    ~IAttribute() override = default;

    virtual int getInt() const { return 0; }  // +0x00c
    virtual float getFloat() const { return 0.f; }  // +0x010
    virtual glitch::video::SColorf getColorf() const { return {1.f, 1.f, 1.f, 1.f}; }  // +0x014
    virtual glitch::video::SColor getColor() const { return {0xffffffffu}; }  // +0x018 0x31d5f8
    virtual std::string getString() const;  // +0x01c (0x326268)
    virtual std::wstring getStringW() const;  // +0x020 (0x32097c)
    virtual core::svector<core::stringw> getArray() const { return {}; }  // +0x024
    virtual bool getBool() const { return false; }  // +0x028
    virtual void getBinary(void*, int) const {}  // +0x02c
    virtual glitch::core::vector3d<float> getVector3d() const { return {}; }  // +0x030
    virtual glitch::core::vector4d<float> getVector4d() const { return {}; }  // +0x034
    virtual glitch::core::position2d<std::int32_t> getPosition() const { return {}; }  // +0x038
    virtual glitch::core::rect<std::int32_t> getRect() const { return {}; }  // +0x03c
    virtual glitch::core::quaternion getQuaternion() const { return {0.f, 0.f, 0.f, 1.f}; }  // +0x040 0x31d690
    virtual glitch::core::CMatrix4<float> getMatrix() const;  // +0x044 (0x326588)
    virtual glitch::core::triangle3d<float> getTriangle() const { return {}; }  // +0x048 0x31d6ac
    virtual glitch::core::vector2d<float> getVector2d() const { return {}; }  // +0x04c
    virtual glitch::core::vector2d<std::int32_t> getVector2di() const { return {}; }  // +0x050
    virtual glitch::core::vector3d<std::int32_t> getVector3di() const { return {}; }  // +0x054
    virtual glitch::core::vector4d<std::int32_t> getVector4di() const { return {}; }  // +0x058
    virtual glitch::core::line2d<float> getLine2d() const { return {{0.f, 0.f}, {1.f, 1.f}}; }  // +0x05c 0x31d724
    virtual glitch::core::line2d<std::int32_t> getLine2di() const { return {{0, 0}, {1, 1}}; }  // +0x060 0x31d740
    virtual glitch::core::line3d<float> getLine3d() const { return {{0.f, 0.f, 0.f}, {1.f, 1.f, 1.f}}; }  // +0x064 0x31d75c
    virtual glitch::core::line3d<std::int32_t> getLine3di() const { return {{0, 0, 0}, {1, 1, 1}}; }  // +0x068 0x31d780
    virtual glitch::core::dimension2d<std::int32_t> getDimension2d() const { return {}; }  // +0x06c 0x31d7a4
    virtual glitch::core::aabbox3d<float> getBBox() const { return {{-1.f, -1.f, -1.f}, {1.f, 1.f, 1.f}}; }  // +0x070 0x31d7b4
    virtual glitch::core::plane3d<float> getPlane() const { return {{0.f, 1.f, 0.f}, -0.f}; }  // +0x074 0x31d7dc
    virtual boost::intrusive_ptr<glitch::video::ITexture> getTexture() const;  // +0x078 0x31d7fc (+0x78)
    virtual boost::intrusive_ptr<glitch::video::CLight> getLight() const;  // +0x07c 0x31d808 (+0x7c)
    // +0x080, 0x31d814: the current literal of an enumeration (CEnumAttribute returns the data pointer of its value
    // string); the base has none.
    virtual const char* getEnum() const { return nullptr; }  // +0x080
    virtual void* getUserPointer() const { return nullptr; }  // +0x084 0x31d81c
    virtual void setInt(int) {}  // +0x088
    virtual void setFloat(float) {}  // +0x08c
    virtual void setString(const char*) {}  // +0x090
    virtual void setString(const wchar_t* value);  // +0x094 0x326d20                                               // +0x94
    virtual void setArray(core::svector<core::stringw>) {}  // +0x098
    virtual void setColor(glitch::video::SColorf) {}  // +0x09c
    virtual void setColor(glitch::video::SColor) {}  // +0x0a0
    virtual void setBool(bool) {}  // +0x0a4
    virtual void setBinary(void*, int) {}  // +0x0a8
    virtual void setVector2d(glitch::core::vector2d<float>) {}  // +0x0ac
    virtual void setVector3d(const glitch::core::vector3d<float>&) {}  // +0x0b0
    virtual void setVector4d(const glitch::core::vector4d<float>&) {}  // +0x0b4
    virtual void setPosition(glitch::core::position2d<std::int32_t>) {}  // +0x0b8
    virtual void setRect(glitch::core::rect<std::int32_t>) {}  // +0x0bc 0x31d86c
    virtual void setQuaternion(const glitch::core::quaternion&) {}  // +0x0c0 0x31d870
    virtual void setMatrix(const glitch::core::CMatrix4<float>&) {}  // +0x0c4 0x31d884
    virtual void setTriangle(const glitch::core::triangle3d<float>&) {}  // +0x0c8 0x31d888
    virtual void setVector2di(glitch::core::vector2d<std::int32_t>) {}  // +0x0cc
    virtual void setVector3di(const glitch::core::vector3d<std::int32_t>&) {}  // +0x0d0
    virtual void setVector4di(const glitch::core::vector4d<std::int32_t>&) {}  // +0x0d4
    virtual void setLine2d(glitch::core::line2d<float>) {}  // +0x0d8 0x31d898
    virtual void setLine2d(glitch::core::line2d<std::int32_t>) {}  // +0x0dc 0x31d89c
    virtual void setLine3d(glitch::core::line3d<float>) {}  // +0x0e0 0x31d8a0
    virtual void setLine3d(glitch::core::line3d<std::int32_t>) {}  // +0x0e4 0x31d8a4
    virtual void setDimension2d(glitch::core::dimension2d<std::int32_t>) {}  // +0x0e8 0x31d8a8
    virtual void setBBox(glitch::core::aabbox3d<float>) {}  // +0x0ec 0x31d8b4
    virtual void setPlane(glitch::core::plane3d<float>) {}  // +0x0f0 0x31d8b8
    virtual void setUserPointer(void*) {}  // +0x0f4
    virtual void setEnum(const char*, const char* const*) {}  // +0x0f8
    virtual void setTexture(const boost::intrusive_ptr<glitch::video::ITexture>&) {}  // +0x0fc 0x31d8c4
    virtual void setLight(boost::intrusive_ptr<glitch::video::CLight>) {}  // +0x100 0x31d8c8
    // +0x104 and +0x108: pure in the binary (every attribute class overrides them).
    virtual int getType() const { return 0; }                             // +0x104
    // Type name (L"unknown" here; the base default is not recovered from the binary).
    virtual const wchar_t* getTypeString() const { return L"unknown"; }  // +0x108
};

// _ZTVN6glitch2io11CAttributesE: an IAttributes (io/iattributes.hpp lists the 187 slots in vtable order).
class CAttributes : public IAttributes {
public:
    // glitch::io::CAttributes::SContext: an attribute group. 0x3c bytes in the original:
    // +0x00 vptr, +0x04 refcount, +0x08 name (glitch string), +0x20 attribute
    // vector (begin/end/capacity), +0x2c child group vector, +0x38 parent group.
    class SContext : public glitch::IReferenceCounted {
    public:
        explicit SContext(const std::string& groupName);      // 0x562b10 (C1), 0x562c80 (C2)
        ~SContext() override;                                  // 0x5643a8 (D1), 0x5644f8 (D2)

        // Returns the direct child with this name, or nullptr. 0x562964
        SContext* hasContext(const char* groupName) const;
        // Returns the child with this name, creating it when create is set. 0x563690
        SContext* getContext(const char* groupName, bool create);
        // Drops every child group and attribute and empties both vectors. 0x563a54
        void clear();

        std::string name;                       // +0x08
        std::vector<IAttribute*> attributes;    // +0x20
        std::vector<SContext*> children;        // +0x2c
        SContext* parent = nullptr;             // +0x38
    };

    // +0x58: driver the container was created for (reference counted).
    explicit CAttributes(glitch::video::IVideoDriver* driver);   // 0x562b78 (C1), 0x562bfc (C2)
    ~CAttributes() override;                                      // 0x564418 (D1), 0x564488 (D2)

    // +0x08: the root group, embedded as in the original. Its attribute vector is at +0x28.
    SContext root{""};
    // +0x44: current group. The original also keeps +0x48 = &group->attributes; the accessor below returns the same vector. The word
    // is kept (null) so that the object has the original's size: nothing reads it here.
    SContext* group = &root;
    std::vector<IAttribute*>* groupAttributes = nullptr;         // +0x48
    // +0x4c..+0x54 are three words the constructor zeroes; their role is not recovered.
    std::uint32_t unk_4c = 0;                                    // +0x4c
    std::uint32_t unk_50 = 0;                                    // +0x50
    std::uint32_t unk_54 = 0;                                    // +0x54
    glitch::video::IVideoDriver* driver = nullptr;               // +0x58

    std::vector<IAttribute*>& currentAttributes() { return group->attributes; }
    const std::vector<IAttribute*>& currentAttributes() const { return group->attributes; }

    int getAttributeCount() const override;                    // 0x5607e4
    const char* getAttributeName(int index) const override;    // 0x5607fc
    int getAttributeType(int index) const override;            // 0x560820
    bool getBool(int index) const override;                    // 0x5608a0
    int getInt(int index) const override;                      // 0x5608dc
    float getFloat(int index) const override;                  // 0x560918
    const char* getEnum(int index) const override;             // 0x560d1c: the attribute's +0x80 result, null for no attribute
    // 0x561f04: the index of the first choice equal (strcmp) to the attribute's +0x80 text, or -1.
    int getEnum(int index, const char* const* choices) const override;
    void getBinaryData(int index, void* data, int size) const override;  // 0x560ce4

    glitch::video::SColorf getColorf(int index) const override;                         // 0x5609e8
    glitch::core::vector2d<float> getVector2d(int index) const override;                // 0x560a44
    glitch::core::vector3d<float> getVector3d(int index) const override;                // 0x560a94
    glitch::core::vector4d<float> getVector4d(int index) const override;                // 0x560ae8
    glitch::core::vector2d<std::int32_t> getVector2di(int index) const override;        // 0x560b40
    glitch::core::vector3d<std::int32_t> getVector3di(int index) const override;        // 0x560b90
    glitch::core::vector4d<std::int32_t> getVector4di(int index) const override;        // 0x560be4
    glitch::core::position2d<std::int32_t> getPosition2d(int index) const override;     // 0x560c3c
    glitch::core::rect<std::int32_t> getRect(int index) const override;                 // 0x560c8c
    void setAttribute(int index, glitch::video::SColorf value) override;                // 0x560f0c

    void setAttribute(int index, const char* value) override;                       // 0x560db0
    void setAttribute(int index, bool value) override;                              // 0x560e20
    void setAttribute(int index, int value) override;                               // 0x560e58
    void setAttribute(int index, float value) override;                             // 0x560e90
    void setAttribute(int index, glitch::video::SColor value) override;             // 0x560ec8
    void setAttribute(int index, const glitch::core::vector2d<float>& value) override;  // 0x560f6c
    void setAttribute(int index, const glitch::core::vector3d<float>& value) override;  // 0x560fb8
    void setAttribute(int index, const glitch::core::vector4d<float>& value) override;  // 0x560ff0
    void setAttribute(int index, const glitch::core::vector2d<std::int32_t>& value) override;  // 0x561028
    void setAttribute(int index, const glitch::core::vector3d<std::int32_t>& value) override;  // 0x56106c
    void setAttribute(int index, const glitch::core::vector4d<std::int32_t>& value) override;  // 0x5610a4
    void setAttribute(int index, glitch::core::position2d<std::int32_t> value) override;       // 0x5610dc
    void setAttribute(int index, void* data, int size) override;                    // 0x56117c
    void setAttribute(int index, const char* value, const char* const* choices) override;  // 0x5611b4
    void setAttribute(int index, void* userPointer) override;                        // 0x56189c
    void setAttribute(int index, const wchar_t* value) override;                     // 0x560de8
    void setAttribute(int index, glitch::core::rect<std::int32_t> value) override;  // 0x561120
    void setAttribute(int index, boost::intrusive_ptr<glitch::video::ITexture> value) override;  // 0x5611ec
    void setAttribute(int index, boost::intrusive_ptr<glitch::video::CLight> value) override;    // 0x561aa0
    void setAttribute(int index, glitch::core::quaternion value) override;          // 0x5612ac
    void setAttribute(int index, const glitch::core::aabbox3d<float>& value) override;      // 0x5613b0
    void setAttribute(int index, const glitch::core::plane3d<float>& value) override;       // 0x5614b0
    void setAttribute(int index, const glitch::core::triangle3d<float>& value) override;    // 0x5615d4
    void setAttribute(int index, const glitch::core::line2d<float>& value) override;        // 0x5616e4
    void setAttribute(int index, const glitch::core::line3d<float>& value) override;        // 0x5617e4
    void setAttribute(int index, const glitch::core::CMatrix4<float>& value) override;      // 0x563b74
    const wchar_t* getAttributeTypeString(int index) const override;                         // 0x56085c
    const wchar_t* getAttributeTypeString(const char* name) const override;                 // 0x562388
    glitch::video::SColor getColor(int index) const override;                           // 0x560954
    glitch::core::quaternion getQuaternion(int index) const override;                   // 0x561224
    glitch::core::aabbox3d<float> getBox3d(int index) const override;                   // 0x561314
    glitch::core::plane3d<float> getPlane3d(int index) const override;                  // 0x561424
    glitch::core::triangle3d<float> getTriangle3d(int index) const override;            // 0x561514
    glitch::core::line2d<float> getLine2d(int index) const override;                    // 0x561660
    glitch::core::line3d<float> getLine3d(int index) const override;                    // 0x561748
    void* getUserPointer(int index) const override;                                     // 0x561858
    core::svector<core::stringw> getArray(int index) const override;                       // 0x563308
    glitch::core::CMatrix4<float> getMatrix(int index) const override;                  // 0x565464
    std::string getString(int index) const override;                                    // 0x564240
    std::wstring getStringW(int index) const override;                                  // 0x561950
    boost::intrusive_ptr<glitch::video::ITexture> getTexture(int index) const override;  // 0x56074c
    boost::intrusive_ptr<glitch::video::CLight> getLight(int index) const override;      // 0x560798
    boost::intrusive_ptr<glitch::video::ITexture> getTexture(const char* name) const override;  // 0x56241c
    boost::intrusive_ptr<glitch::video::CLight> getLight(const char* name) const override;      // 0x5623e0

    // Group handling (0x564314 .. 0x5618f0).
    void clear() override;                                     // 0x563b30
    void push(const char* groupName) override;                 // 0x564314
    void push(int groupIndex) override;                        // 0x564568: group named "group<index>"
    void push(const char* groupName, int groupIndex) override; // 0x564644
    void pop() override;                                       // 0x5618d8
    void setGroup(unsigned int index) override;                // 0x561908
    const std::string& getGroupName() const override;          // 0x561924
    int getGroupsCount() const override;                       // 0x5618f0

    // Typed attributes appended to the current group (no check for an existing name).
    void addInt(const char* name, int value, bool flag) override;                       // 0x568b1c
    void addFloat(const char* name, float value, bool flag) override;                  // 0x56891c
    void addBool(const char* name, bool value, bool flag) override;                    // 0x56871c
    void addUserPointer(const char* name, void* value, bool flag) override;            // 0x568038
    void addRect(const char* name, glitch::core::rect<std::int32_t> value, bool flag) override;  // 0x568ce0
    void addVector2d(const char* name, const glitch::core::vector2d<float>& value, bool flag) override;       // 0x56a1a0
    void addVector3d(const char* name, const glitch::core::vector3d<float>& value, bool flag) override;       // 0x56a030
    void addVector4d(const char* name, const glitch::core::vector4d<float>& value, bool flag) override;       // 0x569ebc
    void addVector2di(const char* name, const glitch::core::vector2d<std::int32_t>& value, bool flag) override;  // 0x5692c8
    void addVector3di(const char* name, const glitch::core::vector3d<std::int32_t>& value, bool flag) override;  // 0x569158
    void addVector4di(const char* name, const glitch::core::vector4d<std::int32_t>& value, bool flag) override;  // 0x568fe4
    void addPosition2d(const char* name, glitch::core::position2d<std::int32_t> value, bool flag) override;   // 0x568e64
    void addLine2d(const char* name, glitch::core::line2d<float> value, bool flag) override;                  // 0x569604
    void addLine3d(const char* name, glitch::core::line3d<float> value, bool flag) override;                  // 0x56944c
    void addTriangle3d(const char* name, glitch::core::triangle3d<float> value, bool flag) override;          // 0x5697ac
    void addBox3d(const char* name, glitch::core::aabbox3d<float> value, bool flag) override;                 // 0x569b3c
    void addPlane3d(const char* name, glitch::core::plane3d<float> value, bool flag) override;                // 0x569998
    void addQuaternion(const char* name, glitch::core::quaternion value, bool flag) override;                 // 0x569d00
    void addColorf(const char* name, glitch::video::SColorf value, bool flag) override;                       // 0x56a31c
    void addColor(const char* name, glitch::video::SColor value, bool flag) override;                         // 0x56a528
    void addStringAsColor(const char* name, const wchar_t* value, bool flag) override;                        // 0x56a3ec
    // String-valued adds: each creates the typed attribute with its default value, appends it
    // to the current group, then sets the value from the wide string through setString (+0x94).
    void addStringAsUserPointer(const char* name, const wchar_t* value, bool flag) override;  // 0x567f24
    void addStringAsBool(const char* name, const wchar_t* value, bool flag) override;         // 0x568608
    void addStringAsFloat(const char* name, const wchar_t* value, bool flag) override;        // 0x568808
    void addStringAsInt(const char* name, const wchar_t* value, bool flag) override;          // 0x568a08
    void addStringAsRect(const char* name, const wchar_t* value, bool flag) override;         // 0x568c08
    void addStringAsPosition2d(const char* name, const wchar_t* value, bool flag) override;   // 0x568d94
    void addStringAsVector4di(const char* name, const wchar_t* value, bool flag) override;    // 0x568f0c
    void addStringAsVector3di(const char* name, const wchar_t* value, bool flag) override;    // 0x569084
    void addStringAsVector2di(const char* name, const wchar_t* value, bool flag) override;    // 0x5691f8
    void addStringAsLine3d(const char* name, const wchar_t* value, bool flag) override;       // 0x569368
    void addStringAsLine2d(const char* name, const wchar_t* value, bool flag) override;       // 0x569528
    void addStringAsTriangle3d(const char* name, const wchar_t* value, bool flag) override;   // 0x5696c0
    void addStringAsPlane3d(const char* name, const wchar_t* value, bool flag) override;      // 0x5698b8
    void addStringAsBox3d(const char* name, const wchar_t* value, bool flag) override;        // 0x569a54
    void addStringAsQuaternion(const char* name, const wchar_t* value, bool flag) override;   // 0x569c18
    void addStringAsVector4d(const char* name, const wchar_t* value, bool flag) override;     // 0x569de4
    void addStringAsVector3d(const char* name, const wchar_t* value, bool flag) override;     // 0x569f5c
    void addStringAsVector2d(const char* name, const wchar_t* value, bool flag) override;     // 0x56a0d0
    void addStringAsColorf(const char* name, const wchar_t* value, bool flag) override;       // 0x56a240
    void addStringAsMatrix(const char* name, const wchar_t* value, bool flag) override;       // 0x56a638
    void addStringAsTexture(const char* name, const wchar_t* value, bool flag) override;      // 0x5682c0
    // 0x568124: the light is null here, as in the original; the text goes to the narrow setter, which keeps nothing.
    void addStringAsLight(const char* name, const wchar_t* value, bool flag) override;
    void addBinary(const char* name, void* data, int size, bool flag) override;                      // 0x5684d8
    void addStringAsBinary(const char* name, const wchar_t* value, bool flag) override;              // 0x56840c: PARTIAL
    void addString(const char* name, const wchar_t* value, bool flag) override;               // 0x56a798
    // 0x56a818: the narrow value is kept (see the narrow CStringAttribute constructor).
    void addString(const char* name, const char* value, bool flag) override;
    // 0x568384: appends a CTextureAttribute that retains the texture.
    void addTexture(const char* name, boost::intrusive_ptr<glitch::video::ITexture> value, bool flag) override;
    // 0x560d58: an enumeration with the empty value, then the index set on the new attribute.
    void addEnum(const char* name, int value, const char* const* choices, bool flag) override;
    // 0x568580: appends a new CEnumAttribute(name, value, choices, flag).
    void addEnum(const char* name, const char* value, const char* const* choices, bool flag) override;
    // 0x56a8b4: PARTIAL. The array is passed to CStringWArrayAttribute, whose constructor does
    // not keep it (see that class).
    void addArray(const char* name, core::svector<core::stringw> value, bool flag) override;
    // 0x5632ac: sets the array of the attribute at index (slot +0x98); out-of-range indices are ignored.
    void setAttribute(int index, core::svector<core::stringw> value) override;
    // 0x5641ac / 0x564148: PARTIAL. The enumeration's literal list (the enum attribute's +0x3c
    // vector) is not in this layout, so the output is left unchanged.
    void getAttributeEnumerationLiteralsOfEnumeration(const char* name, core::svector<core::stringc>& literals) const override;
    void getAttributeEnumerationLiteralsOfEnumeration(int index, core::svector<core::stringc>& literals) const override;
    // 0x568238: the light attribute constructor keeps the light and the driver.
    void addLight(const char* name, boost::intrusive_ptr<glitch::video::CLight> value, bool flag) override;
    void addMatrix(const char* name, const glitch::core::CMatrix4<float>& value, bool flag) override;         // 0x56a70c

    // By name: set the existing attribute, or append a new one with flag false.
    void setAttribute(const char* name, int value) override;                           // 0x56b11c
    void setAttribute(const char* name, float value) override;                         // 0x56b07c
    void setAttribute(const char* name, bool value) override;                          // 0x56b1bc
    void setAttribute(const char* name, void* value) override;                         // 0x56ad30
    void setAttribute(const char* name, glitch::core::rect<std::int32_t> value) override;  // 0x56b878
    // 0x56ba54: the existing box is set through setBBox, else a new box attribute is added.
    void setAttribute(const char* name, const glitch::core::aabbox3d<float>& value) override;
    // 0x56b400: PARTIAL, see attributes_add.cpp (the new enumeration uses the partial constructor).
    void setAttribute(const char* name, const char* value, const char* const* choices) override;
    // 0x566db0: a missing name appends a light attribute that keeps the light (flag clear).
    void setAttribute(const char* name, boost::intrusive_ptr<glitch::video::CLight> value) override;
    // 0x56b35c: PARTIAL, sets the existing texture attribute, else adds one (see addTexture).
    void setAttribute(const char* name, boost::intrusive_ptr<glitch::video::ITexture> value) override;
    // 0x56afa8: PARTIAL, sets the existing array attribute, else adds one (see addArray).
    void setAttribute(const char* name, core::svector<core::stringw> value) override;
    void setAttribute(const char* name, const glitch::core::vector2d<float>& value) override;       // 0x5659b4
    void setAttribute(const char* name, const glitch::core::vector2d<std::int32_t>& value) override;  // 0x567a9c
    void setAttribute(const char* name, const glitch::core::vector3d<float>& value) override;       // 0x56b7b8
    void setAttribute(const char* name, const glitch::core::vector4d<float>& value) override;       // 0x56b6f8
    void setAttribute(const char* name, const glitch::core::vector3d<std::int32_t>& value) override;  // 0x56b638
    void setAttribute(const char* name, const glitch::core::vector4d<std::int32_t>& value) override;  // 0x56b578
    void setAttribute(const char* name, glitch::core::position2d<std::int32_t> value) override;      // 0x56b978
    void setAttribute(const char* name, glitch::core::line2d<float> value) override;                 // 0x56bcc4
    void setAttribute(const char* name, const glitch::core::plane3d<float>& value) override;         // 0x56bf4c
    void setAttribute(const char* name, glitch::core::quaternion value) override;                    // 0x56add0
    void setAttribute(const char* name, const glitch::core::CMatrix4<float>& value) override;        // 0x56aee4
    void setAttribute(const char* name, glitch::video::SColor value) override;                       // 0x56abe8
    void setAttribute(const char* name, glitch::video::SColorf value) override;                      // 0x56b25c
    // By name, with a fallback add (flag false). A null string value removes the existing attribute.
    void setAttribute(const char* name, const char* value) override;                                 // 0x56a948
    void setAttribute(const char* name, const wchar_t* value) override;                              // 0x56aa98
    void setAttribute(const char* name, void* data, int size) override;                              // 0x56b4ac
    void setAttribute(const char* name, glitch::core::line3d<float> value) override;                 // 0x56bb8c
    void setAttribute(const char* name, const glitch::core::triangle3d<float>& value) override;      // 0x56bdcc

    // Name lookup in the current group (0x5628f4 .. 0x562374).
    unsigned int findAttribute(const char* name) const override;   // 0x5628f4: index, or 0xffffffff
    IAttribute* getAttributeP(const char* name) const;     // 0x561fa0
    bool existsAttribute(const char* name) const override;          // 0x562374
    int getAttributeType(const char* name) const override;          // 0x5623b8: 0x1e when missing

    bool getBool(const char* name) const override;                  // 0x562888
    int getInt(const char* name) const override;                    // 0x562860
    float getFloat(const char* name) const override;                // 0x562838
    const char* getEnum(const char* name) const override;           // 0x5624c4: the attribute's +0x80 result, null for none
    // 0x562458: the index of the first choice equal (strcmp) to the attribute's +0x80 text, or -1.
    int getEnum(const char* name, const char* const* choices) const override;
    void getBinaryData(const char* name, void* data, int size) const override;  // 0x5624ec
    glitch::video::SColorf getColorf(const char* name) const override;     // 0x562768
    glitch::video::SColor getColor(const char* name) const override;       // 0x5627c0
    glitch::core::vector2d<float> getVector2d(const char* name) const override;   // 0x562694
    glitch::core::vector3d<float> getVector3d(const char* name) const override;   // 0x562644
    glitch::core::vector4d<float> getVector4d(const char* name) const override;   // 0x5625f0
    glitch::core::vector2d<std::int32_t> getVector2di(const char* name) const override;  // 0x5625b0
    glitch::core::vector3d<std::int32_t> getVector3di(const char* name) const override;  // 0x56256c
    glitch::core::vector4d<std::int32_t> getVector4di(const char* name) const override;  // 0x56251c
    glitch::core::position2d<std::int32_t> getPosition2d(const char* name) const override;  // 0x562728
    glitch::core::rect<std::int32_t> getRect(const char* name) const override;     // 0x5626d8
    glitch::core::quaternion getQuaternion(const char* name) const override;       // 0x5622fc
    glitch::core::aabbox3d<float> getBox3d(const char* name) const override;       // 0x562270
    glitch::core::plane3d<float> getPlane3d(const char* name) const override;      // 0x5621f4
    glitch::core::triangle3d<float> getTriangle3d(const char* name) const override; // 0x562144
    glitch::core::line2d<float> getLine2d(const char* name) const override;        // 0x5620d0
    glitch::core::line3d<float> getLine3d(const char* name) const override;        // 0x562044
    void* getUserPointer(const char* name) const override;                         // 0x56201c
    core::svector<core::stringw> getArray(const char* name) const override;           // 0x5628b0
    glitch::core::CMatrix4<float> getMatrix(const char* name) const override;      // 0x567e48
    std::string getString(const char* name) const override;                        // 0x564768
    void getString(const char* name, char* out) const override;                    // 0x564924
    std::wstring getStringW(const char* name) const override;                      // 0x5637c0
    void getStringW(const char* name, wchar_t* out) const override;                // 0x563858
};

}  // namespace glitch::io
