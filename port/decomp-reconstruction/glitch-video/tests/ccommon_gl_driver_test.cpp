// Render-state setters of CCommonGLDriver. GL calls go through the function
// table in deps/gl_function_table.hpp; this test records them.
#include "glitch-video/ccommon_gl_driver.hpp"
#include "glitch-video/programmable_gl_driver.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/texture.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;

namespace {
int g_enable = 0, g_disable = 0, g_depthMask = 0, g_lineWidth = 0, g_clearDepth = 0;
int g_depthRange = 0, g_polygonOffset = 0, g_sampleCoverage = 0, g_colorMask = 0;
int g_blendColor = 0, g_clearColor = 0, g_stencilMask = 0, g_clearStencil = 0;
uint32_t g_lastCap = 0;
float g_lastF[4] = {0, 0, 0, 0};
uint8_t g_lastMask[4] = {0, 0, 0, 0};

void resetRecorders() {
    g_enable = g_disable = g_depthMask = g_lineWidth = g_clearDepth = 0;
    g_depthRange = g_polygonOffset = g_sampleCoverage = g_colorMask = 0;
    g_blendColor = g_clearColor = g_stencilMask = g_clearStencil = 0;
    g_lastCap = 0;
}

void installRecorders() {
    auto& t = glitch::video::deps::activeGLFunctionTable();
    t.enable = [](uint32_t cap) { ++g_enable; g_lastCap = cap; };
    t.disable = [](uint32_t cap) { ++g_disable; g_lastCap = cap; };
    t.depthMask = [](uint8_t f) { ++g_depthMask; g_lastMask[0] = f; };
    t.lineWidth = [](float w) { ++g_lineWidth; g_lastF[0] = w; };
    t.clearDepthf = [](float d) { ++g_clearDepth; g_lastF[0] = d; };
    t.depthRangef = [](float n, float f) { ++g_depthRange; g_lastF[0] = n; g_lastF[1] = f; };
    t.polygonOffset = [](float a, float b) { ++g_polygonOffset; g_lastF[0] = a; g_lastF[1] = b; };
    t.sampleCoverage = [](float v, uint8_t inv) { ++g_sampleCoverage; g_lastF[0] = v; g_lastMask[0] = inv; };
    t.colorMask = [](uint8_t r, uint8_t g, uint8_t b, uint8_t a) {
        ++g_colorMask;
        g_lastMask[0] = r; g_lastMask[1] = g; g_lastMask[2] = b; g_lastMask[3] = a;
    };
    t.blendColor = [](float r, float g, float b, float a) {
        ++g_blendColor;
        g_lastF[0] = r; g_lastF[1] = g; g_lastF[2] = b; g_lastF[3] = a;
    };
    t.clearColor = [](float r, float g, float b, float a) {
        ++g_clearColor;
        g_lastF[0] = r; g_lastF[1] = g; g_lastF[2] = b; g_lastF[3] = a;
    };
    t.stencilMask = [](uint32_t m) { ++g_stencilMask; g_lastMask[0] = static_cast<uint8_t>(m); };
    t.clearStencil = [](int32_t s) { ++g_clearStencil; g_lastMask[0] = static_cast<uint8_t>(s); };
}

// Counts the flush hook (vtable +0x1fc in the original) and the present hook.
class TestDriver : public CProgrammableGLDriver {
public:
    int flushes = 0;
    int presents = 0;
    void flush() override { ++flushes; }
    bool swapBuffersImpl(int32_t) override { ++presents; return true; }
};
}  // namespace

