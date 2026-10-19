// glitch::video::CVertexStreams::computeBoundingBox (0x5a0ec0), the body in glitch-video/src/vertex_streams.cpp.
//
// No test reached it before this file: nm shows the symbol present in many test executables (it is pulled in with the
// library object) but a gdb breakpoint on _ZNK6glitch5video14CVertexStreams18computeBoundingBoxEjjRNS_4core8aabbox3dIfEE
// reports no hit in any glitch-video, glitch-scene, game-world or glitch-core-io test. The worker who wrote it verified
// it with a throwaway harness kept outside the tree, so there was no durable coverage.
//
// What the listing says, and what is checked here: entry 0 of m_streams is the position stream, its buffer is
// read-mapped with access 0 (the const read form 0x5a1adc), the elements start at
// base + entry.offset + entry.field0e * first, the box is computed over last - first elements of entry.field0c
// components of value type entry.field0a through glitch::core::computeBoundingBox 0x6a48cc, the mapping is released
// (SMapBuffer release 0x5a0e28) and with bit 2 of m_flags set both corners become box * m_quantization[0] +
// m_quantization[1] component by component.
#include "glitch-video/vertex_streams.hpp"

#include "glitch-video/buffer.hpp"

#include <cstdint>
#include <cstdio>

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::printf("FAIL %s\n", what);
        ++failures;
    }
}

using glitch::core::aabbox3d;
using glitch::video::CVertexStreams;
using glitch::video::IBuffer;
using glitch::video::SVertexStream;

// An IBuffer over caller-owned bytes. The const read map of IBuffer returns m_data directly, so mapImpl must not be
// reached; unmap goes through unmapImpl only because the buffer carries kFlagUnmapCallback (0x20), which is how the
// release half of the listing is observed. referenceCounter starts at 1, so a single-argument intrusive_ptr takes
// that use.
class TestPosBuffer : public IBuffer {
public:
    TestPosBuffer(void* data, std::uint32_t size, std::uint8_t flags)
        : IBuffer(0, 0, size, data, flags) {
        referenceCounter = 1;
    }
    void bindImpl(bool) override {}
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint32_t) const override {
        ++mapImplCalls;
        return m_data;
    }
    void unmapImpl() const override { ++unmapImplCalls; }
    std::uint8_t* getMappedPtr() const override { return m_data; }
    boost::intrusive_ptr<IBuffer> cloneImpl() const override { return boost::intrusive_ptr<IBuffer>(); }

    mutable int mapImplCalls = 0;
    mutable int unmapImplCalls = 0;
};

// Four float vertices after four bytes of padding, so a body that ignored entry.offset would read misaligned floats
// and a body that ignored entry.field0e * first would start at vertex 0.
struct Storage {
    std::uint8_t padding[4];
    float vertices[4][3];
};

}  // namespace

