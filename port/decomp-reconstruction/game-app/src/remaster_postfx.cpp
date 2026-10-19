// Port addition (remaster, not in the binary; REMASTER.md "Post-processing"): screen-space ambient occlusion, bloom and a
// filmic tone curve for the 3D view.
//
// Application::Draw calls Dh2PostFx right after the scene manager has drawn the level (scene->drawAll) and before the state
// machine, the GUI and the menus draw their 2D layers, so the HUD and menus are never touched. The game keeps rendering into
// the window's (multisampled) framebuffer exactly as before; this pass then
//   1. resolves colour and depth into textures (glBlitFramebuffer, ES 3.0),
//   2. ambient occlusion at half resolution from the depth: view-space position from the D3D-style projection the engine
//      builds (z = M14 / (M11 * ndc - M10), depth range 0..0.8 of Application::Draw), normal from its derivatives, 12
//      samples in a hemisphere-ish spiral, then a depth-aware blur,
//   3. bloom: bright pass at half resolution, Gaussian blur at quarter resolution (two passes),
//   4. composite over the 3D area: colour * AO + bloom, a gentle filmic curve, a light saturation lift and a soft vignette.
// Depth is left in the window framebuffer, so anything drawn later still tests against the level.
// Raw GL calls go through the port's GL table plus two ES 3.0 entry points looked up at run time; afterwards the driver's
// shadow state is re-applied (restoreShadowState) and the few bindings it does not track are restored by hand.
// Port settings (percent, 0 = off): postfx (100: master switch), ao (100), bloom (100), tonemap (100). Needs an OpenGL ES 3
// context; without one (or if any step fails) the pass switches itself off and the frame is the original's.
#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/port_settings.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/video_driver.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"

#ifdef __ANDROID__
#include <EGL/egl.h>
#include <android/log.h>
#define DH2FX_LOG(...) __android_log_print(ANDROID_LOG_INFO, "DH2GLINFO", __VA_ARGS__)
#else
#define DH2FX_LOG(...) (std::fprintf(stdout, __VA_ARGS__), std::fputc('\n', stdout))
#endif

// Set by the platform layer when eglGetProcAddress is not the way to reach ES 3.0 entry points (the Windows runner loads
// ANGLE's libGLESv2 at run time and points this at GetProcAddress on it).
void* (*g_dh2GLGetProc)(const char* name) = nullptr;

namespace {

using glitch::video::deps::activeGLFunctionTable;

typedef void (*PFBlit)(int32_t, int32_t, int32_t, int32_t, int32_t, int32_t, int32_t, int32_t, uint32_t, uint32_t);
PFBlit s_blit = nullptr;
typedef void (*PFDeleteFbos)(int32_t, const uint32_t*);
PFDeleteFbos s_deleteFbos = nullptr;

constexpr uint32_t GL_TEXTURE_2D_ = 0x0DE1, GL_FRAMEBUFFER_ = 0x8D40, GL_READ_FRAMEBUFFER_ = 0x8CA8, GL_DRAW_FRAMEBUFFER_ = 0x8CA9;
constexpr uint32_t GL_COLOR_ATTACHMENT0_ = 0x8CE0, GL_DEPTH_STENCIL_ATTACHMENT_ = 0x821A, GL_FRAMEBUFFER_COMPLETE_ = 0x8CD5;
constexpr uint32_t GL_RGBA_ = 0x1908, GL_RGBA8_ = 0x8058, GL_UNSIGNED_BYTE_ = 0x1401, GL_DEPTH24_STENCIL8_ = 0x88F0;
constexpr uint32_t GL_DEPTH_STENCIL_ = 0x84F9, GL_UNSIGNED_INT_24_8_ = 0x84FA, GL_NEAREST_ = 0x2600, GL_LINEAR_ = 0x2601;
constexpr uint32_t GL_CLAMP_TO_EDGE_ = 0x812F, GL_COLOR_BUFFER_BIT_ = 0x4000, GL_DEPTH_BUFFER_BIT_ = 0x100;
constexpr uint32_t GL_ARRAY_BUFFER_ = 0x8892, GL_STATIC_DRAW_ = 0x88E4, GL_FLOAT_ = 0x1406, GL_TRIANGLE_STRIP_ = 5;
constexpr uint32_t GL_VERTEX_SHADER_ = 0x8B31, GL_FRAGMENT_SHADER_ = 0x8B30, GL_COMPILE_STATUS_ = 0x8B81, GL_LINK_STATUS_ = 0x8B82;
constexpr uint32_t GL_TEXTURE0_ = 0x84C0, GL_ACTIVE_TEXTURE_ = 0x84E0, GL_VIEWPORT_ = 0x0BA2, GL_FRAMEBUFFER_BINDING_ = 0x8CA6;
constexpr uint32_t GL_BLEND_ = 0x0BE2, GL_DEPTH_TEST_ = 0x0B71, GL_CULL_FACE_ = 0x0B44, GL_SCISSOR_TEST_ = 0x0C11;
constexpr uint32_t GL_STENCIL_TEST_ = 0x0B90, GL_SAMPLE_ALPHA_TO_COVERAGE_ = 0x809E, GL_TEXTURE_BINDING_2D_ = 0x8069;

const char* kVS = R"(
attribute vec2 aPos;
varying vec2 vUv;
void main() { vUv = aPos * 0.5 + 0.5; gl_Position = vec4(aPos, 0.0, 1.0); }
)";

