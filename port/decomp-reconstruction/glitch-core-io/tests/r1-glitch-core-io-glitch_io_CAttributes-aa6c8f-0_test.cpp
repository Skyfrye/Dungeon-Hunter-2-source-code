// Light and box setters and adders of glitch::io::CAttributes (batch r1-glitch-core-io-glitch_io_CAttributes-aa6c8f-0).
// Group navigation and the enumeration choices are covered by attributes_context_test.cpp and
// attributes_enum_light_test.cpp.
#include <cstdio>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/attributes.hpp"
#include "glitch-core-io/io/typed_attributes.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch;

namespace {

// An attribute that records the light and box setters, so the forwarding is visible.
struct Recorder : io::IAttribute {
    int lightCalls = 0;
    int boxCalls = 0;
    const video::CLight* lastLight = nullptr;
    core::aabbox3d<float> lastBox{};
    void setLight(boost::intrusive_ptr<video::CLight> value) override {
        ++lightCalls;
        lastLight = value.get();
    }
    void setBBox(core::aabbox3d<float> value) override {
        ++boxCalls;
        lastBox = value;
    }
};

}  // namespace

int main() {
    io::CAttributes attrs(nullptr);
    boost::intrusive_ptr<video::CLight> light(new video::CLight(nullptr), true);  // one use, held by this variable
    CHECK(light->m_refCount == 1);

    // setAttribute(index, light): the attribute at index gets the light through setLight, and the
    // reference taken for the call is released afterwards.
    auto* rec = new Recorder();
    rec->name = "rec";
    attrs.currentAttributes().push_back(rec);
    attrs.setAttribute(0, light);
    CHECK(rec->lightCalls == 1);
    CHECK(rec->lastLight == light.get());
    CHECK(light->m_refCount == 1);

    // An out-of-range index does nothing.
    attrs.setAttribute(5, light);
    CHECK(rec->lightCalls == 1);
    CHECK(light->m_refCount == 1);

    // setAttribute(name, light): an existing attribute is forwarded to, nothing is added.
    attrs.setAttribute("rec", light);
    CHECK(rec->lightCalls == 2);
    CHECK(attrs.currentAttributes().size() == 1);
    CHECK(light->m_refCount == 1);

    // A missing name appends a light attribute with the flag clear that keeps the light.
    attrs.setAttribute("lamp", light);
    CHECK(attrs.currentAttributes().size() == 2);
    CHECK(attrs.getAttributeP("lamp") != nullptr && !attrs.getAttributeP("lamp")->flag);
    CHECK(attrs.getLight("lamp").get() == light.get());
    CHECK(light->m_refCount == 2);  // this variable and the attribute

    // addLight appends with the given flag and keeps the light.
    attrs.addLight("added", light, true);
    CHECK(attrs.currentAttributes().size() == 3);
    CHECK(attrs.getAttributeP("added")->flag);
    CHECK(attrs.getLight("added").get() == light.get());
    CHECK(attrs.getStringW("added") == L"light");
    CHECK(light->m_refCount == 3);

    // addStringAsLight appends a light attribute with no light (the value text is not kept).
    attrs.addStringAsLight("empty", L"ignored", true);
    CHECK(attrs.currentAttributes().size() == 4);
    CHECK(attrs.getAttributeP("empty")->flag);
    CHECK(attrs.getLight("empty").get() == nullptr);
    CHECK(attrs.getStringW("empty").empty());
    CHECK(std::wstring(attrs.getAttributeTypeString("empty")) == L"light");
    CHECK(light->m_refCount == 3);

    // setAttribute(name, aabbox): a missing box is appended with the flag clear and the given corners.
    core::aabbox3d<float> box{{0.f, 0.f, 0.f}, {1.f, 2.f, 3.f}};
    attrs.setAttribute("box", box);
    CHECK(attrs.currentAttributes().size() == 5);
    CHECK(attrs.existsAttribute("box") && !attrs.getAttributeP("box")->flag);
    const core::aabbox3d<float> got = attrs.getBox3d("box");
    CHECK(got.MinEdge.X == 0.f && got.MaxEdge.X == 1.f);
    CHECK(got.MaxEdge.Y == 2.f && got.MaxEdge.Z == 3.f);

    // An existing name takes the box through setBBox and adds nothing.
    box.MaxEdge.X = 5.f;
    attrs.setAttribute("rec", box);
    CHECK(rec->boxCalls == 1);
    CHECK(rec->lastBox.MaxEdge.X == 5.f);
    CHECK(attrs.currentAttributes().size() == 5);

    if (failures == 0) std::printf("r1-glitch-core-io-glitch_io_CAttributes-aa6c8f-0_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
