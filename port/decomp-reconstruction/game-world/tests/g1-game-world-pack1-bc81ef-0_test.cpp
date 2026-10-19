// Test for batch g1-game-world-pack1-bc81ef-0, companion file g1-game-world-pack1-bc81ef-0_material.cpp (MaterialData::setMaterial).
//
// Covered: the counted replacement of the material (+0x04) and of its renderer (+0x00), the parameter IDs cached from the
// renderer for parameter types 2 and 6 with index 0, the returned value, and the release of the previous material and
// renderer.
//
// Stubbed: CMaterialRenderer::getParameterID is declared in glitch-video but not defined in the tree. The stub returns
// type * 100 + index, plus 1000 for the second renderer, and records each call, so the test can see which renderer and
// which parameter were asked for.
//
// Not covered: the main translation unit (Dummy, Floor, IrrFactory). It emits vtables whose entries need the whole
// GameObject class, so it is not linked here; its bodies are constant returns, a destructor pair and the two creators.

#include <cstdio>
#include <vector>

#include "dh2/MaterialData.hpp"
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"

namespace glitch::video {

namespace {
const CMaterialRenderer* g_altRenderer = nullptr;
struct Call {
    const CMaterialRenderer* renderer;
    int32_t type;
    uint16_t index;
};
std::vector<Call> g_calls;
}  // namespace

// Stub (see the file header).
uint16_t CMaterialRenderer::getParameterID(E_SHADER_PARAMETER_TYPE type, uint16_t index) const {
    g_calls.push_back(Call{this, type, index});
    return static_cast<uint16_t>(type * 100 + index + (this == g_altRenderer ? 1000 : 0));
}

}  // namespace glitch::video

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

using glitch::video::CMaterial;
using glitch::video::CMaterialRenderer;

// A renderer with one reference held by the caller.
boost::intrusive_ptr<CMaterialRenderer> MakeRenderer() {
    return boost::intrusive_ptr<CMaterialRenderer>(new CMaterialRenderer(), true);
}

// A material with one reference held by the caller, bound to renderer.
boost::intrusive_ptr<CMaterial> MakeMaterial(const boost::intrusive_ptr<CMaterialRenderer>& renderer) {
    boost::intrusive_ptr<CMaterial> material(new CMaterial(), true);
    material->m_renderer = renderer;
    return material;
}

void TestFirstSet() {
    auto r1 = MakeRenderer();
    auto m1 = MakeMaterial(r1);
    // Count after MakeMaterial: r1 is held by the caller and by m1 (2).
    EXPECT(r1->m_refCount == 2);

    glitch::video::g_calls.clear();
    MaterialData md{};
    const std::uint32_t result = md.setMaterial(m1);

    EXPECT(md.m_material.get() == m1.get());
    EXPECT(md.m_renderer.get() == r1.get());
    EXPECT(md.m_parameterId2 == 200);   // type 2, index 0
    EXPECT(md.m_parameterId6 == 600);   // type 6, index 0
    EXPECT(result == 600);              // the original returns the parameter ID 6 value

    // The parameter queries ran in order (2 then 6) against the new material's renderer.
    EXPECT(glitch::video::g_calls.size() == 2);
    if (glitch::video::g_calls.size() == 2) {
        EXPECT(glitch::video::g_calls[0].renderer == r1.get());
        EXPECT(glitch::video::g_calls[0].type == 2);
        EXPECT(glitch::video::g_calls[0].index == 0);
        EXPECT(glitch::video::g_calls[1].renderer == r1.get());
        EXPECT(glitch::video::g_calls[1].type == 6);
        EXPECT(glitch::video::g_calls[1].index == 0);
    }

    // Counts: m1 is held by the caller and by md (2). r1 is held by the caller, by m1 and by md (3).
    EXPECT(m1->m_refCount == 2);
    EXPECT(r1->m_refCount == 3);
}

void TestReplaceReleasesOld() {
    auto r1 = MakeRenderer();
    auto m1 = MakeMaterial(r1);
    auto r2 = MakeRenderer();
    auto m2 = MakeMaterial(r2);
    glitch::video::g_altRenderer = r2.get();

    MaterialData md{};
    md.setMaterial(m1);
    EXPECT(r1->m_refCount == 3);

    glitch::video::g_calls.clear();
    const std::uint32_t result = md.setMaterial(m2);

    EXPECT(md.m_material.get() == m2.get());
    EXPECT(md.m_renderer.get() == r2.get());
    EXPECT(md.m_parameterId2 == 1200);  // alternate renderer adds 1000
    EXPECT(md.m_parameterId6 == 1600);
    EXPECT(result == 1600);
    EXPECT(glitch::video::g_calls.size() == 2);

    // m1 and r1 are released by md: back to the caller's and the material's references.
    EXPECT(m1->m_refCount == 1);
    EXPECT(r1->m_refCount == 2);
    // m2 is held by the caller and md. r2 is held by the caller, m2 and md.
    EXPECT(m2->m_refCount == 2);
    EXPECT(r2->m_refCount == 3);

    glitch::video::g_altRenderer = nullptr;
}

void TestSameMaterialTwice() {
    auto r1 = MakeRenderer();
    auto m1 = MakeMaterial(r1);
    MaterialData md{};
    md.setMaterial(m1);
    md.setMaterial(m1);
    // Setting the same material again keeps the counts: no leak, no premature release.
    EXPECT(m1->m_refCount == 2);
    EXPECT(r1->m_refCount == 3);
    EXPECT(md.m_parameterId6 == 600);
}

}  // namespace

int main() {
    TestFirstSet();
    TestReplaceReleasesOld();
    TestSameMaterialTwice();
    if (g_failures == 0) {
        std::printf("g1-game-world-pack1-bc81ef-0 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-world-pack1-bc81ef-0 test: %d failure(s)\n", g_failures);
    return 1;
}
