// CGenericBaker constructor: shader stored, attribute map unset and referenced once (the baker releases it).
#include <cstdio>

#include "glitch-video/generic_baker.hpp"
#include "glitch-video/vertex_attribute_map.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CGenericBaker baker(nullptr);
    CHECK(baker.m_shader == nullptr);
    CHECK(baker.m_unknown10 == 0xffff);
    CHECK(baker.m_batchMaterial == nullptr);
    CHECK(baker.referenceCounter == 0);
    CHECK(baker.m_attributeMap != nullptr);
    CHECK(baker.m_attributeMap->m_refCount == 1);  // the baker holds the one use
    for (uint32_t i = 0; i < CVertexAttributeMap::kMapSize; ++i) {
        CHECK(baker.m_attributeMap->m_map[i] == 0xff);
    }
    if (failures == 0) std::printf("generic_baker_test: ok\n");
    return failures ? 1 : 0;
}
