// Test for src/vertex_transform.cpp: the STransform*Component fold (setConvertType) and the copyComponent family (0x608874 .. 0x609910).
// Build and run with:
//   bash tools/trackb/check_tu.sh --test <this file> glitch-core-io/src/vertex_transform.cpp glitch-core-io/src/tb_core-io-glitch_core_CMatrix4_float-0.cpp
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "glitch-core-io/core/vertex_transform.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::core;

namespace {

bool near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

CMatrix4<float> identity(bool flag) {
    CMatrix4<float> m{};
    m.M[0] = m.M[5] = m.M[10] = m.M[15] = 1.0f;
    m.flag = flag;
    return m;
}

void testPositionShortMatrix() {
    CMatrix4<float> m = identity(false);
    m.M[12] = 10.0f;  // translation x
    m.M[0] = 2.0f;    // x scale
    const STransformPositionComponent component(m, nullptr, nullptr);
    const vector3d<std::int16_t> in[2] = {{1, 2, 3}, {4, 5, 6}};
    vector3d<float> out[3] = {};
    vector3d<float>* end = copyComponent<vector3d<float>, vector3d<std::int16_t>, STransformPositionComponent>(
        out, sizeof(vector3d<float>), in, sizeof(vector3d<std::int16_t>), 2, component);
    CHECK(near(out[0].X, 12.0f) && near(out[0].Y, 2.0f) && near(out[0].Z, 3.0f));
    CHECK(near(out[1].X, 18.0f) && near(out[1].Y, 5.0f) && near(out[1].Z, 6.0f));
    CHECK(end == out + 2);
    // A count of zero changes nothing and returns the destination.
    CHECK((copyComponent<vector3d<float>, vector3d<std::int16_t>, STransformPositionComponent>(out, 12, in, 6, 0, component)) == out);
}

void testPositionShortQuantized() {
    const vector3d<float> scale = {0.5f, 2.0f, 1.0f};
    const vector3d<float> offset = {1.0f, 1.0f, -1.0f};
    const STransformPositionComponent component(identity(true), &scale, &offset);
    const vector3d<std::int16_t> in[1] = {{4, 3, 2}};
    vector3d<float> out[1] = {};
    copyComponent<vector3d<float>, vector3d<std::int16_t>, STransformPositionComponent>(out, 12, in, 6, 1, component);
    CHECK(near(out[0].X, 3.0f) && near(out[0].Y, 7.0f) && near(out[0].Z, 1.0f));
    // No scale and no offset: the plain conversion.
    const STransformPositionComponent plain(identity(true), nullptr, nullptr);
    copyComponent<vector3d<float>, vector3d<std::int16_t>, STransformPositionComponent>(out, 12, in, 6, 1, plain);
    CHECK(near(out[0].X, 4.0f) && near(out[0].Y, 3.0f) && near(out[0].Z, 2.0f));
}

void testPositionFold() {
    // setConvertType folds the quantization into a non-identity matrix: M * (q * scale + offset) == (M with scaled columns, translation + M * offset) * q.
    CMatrix4<float> m = identity(false);
    m.M[12] = 5.0f;
    const vector3d<float> scale = {2.0f, 2.0f, 2.0f};
    const vector3d<float> offset = {1.0f, 0.0f, 0.0f};
    STransformPositionComponent component(m, &scale, &offset);
    const vector3d<std::int16_t> in[1] = {{3, 0, 0}};
    vector3d<float> out[1] = {};
    unsigned char bytes[6];
    std::memcpy(bytes, in, 6);
    copyComponentSF<vector3d<float>, STransformPositionComponent>(out, 12, bytes, 6, glitch::video::EVAVT_SHORT, 1, component);
    CHECK(near(out[0].X, 5.0f + (3.0f * 2.0f + 1.0f)));
    // Float positions: copied under the identity flag, through the matrix otherwise.
    const vector3d<float> floats[1] = {{1.0f, 2.0f, 3.0f}};
    STransformPositionComponent copyOnly(identity(true), nullptr, nullptr);
    copyComponentSF<vector3d<float>, STransformPositionComponent>(out, 12, reinterpret_cast<const unsigned char*>(floats), 12,
                                                                  glitch::video::EVAVT_FLOAT, 1, copyOnly);
    CHECK(near(out[0].X, 1.0f) && near(out[0].Y, 2.0f) && near(out[0].Z, 3.0f));
    // Any other stored type leaves the destination untouched.
    out[0].X = 99.0f;
    copyComponentSF<vector3d<float>, STransformPositionComponent>(out, 12, bytes, 6, glitch::video::EVAVT_UBYTE, 1, copyOnly);
    CHECK(out[0].X == 99.0f);
}

void testTexCoord() {
    CMatrix4<float> m = identity(false);
    m.M[8] = 0.25f;
    const STransformTexCoordComponent component(m, nullptr, nullptr);
    const vector2d<std::int16_t> in[1] = {{1, 2}};
    vector2d<float> out[1] = {};
    copyComponent<vector2d<float>, vector2d<std::int16_t>, STransformTexCoordComponent>(out, 8, in, 4, 1, component);
    CHECK(near(out[0].X, 1.25f) && near(out[0].Y, 2.0f));
    const vector3d<float> scale = {0.5f, 0.5f, 0.0f};
    const vector3d<float> offset = {0.1f, 0.2f, 0.0f};
    const STransformTexCoordComponent quantized(identity(true), &scale, &offset);
    copyComponent<vector2d<float>, vector2d<std::int16_t>, STransformTexCoordComponent>(out, 8, in, 4, 1, quantized);
    CHECK(near(out[0].X, 0.6f) && near(out[0].Y, 1.2f));
}

void testNormals() {
    const STransformNormalComponent flagged(identity(true));
    const vector3d<char> bytes[1] = {{127, 0, -127}};
    vector3d<float> out[1] = {};
    copyComponent<vector3d<float>, vector3d<char>, STransformNormalComponent>(out, 12, bytes, 3, 1, flagged);
    CHECK(near(out[0].X, 1.0f) && near(out[0].Y, 0.0f) && near(out[0].Z, -1.0f));
    const vector3d<std::int16_t> shorts[1] = {{32767, 0, -32767}};
    copyComponent<vector3d<float>, vector3d<std::int16_t>, STransformNormalComponent>(out, 12, shorts, 6, 1, flagged);
    CHECK(near(out[0].X, 1.0f) && near(out[0].Z, -1.0f));
    // BSF: a short stream first scales the component's matrix by the normalisation, then converts through the matrix.
    CMatrix4<float> m = identity(false);
    STransformNormalComponent component(m);
    copyComponentBSF<vector3d<float>, STransformNormalComponent>(out, 12, reinterpret_cast<const unsigned char*>(shorts), 6,
                                                                glitch::video::EVAVT_SHORT, 1, component);
    CHECK(near(out[0].X, 1.0f) && near(out[0].Z, -1.0f));
    STransformNormalComponent byteComponent(m);  // the short call scaled the first component's matrix in place
    copyComponentBSF<vector3d<float>, STransformNormalComponent>(out, 12, reinterpret_cast<const unsigned char*>(bytes), 3,
                                                                glitch::video::EVAVT_BYTE, 1, byteComponent);
    CHECK(near(out[0].X, 1.0f) && near(out[0].Z, -1.0f));
}

}  // namespace

int main() {
    testPositionShortMatrix();
    testPositionShortQuantized();
    testPositionFold();
    testTexCoord();
    testNormals();
    std::printf("%s\n", failures ? "vertex_transform_test: FAILED" : "vertex_transform_test: all checks passed");
    return failures ? 1 : 0;
}
