// addX / by-name setAttribute of glitch::io::CAttributes, and the numbers constructors.
#include <cstdio>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/numbers_attribute.hpp"
#include "glitch-core-io/io/typed_attributes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

int main() {
    io::CAttributes attrs(nullptr);

    attrs.addInt("i", 4, true);
    attrs.addFloat("f", 1.5f, false);
    attrs.addBool("b", true, false);
    int token = 0;
    attrs.addUserPointer("p", &token, false);
    attrs.addRect("r", glitch::core::rect<std::int32_t>{1, 2, 3, 4}, false);
    CHECK(attrs.getAttributeCount() == 5);
    CHECK(attrs.getInt("i") == 4 && attrs.getAttributeP("i")->flag);
    CHECK(!attrs.getAttributeP("f")->flag && attrs.getFloat("f") == 1.5f);
    CHECK(attrs.getBool("b") && attrs.getUserPointer("p") == &token);
    CHECK(attrs.getRect("r").LowerRightCorner.X == 3 && attrs.getRect("r").LowerRightCorner.Y == 4);
    CHECK(attrs.getAttributeP("r")->getType() == attrs.getAttributeType("r"));

    // By-name setters update the existing attribute ...
    attrs.setAttribute("i", 9);
    attrs.setAttribute("f", 2.25f);
    attrs.setAttribute("b", false);
    attrs.setAttribute("r", glitch::core::rect<std::int32_t>{5, 6, 7, 8});
    CHECK(attrs.getAttributeCount() == 5);
    CHECK(attrs.getInt("i") == 9 && attrs.getFloat("f") == 2.25f && !attrs.getBool("b"));
    CHECK(attrs.getRect("r").UpperLeftCorner.X == 5 && attrs.getRect("r").LowerRightCorner.Y == 8);

    // ... and append a new one with flag false when the name is missing.
    attrs.setAttribute("n", 3);
    attrs.setAttribute("m", 0.5f);
    attrs.setAttribute("q", true);
    attrs.setAttribute("u", &token);
    CHECK(attrs.getAttributeCount() == 9);
    CHECK(attrs.getInt("n") == 3 && !attrs.getAttributeP("n")->flag);
    CHECK(attrs.getFloat("m") == 0.5f && attrs.getBool("q"));
    CHECK(attrs.getUserPointer("u") == &token);

    // Indexed setters still address the list by position.
    attrs.setAttribute(0, 11);
    CHECK(attrs.getInt("i") == 11);

    // Numbers constructors: components are stored in declaration order.
    auto* v2 = new io::CNumbersAttribute("v2", glitch::core::vector2d<float>{0.5f, 1.5f}, false);
    CHECK(v2->count == 2 && v2->isFloatList && v2->floatValues.size() == 2);
    CHECK(v2->getVector2d().X == 0.5f && v2->getVector2d().Y == 1.5f);
    auto* c = new io::CNumbersAttribute("c", glitch::video::SColorf{0.1f, 0.2f, 0.3f, 0.4f}, true);
    CHECK(c->count == 4 && c->flag && c->floatValues[2] == 0.3f);
    auto* l = new io::CNumbersAttribute("l", glitch::core::line3d<float>{{1.f, 2.f, 3.f}, {4.f, 5.f, 6.f}}, false);
    CHECK(l->count == 6 && l->floatValues[5] == 6.f);
    auto* iv = new io::CNumbersAttribute("iv", glitch::core::vector2d<std::int32_t>{7, 8}, false);
    CHECK(iv->count == 2 && !iv->isFloatList && iv->intValues[1] == 8);
    auto* r = new io::CNumbersAttribute("rc", glitch::core::rect<std::int32_t>{1, 2, 3, 4}, false);
    CHECK(r->count == 4 && !r->isFloatList && r->intValues[3] == 4);

    // Delete-on-drop: the container owns everything it was given.
    attrs.clear();
    std::printf("%s\n", failures ? "attributes_add: FAILED" : "attributes_add: ok");
    return failures != 0;
}