// Linear view distance from window depth; the engine's projection is D3D-style (M11 = 1, M15 = 0).
const char* kDepthFn = R"(
uniform sampler2D uDepth;
uniform vec4 uProj;    // M10, M11, M14, 1 / depth-range far
uniform vec2 uFocal;   // M0, M5
float viewZ(vec2 uv) {
    float ndc = texture2D(uDepth, uv).r * uProj.w * 2.0 - 1.0;
    return uProj.z / (uProj.y * ndc - uProj.x);
}
vec3 viewPos(vec2 uv) {
    float z = viewZ(uv);
    return vec3((uv * 2.0 - 1.0) / uFocal * z, z);
}
)";

const char* kAoFS = R"(
#extension GL_OES_standard_derivatives : enable
precision highp float;
varying vec2 vUv;
)"
                    "%DEPTH%"
                    R"(
uniform vec2 uTexel;     // 1 / full-resolution size
uniform float uRadius;   // world units
uniform float uFar;      // camera far: sky and background get no occlusion
void main() {
    vec3 p = viewPos(vUv);
    if (p.z > uFar * 0.95) { gl_FragColor = vec4(1.0); return; }
    // the surface normal from the neighbours on the side with the smaller depth step: dFdx / dFdy straddle the triangle
    // edges, where they mix two surfaces and gave a wrong normal along every edge of a low-poly floor (dark lines)
    vec3 pl = viewPos(vUv - vec2(uTexel.x * 2.0, 0.0)), pr = viewPos(vUv + vec2(uTexel.x * 2.0, 0.0));
    vec3 pd = viewPos(vUv - vec2(0.0, uTexel.y * 2.0)), pu = viewPos(vUv + vec2(0.0, uTexel.y * 2.0));
    vec3 dx = abs(pr.z - p.z) < abs(p.z - pl.z) ? pr - p : p - pl;
    vec3 dy = abs(pu.z - p.z) < abs(p.z - pd.z) ? pu - p : p - pd;
    vec3 n = normalize(cross(dx, dy));
    if (dot(n, -p) < 0.0) n = -n;  // facing the camera
    // screen radius of uRadius at this depth
    vec2 rad = uRadius * uFocal * 0.5 / p.z;
    float ang = fract(sin(dot(gl_FragCoord.xy, vec2(12.9898, 78.233))) * 43758.5453) * 6.2831853;
    float occ = 0.0;
    for (int i = 0; i < 12; i++) {
        float t = (float(i) + 0.5) / 12.0;
        float a = ang + float(i) * 2.3999632;  // golden angle spiral
        vec2 uv = vUv + vec2(cos(a), sin(a)) * rad * t;
        vec3 q = viewPos(uv);
        vec3 d = q - p;
        float dist = length(d);
        // only real corners occlude: a neighbour more than ~25 degrees above the surface plane. The normal comes from depth
        // derivatives and is flat per triangle, so the gentle folds between the triangles of a low-poly floor must not count
        // (with a small bias they drew grey lines along every fold)
        float facing = max(dot(n, d / max(dist, 1e-4)) - 0.42, 0.0);
        occ += facing * (1.0 - smoothstep(uRadius * 0.6, uRadius * 1.6, dist));
    }
    float ao = clamp(1.0 - occ / 12.0 * 3.4, 0.0, 1.0);
    gl_FragColor = vec4(ao, ao, ao, 1.0);
}
)";

