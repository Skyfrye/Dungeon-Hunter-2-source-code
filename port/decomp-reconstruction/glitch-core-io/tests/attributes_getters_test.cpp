#include "glitch-core-io/io/attributes.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

// Holds one value of each vector kind and returns it from the getters.
struct Holder : io::IAttribute {
    int setColorfCalls = 0;
    glitch::video::SColorf colorf{0.1f, 0.2f, 0.3f, 0.4f};
    glitch::core::vector2d<float> v2{1.f, 2.f};
    glitch::core::vector3d<float> v3{1.f, 2.f, 3.f};
    glitch::core::vector4d<float> v4{1.f, 2.f, 3.f, 4.f};
    glitch::core::vector2d<std::int32_t> v2i{5, 6};
    glitch::core::vector3d<std::int32_t> v3i{5, 6, 7};
    glitch::core::vector4d<std::int32_t> v4i{5, 6, 7, 8};
    glitch::core::position2d<std::int32_t> pos{9, 10};
    glitch::core::rect<std::int32_t> rc{1, 2, 3, 4};
    glitch::video::SColorf getColorf() const override { return colorf; }
    glitch::core::vector2d<float> getVector2d() const override { return v2; }
    glitch::core::vector3d<float> getVector3d() const override { return v3; }
    glitch::core::vector4d<float> getVector4d() const override { return v4; }
    glitch::core::vector2d<std::int32_t> getVector2di() const override { return v2i; }
    glitch::core::vector3d<std::int32_t> getVector3di() const override { return v3i; }
    glitch::core::vector4d<std::int32_t> getVector4di() const override { return v4i; }
    glitch::core::position2d<std::int32_t> getPosition() const override { return pos; }
    glitch::core::rect<std::int32_t> getRect() const override { return rc; }
    void setColor(glitch::video::SColorf) override { ++setColorfCalls; }
};

int main() {
    // Owned by the container (reference count 1), so allocate on the heap.
    Holder& h = *new Holder;
    io::CAttributes attrs(nullptr);
    attrs.currentAttributes() = {&h};

    CHECK(attrs.getColorf(0).b == 0.3f);
    CHECK(attrs.getVector2d(0).Y == 2.f);
    CHECK(attrs.getVector3d(0).Z == 3.f);
    CHECK(attrs.getVector4d(0).W == 4.f);
    CHECK(attrs.getVector2di(0).X == 5);
    CHECK(attrs.getVector3di(0).Z == 7);
    CHECK(attrs.getVector4di(0).W == 8);
    CHECK(attrs.getPosition2d(0).Y == 10);
    CHECK(attrs.getRect(0).LowerRightCorner.X == 3 && attrs.getRect(0).LowerRightCorner.Y == 4);

    // Out-of-range defaults.
    CHECK(attrs.getColorf(3).a == 1.f && attrs.getColorf(3).r == 0.f);
    CHECK(attrs.getVector2d(3).X == 0.f && attrs.getVector3d(-1).Z == 0.f);
    CHECK(attrs.getVector4di(9).W == 0 && attrs.getRect(9).UpperLeftCorner.X == 0);

    attrs.setAttribute(0, glitch::video::SColorf{1.f, 0.f, 0.f, 1.f});
    CHECK(h.setColorfCalls == 1);

    std::printf("%s\n", failures ? "attributes_getters: FAILED" : "attributes_getters: ok");
    return failures != 0;
}
