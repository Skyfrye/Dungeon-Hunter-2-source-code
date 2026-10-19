// Host coverage for the `m_quantization.size() >= 2` guard of CVertexStreams::computeBoundingBox
// (0x5a0ec0, body in glitch-video/src/vertex_streams.cpp:178), which the reconstruction note records as a
// port-only guard and which no test reached before this file.
//
// THE LISTING, and why the guard exists at all. CVertexStreams keeps its trailing dequantization block in the
// SAME allocation as its stream entries: the constructor 0x5a113c / 0x5a148c copies or zeroes
// `24 * count0c + 24` bytes after the entry array, i.e. exactly 2 * (count0c + 1) records of two vector3d
// (scale, offset), and 0x5a0f2c..0x5a0fd8 (the flag-bit-2 branch of computeBoundingBox) reads the first two of
// them (box * block[0] + block[1]) with no size test, because the block is always there in the original. The
// port models that block as std::vector<core::vector3d<float>> m_quantization and keeps a size test, so the
// question this file settles is whether the test's false branch can be reached at all.
//
// WHAT THIS FILE ESTABLISHES, by construction and not by inspection:
//   * every table the class's own constructors produce has m_quantization.size() == 2 * (count0c + 1) >= 2
//     (checked for count0c = 0, 1 and 7, through both the constructor and the 7-argument allocate);
//   * no method shrinks it (clone() rebuilds the same 2 * (count0c + 1) records from the copy constructor);
//   * with such a table and flag bit 2 set, the quantized branch RUNS (the guard's condition is true);
//   * the guard's false branch is reachable in the port only by putting the object into a state the original
//     cannot have: m_quantization and m_flags are public members, so a caller can clear the vector (or use the
//     port-only default constructor and set the flag) and then the guard is what keeps the call from reading
//     m_quantization[0] out of bounds. That is checked here too: the box stays unquantized and the call does
//     not fault.
// Verdict: not dead code. It cannot fire for any table the reconstructed API builds, so it never changes
// reconstructed behaviour, but it is a legitimate defensive guard over a public-member state that host code can
// create, and removing it would turn a defined no-op into an out-of-bounds read.
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

// An IBuffer over caller-owned bytes. IBuffer's constructor stores 0 in IReferenceCounted::referenceCounter
// (buffer.cpp:16, unlike IReferenceCounted's own default of 1), so the single-argument intrusive_ptr would take
// a reference that does not exist and the first drop would free the object under the table; the two-argument
// form with add_ref = true is the one the listings use for the same reason (glitch-video's
// deps/intrusive_ptr.hpp: an IBuffer is wrapped with intrusive_ptr<T>(p, true)).
class FixedBuffer : public IBuffer {
public:
    FixedBuffer(void* data, std::uint32_t size) : IBuffer(0, 0, size, data, 0) {}
    void bindImpl(bool) override {}
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint32_t) const override { return m_data; }
    void unmapImpl() const override {}
    std::uint8_t* getMappedPtr() const override { return m_data; }
    boost::intrusive_ptr<IBuffer> cloneImpl() const override { return boost::intrusive_ptr<IBuffer>(); }
};

// Three float vertices, 12 bytes apart.
float g_vertices[3][3] = {{0.0f, 0.0f, 0.0f}, {1.0f, 2.0f, 3.0f}, {-4.0f, 5.0f, 6.0f}};

// Gives table entry 0 the position layout of the listing (value type 6 = float, 3 components, stride 12).
void bindPosition(CVertexStreams& table, const boost::intrusive_ptr<IBuffer>& buffer) {
    table.m_streams.resize(1);
    SVertexStream& position = table.m_streams[0];
    position.buffer = buffer;
    position.offset = 0;
    position.attribute = 0;
    position.field0a = 6;
    position.field0c = 3;
    position.field0e = 12;
}

}  // namespace

