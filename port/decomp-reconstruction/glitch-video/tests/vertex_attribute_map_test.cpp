// CVertexAttributeMap: set (sorted and unsorted search), copy and assignment,
// and the constructor from raw bytes.
#include <cstdio>
#include <cstring>

#include "glitch-video/vertex_attribute_map.hpp"
#include "video_test_types.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    test::TestBuffer b;  // on the stack with count 1: the stream entries add and drop their own uses
    boost::intrusive_ptr<CVertexStreams> owner(new CVertexStreams(), true);  // born with count 0
    CVertexStreams& streams = *owner;
    // Streams sorted by attribute: 1, 3, 5 at indices 0, 1, 2.
    const uint16_t attributes[3] = {1, 3, 5};
    for (uint16_t a : attributes) {
        SVertexStream s;
        s.buffer = boost::intrusive_ptr<IBuffer>(&b, true);
        s.attribute = a;
        streams.m_streams.push_back(s);
    }
    boost::intrusive_ptr<const CVertexStreams> handle(owner);

    // Unsorted: each pair searches from the start.
    const uint8_t pairs[] = {0, 3, 2, 5, 4, 7};    // slot 0 <- attr 3, slot 2 <- attr 5, slot 4 <- attr 7
    CVertexAttributeMap map(handle, 3, pairs, false);
    CHECK(map.m_map[0] == 1);
    CHECK(map.m_map[2] == 2);
    CHECK(map.m_map[4] == 0xff);                    // attr 7 is not in the table
    CHECK(map.m_map[1] == 0xff && map.m_map[29] == 0xff);

    // Sorted: the search resumes at the stream just found, so attr 1 after attr 3 misses.
    const uint8_t sortedPairs[] = {0, 3, 1, 1};
    CVertexAttributeMap sortedMap(handle, 2, sortedPairs, true);
    CHECK(sortedMap.m_map[0] == 1);
    CHECK(sortedMap.m_map[1] == 0xff);
    CVertexAttributeMap unsortedMap(handle, 2, sortedPairs, false);
    CHECK(unsortedMap.m_map[1] == 0);

    // Null streams: every slot stays unset and no pair is read.
    boost::intrusive_ptr<const CVertexStreams> none;
    CVertexAttributeMap empty(none, 3, pairs, false);
    CHECK(empty.m_map[0] == 0xff && empty.m_map[2] == 0xff);

    // Copy constructor and assignment copy the map but not the +0x00 word.
    map.m_refCount = 77;
    CVertexAttributeMap copy(map);
    CHECK(std::memcmp(copy.m_map, map.m_map, CVertexAttributeMap::kMapSize) == 0);
    CHECK(copy.m_refCount == 0);
    CVertexAttributeMap assigned(none, 0, pairs, false);
    assigned = map;
    CHECK(std::memcmp(assigned.m_map, map.m_map, CVertexAttributeMap::kMapSize) == 0);
    CHECK(assigned.m_refCount == 0);

    // Constructor from raw bytes copies the 30 map bytes.
    uint8_t raw[CVertexAttributeMap::kMapSize];
    for (uint32_t i = 0; i < CVertexAttributeMap::kMapSize; ++i) raw[i] = static_cast<uint8_t>(i);
    CVertexAttributeMap fromBytes(raw);
    CHECK(fromBytes.m_map[0] == 0 && fromBytes.m_map[29] == 29);

    std::printf("%s\n", failures ? "vertex_attribute_map: FAILED" : "vertex_attribute_map: ok");
    return failures != 0;
}
