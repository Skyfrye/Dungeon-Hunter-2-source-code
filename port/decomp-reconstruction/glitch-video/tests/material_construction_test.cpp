// Host check of CMaterial construction and comparison (material.cpp): allocate / constructor header init and hash seeds, init / reset
// copying the renderer's default values, clone, the parameter and render-state hash words, equals / operator== / operator< /
// compare, and dropParameters. A renderer with one technique of one pass, a shader with three parameters (one global) and a
// parameter table of an int x2, a float x3 and a matrix is built by hand. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/shader_attributes.hpp"

using namespace glitch::video;
using glitch::video::detail::SParameterEntry;

static int failures = 0;
#define CHECK(cond)                                             \
    do {                                                        \
        if (!(cond)) {                                          \
            std::printf("FAIL line %d: %s\n", __LINE__, #cond); \
            ++failures;                                         \
        }                                                       \
    } while (0)

namespace {

class TestShader : public IShader {
public:
    TestShader(uint16_t id) : IShader(id, "test", nullptr) {}
    void releaseDriverSpecificResources() override {}
};

struct Fixture {
    TestShader shader;
    uint16_t ids[3] = {};
    SParameterEntry entries[3];
    SRenderPass pass;
    STechniqueEntry technique;
    std::vector<uint8_t> defaults;
    boost::intrusive_ptr<CMaterialRenderer> renderer;

    explicit Fixture(uint16_t shaderId) : shader(shaderId) {
        shader.referenceCounter = 1000;  // keep the stack shader alive
        // The pass lists three parameter ids: the per-stage counts (stage 0: 3, stage 1: 0) less the two words at shader +0x2c / +0x34.
        shader.m_stageParameters[0].count = 3;
        shader.m_stageParameters[1].count = 0;
        entries[0].type = 1;  // int x2 at +0
        entries[0].count = 2;
        entries[0].valueOffset = 0;
        entries[1].type = 5;  // float x3 at +8
        entries[1].count = 3;
        entries[1].valueOffset = 8;
        entries[2].type = 11;  // matrix x1 with its slot at +20
        entries[2].count = 1;
        entries[2].valueOffset = 20;
        ids[0] = 0;
        ids[1] = 1;
        ids[2] = 2;
        std::memset(&pass, 0, sizeof pass);
        pass.shader = &shader;
        pass.bindings = reinterpret_cast<int*>(ids);
        pass.flag30 = 1;
        technique.passCount = 1;
        technique.passes = &pass;
        defaults.assign(32, 0);
        renderer = boost::intrusive_ptr<CMaterialRenderer>(new CMaterialRenderer, true);
        renderer->m_techniques = &technique;
        renderer->m_techniqueCount = 1;
        renderer->m_parameterCount = 3;
        renderer->m_valueBufferSize = 32;
        renderer->parameters.headerForTest().count = 3;
        renderer->parameters.headerForTest().entries = entries;
        renderer->parameters.setValueBuffer(defaults.data());
    }
};

}  // namespace

int main() {
    Fixture f(0x1234);
    f.defaults[0] = 7;  // first int of the defaults

    boost::intrusive_ptr<CMaterial> a = CMaterial::allocate(f.renderer, "mat", 0);
    CHECK(a->m_refCount == 1);
    CHECK(a->m_values.size() == 32 && a->m_values[0] == 7);  // init copied the default values
    CHECK(a->m_hasName && a->m_nameText == "mat");
    CHECK(a->m_dirtyParameters == 0xFFFFFFFFu && a->m_dirtyHashes == 0xFFFFFFFFu);
    // The top byte of the hash word is seeded from the shader id (low byte xor high byte).
    CHECK((a->m_hashCodes[0] >> 24) == ((0x1234 & 0xFF) ^ (0x1234 >> 8)));

    boost::intrusive_ptr<CMaterial> b = CMaterial::allocate(f.renderer, nullptr, 0);
    CHECK(!b->m_hasName);
    CHECK(a->getHashCode() == b->getHashCode());  // same defaults, same hash
    CHECK((a->m_dirtyHashes & 1u) == 0);          // getHashCode cleared the bit
    CHECK(*a == *b);
    CHECK(!(*a < *b) && !(*b < *a));

    // A different int changes the hash word's low byte and breaks equality; the ordering follows the memcmp of the values.
    uint8_t* v = b->m_values.data();
    v[0] = 9;
    b->m_dirtyParameters |= 1u;
    b->m_dirtyHashes |= 1u;
    CHECK(a->getHashCode() != b->getHashCode());
    CHECK(!(*a == *b));
    CHECK((*a < *b) != (*b < *a));

    // clone copies the values, the header state and the name, with count 1.
    boost::intrusive_ptr<CMaterial> c = a->clone(nullptr);
    CHECK(c->m_refCount == 1 && c->m_values[0] == 7 && c->m_nameText == "mat");
    // The clone copies the header's dirty bits but not the hash words (they are only seeded), so a clone of a clean material keeps stale
    // hashes until its bits are set again.
    CHECK(c->m_dirtyHashes == a->m_dirtyHashes);
    c->m_dirtyHashes = 0xFFFFFFFFu;
    c->m_dirtyParameters = 0xFFFFFFFFu;
    CHECK(*a == *c);
    boost::intrusive_ptr<CMaterial> d = a->clone("other");
    CHECK(d->m_nameText == "other");

    // Matrix parameters: a set slot differs from the null (identity) slot; both are copied by clone and released by dropParameters.
    glitch::core::CMatrix4<float> m(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);
    m.M[12] = 5.0f;
    m.flag = false;
    CHECK(c->parameters.setParameter(2, 0u, m));
    c->m_dirtyHashes |= 1u;
    c->m_dirtyParameters |= 1u;
    CHECK(!(*a == *c));
    boost::intrusive_ptr<CMaterial> e = c->clone(nullptr);
    e->m_dirtyHashes = 0xFFFFFFFFu;
    e->m_dirtyParameters = 0xFFFFFFFFu;
    CHECK(*e == *c);
    e->dropParameters();
    e->m_dirtyHashes = 0xFFFFFFFFu;
    e->m_dirtyParameters = 0xFFFFFFFFu;
    CHECK(!(*e == *c));
    e->m_dirtyHashes = 0xFFFFFFFFu;
    CHECK(*e == *a);

    // reset restores the defaults and the header state.
    c->m_values[0] = 99;
    c->m_technique = 0;
    c->reset(nullptr);
    CHECK(c->m_values[0] == 7 && c->m_dirtyParameters == 0xFFFFFFFFu);

    std::printf("%s\n", failures ? "material_construction: FAILED" : "material_construction: ok");
    return failures != 0;
}
