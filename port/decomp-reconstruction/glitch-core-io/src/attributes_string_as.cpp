// String-valued attribute adds (CAttributes::addStringAs*). Each original body does the same
// three steps: it allocates the typed attribute with its default value and the flag, appends it
// to the current group (the vector at group +0x48), then calls the attribute's setString virtual
// (vtable +0x94, the wide-string setter) with the value. The ARM listing confirms the order: the
// setString call is made on the element that was just appended.
#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/numbers_attribute.hpp"
#include "glitch-core-io/io/scalar_attributes.hpp"
#include "glitch-core-io/io/typed_attributes.hpp"

namespace glitch::io {

namespace {
// Appends a new attribute to the group and sets its value from the wide string.
// The wide setter is called through IAttribute (vtable +0x94): derived classes declare their own
// setString(const char*) overloads, which would hide it.
void appendAndSetString(std::vector<IAttribute*>& group, IAttribute* attr, const wchar_t* value) {
    group.push_back(attr);
    attr->setString(value);
}
}  // namespace

// 0x567f24 _ZN6glitch2io11CAttributes22addStringAsUserPointerEPKcPKwb
// The new object's pointer field is written as null by the original (the store at +0x24), as here.
void CAttributes::addStringAsUserPointer(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(), new CUserPointerAttribute(name, nullptr, flag), value);
}

// 0x568608 _ZN6glitch2io11CAttributes15addStringAsBoolEPKcPKwb
// The original writes the bool value (+0x21) as 0 when it builds the object, as here.
void CAttributes::addStringAsBool(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(), new CBoolAttribute(name, false, flag), value);
}

// 0x568808 _ZN6glitch2io11CAttributes16addStringAsFloatEPKcPKwb
// The original writes the float value (+0x24) as 0 when it builds the object, as here.
void CAttributes::addStringAsFloat(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(), new CFloatAttribute(name, 0.f, flag), value);
}

// 0x568a08 _ZN6glitch2io11CAttributes14addStringAsIntEPKcPKwb
void CAttributes::addStringAsInt(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(), new CIntAttribute(name, 0, flag), value);
}

// 0x568c08 _ZN6glitch2io11CAttributes15addStringAsRectEPKcPKwb
void CAttributes::addStringAsRect(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(), new CRectAttribute(name, glitch::core::rect<std::int32_t>{}, flag), value);
}

// 0x568d94 _ZN6glitch2io11CAttributes21addStringAsPosition2dEPKcPKwb
void CAttributes::addStringAsPosition2d(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CPosition2DAttribute(name, glitch::core::position2d<std::int32_t>{}, flag), value);
}

// 0x568f0c _ZN6glitch2io11CAttributes20addStringAsVector4diEPKcPKwb
void CAttributes::addStringAsVector4di(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CVector4DIAttribute(name, glitch::core::vector4d<std::int32_t>{}, flag), value);
}

// 0x569084 _ZN6glitch2io11CAttributes20addStringAsVector3diEPKcPKwb
void CAttributes::addStringAsVector3di(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CVector3DIAttribute(name, glitch::core::vector3d<std::int32_t>{}, flag), value);
}

// 0x5691f8 _ZN6glitch2io11CAttributes20addStringAsVector2diEPKcPKwb
void CAttributes::addStringAsVector2di(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CVector2DIAttribute(name, glitch::core::vector2d<std::int32_t>{}, flag), value);
}

// 0x569368 _ZN6glitch2io11CAttributes17addStringAsLine3dEPKcPKwb
// The default segment is (0,0,0)-(1,1,1), as in the original stores.
void CAttributes::addStringAsLine3d(const char* name, const wchar_t* value, bool flag) {
    glitch::core::line3d<float> line{{0.f, 0.f, 0.f}, {1.f, 1.f, 1.f}};
    appendAndSetString(currentAttributes(), new CLine3dAttribute(name, line, flag), value);
}

// 0x569528 _ZN6glitch2io11CAttributes17addStringAsLine2dEPKcPKwb
// The default segment is (0,0)-(1,1).
void CAttributes::addStringAsLine2d(const char* name, const wchar_t* value, bool flag) {
    glitch::core::line2d<float> line{{0.f, 0.f}, {1.f, 1.f}};
    appendAndSetString(currentAttributes(), new CLine2dAttribute(name, line, flag), value);
}

// 0x5696c0 _ZN6glitch2io11CAttributes21addStringAsTriangle3dEPKcPKwb
void CAttributes::addStringAsTriangle3d(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CTriangleAttribute(name, glitch::core::triangle3d<float>{}, flag), value);
}

// 0x5698b8 _ZN6glitch2io11CAttributes18addStringAsPlane3dEPKcPKwb
// Default plane: normal (0,1,0), D = -0.0 (bit pattern 0x80000000 in the original).
void CAttributes::addStringAsPlane3d(const char* name, const wchar_t* value, bool flag) {
    glitch::core::plane3d<float> plane{{0.f, 1.f, 0.f}, -0.f};
    appendAndSetString(currentAttributes(), new CPlaneAttribute(name, plane, flag), value);
}

