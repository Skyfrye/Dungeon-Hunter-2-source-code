// Enumeration, light and box attribute adders and by-name setters of CAttributes.
#include <cstdio>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/scalar_attributes.hpp"
#include "glitch-core-io/io/typed_attributes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

int main() {
    static const char* const choices[] = {"low", "high", nullptr};

    io::CAttributes attrs(nullptr);
    // addEnum(int): the index is stored on the enumeration just added.
    attrs.addEnum("level", 1, choices, true);
    CHECK(attrs.getAttributeCount() == 1);
    CHECK(attrs.getAttributeP("level")->flag);
    CHECK(attrs.getInt("level") == 1);
    CHECK(std::string(attrs.getEnum("level")) == "high");  // the +0x80 slot: the current literal's text
    CHECK(std::string(attrs.getEnum(0)) == "high");
    CHECK(attrs.getEnum("missing") == nullptr);
    CHECK(attrs.getEnum("level", choices) == 1);

    // The literal table of an enumeration (type 4) is copied out by name or index; other attributes leave the output alone.
    glitch::core::svector<glitch::core::stringc> literals;
    attrs.getAttributeEnumerationLiteralsOfEnumeration("level", literals);
    CHECK(literals.size() == 2u && literals[0] == "low" && literals[1] == "high");
    glitch::core::svector<glitch::core::stringc> untouched(1, "keep");
    attrs.addBool("flagged", true, false);
    attrs.getAttributeEnumerationLiteralsOfEnumeration("flagged", untouched);
    CHECK(untouched.size() == 1u && untouched[0] == "keep");
    glitch::core::svector<glitch::core::stringc> byIndex;
    attrs.getAttributeEnumerationLiteralsOfEnumeration(0, byIndex);
    CHECK(byIndex.size() == 2u);
    attrs.getAttributeEnumerationLiteralsOfEnumeration(99, byIndex);  // past the end: nothing happens
    CHECK(byIndex.size() == 2u);
    attrs.setAttribute("level", "low", choices);  // an existing enumeration takes the value through setEnum
    CHECK(attrs.getInt("level") == 0);

    // The box setter updates an existing box and adds a missing one with the flag clear.
    attrs.addBool("unused", false, false);
    glitch::core::aabbox3d<float> box{{0.f, 0.f, 0.f}, {1.f, 2.f, 3.f}};
    attrs.setAttribute("box", box);
    CHECK(attrs.getAttributeCount() == 4);
    CHECK(!attrs.getAttributeP("box")->flag);
    box.MaxEdge.X = 5.f;
    attrs.setAttribute("box", box);
    CHECK(attrs.getAttributeCount() == 4);

    // The string enumeration setter appends a new enumeration when the name is missing.
    attrs.setAttribute("mode", "high", choices);
    CHECK(attrs.getAttributeCount() == 5);
    CHECK(!attrs.getAttributeP("mode")->flag);

    // A light is added with the given flag, and a missing light by name is added with the flag clear.
    attrs.addLight("lamp", boost::intrusive_ptr<video::CLight>(), true);
    CHECK(attrs.getAttributeCount() == 6);
    CHECK(attrs.getAttributeP("lamp")->flag);
    attrs.setAttribute("spot", boost::intrusive_ptr<video::CLight>());
    CHECK(attrs.getAttributeCount() == 7);

    // The narrow string add appends a string attribute with the flag given.
    attrs.addString("text", "abc", true);
    CHECK(attrs.getAttributeCount() == 8);
    CHECK(attrs.getAttributeP("text")->flag);
    CHECK(attrs.getAttributeP("text")->getType() == 2);

    // A texture is added by addTexture, and a missing one by setAttribute gets flag clear.
    attrs.addTexture("tex", boost::intrusive_ptr<video::ITexture>(), false);
    CHECK(attrs.getAttributeCount() == 9);
    attrs.setAttribute("tex", boost::intrusive_ptr<video::ITexture>());
    CHECK(attrs.getAttributeCount() == 9);
    attrs.setAttribute("tex2", boost::intrusive_ptr<video::ITexture>());
    CHECK(attrs.getAttributeCount() == 10);
    CHECK(!attrs.getAttributeP("tex2")->flag);

    // A missing array is added with its array kept; a second call replaces it.
    attrs.setAttribute("arr", glitch::core::svector<glitch::core::stringw>{L"a"});
    CHECK(attrs.getAttributeCount() == 11);
    CHECK(!attrs.getAttributeP("arr")->flag);
    CHECK(attrs.getArray("arr").size() == 1);
    attrs.setAttribute("arr", glitch::core::svector<glitch::core::stringw>{L"a", L"b"});
    CHECK(attrs.getAttributeCount() == 11);
    CHECK(attrs.getArray("arr").size() == 2);

    // The narrow string constructor clears isWide and keeps the value.
    io::CStringAttribute narrow("narrow", "text", true);
    CHECK(narrow.flag);
    CHECK(!narrow.isWide);
    CHECK(narrow.getString() == "text");

    // Enumeration text: setString stores it and getString copies it; the type string is "enum".
    io::CEnumAttribute choice("mode", "", choices, false);
    choice.setString("high");
    CHECK(choice.getString() == "high");
    CHECK(std::wstring(choice.getTypeString()) == L"enum");

    // getEnum by name and by index: the position of the text in the choices, or -1.
    attrs.getAttributeP("mode")->setString("high");
    CHECK(attrs.getEnum("mode", choices) == 1);
    CHECK(attrs.getEnum("nope", choices) == -1);
    CHECK(attrs.getEnum(4, choices) == 1);
    CHECK(attrs.getEnum(99, choices) == -1);

    // The light added with a wide string keeps its flag; the bool, int and box type strings.
    attrs.addStringAsLight("lit", L"light", true);
    CHECK(attrs.getAttributeP("lit")->flag);
    CHECK(std::wstring(attrs.getAttributeP("lit")->getTypeString()) == L"light");
    CHECK(std::wstring(io::CIntAttribute("i", 1, false).getTypeString()) == L"int");
    CHECK(std::wstring(io::CBoolAttribute("b", true, false).getTypeString()) == L"bool");

    // The vector4 matrix is the identity with the vector in the last column, and the flag clear.
    glitch::core::vector4d<float> four{2.f, 3.f, 4.f, 5.f};
    io::CVector4DAttribute vec("v", four, false);
    const glitch::core::CMatrix4<float> matrix = vec.getMatrix();
    CHECK(matrix.M[0] == 1.f && matrix.M[5] == 1.f && matrix.M[10] == 1.f);
    CHECK(matrix.M[12] == 2.f && matrix.M[13] == 3.f && matrix.M[14] == 4.f && matrix.M[15] == 5.f);
    CHECK(!matrix.flag);

    if (failures == 0) std::printf("attributes_enum_light_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