const char* kAoBlurFS = R"(
precision highp float;
varying vec2 vUv;
)"
                        "%DEPTH%"
                        R"(
uniform sampler2D uAo;
uniform vec2 uStep;   // one texel of the AO target along the blur direction
void main() {
    float z0 = viewZ(vUv);
    float sum = 0.0, wsum = 0.0;
    for (int i = -3; i <= 3; i++) {
        vec2 uv = vUv + uStep * float(i);
        float w = exp(-float(i * i) / 8.0) * (1.0 / (1.0 + abs(viewZ(uv) - z0) * 4.0 / max(z0 * 0.02, 1.0)));
        sum += texture2D(uAo, uv).r * w;
        wsum += w;
    }
    float ao = sum / wsum;
    gl_FragColor = vec4(ao, ao, ao, 1.0);
}
)";

const char* kBrightFS = R"(
precision mediump float;
varying vec2 vUv;
uniform sampler2D uScene;
uniform vec2 uTexel;
void main() {
    // 4 taps (a 2x2 box at half resolution) then a soft knee above 0.72
    vec3 c = (texture2D(uScene, vUv + uTexel * vec2(-0.5, -0.5)).rgb + texture2D(uScene, vUv + uTexel * vec2(0.5, -0.5)).rgb +
              texture2D(uScene, vUv + uTexel * vec2(-0.5, 0.5)).rgb + texture2D(uScene, vUv + uTexel * vec2(0.5, 0.5)).rgb) * 0.25;
    float l = max(c.r, max(c.g, c.b));
    float k = clamp((l - 0.96) / 0.04, 0.0, 1.0);
    gl_FragColor = vec4(c * k * k, 1.0);
}
)";

const char* kBlurFS = R"(
precision mediump float;
varying vec2 vUv;
uniform sampler2D uSrc;
uniform vec2 uStep;
void main() {
    vec3 c = texture2D(uSrc, vUv).rgb * 0.227027;
    c += (texture2D(uSrc, vUv + uStep * 1.384615).rgb + texture2D(uSrc, vUv - uStep * 1.384615).rgb) * 0.316216;
    c += (texture2D(uSrc, vUv + uStep * 3.230769).rgb + texture2D(uSrc, vUv - uStep * 3.230769).rgb) * 0.070270;
    gl_FragColor = vec4(c, 1.0);
}
)";

const char* kCompositeFS = R"(
precision mediump float;
varying vec2 vUv;
uniform sampler2D uScene;
uniform sampler2D uAo;
uniform sampler2D uBloom;
uniform vec3 uAmount;   // ao, bloom, tone (0..1+)
uniform float uDebug;   // 1: show the ambient occlusion buffer (runner DH2_FX_DEBUG)
void main() {
    vec3 c = texture2D(uScene, vUv).rgb;
    float ao = texture2D(uAo, vUv).r;
    if (uDebug > 0.5) { gl_FragColor = vec4(vec3(ao), 1.0); return; }
    c *= mix(1.0, ao, uAmount.x * 0.75);
    c += texture2D(uBloom, vUv).rgb * 0.18 * uAmount.y;
    // the input is the game's display-range image, so no HDR curve: a mild contrast S-curve around mid-grey (keeps the average
    // brightness), a light saturation lift and a soft vignette
    c = clamp(c, 0.0, 1.0);
    vec3 f = mix(c, c * c * (3.0 - 2.0 * c), 0.2);
    float l = dot(f, vec3(0.299, 0.587, 0.114));
    f = clamp(mix(vec3(l), f, 1.1), 0.0, 1.0);
    vec2 v = vUv - 0.5;
    f *= 1.0 - dot(v, v) * 0.12;
    gl_FragColor = vec4(mix(c, f, uAmount.z), 1.0);
}
)";

struct Target {
    uint32_t fbo = 0, tex = 0;
    int w = 0, h = 0;
};

struct Program {
    uint32_t id = 0;
    int pos = -1;
};

bool s_failed = false;
bool s_windowRgb = false;  // the window framebuffer has no alpha bits
bool s_ready = false;
int s_w = 0, s_h = 0;
uint32_t s_quad = 0;
Target s_scene, s_ao, s_aoTmp, s_bright, s_blurA, s_blurB;
uint32_t s_depthTex = 0;
Program s_pAo, s_pAoBlur, s_pBright, s_pBlur, s_pComposite;