int main() {
    Storage storage{};
    storage.vertices[0][0] = 0.0f;
    storage.vertices[0][1] = 0.0f;
    storage.vertices[0][2] = 0.0f;
    storage.vertices[1][0] = 1.0f;
    storage.vertices[1][1] = 2.0f;
    storage.vertices[1][2] = 3.0f;
    storage.vertices[2][0] = -5.0f;
    storage.vertices[2][1] = 2.0f;
    storage.vertices[2][2] = 3.0f;
    storage.vertices[3][0] = 1.0f;
    storage.vertices[3][1] = 7.0f;
    storage.vertices[3][2] = -9.0f;

    boost::intrusive_ptr<IBuffer> buffer(new TestPosBuffer(&storage.padding[0], sizeof(storage), 0x20u));
    auto* probe = static_cast<TestPosBuffer*>(buffer.get());

    CVertexStreams streams;
    streams.m_streams.resize(1);
    SVertexStream& position = streams.m_streams[0];
    position.buffer = buffer;
    position.offset = 4;        // the padding, so base + offset is vertex 0
    position.attribute = 0;
    position.field0a = 6;       // float
    position.field0c = 3;       // three components
    position.field0e = 12;      // 12 bytes between vertices

    // [1, 3): vertices 1 and 2, i.e. (1,2,3) and (-5,2,3).
    aabbox3d<float> box;
    streams.computeBoundingBox(1u, 3u, box);
    check(box.MinEdge.X == -5.0f && box.MinEdge.Y == 2.0f && box.MinEdge.Z == 3.0f,
          "[1,3) min is (-5,2,3): field0e * first and the count last - first are both used");
    check(box.MaxEdge.X == 1.0f && box.MaxEdge.Y == 2.0f && box.MaxEdge.Z == 3.0f,
          "[1,3) max is (1,2,3)");
    check(probe->unmapImplCalls == 1, "the mapping is released once (SMapBuffer release 0x5a0e28)");
    check(probe->mapImplCalls == 0, "the read map is the const form 0x5a1adc: m_data, no driver hook");

    // [0, 4): vertex 0 joins, so the low corner moves to -5 / -9 (vertex 0 is at the origin).
    streams.computeBoundingBox(0u, 4u, box);
    check(box.MinEdge.X == -5.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == -9.0f,
          "[0,4) min is (-5,0,-9)");
    check(box.MaxEdge.X == 1.0f && box.MaxEdge.Y == 7.0f && box.MaxEdge.Z == 3.0f,
          "[0,4) max is (1,7,3)");
    check(probe->unmapImplCalls == 2, "the second call releases its mapping too");

    // The entry's value type is read (field0a = 0 is signed char, as in the runtime dispatcher): 0xFF must arrive
    // as -1, and a body that hard-coded float or did not sign-extend would not produce this box.
    const signed char signedBytes[3] = {static_cast<signed char>(0xFF), 5, 3};
    boost::intrusive_ptr<IBuffer> byteBuffer(new TestPosBuffer(const_cast<signed char*>(&signedBytes[0]), 3u, 0u));
    position.buffer = byteBuffer;
    position.offset = 0;
    position.field0a = 0;  // signed char
    position.field0c = 3;
    position.field0e = 3;
    streams.computeBoundingBox(0u, 1u, box);
    check(box.MinEdge.X == -1.0f && box.MinEdge.Y == 5.0f && box.MinEdge.Z == 3.0f &&
              box.MaxEdge.X == -1.0f && box.MaxEdge.Z == 3.0f,
          "field0a selects the component type: signed char 0xFF is -1");

    // last == first hands the dispatcher a count of 0, which writes the zero box.
    streams.computeBoundingBox(2u, 2u, box);
    check(box.MinEdge.X == 0.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == 0.0f &&
              box.MaxEdge.X == 0.0f && box.MaxEdge.Y == 0.0f && box.MaxEdge.Z == 0.0f,
          "an empty range gives the zero box");

    // Bit 2 of m_flags dequantizes: box = box * m_quantization[0] + m_quantization[1], component by component.
    position.buffer = buffer;
    position.offset = 4;
    position.field0a = 6;
    position.field0c = 3;
    position.field0e = 12;
    streams.m_quantization.resize(2);
    streams.m_quantization[0] = {2.0f, 3.0f, 4.0f};
    streams.m_quantization[1] = {10.0f, 20.0f, 30.0f};
    streams.m_flags = static_cast<std::uint16_t>(streams.m_flags | CVertexStreams::kFlagQuantized);
    streams.computeBoundingBox(1u, 3u, box);
    check(box.MinEdge.X == 0.0f && box.MinEdge.Y == 26.0f && box.MinEdge.Z == 42.0f,
          "quantized min is box * scale + offset = (0,26,42)");
    check(box.MaxEdge.X == 12.0f && box.MaxEdge.Y == 26.0f && box.MaxEdge.Z == 42.0f,
          "quantized max is (12,26,42)");

    // The same call with the flag cleared must not quantize (0x5a0f2c is gated on the flag).
    streams.m_flags = static_cast<std::uint16_t>(streams.m_flags & ~CVertexStreams::kFlagQuantized);
    streams.computeBoundingBox(1u, 3u, box);
    check(box.MinEdge.X == -5.0f && box.MaxEdge.Y == 2.0f, "without the flag the box is left unquantized");

    std::printf("%s\n", failures == 0 ? "vertex_streams_bounding_box: ok" : "vertex_streams_bounding_box: FAILED");
    return failures == 0 ? 0 : 1;
}