int main() {
    installRecorders();
    TestDriver d;

    // The constructor defaults are the binary's (SShadowRenderState 0x6dcac0): depth test and depth mask on, depth function 3,
    // stencil function 7 with mask 0xff, all colour channels on, clear colour opaque black, unit clear depth / line width /
    // point size / polygon-offset units / sample-coverage value.
    CHECK(d.getDepthTestEnable() && d.getDepthMask() && d.getDepthFunc() == 3);
    CHECK(!d.getBlendEnable() && !d.getCullFaceEnable() && !d.getDitherEnable() && !d.getScissorEnable());
    CHECK(d.getStencilFunc() == 7 && d.getStencilFuncRef(nullptr) == 0 && d.getStencilFuncMask(nullptr) == 0xff);
    CHECK(d.getStencilMask(nullptr) == 0xff && d.getClearStencil() == 0);
    CHECK(d.getColorMaskBits() == 0x01010101u);
    CHECK(d.getClearColor().color == 0xff000000u && d.getBlendColor().color == 0);
    CHECK(d.getClearDepth() == 1.0f && d.getLineWidth() == 1.0f && d.getPointSize() == 1.0f);
    CHECK(d.getSampleCoverageValue() == 1.0f);
    CHECK(d.getColorFormat() == 10);

    // Capability setters: enable on the first change, nothing when unchanged.
    resetRecorders();
    d.setBlendEnable(true);
    CHECK(g_enable == 1 && g_lastCap == 0xbe2);
    CHECK(d.flushes == 1);
    d.setBlendEnable(true);                  // unchanged: no flush, no GL call
    CHECK(g_enable == 1 && d.flushes == 1);
    d.setBlendEnable(false);
    CHECK(g_disable == 1 && g_lastCap == 0xbe2 && d.flushes == 2);
    CHECK(d.getBlendEnable() == false);

    // Each capability setter maps to its own GL cap and state byte.
    d.setStencilTestEnable(true);
    CHECK(g_lastCap == 0xb90 && d.getStencilTestEnable());
    d.setScissorEnable(true);
    CHECK(g_lastCap == 0xc11 && d.getScissorEnable());
    d.setSampleCoverageEnable(true);
    CHECK(g_lastCap == 0x80a0 && d.getSampleCoverageEnable());
    d.setDepthTestEnable(false);  // on by default
    CHECK(g_lastCap == 0xb71 && !d.getDepthTestEnable());

    // Depth mask, line width, point size.
    resetRecorders();
    d.setDepthMask(true);                // cached default is true: no GL call
    CHECK(g_depthMask == 0);
    d.setDepthMask(false);
    CHECK(g_depthMask == 1 && d.getDepthMask() == false);
    d.setDepthMask(false);
    CHECK(g_depthMask == 1);
    d.setLineWidth(2.5f);
    CHECK(g_lineWidth == 1 && d.getLineWidth() == 2.5f);
    d.setPointSize(4.0f);
    CHECK(d.getPointSize() == 4.0f && g_lineWidth == 1);

    // Clear depth: the original never stores the cached value, so an equal
    // second call still reaches glClearDepthf.
    resetRecorders();
    d.setClearDepth(0.5f);
    CHECK(g_clearDepth == 1);
    d.setClearDepth(0.5f);
    CHECK(g_clearDepth == 2);
    CHECK(d.getClearDepth() == 1.0f);

    // Depth range stores both ends and is skipped when both are unchanged.
    resetRecorders();
    d.setDepthRange(0.25f, 0.75f);
    CHECK(g_depthRange == 1 && g_lastF[0] == 0.25f && g_lastF[1] == 0.75f);
    float nearValue = 0, farValue = 0;
    d.getDepthRange(nearValue, farValue);
    CHECK(nearValue == 0.25f && farValue == 0.75f);
    d.setDepthRange(0.25f, 0.75f);
    CHECK(g_depthRange == 1);

    // Polygon offset: factor and units.
    resetRecorders();
    d.setPolygonOffset(1.0f, 2.0f);
    CHECK(g_polygonOffset == 1 && g_lastF[0] == 1.0f && g_lastF[1] == 2.0f);
    float factor = 0, units = 0;
    d.getPolygonOffset(factor, units);
    CHECK(factor == 1.0f && units == 2.0f);

    // Sample coverage: the value and the invert flag feed the same GL call.
    resetRecorders();
    d.setSampleCoverageInvert(true);
    CHECK(g_sampleCoverage == 1 && g_lastMask[0] == 1);
    d.setSampleCoverageValue(0.5f);
    CHECK(g_sampleCoverage == 2 && g_lastF[0] == 0.5f && g_lastMask[0] == 1);

    // Stencil and clear stencil bytes.
    resetRecorders();
    d.setStencilMask(0x7f);
    CHECK(g_stencilMask == 1 && g_lastMask[0] == 0x7f);
    d.setClearStencil(3);
    CHECK(g_clearStencil == 1 && g_lastMask[0] == 3);

    // Colour mask packs R, G, B, A into bytes 0..3.
    resetRecorders();
    d.setColorMask(true, false, true, true);
    CHECK(g_colorMask == 1);
    CHECK(d.getColorMaskBits() == 0x01010001u);
    CHECK(g_lastMask[0] == 1 && g_lastMask[1] == 0 && g_lastMask[2] == 1 && g_lastMask[3] == 1);
    d.setColorMask(true, false, true, true);
    CHECK(g_colorMask == 1);

    // Blend colour: each byte is divided by 255 (0xff -> 1.0).
    resetRecorders();
    d.setBlendColor(SColor{0xff00ff80u});
    CHECK(g_blendColor == 1);
    // Byte order: 0x80 red, 0xff green, 0x00 blue, 0xff alpha.
    CHECK(g_lastF[0] == static_cast<float>(0x80) * (1.0f / 255.0f));
    CHECK(g_lastF[1] == 1.0f && g_lastF[2] == 0.0f && g_lastF[3] == 1.0f);
    d.setBlendColor(SColor{0xff00ff80u});
    CHECK(g_blendColor == 1);

    // Clear colour: separate cache, same conversion.
    resetRecorders();
    d.setClearColor(SColor{0x00ff0000u});
    CHECK(g_clearColor == 1 && g_lastF[2] == 1.0f && g_lastF[0] == 0.0f);

    // Polygon modes and the blend, cull, depth, stencil cache-only setters.
    d.setPolygonModeFront(3);
    CHECK(d.getPolygonModeFront() == 3);
    d.setPolygonModeBack(2);
    CHECK(d.getPolygonModeBack() == 2);
    d.setBlendFunc(6, 7);
    E_BLEND_FACTOR src = 0, dst = 0;
    d.getBlendFunc(src, dst);
    CHECK(src == 6 && dst == 7);
    d.setBlendEquation(4);
    CHECK(d.getBlendEquation() == 4);
    d.setCullFace(1);
    CHECK(d.getCullFace() == 1);
    d.setDepthFunc(5);
    CHECK(d.getDepthFunc() == 5);
    d.setStencilOpFail(2);
    d.setStencilOpZFail(3);
    d.setStencilOpZPass(4);
    CHECK(d.getStencilOpFail() == 2 && d.getStencilOpZFail() == 3 && d.getStencilOpZPass() == 4);

    // Front face: a flip byte inverts the value used for the GL call (not stored).
    d.setFrontFace(1);
    CHECK(d.getFrontFace() == 1);

    // Empty setters and the constants.
    d.setPolygonOffsetLineEnable(true);
    d.setPolygonOffsetPointEnable(true);
    CHECK(d.getPolygonOffsetLineEnable() == false && d.getPolygonOffsetPointEnable() == false);
    CHECK(d.getMaximalPrimitiveCount() == 0xffff);
    CHECK(d.captureFramebufferImpl(boost::intrusive_ptr<ITexture>(), glitch::core::position2d<int32_t>(),
                                   glitch::core::rect<int32_t>(), 0, 0, false) == false);

    // Buffer swap runs the presentation hook once.
    d.swapBuffers(0);
    CHECK(d.presents == 1);

    // The setters translate the engine enumerators through the original's GL enum tables (0x8e0e3c ...). The recorders keep the last
    // arguments.
    {
        static uint32_t blend[2], equation, cull, depthFunc, frontFace, stencilFunc[3], stencilOp[3];
        static int calls;
        auto& t = glitch::video::deps::activeGLFunctionTable();
        t.blendFunc = [](uint32_t s, uint32_t dd) { blend[0] = s; blend[1] = dd; ++calls; };
        t.blendEquation = [](uint32_t m) { equation = m; ++calls; };
        t.cullFace = [](uint32_t m) { cull = m; ++calls; };
        t.depthFunc = [](uint32_t m) { depthFunc = m; ++calls; };
        t.frontFace = [](uint32_t m) { frontFace = m; ++calls; };
        t.stencilFunc = [](uint32_t f, int32_t r, uint32_t m) { stencilFunc[0] = f; stencilFunc[1] = static_cast<uint32_t>(r); stencilFunc[2] = m; ++calls; };
        t.stencilOp = [](uint32_t a, uint32_t b, uint32_t c) { stencilOp[0] = a; stencilOp[1] = b; stencilOp[2] = c; ++calls; };
        TestDriver m;
        m.setBlendFunc(2, 9);  // SRC_COLOR index 2 = GL_SRC_COLOR (0x300)... BlendFactorMap[2] = 0x300, [9] = 0x305
        CHECK(blend[0] == 0x300 && blend[1] == 0x305);
        m.setBlendEquation(3);
        CHECK(equation == 0x8007);
        m.setCullFace(1);
        CHECK(cull == 0x404);
        m.setDepthFunc(5);  // 3 is the default
        CHECK(depthFunc == 0x205);
        m.setFrontFace(1);
        CHECK(frontFace == 0x900);
        m.setStencilFuncRef(5);
        CHECK(stencilFunc[0] == 0x207 && stencilFunc[1] == 5 && stencilFunc[2] == 0xff);  // default function 7, mask 0xff
        m.setStencilFuncMask(0x0f);
        CHECK(stencilFunc[1] == 5 && stencilFunc[2] == 0x0f);
        m.setStencilFunc(1);
        CHECK(stencilFunc[0] == 0x201 && stencilFunc[1] == 5 && stencilFunc[2] == 0x0f);
        m.setStencilOpFail(4);
        CHECK(stencilOp[0] == 0x8507 && stencilOp[1] == 0x1e00 && stencilOp[2] == 0x1e00);
        m.setStencilOpZFail(7);
        CHECK(stencilOp[0] == 0x8507 && stencilOp[1] == 0x150a);
        m.setStencilOpZPass(2);
        CHECK(stencilOp[2] == 0x1e01);
        CHECK(calls == 11);
        t.blendFunc = nullptr;
        t.blendEquation = nullptr;
        t.cullFace = nullptr;
        t.depthFunc = nullptr;
        t.frontFace = nullptr;
        t.stencilFunc = nullptr;
        t.stencilOp = nullptr;
    }

    if (failures == 0) {
        std::printf("ccommon_gl_driver_test: all checks passed\n");
        return 0;
    }
    std::printf("ccommon_gl_driver_test: %d failure(s)\n", failures);
    return 1;
}