void* proc(const char* name) {
    if (g_dh2GLGetProc != nullptr) return g_dh2GLGetProc(name);
#ifdef __ANDROID__
    return reinterpret_cast<void*>(eglGetProcAddress(name));
#else
    return nullptr;
#endif
}

uint32_t compile(uint32_t type, const std::string& src) {
    auto& gl = activeGLFunctionTable();
    const uint32_t s = gl.createShader(type);
    const char* p = src.c_str();
    gl.shaderSource(s, 1, &p, nullptr);
    gl.compileShader(s);
    int ok = 0;
    gl.getShaderiv(s, GL_COMPILE_STATUS_, &ok);
    if (!ok) {
        char log[1024] = {0};
        gl.getShaderInfoLog(s, sizeof log, nullptr, log);
        DH2FX_LOG("[remaster] postfx shader compile failed: %s", log);
        gl.deleteShader(s);
        return 0;
    }
    return s;
}

bool link(Program& prog, const char* fs) {
    auto& gl = activeGLFunctionTable();
    std::string f = fs;
    const std::size_t at = f.find("%DEPTH%");
    if (at != std::string::npos) f.replace(at, 7, kDepthFn);
    const uint32_t v = compile(GL_VERTEX_SHADER_, kVS);
    const uint32_t s = compile(GL_FRAGMENT_SHADER_, f);
    if (v == 0 || s == 0) return false;
    prog.id = gl.createProgram();
    gl.attachShader(prog.id, v);
    gl.attachShader(prog.id, s);
    gl.linkProgram(prog.id);
    gl.deleteShader(v);
    gl.deleteShader(s);
    int ok = 0;
    gl.getProgramiv(prog.id, GL_LINK_STATUS_, &ok);
    if (!ok) {
        char log[1024] = {0};
        gl.getProgramInfoLog(prog.id, sizeof log, nullptr, log);
        DH2FX_LOG("[remaster] postfx link failed: %s", log);
        return false;
    }
    prog.pos = gl.getAttribLocation(prog.id, "aPos");
    return prog.pos >= 0;
}

uint32_t makeTexture(int w, int h, uint32_t internal, uint32_t format, uint32_t type, uint32_t filter) {
    auto& gl = activeGLFunctionTable();
    uint32_t t = 0;
    gl.genTextures(1, &t);
    gl.bindTexture(GL_TEXTURE_2D_, t);
    gl.texImage2D(GL_TEXTURE_2D_, 0, static_cast<int32_t>(internal), w, h, 0, format, type, nullptr);
    gl.texParameteri(GL_TEXTURE_2D_, 0x2801, static_cast<int32_t>(filter));
    gl.texParameteri(GL_TEXTURE_2D_, 0x2800, static_cast<int32_t>(filter));
    gl.texParameteri(GL_TEXTURE_2D_, 0x2802, GL_CLAMP_TO_EDGE_);
    gl.texParameteri(GL_TEXTURE_2D_, 0x2803, GL_CLAMP_TO_EDGE_);
    return t;
}

bool makeTarget(Target& t, int w, int h, bool withDepth) {
    auto& gl = activeGLFunctionTable();
    t.w = w;
    t.h = h;
    // the scene target receives a multisample resolve of the window, which ES 3.0 allows only between identical formats:
    // RGB8 when the window has no alpha (the Android surface), RGBA8 otherwise
    const bool rgb = withDepth && s_windowRgb;
    t.tex = makeTexture(w, h, rgb ? 0x8051u /*GL_RGB8*/ : GL_RGBA8_, rgb ? 0x1907u /*GL_RGB*/ : GL_RGBA_, GL_UNSIGNED_BYTE_, GL_LINEAR_);
    gl.genFramebuffers(1, &t.fbo);
    gl.bindFramebuffer(GL_FRAMEBUFFER_, t.fbo);
    gl.framebufferTexture2D(GL_FRAMEBUFFER_, GL_COLOR_ATTACHMENT0_, GL_TEXTURE_2D_, t.tex, 0);
    if (withDepth) {
        s_depthTex = makeTexture(w, h, GL_DEPTH24_STENCIL8_, GL_DEPTH_STENCIL_, GL_UNSIGNED_INT_24_8_, GL_NEAREST_);
        gl.framebufferTexture2D(GL_FRAMEBUFFER_, GL_DEPTH_STENCIL_ATTACHMENT_, GL_TEXTURE_2D_, s_depthTex, 0);
    }
    return gl.checkFramebufferStatus(GL_FRAMEBUFFER_) == GL_FRAMEBUFFER_COMPLETE_;
}

