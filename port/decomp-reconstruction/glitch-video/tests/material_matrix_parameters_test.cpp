// IMaterialParameters matrix accessors: CMaterial (dirty tracking, block pointer) and
// CMaterialRenderer (inline table). Checks entry lookup, slot round trips, identity
// handling and the dirty marks. Returns non-zero on failure.
#include "glitch-video/material_parameters.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;
using glitch::core::CMatrix4;
using Matrix = CMatrix4<float>;
using Renderer = detail::IMaterialParameters<CMaterialRenderer, false>;
using Material = detail::IMaterialParameters<CMaterial, true>;
using detail::SParameterBlockHeader;
using detail::SParameterEntry;

static Matrix makeMatrix(float seed) {
    Matrix m{};
    for (int i = 0; i < 16; ++i) m.M[i] = seed + static_cast<float>(i);
    m.flag = false;
    return m;
}

static Matrix makeIdentity() {
    Matrix m{};
    m.M[0] = m.M[5] = m.M[10] = m.M[15] = 1.0f;
    m.flag = true;
    return m;
}

static bool sameValues(const Matrix& a, const Matrix& b) {
    for (int i = 0; i < 16; ++i) if (a.M[i] != b.M[i]) return false;
    return a.flag == b.flag;
}

int main() {
    // Table: entry 0 is a matrix array of two at value offset 0; entry 1 is an int (type 1).
    SParameterEntry entries[2];
    entries[0].type = 11;
    entries[0].count = 2;
    entries[0].valueOffset = 0;
    entries[1].type = 1;
    entries[1].count = 1;
    entries[1].valueOffset = 8;

    // CMaterialRenderer: the table is inline.
    Renderer r;
    r.headerForTest().count = 2;
    r.headerForTest().entries = entries;
    CHECK(r.getParameterDef(0) == &entries[0]);
    CHECK(r.getParameterDef(2) == nullptr);

    // Unset slots read as identity.
    Matrix got{};
    CHECK(r.getParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(1), got));
    CHECK(sameValues(got, makeIdentity()));

    // Indexed set and get round trip; the other index stays identity.
    Matrix a = makeMatrix(1.0f);
    CHECK(r.setParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(0), a));
    CHECK(r.getParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(0), got));
    CHECK(sameValues(got, a));
    CHECK(r.getParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(1), got));
    CHECK(sameValues(got, makeIdentity()));

    // Out-of-range index and a non-matrix entry are refused.
    CHECK(!r.getParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(2), got));
    CHECK(!r.setParameter(static_cast<uint16_t>(1), static_cast<uint32_t>(0), a));

    // Whole-entry read (count 2) through the strided form, with stride 0 meaning 68 bytes.
    Matrix pair[2];
    r.setParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(1), makeMatrix(5.0f));
    CHECK(r.getParameter(static_cast<uint16_t>(0), pair, 0));
    CHECK(sameValues(pair[0], a));
    CHECK(sameValues(pair[1], makeMatrix(5.0f)));

    // Setting an identity flagged matrix leaves the slot null, so it reads as identity.
    Matrix id = makeIdentity();
    CHECK(r.setParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(0), id));
    CHECK(r.getParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(0), got));
    CHECK(sameValues(got, makeIdentity()));

    // CMaterial: a block pointer, and every matrix set marks both dirty words.
    SParameterBlockHeader block;
    block.count = 2;
    block.entries = entries;
    Material m;
    m.setBlockForTest(&block);
    CHECK(m.getParameterDef(1) == &entries[1]);
    CHECK(m.dirtyWord0() == 0 && m.dirtyWord1() == 0);
    Matrix b = makeMatrix(9.0f);
    CHECK(m.setParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(1), b));
    CHECK(m.dirtyWord0() == 0xffffffffu && m.dirtyWord1() == 0xffffffffu);
    CHECK(m.getParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(1), got));
    CHECK(sameValues(got, b));

    // A set on a non-matrix entry is refused and marks nothing.
    Material clean;
    clean.setBlockForTest(&block);
    CHECK(!clean.setParameter(static_cast<uint16_t>(1), static_cast<uint32_t>(0), b));
    CHECK(clean.dirtyWord0() == 0 && clean.dirtyWord1() == 0);

    // A CMaterial with no block refuses every lookup.
    Material none;
    CHECK(none.getParameterDef(0) == nullptr);
    CHECK(!none.getParameter(static_cast<uint16_t>(0), static_cast<uint32_t>(0), got));

    if (failures == 0) std::printf("material_matrix_parameters_test: OK\n");
    return failures == 0 ? 0 : 1;
}