int main() {
    boost::intrusive_ptr<IBuffer> buffer(new FixedBuffer(&g_vertices[0][0], sizeof(g_vertices)), true);

    // ---- every table the class's own constructors produce has >= 2 records -------------------------------------
    {
        CVertexStreams noBlock(0u, 1u, 0u, 1u, nullptr);
        check(noBlock.m_quantization.size() == 2u,
              "ctor 0x5a113c with count0c = 0 lays out 2 * (0 + 1) = 2 records (24 * 0 + 24 bytes)");
        CVertexStreams oneBlock(0u, 1u, 1u, 1u, nullptr);
        check(oneBlock.m_quantization.size() == 4u, "count0c = 1 gives 4 records");
        CVertexStreams sevenBlocks(0u, 1u, 7u, 1u, nullptr);
        check(sevenBlocks.m_quantization.size() == 16u, "count0c = 7 gives 16 records");

        boost::intrusive_ptr<CVertexStreams> allocated = CVertexStreams::allocate(0u, 1u, 0u, 1u, nullptr);
        check(allocated->m_quantization.size() >= 2u,
              "the 7-argument allocate 0x5a1270 goes through the same constructor");

        // clone() (0x5a1310) rebuilds the block from count0c, so it cannot produce a short one either.
        const glitch::core::vector3d<float> trailing[2] = {{2.0f, 2.0f, 2.0f}, {1.0f, 1.0f, 1.0f}};
        boost::intrusive_ptr<CVertexStreams> quantized = CVertexStreams::allocate(0u, 1u, 0u, 1u, nullptr, trailing);
        quantized->m_flags = static_cast<std::uint16_t>(quantized->m_flags | CVertexStreams::kFlagQuantized);
        boost::intrusive_ptr<CVertexStreams> copy = quantized->clone();
        check(copy->m_quantization.size() == quantized->m_quantization.size() && copy->m_quantization.size() >= 2u,
              "clone keeps the trailing block at 2 * (count0c + 1) records and copies the flag");
        check((copy->m_flags & CVertexStreams::kFlagQuantized) != 0, "the clone carries the quantized flag");
    }

    // ---- with a constructor-built table the quantized branch runs ------------------------------------------------
    {
        CVertexStreams table(0u, 1u, 0u, 1u, nullptr);
        bindPosition(table, buffer);
        table.m_quantization[0] = {2.0f, 3.0f, 4.0f};    // scale
        table.m_quantization[1] = {10.0f, 20.0f, 30.0f};  // offset
        table.m_flags = static_cast<std::uint16_t>(table.m_flags | CVertexStreams::kFlagQuantized);

        aabbox3d<float> box;
        table.computeBoundingBox(0u, 3u, box);
        // The three vertices before dequantization: min (-4,0,0), max (1,5,6).
        check(box.MinEdge.X == -4.0f * 2.0f + 10.0f && box.MinEdge.Y == 0.0f * 3.0f + 20.0f &&
                  box.MinEdge.Z == 0.0f * 4.0f + 30.0f,
              "the guard's condition is TRUE for a constructor-built table: the block is 2 records and the "
              "dequantization runs (min -> (2,20,30))");
        check(box.MaxEdge.X == 1.0f * 2.0f + 10.0f && box.MaxEdge.Y == 5.0f * 3.0f + 20.0f &&
                  box.MaxEdge.Z == 6.0f * 4.0f + 30.0f,
              "the max corner is dequantized as well (-> (12,35,54))");

        // ---- the guard's false branch: only host-mutated state can reach it ---------------------------------------
        // The flag stays set and the block is emptied, which no constructor or method of this class does.
        table.m_quantization.clear();
        aabbox3d<float> guarded;
        table.computeBoundingBox(0u, 3u, guarded);
        check(guarded.MinEdge.X == -4.0f && guarded.MinEdge.Y == 0.0f && guarded.MinEdge.Z == 0.0f &&
                  guarded.MaxEdge.X == 1.0f && guarded.MaxEdge.Y == 5.0f && guarded.MaxEdge.Z == 6.0f,
              "with an emptied block the guard skips the dequantization: the box keeps the raw bounds instead of "
              "reading m_quantization[0] past the end");
    }

    // ---- the same false branch through the port-only default constructor ----------------------------------------
    {
        CVertexStreams table;  // port-only (the original has no default constructor)
        check(table.m_quantization.empty(), "a default-constructed table has no trailing block at all");
        bindPosition(table, buffer);
        table.m_flags = static_cast<std::uint16_t>(table.m_flags | CVertexStreams::kFlagQuantized);
        aabbox3d<float> box;
        box.MinEdge = {123.0f, 123.0f, 123.0f};
        box.MaxEdge = {-123.0f, -123.0f, -123.0f};
        table.computeBoundingBox(0u, 3u, box);
        check(box.MinEdge.X == -4.0f && box.MinEdge.Y == 0.0f && box.MinEdge.Z == 0.0f &&
                  box.MaxEdge.X == 1.0f && box.MaxEdge.Y == 5.0f && box.MaxEdge.Z == 6.0f,
              "a table with no block at all reaches the same guard instead of reading out of bounds");
    }

    std::printf("%s\n",
                failures == 0 ? "vertex_streams_quantization_guard: ok" : "vertex_streams_quantization_guard: FAILED");
    return failures == 0 ? 0 : 1;
}