void release() {
    auto& gl = activeGLFunctionTable();
    for (Target* t : {&s_scene, &s_ao, &s_aoTmp, &s_bright, &s_blurA, &s_blurB}) {
        if (t->fbo != 0 && s_deleteFbos != nullptr) s_deleteFbos(1, &t->fbo);
        if (t->tex != 0) gl.deleteTextures(1, &t->tex);
        *t = Target();
    }
    if (s_depthTex != 0) gl.deleteTextures(1, &s_depthTex);
    s_depthTex = 0;
}

bool setup(int w, int h) {
    auto& gl = activeGLFunctionTable();
    if (s_quad == 0) {
        const char* version = reinterpret_cast<const char*>(gl.getString ? gl.getString(0x1F02) : nullptr);
        if (version == nullptr || std::strstr(version, "OpenGL ES 3") == nullptr) {
            DH2FX_LOG("[remaster] postfx off: needs OpenGL ES 3 (have %s)", version ? version : "?");
            return false;
        }
        s_blit = reinterpret_cast<PFBlit>(proc("glBlitFramebuffer"));
        s_deleteFbos = reinterpret_cast<PFDeleteFbos>(proc("glDeleteFramebuffers"));
        if (s_blit == nullptr) {
            DH2FX_LOG("[remaster] postfx off: no glBlitFramebuffer");
            return false;
        }
        if (!link(s_pAo, kAoFS) || !link(s_pAoBlur, kAoBlurFS) || !link(s_pBright, kBrightFS) || !link(s_pBlur, kBlurFS) ||
            !link(s_pComposite, kCompositeFS)) {
            return false;
        }
        const float quad[8] = {-1, -1, 1, -1, -1, 1, 1, 1};
        gl.genBuffers(1, &s_quad);
        gl.bindBuffer(GL_ARRAY_BUFFER_, s_quad);
        gl.bufferData(GL_ARRAY_BUFFER_, sizeof quad, quad, GL_STATIC_DRAW_);
    }
    release();
    int32_t alphaBits = 8;
    gl.getIntegerv(0x0D55 /*GL_ALPHA_BITS*/, &alphaBits);
    s_windowRgb = alphaBits == 0;
    const int hw = (w + 1) / 2, hh = (h + 1) / 2, qw = (w + 3) / 4, qh = (h + 3) / 4;
    const bool ok = makeTarget(s_scene, w, h, true) && makeTarget(s_ao, hw, hh, false) && makeTarget(s_aoTmp, hw, hh, false) &&
                    makeTarget(s_bright, hw, hh, false) && makeTarget(s_blurA, qw, qh, false) && makeTarget(s_blurB, qw, qh, false);
    if (!ok) {
        DH2FX_LOG("[remaster] postfx off: render targets incomplete");
        return false;
    }
    s_w = w;
    s_h = h;
    DH2FX_LOG("[remaster] postfx on: %dx%d", w, h);
    return true;
}

int uniform(const Program& p, const char* name) { return activeGLFunctionTable().getUniformLocation(p.id, name); }

void bindTex(int unit, uint32_t tex) {
    auto& gl = activeGLFunctionTable();
    gl.activeTexture(GL_TEXTURE0_ + unit);
    gl.bindTexture(GL_TEXTURE_2D_, tex);
}

void draw(const Program& p, const Target* dst, int vw, int vh) {
    auto& gl = activeGLFunctionTable();
    gl.bindFramebuffer(GL_FRAMEBUFFER_, dst ? dst->fbo : 0u);
    gl.viewport(0, 0, dst ? dst->w : vw, dst ? dst->h : vh);
    gl.bindBuffer(GL_ARRAY_BUFFER_, s_quad);
    gl.vertexAttribPointer(static_cast<uint32_t>(p.pos), 2, GL_FLOAT_, 0, 0, nullptr);
    gl.enableVertexAttribArray(static_cast<uint32_t>(p.pos));
    gl.drawArrays(GL_TRIANGLE_STRIP_, 0, 4);
    gl.disableVertexAttribArray(static_cast<uint32_t>(p.pos));
}

