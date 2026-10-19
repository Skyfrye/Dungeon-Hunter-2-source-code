#include "glitch-core-io/io/attributes.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

// Records what the container forwards to it.
struct Recorder : io::IAttribute {
    int calls2f = 0, calls3f = 0, calls2i = 0, calls3i = 0, calls4f = 0;
    int ints = 0, bools = 0, floats = 0, enums = 0;
    int lastInt = 0;
    bool lastBool = false;
    float lastFloat = 0.f;
    glitch::core::vector2d<float> last2f{};
    glitch::core::vector3d<float> last3f{};
    int getInt() const override { return 42; }
    float getFloat() const override { return 1.5f; }
    bool getBool() const override { return true; }
    const char* getEnum() const override { return "three"; }
    int getType() const override { return 7; }
    void setInt(int v) override { ++ints; lastInt = v; }
    void setFloat(float v) override { ++floats; lastFloat = v; }
    void setBool(bool v) override { ++bools; lastBool = v; }
    void setEnum(const char*, const char* const*) override { ++enums; }
    void setVector2d(glitch::core::vector2d<float> v) override { ++calls2f; last2f = v; }
    void setVector3d(const glitch::core::vector3d<float>& v) override { ++calls3f; last3f = v; }
    void setVector2di(glitch::core::vector2d<std::int32_t>) override { ++calls2i; }
    void setVector3di(const glitch::core::vector3d<std::int32_t>&) override { ++calls3i; }
    void setVector4d(const glitch::core::vector4d<float>&) override { ++calls4f; }
};

int main() {
    // Owned by the container (reference count 1), so allocate on the heap.
    Recorder& a = *new Recorder;
    Recorder& b = *new Recorder;
    a.name = "alpha";
    io::CAttributes attrs(nullptr);
    attrs.currentAttributes() = {&a, &b};

    // Vector setters (batch 0).
    attrs.setAttribute(1, glitch::core::vector2d<float>{3.f, 4.f});
    CHECK(b.calls2f == 1 && a.calls2f == 0);
    CHECK(b.last2f.X == 3.f && b.last2f.Y == 4.f);
    attrs.setAttribute(0, glitch::core::vector3d<float>{1.f, 2.f, 3.f});
    CHECK(a.calls3f == 1 && a.last3f.Z == 3.f);
    attrs.setAttribute(0, glitch::core::vector2d<std::int32_t>{5, 6});
    CHECK(a.calls2i == 1);
    attrs.setAttribute(1, glitch::core::vector3d<std::int32_t>{5, 6, 7});
    CHECK(b.calls3i == 1);

    // Scalar setters and getters.
    attrs.setAttribute(0, 9);
    attrs.setAttribute(1, 2.5f);
    attrs.setAttribute(0, true);
    CHECK(a.ints == 1 && a.lastInt == 9);
    CHECK(b.floats == 1 && b.lastFloat == 2.5f);
    CHECK(a.bools == 1 && a.lastBool);
    CHECK(attrs.getInt(0) == 42 && attrs.getFloat(1) == 1.5f);
    CHECK(attrs.getBool(0) && std::string(attrs.getEnum(1)) == "three");
    CHECK(attrs.getAttributeType(0) == 7);

    // Out-of-range: setters ignored, getters return defaults.
    attrs.setAttribute(2, 1);
    attrs.setAttribute(-1, 1.f);
    CHECK(a.ints == 1 && b.floats == 1);
    CHECK(attrs.getInt(5) == 0 && attrs.getFloat(-1) == 0.f);
    CHECK(attrs.getAttributeType(9) == 0x1e);
    CHECK(attrs.getAttributeName(9) == nullptr);

    CHECK(attrs.getAttributeCount() == 2);
    CHECK(attrs.getAttributeName(0) != nullptr && std::strcmp(attrs.getAttributeName(0), "alpha") == 0);
    attrs.setAttribute(0, glitch::core::vector4d<float>{1.f, 1.f, 1.f, 1.f});
    CHECK(a.calls4f == 1);

    // Base IAttribute setters are no-ops.
    io::IAttribute base;
    base.setVector2d(glitch::core::vector2d<float>{1.f, 1.f});
    base.setVector3di(glitch::core::vector3d<std::int32_t>{1, 1, 1});

    std::printf("%s\n", failures ? "attributes: FAILED" : "attributes: ok");
    return failures != 0;
}
