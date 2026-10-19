// isVertexStreamHomolaced and CMaterialVertexAttributeMap slot arithmetic (totalMapCount, set, copy).
// Build: g++ -std=c++17 -Wall -I glitch-video/include glitch-video/tests/material_vertex_attribute_map_test.cpp
//        glitch-video/src/vertex_streams.cpp glitch-video/src/vertex_attribute_map.cpp
//        glitch-video/src/material_vertex_attribute_map.cpp glitch-video/src/buffer.cpp
#include <cstdio>

#include "glitch-video/material_vertex_attribute_map.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

static SVertexStream makeStream(uint32_t offset, uint16_t type, uint16_t count, uint16_t stride) {
    SVertexStream s;
    s.offset = offset;
    s.field0a = type;
    s.field0c = count;
    s.field0e = stride;
    return s;
}

int main() {
    // isVertexStreamHomolaced: entries 1.. must match entry 0's stride; span = max + count*size - min.
    {
        boost::intrusive_ptr<CVertexStreams> owner(new CVertexStreams(), true);  // born with count 0
        CVertexStreams& streams = *owner;
        streams.m_streams.push_back(makeStream(0, 4, 3, 12));   // float x3 at offset 0
        streams.m_streams.push_back(makeStream(12, 2, 2, 12));  // 2-byte x2 at offset 12
        boost::intrusive_ptr<const CVertexStreams> p(owner);
        int32_t minOffset = -1;
        // span = max(12) + 2 * ValueTypeSize[2] (=2) - min(0) = 16 > stride 12 -> false
        CHECK(!isVertexStreamHomolaced(p, minOffset));
        CHECK(minOffset == 0);

        streams.m_streams[1] = makeStream(0, 4, 3, 12);  // same offset as entry 0
        CHECK(isVertexStreamHomolaced(p, minOffset));    // span = 0 + 3*4 - 0 = 12 <= 12
        CHECK(minOffset == 0);

        streams.m_streams[1].field0e = 8;                // stride mismatch on entry 1
        CHECK(!isVertexStreamHomolaced(p, minOffset));
        CHECK(minOffset == 0);
    }

    // totalMapCount and set: the renderer has two techniques; technique 1 (count 2 - 1) has one render pass
    // after the first technique's two passes.
    {
        SRenderPass passes[4] = {};
        STechniqueEntry techniques[2];
        techniques[0].passCount = 2;
        techniques[0].passes = &passes[0];
        techniques[1].passCount = 1;
        techniques[1].passes = &passes[2];

        boost::intrusive_ptr<CMaterialRenderer> r(new CMaterialRenderer(), true);  // born with count 0
        CMaterialRenderer& renderer = *r;
        renderer.m_techniques = techniques;
        renderer.m_passBase = &passes[0];
        renderer.m_techniqueCount = 2;  // selects techniques[1]: 1 + (2 passes) = 3 slots
        CHECK(CMaterialVertexAttributeMap::totalMapCount(renderer) == 3);

        renderer.m_techniqueCount = 1;  // selects techniques[0]: 2 + 0 = 2 slots
        CHECK(CMaterialVertexAttributeMap::totalMapCount(renderer) == 2);
        renderer.m_techniqueCount = 2;

        CMaterialVertexAttributeMap map(r);
        CHECK(map.m_maps.size() == 3);
        CHECK(renderer.m_refCount == 2);  // r and the map

        const uint8_t zeros[30] = {};
        boost::intrusive_ptr<CVertexAttributeMap> pa(new CVertexAttributeMap(zeros), true);
        // Technique 1, parameter 0 is pass 2, which is slot 2.
        map.set(1, 0, pa);
        CHECK(map.m_maps[2].get() == pa.get());
        CHECK(pa->m_refCount == 2);
        // Technique 0, parameter 1 is pass 1, which is slot 1.
        map.set(0, 1, pa);
        CHECK(map.m_maps[1].get() == pa.get());
        CHECK(pa->m_refCount == 3);
        // Replacing slot 1 with nothing drops one reference on the map.
        map.set(0, 1, boost::intrusive_ptr<CVertexAttributeMap>());
        CHECK(pa->m_refCount == 2);
        CHECK(map.m_maps[1].get() == nullptr);
    }

    // Shared copy (copy == false) takes one reference per slot; allocate and clone return count 1.
    {
        SRenderPass passes[2] = {};
        STechniqueEntry techniques[1];
        techniques[0].passCount = 2;
        techniques[0].passes = &passes[0];
        boost::intrusive_ptr<CMaterialRenderer> r(new CMaterialRenderer(), true);
        CMaterialRenderer& renderer = *r;
        renderer.m_techniques = techniques;
        renderer.m_passBase = &passes[0];
        renderer.m_techniqueCount = 1;

        const uint8_t zeros[30] = {};
        boost::intrusive_ptr<CVertexAttributeMap> src[2] = {
            boost::intrusive_ptr<CVertexAttributeMap>(new CVertexAttributeMap(zeros), true),
            boost::intrusive_ptr<CVertexAttributeMap>(new CVertexAttributeMap(zeros), true)};
        CMaterialVertexAttributeMap shared(r, src, false);
        CHECK(src[0]->m_refCount == 2 && src[1]->m_refCount == 2);  // the source array and the shared slots
        CHECK(shared.m_maps[0].get() == src[0].get() && shared.m_maps[1].get() == src[1].get());

        auto c = shared.clone(true);
        CHECK(c->m_refCount == 1);
        CHECK(c->m_maps[0].get() != src[0].get());  // copied, not shared
        CHECK(c->m_maps[0]->m_refCount == 1);
        CHECK(renderer.m_refCount == 3);            // r, shared and the clone each hold a renderer reference
    }

    if (failures == 0) std::printf("material_vertex_attribute_map_test: ok\n");
    return failures == 0 ? 0 : 1;
}