void setDepthUniforms(const Program& p, const float* m, float depthFar) {
    auto& gl = activeGLFunctionTable();
    gl.uniform1i(uniform(p, "uDepth"), 3);
    const float proj[4] = {m[10], m[11], m[14], 1.0f / depthFar};
    gl.uniform4fv(uniform(p, "uProj"), 1, proj);
    const float focal[2] = {m[0], m[5]};
    gl.uniform2fv(uniform(p, "uFocal"), 1, focal);
}

}  // namespace

void Dh2PostFx(glitch::video::IVideoDriver* driver, glitch::scene::ICameraSceneNode* camera) {
    static const int master = dh2port::Get("postfx", 100);
    static const float aoAmount = static_cast<float>(dh2port::Get("ao", 100)) / 100.0f;
    static const float bloomAmount = static_cast<float>(dh2port::Get("bloom", 100)) / 100.0f;
    static const float toneAmount = static_cast<float>(dh2port::Get("tonemap", 100)) / 100.0f;
    if (s_failed || master <= 0 || driver == nullptr || camera == nullptr) return;
    auto& gl = activeGLFunctionTable();
    if (!gl.bindFramebuffer || !gl.genFramebuffers || !gl.framebufferTexture2D) {
        s_failed = true;
        return;
    }
    int32_t viewport[4] = {0, 0, 0, 0}, prevFbo = 0, prevActive = 0;
    gl.getIntegerv(GL_VIEWPORT_, viewport);
    gl.getIntegerv(GL_FRAMEBUFFER_BINDING_, &prevFbo);
    gl.getIntegerv(GL_ACTIVE_TEXTURE_, &prevActive);
    const int w = viewport[0] + viewport[2], h = viewport[1] + viewport[3];
    if (w <= 0 || h <= 0) return;
    if (!s_ready || w != s_w || h != s_h) {
        s_ready = setup(w, h);
        if (!s_ready) {
            s_failed = true;
            gl.bindFramebuffer(GL_FRAMEBUFFER_, static_cast<uint32_t>(prevFbo));
            driver->restoreShadowState();
            return;
        }
    }

    // 1. resolve the window's colour and depth into the scene textures
    gl.bindFramebuffer(GL_READ_FRAMEBUFFER_, static_cast<uint32_t>(prevFbo));
    gl.bindFramebuffer(GL_DRAW_FRAMEBUFFER_, s_scene.fbo);
    s_blit(0, 0, w, h, 0, 0, w, h, GL_COLOR_BUFFER_BIT_, GL_NEAREST_);
    s_blit(0, 0, w, h, 0, 0, w, h, GL_DEPTH_BUFFER_BIT_, GL_NEAREST_);
    static bool reported = false;
    if (!reported) {
        reported = true;
        const uint32_t err = gl.getError();
        if (err != 0) {
            DH2FX_LOG("[remaster] postfx off: resolve blit failed (GL error 0x%x)", err);
            s_failed = true;
            gl.bindFramebuffer(GL_FRAMEBUFFER_, static_cast<uint32_t>(prevFbo));
            driver->restoreShadowState();
            return;
        }
    }

    gl.disable(GL_BLEND_);
    gl.disable(GL_DEPTH_TEST_);
    gl.disable(GL_CULL_FACE_);
    gl.disable(GL_SCISSOR_TEST_);
    gl.disable(GL_STENCIL_TEST_);
    gl.disable(GL_SAMPLE_ALPHA_TO_COVERAGE_);
    gl.depthMask(0);
    gl.colorMask(1, 1, 1, 1);

    const float* m = camera->getProjectionMatrix().M;
    const float depthFar = 0.8f;  // Application::Draw: setDepthRange(0, 0.8) for the 3D pass
    const float far = camera->getFarValue();
    bindTex(3, s_depthTex);

    // 2. ambient occlusion (half resolution) + depth-aware blur
    if (aoAmount > 0.0f) {
        gl.useProgram(s_pAo.id);
        setDepthUniforms(s_pAo, m, depthFar);
        const float texel[2] = {1.0f / static_cast<float>(w), 1.0f / static_cast<float>(h)};
        gl.uniform2fv(uniform(s_pAo, "uTexel"), 1, texel);
        gl.uniform1f(uniform(s_pAo, "uRadius"), 60.0f);
        gl.uniform1f(uniform(s_pAo, "uFar"), far);
        draw(s_pAo, &s_ao, 0, 0);
        gl.useProgram(s_pAoBlur.id);
        setDepthUniforms(s_pAoBlur, m, depthFar);
        gl.uniform1i(uniform(s_pAoBlur, "uAo"), 0);
        const float stepX[2] = {1.0f / static_cast<float>(s_ao.w), 0.0f}, stepY[2] = {0.0f, 1.0f / static_cast<float>(s_ao.h)};
        bindTex(0, s_ao.tex);
        gl.uniform2fv(uniform(s_pAoBlur, "uStep"), 1, stepX);
        draw(s_pAoBlur, &s_aoTmp, 0, 0);
        bindTex(0, s_aoTmp.tex);
        gl.uniform2fv(uniform(s_pAoBlur, "uStep"), 1, stepY);
        draw(s_pAoBlur, &s_ao, 0, 0);
    }

    // 3. bloom
    if (bloomAmount > 0.0f) {
        gl.useProgram(s_pBright.id);
        gl.uniform1i(uniform(s_pBright, "uScene"), 0);
        const float texel[2] = {1.0f / static_cast<float>(w), 1.0f / static_cast<float>(h)};
        gl.uniform2fv(uniform(s_pBright, "uTexel"), 1, texel);
        bindTex(0, s_scene.tex);
        draw(s_pBright, &s_bright, 0, 0);
        gl.useProgram(s_pBlur.id);
        gl.uniform1i(uniform(s_pBlur, "uSrc"), 0);
        const float sx[2] = {1.0f / static_cast<float>(s_blurA.w), 0.0f}, sy[2] = {0.0f, 1.0f / static_cast<float>(s_blurA.h)};
        bindTex(0, s_bright.tex);
        gl.uniform2fv(uniform(s_pBlur, "uStep"), 1, sx);
        draw(s_pBlur, &s_blurA, 0, 0);
        bindTex(0, s_blurA.tex);
        gl.uniform2fv(uniform(s_pBlur, "uStep"), 1, sy);
        draw(s_pBlur, &s_blurB, 0, 0);
        bindTex(0, s_blurB.tex);
        gl.uniform2fv(uniform(s_pBlur, "uStep"), 1, sx);
        draw(s_pBlur, &s_blurA, 0, 0);
        bindTex(0, s_blurA.tex);
        gl.uniform2fv(uniform(s_pBlur, "uStep"), 1, sy);
        draw(s_pBlur, &s_blurB, 0, 0);
    }

    // 4. composite into the window (the 3D area; depth untouched)
    gl.useProgram(s_pComposite.id);
    gl.uniform1i(uniform(s_pComposite, "uScene"), 0);
    gl.uniform1i(uniform(s_pComposite, "uAo"), 1);
    gl.uniform1i(uniform(s_pComposite, "uBloom"), 2);
    const float amount[3] = {aoAmount, bloomAmount, toneAmount};
    gl.uniform3fv(uniform(s_pComposite, "uAmount"), 1, amount);
#ifdef DH2_HOST_RUNNER
    static const bool debugAo = std::getenv("DH2_FX_DEBUG") != nullptr;
#else
    static const bool debugAo = false;
#endif
    gl.uniform1f(uniform(s_pComposite, "uDebug"), debugAo ? 1.0f : 0.0f);
    bindTex(0, s_scene.tex);
    bindTex(1, aoAmount > 0.0f ? s_ao.tex : s_scene.tex);
    bindTex(2, s_blurB.tex);
    gl.bindFramebuffer(GL_FRAMEBUFFER_, static_cast<uint32_t>(prevFbo));
    gl.viewport(0, 0, w, h);
    gl.bindBuffer(GL_ARRAY_BUFFER_, s_quad);
    gl.vertexAttribPointer(static_cast<uint32_t>(s_pComposite.pos), 2, GL_FLOAT_, 0, 0, nullptr);
    gl.enableVertexAttribArray(static_cast<uint32_t>(s_pComposite.pos));
    gl.drawArrays(GL_TRIANGLE_STRIP_, 0, 4);
    gl.disableVertexAttribArray(static_cast<uint32_t>(s_pComposite.pos));

    // leave the textures units empty for the driver (its cache is reset by restoreShadowState), restore what it does not track
    for (int unit = 3; unit >= 0; --unit) bindTex(unit, 0);
    gl.activeTexture(static_cast<uint32_t>(prevActive));
    gl.viewport(viewport[0], viewport[1], viewport[2], viewport[3]);
    driver->restoreShadowState();
}