// 0x569a54 _ZN6glitch2io11CAttributes16addStringAsBox3dEPKcPKwb
// Default box: (-1,-1,-1) to (1,1,1).
void CAttributes::addStringAsBox3d(const char* name, const wchar_t* value, bool flag) {
    glitch::core::aabbox3d<float> box{{-1.f, -1.f, -1.f}, {1.f, 1.f, 1.f}};
    appendAndSetString(currentAttributes(), new CBBoxAttribute(name, box, flag), value);
}

// 0x569c18 _ZN6glitch2io11CAttributes21addStringAsQuaternionEPKcPKwb
// Default quaternion: identity (0,0,0,1).
void CAttributes::addStringAsQuaternion(const char* name, const wchar_t* value, bool flag) {
    glitch::core::quaternion q{0.f, 0.f, 0.f, 1.f};
    appendAndSetString(currentAttributes(), new CQuaternionAttribute(name, q, flag), value);
}

// 0x569de4 _ZN6glitch2io11CAttributes19addStringAsVector4dEPKcPKwb
void CAttributes::addStringAsVector4d(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CVector4DAttribute(name, glitch::core::vector4d<float>{}, flag), value);
}

// 0x569f5c _ZN6glitch2io11CAttributes19addStringAsVector3dEPKcPKwb
void CAttributes::addStringAsVector3d(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CVector3DAttribute(name, glitch::core::vector3d<float>{}, flag), value);
}

// 0x56a0d0 _ZN6glitch2io11CAttributes19addStringAsVector2dEPKcPKwb
void CAttributes::addStringAsVector2d(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(),
                       new CVector2DAttribute(name, glitch::core::vector2d<float>{}, flag), value);
}

// 0x56a240 _ZN6glitch2io11CAttributes17addStringAsColorfEPKcPKwb
// Default colour: (r,g,b,a) = (0,0,0,1).
void CAttributes::addStringAsColorf(const char* name, const wchar_t* value, bool flag) {
    glitch::video::SColorf color{0.f, 0.f, 0.f, 1.f};
    appendAndSetString(currentAttributes(), new CColorfAttribute(name, color, flag), value);
}

// 0x56a638 _ZN6glitch2io11CAttributes16addStringAsMatrixEPKcPKwb
// Default matrix: identity, with the flag byte after the 16 values set to 1 (the ARM stores
// the byte at sp+0x4c, which is the matrix's +0x40 member).
void CAttributes::addStringAsMatrix(const char* name, const wchar_t* value, bool flag) {
    glitch::core::CMatrix4<float> matrix = detail::identityMatrix();
    matrix.flag = true;
    appendAndSetString(currentAttributes(), new CMatrixAttribute(name, matrix, flag), value);
}

// 0x5682c0 _ZN6glitch2io11CAttributes18addStringAsTextureEPKcPKwb
// The texture starts null; the driver is this container's driver (+0x58).
void CAttributes::addStringAsTexture(const char* name, const wchar_t* value, bool flag) {
    boost::intrusive_ptr<glitch::video::ITexture> none;
    appendAndSetString(currentAttributes(), new CTextureAttribute(name, none, driver, flag), value);
}

// 0x568124 _ZN6glitch2io11CAttributes16addStringAsLightEPKcPKwb
// The light is null here, as in the original. The text then goes through setString(wchar_t) (slot +0x94),
// which narrows it and calls the light attribute's narrow setter, which keeps nothing.
void CAttributes::addStringAsLight(const char* name, const wchar_t* value, bool flag) {
    boost::intrusive_ptr<glitch::video::CLight> none;
    appendAndSetString(currentAttributes(), new CLightAttribute(name, none, driver, flag), value);
}

// 0x56a798 _ZN6glitch2io11CAttributes9addStringEPKcPKwb
// Appends a string attribute built from the wide value (no separate setString call).
void CAttributes::addString(const char* name, const wchar_t* value, bool flag) {
    currentAttributes().push_back(new CStringAttribute(name, value, flag));
}

// 0x56a818 _ZN6glitch2io11CAttributes9addStringEPKcS3_b
// A null value is replaced by the empty string, as the original does; the narrow constructor keeps it.
void CAttributes::addString(const char* name, const char* value, bool flag) {
    currentAttributes().push_back(new CStringAttribute(name, value != nullptr ? value : "", flag));
}

}  // namespace glitch::io

namespace glitch::io {

// 0x56840c _ZN6glitch2io11CAttributes17addStringAsBinaryEPKcPKwb
// Builds the CStringAttribute constructor's object with the name, a null buffer, the size argument = the bool argument of this
// function (the listing passes it in the size slot) and the flag 0, writes the CBinaryAttribute vtable over it, appends it and
// sets the text through the wide setString (vtable +0x94). A true flag asks the constructor for one byte from the null buffer,
// which faults there, as it does in the original.
void CAttributes::addStringAsBinary(const char* name, const wchar_t* value, bool flag) {
    appendAndSetString(currentAttributes(), new CBinaryAttribute(name, nullptr, flag ? 1 : 0, false), value);
}

}  // namespace glitch::io
