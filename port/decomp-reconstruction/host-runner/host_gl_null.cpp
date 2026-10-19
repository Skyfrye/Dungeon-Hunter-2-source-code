// A GLES2 stand-in for the headless runner: fills the game's GL function table with functions that accept every call, keep the few pieces of state
// the driver reads back (viewport, object names, shader sources) and answer the queries the driver makes at start-up the way a small GLES2 device does.
// Shaders always compile and link; their active uniforms and attributes come from the "uniform"/"attribute" declarations of the attached sources, so the
// material code finds the parameters it binds (an empty list would make every pass look unusable). Nothing is drawn.
#include <algorithm>
#include <cctype>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <map>
#include <set>
#include <string>
#include <vector>

#include "glitch-shared/gl_function_table.hpp"
#include "host_runner.hpp"

namespace dh2host {
unsigned long long g_drawCalls = 0, g_drawIndices = 0;
namespace {

using glitch::video::deps::GLFunctionTable;

struct Decl {
    std::string name;
    uint32_t type;
    int32_t size;
};
struct ShaderObj {
    std::string source;
    uint32_t type = 0;
};
struct ProgramObj {
    std::vector<uint32_t> shaders;
    std::vector<Decl> uniforms, attribs;
};

uint32_t g_next = 1;
std::map<uint32_t, ShaderObj> g_shaders;
std::map<uint32_t, ProgramObj> g_programs;
int32_t g_viewport[4] = {0, 0, 1280, 720};

uint32_t glslType(const std::string& t) {
    static const std::map<std::string, uint32_t> m = {
        {"float", 0x1406}, {"vec2", 0x8B50}, {"vec3", 0x8B51}, {"vec4", 0x8B52}, {"int", 0x1404}, {"ivec2", 0x8B53}, {"ivec3", 0x8B54}, {"ivec4", 0x8B55},
        {"bool", 0x8B56}, {"mat2", 0x8B5A}, {"mat3", 0x8B5B}, {"mat4", 0x8B5C}, {"sampler2D", 0x8B5E}, {"samplerCube", 0x8B60}};
    auto it = m.find(t);
    return it == m.end() ? 0x1406 : it->second;
}

std::string stripComments(const std::string& s) {
    std::string out;
    for (size_t i = 0; i < s.size(); ++i) {
        if (s[i] == '/' && i + 1 < s.size() && s[i + 1] == '/') {
            while (i < s.size() && s[i] != 10) ++i;
            out += '\n';
        } else if (s[i] == '/' && i + 1 < s.size() && s[i + 1] == '*') {
            i += 2;
            while (i + 1 < s.size() && !(s[i] == '*' && s[i + 1] == '/')) ++i;
            ++i;
        } else {
            out += s[i];
        }
    }
    return out;
}

// ---- a small GLSL preprocessor: #define/#undef/#ifdef/#ifndef/#if/#elif/#else/#endif, so the declarations of a variant are the ones the compiler would keep ----
struct Cond {
    const std::map<std::string, std::string>& macros;
    std::vector<std::string> tok;
    size_t i = 0;
    int depth = 0;
    explicit Cond(const std::map<std::string, std::string>& m, const std::string& s) : macros(m) {
        size_t p = 0;
        while (p < s.size()) {
            const char c = s[p];
            if (std::isspace((unsigned char)c)) { ++p; continue; }
            if (std::isalnum((unsigned char)c) || c == '_') {
                size_t q = p;
                while (q < s.size() && (std::isalnum((unsigned char)s[q]) || s[q] == '_')) ++q;
                tok.push_back(s.substr(p, q - p));
                p = q;
            } else if (p + 1 < s.size() && std::strchr("&|=!<>", c) && (s[p + 1] == c || (s[p + 1] == '=' && c != '&' && c != '|'))) {
                tok.push_back(s.substr(p, 2));
                p += 2;
            } else {
                tok.push_back(std::string(1, c));
                ++p;
            }
        }
    }
    bool more() const { return i < tok.size(); }
    long primary() {
        if (!more()) return 0;
        std::string t = tok[i++];
        if (t == "(") { long v = orExpr(); if (more() && tok[i] == ")") ++i; return v; }
        if (t == "!") return !primary();
        if (t == "defined") {
            bool paren = more() && tok[i] == "(";
            if (paren) ++i;
            std::string n = more() ? tok[i++] : std::string();
            if (paren && more() && tok[i] == ")") ++i;
            return macros.count(n) ? 1 : 0;
        }
        if (std::isdigit((unsigned char)t[0])) return std::atol(t.c_str());
        auto it = macros.find(t);
        if (it == macros.end() || it->second.empty() || ++depth > 8) return 0;
        Cond inner(macros, it->second);
        inner.depth = depth;
        return inner.orExpr();
    }
    long cmp() {
        long a = primary();
        if (more() && (tok[i] == "==" || tok[i] == "!=" || tok[i] == "<" || tok[i] == ">" || tok[i] == "<=" || tok[i] == ">=")) {
            std::string op = tok[i++];
            long b = primary();
            if (op == "==") return a == b;
            if (op == "!=") return a != b;
            if (op == "<") return a < b;
            if (op == ">") return a > b;
            if (op == "<=") return a <= b;
            return a >= b;
        }
        return a;
    }
    long andExpr() {
        long v = cmp();
        while (more() && tok[i] == "&&") { ++i; long r = cmp(); v = v && r; }
        return v;
    }
    long orExpr() {
        long v = andExpr();
        while (more() && tok[i] == "||") { ++i; long r = andExpr(); v = v || r; }
        return v;
    }
};

std::string preprocess(const std::string& text) {
    std::map<std::string, std::string> macros;
    struct Level { bool parentActive, active, taken; };
    std::vector<Level> stack;
    std::string out;
    size_t p = 0;
    auto activeNow = [&]() { return stack.empty() || stack.back().active; };
    while (p < text.size()) {
        size_t e = text.find(10, p);
        if (e == std::string::npos) e = text.size();
        std::string line = text.substr(p, e - p);
        p = e + 1;
        while (!line.empty() && (line.back() == 13 || line.back() == 32 || line.back() == 9)) line.pop_back();
        size_t f = line.find_first_not_of(" 	");
        if (f != std::string::npos && line[f] == '#') {
            std::string d = line.substr(f + 1);
            size_t k = d.find_first_not_of(" 	");
            d = k == std::string::npos ? std::string() : d.substr(k);
            size_t sp = d.find_first_of(" 	");
            std::string kw = d.substr(0, sp);
            std::string rest = sp == std::string::npos ? std::string() : d.substr(sp + 1);
            size_t rs = rest.find_first_not_of(" 	");
            rest = rs == std::string::npos ? std::string() : rest.substr(rs);
            if (kw == "define" && activeNow()) {
                size_t ns = rest.find_first_of(" 	(");
                std::string name = rest.substr(0, ns);
                macros[name] = ns == std::string::npos ? std::string() : rest.substr(ns + 1);
            } else if (kw == "undef" && activeNow()) {
                macros.erase(rest.substr(0, rest.find_first_of(" 	")));
            } else if (kw == "ifdef" || kw == "ifndef") {
                const bool have = macros.count(rest.substr(0, rest.find_first_of(" 	"))) != 0;
                const bool cond = kw == "ifdef" ? have : !have;
                const bool parent = activeNow();
                stack.push_back({parent, parent && cond, cond});
            } else if (kw == "if") {
                const bool parent = activeNow();
                const bool cond = parent && Cond(macros, rest).orExpr() != 0;
                stack.push_back({parent, cond, cond});
            } else if (kw == "elif" && !stack.empty()) {
                Level& l = stack.back();
                const bool cond = l.parentActive && !l.taken && Cond(macros, rest).orExpr() != 0;
                l.active = cond;
                l.taken = l.taken || cond;
            } else if (kw == "else" && !stack.empty()) {
                Level& l = stack.back();
                l.active = l.parentActive && !l.taken;
                l.taken = true;
            } else if (kw == "endif" && !stack.empty()) {
                stack.pop_back();
            }
            out += 10;
            continue;
        }
        if (activeNow()) {
            out += line;
            out += 10;
        }
    }
    return out;
}

bool isWordChar(char c) { return std::isalnum((unsigned char)c) || c == '_'; }

// Collects "uniform|attribute [precision] type name[N];" declarations that the preprocessed source also uses (a GLES2 compiler drops the others).
void scanDecls(const std::string& src, const char* keyword, std::vector<Decl>& out) {
    const std::string text = preprocess(stripComments(src));
    std::vector<std::pair<size_t, size_t>> declRanges;
    std::vector<Decl> found;
    const size_t klen = std::strlen(keyword);
    size_t pos = 0;
    while ((pos = text.find(keyword, pos)) != std::string::npos) {
        const bool startOk = pos == 0 || !(std::isalnum((unsigned char)text[pos - 1]) || text[pos - 1] == '_');
        const size_t after = pos + klen;
        if (!startOk || after >= text.size() || !std::isspace((unsigned char)text[after])) {
            pos = after;
            continue;
        }
        const size_t semi = text.find(';', after);
        if (semi == std::string::npos) break;
        std::string decl = text.substr(after, semi - after);
        declRanges.push_back({pos, semi + 1});
        pos = semi;
        std::vector<std::string> tok;
        std::string cur;
        for (char c : decl) {
            if (std::isalnum((unsigned char)c) || c == '_') cur += c;
            else {
                if (!cur.empty()) tok.push_back(cur);
                cur.clear();
                if (c == '[') tok.push_back("[");
            }
        }
        if (!cur.empty()) tok.push_back(cur);
        // drop precision qualifiers
        std::vector<std::string> t2;
        for (auto& s : tok)
            if (s != "highp" && s != "mediump" && s != "lowp") t2.push_back(s);
        if (t2.size() < 2) continue;
        Decl d;
        d.type = glslType(t2[0]);
        d.name = t2[1];
        d.size = 1;
        if (t2.size() >= 4 && t2[2] == "[") d.size = std::atoi(t2[3].c_str());
        if (d.size < 1) d.size = 1;
        found.push_back(d);
    }
    for (const Decl& d : found) {
        bool used = false;
        for (size_t at = text.find(d.name); at != std::string::npos && !used; at = text.find(d.name, at + 1)) {
            if ((at > 0 && isWordChar(text[at - 1])) || (at + d.name.size() < text.size() && isWordChar(text[at + d.name.size()]))) continue;
            bool inDecl = false;
            for (auto& r : declRanges)
                if (at >= r.first && at < r.second) inDecl = true;
            used = !inDecl;
        }
        bool dup = false;
        for (auto& e : out)
            if (e.name == d.name) dup = true;
        if (used && !dup) out.push_back(d);
    }
}

void relink(ProgramObj& p) {
    p.uniforms.clear();
    p.attribs.clear();
    for (uint32_t s : p.shaders) {
        auto it = g_shaders.find(s);
        if (it == g_shaders.end()) continue;
        scanDecls(it->second.source, "uniform", p.uniforms);
        if (it->second.type == 0x8B31) scanDecls(it->second.source, "attribute", p.attribs);
    }
}

const char* extensions() {
    return "GL_OES_depth_texture GL_OES_packed_depth_stencil GL_EXT_texture_format_BGRA8888 GL_OES_rgb8_rgba8 GL_OES_vertex_half_float GL_OES_texture_float "
           "GL_OES_texture_half_float GL_OES_standard_derivatives GL_EXT_discard_framebuffer GL_OES_mapbuffer GL_OES_element_index_uint "
           "GL_OES_compressed_ETC1_RGB8_texture GL_EXT_texture_filter_anisotropic GL_OES_depth24";
}

}  // namespace

void installNullGL() {
    GLFunctionTable& t = glitch::video::deps::activeGLFunctionTable();
    t.enable = [](uint32_t) {};
    t.disable = [](uint32_t) {};
    t.blendFunc = [](uint32_t, uint32_t) {};
    t.blendEquation = [](uint32_t) {};
    t.blendColor = [](float, float, float, float) {};
    t.clearColor = [](float, float, float, float) {};
    t.createProgram = []() -> uint32_t {
        uint32_t id = g_next++;
        g_programs[id] = ProgramObj();
        return id;
    };
    t.deleteProgram = [](uint32_t p) { g_programs.erase(p); };
    t.useProgram = [](uint32_t) {};
    t.cullFace = [](uint32_t) {};
    t.depthFunc = [](uint32_t) {};
    t.depthMask = [](uint8_t) {};
    t.depthRangef = [](float, float) {};
    t.clearDepthf = [](float) {};
    t.frontFace = [](uint32_t) {};
    t.lineWidth = [](float) {};
    t.polygonOffset = [](float, float) {};
    t.sampleCoverage = [](float, uint8_t) {};
    t.stencilFunc = [](uint32_t, int32_t, uint32_t) {};
    t.stencilMask = [](uint32_t) {};
    t.stencilOp = [](uint32_t, uint32_t, uint32_t) {};
    t.clearStencil = [](int32_t) {};
    t.colorMask = [](uint8_t, uint8_t, uint8_t, uint8_t) {};
    t.scissor = [](int32_t, int32_t, int32_t, int32_t) {};
    t.flush = []() {};
    t.finish = []() {};
    t.clear = [](uint32_t) {};

    t.createShader = [](uint32_t type) -> uint32_t {
        uint32_t id = g_next++;
        g_shaders[id].type = type;
        return id;
    };
    t.shaderSource = [](uint32_t shader, int32_t count, const char* const* string, const int32_t* length) {
        std::string s;
        for (int32_t i = 0; i < count; ++i) {
            if (string[i] == nullptr) continue;
            if (length != nullptr && length[i] >= 0) s.append(string[i], static_cast<size_t>(length[i]));
            else s += string[i];
        }
        g_shaders[shader].source = s;
    };
    t.compileShader = [](uint32_t) {};
    t.deleteShader = [](uint32_t s) { g_shaders.erase(s); };
    t.getShaderiv = [](uint32_t, uint32_t pname, int32_t* params) {
        *params = pname == 0x8B81 ? 1 : 0;   // COMPILE_STATUS
    };
    t.getShaderInfoLog = [](uint32_t, int32_t, int32_t* length, char* log) {
        if (length) *length = 0;
        if (log) log[0] = 0;
    };
    t.attachShader = [](uint32_t program, uint32_t shader) { g_programs[program].shaders.push_back(shader); };
    t.linkProgram = [](uint32_t program) {
        relink(g_programs[program]);
        if (std::getenv("DH2_GL_DUMP") != nullptr) {
            ProgramObj& p = g_programs[program];
            std::fprintf(stderr, "[gl] link program %u: %zu uniforms, %zu attributes:", program, p.uniforms.size(), p.attribs.size());
            for (auto& d : p.attribs) std::fprintf(stderr, " a:%s", d.name.c_str());
            for (auto& d : p.uniforms) std::fprintf(stderr, " u:%s", d.name.c_str());
            std::fprintf(stderr, "\n");
            if (p.attribs.empty() && std::getenv("DH2_GL_DUMP")[0] == '2') {
                for (uint32_t sh : p.shaders) std::fprintf(stderr, "[gl]   shader %u type %x (%zu bytes):\n%.1500s\n", sh, g_shaders[sh].type, g_shaders[sh].source.size(), g_shaders[sh].source.c_str());
            }
        }
    };
    t.getProgramiv = [](uint32_t program, uint32_t pname, int32_t* params) {
        ProgramObj& p = g_programs[program];
        switch (pname) {
            case 0x8B82: *params = 1; break;                                   // LINK_STATUS
            case 0x8B83: *params = 1; break;                                   // VALIDATE_STATUS
            case 0x8B86: *params = static_cast<int32_t>(p.uniforms.size()); break;   // ACTIVE_UNIFORMS
            case 0x8B89: *params = static_cast<int32_t>(p.attribs.size()); break;    // ACTIVE_ATTRIBUTES
            case 0x8B87: {                                                      // ACTIVE_UNIFORM_MAX_LENGTH
                int32_t m = 0;
                for (auto& d : p.uniforms) m = std::max<int32_t>(m, static_cast<int32_t>(d.name.size()) + 4);
                *params = m;
                break;
            }
            case 0x8B8A: {                                                      // ACTIVE_ATTRIBUTE_MAX_LENGTH
                int32_t m = 0;
                for (auto& d : p.attribs) m = std::max<int32_t>(m, static_cast<int32_t>(d.name.size()) + 1);
                *params = m;
                break;
            }
            default: *params = 0; break;
        }
    };
    t.getProgramInfoLog = [](uint32_t, int32_t, int32_t* length, char* log) {
        if (length) *length = 0;
        if (log) log[0] = 0;
    };
    t.getUniformLocation = [](uint32_t program, const char* name) -> int32_t {
        ProgramObj& p = g_programs[program];
        std::string n = name;
        const size_t br = n.find('[');
        const std::string base = br == std::string::npos ? n : n.substr(0, br);
        for (size_t i = 0; i < p.uniforms.size(); ++i)
            if (p.uniforms[i].name == base) return static_cast<int32_t>(i * 64) + (br == std::string::npos ? 0 : std::atoi(n.c_str() + br + 1));
        return -1;
    };
    t.getAttribLocation = [](uint32_t program, const char* name) -> int32_t {
        ProgramObj& p = g_programs[program];
        for (size_t i = 0; i < p.attribs.size(); ++i)
            if (p.attribs[i].name == name) return static_cast<int32_t>(i);
        return -1;
    };
    t.getActiveUniform = [](uint32_t program, uint32_t index, int32_t bufSize, int32_t* length, int32_t* size, uint32_t* type, char* name) {
        ProgramObj& p = g_programs[program];
        if (index >= p.uniforms.size()) {
            if (length) *length = 0;
            return;
        }
        const Decl& d = p.uniforms[index];
        std::string n = d.size > 1 ? d.name + "[0]" : d.name;
        if (bufSize > 0) {
            std::strncpy(name, n.c_str(), static_cast<size_t>(bufSize) - 1);
            name[bufSize - 1] = 0;
        }
        if (length) *length = static_cast<int32_t>(std::min<size_t>(n.size(), bufSize > 0 ? bufSize - 1 : 0));
        *size = d.size;
        *type = d.type;
    };
    t.getActiveAttrib = [](uint32_t program, uint32_t index, int32_t bufSize, int32_t* length, int32_t* size, uint32_t* type, char* name) {
        ProgramObj& p = g_programs[program];
        if (index >= p.attribs.size()) {
            if (length) *length = 0;
            return;
        }
        const Decl& d = p.attribs[index];
        if (bufSize > 0) {
            std::strncpy(name, d.name.c_str(), static_cast<size_t>(bufSize) - 1);
            name[bufSize - 1] = 0;
        }
        if (length) *length = static_cast<int32_t>(std::min<size_t>(d.name.size(), bufSize > 0 ? bufSize - 1 : 0));
        *size = d.size;
        *type = d.type;
    };

    t.getIntegerv = [](uint32_t pname, int32_t* data) {
        switch (pname) {
            case 0x0D33: *data = 4096; break;   // MAX_TEXTURE_SIZE
            case 0x8869: *data = 16; break;     // MAX_VERTEX_ATTRIBS
            case 0x8872: *data = 16; break;     // MAX_TEXTURE_IMAGE_UNITS
            case 0x8B4C: *data = 16; break;     // MAX_VERTEX_TEXTURE_IMAGE_UNITS
            case 0x8B4D: *data = 32; break;     // MAX_COMBINED_TEXTURE_IMAGE_UNITS
            case 0x8DFB: *data = 1024; break;   // MAX_VERTEX_UNIFORM_VECTORS
            case 0x8DFD: *data = 1024; break;   // MAX_FRAGMENT_UNIFORM_VECTORS
            case 0x8DFC: *data = 31; break;     // MAX_VARYING_VECTORS
            case 0x84E8: *data = 4096; break;   // MAX_RENDERBUFFER_SIZE
            case 0x851C: *data = 4096; break;   // MAX_CUBE_MAP_TEXTURE_SIZE
            case 0x0D56: *data = 24; break;     // DEPTH_BITS
            case 0x0D57: *data = 8; break;      // STENCIL_BITS
            case 0x0D52: *data = 8; break;      // RED_BITS (and the other colour sizes)
            case 0x0D53: *data = 8; break;
            case 0x0D54: *data = 8; break;
            case 0x0D55: *data = 8; break;
            case 0x0BA2:                        // VIEWPORT
                for (int i = 0; i < 4; ++i) data[i] = g_viewport[i];
                break;
            default: *data = 0; break;
        }
    };
    t.getFloatv = [](uint32_t pname, float* data) {
        if (pname == 0x846E || pname == 0x846D) {   // ALIASED_LINE_WIDTH_RANGE / ALIASED_POINT_SIZE_RANGE
            data[0] = 1.0f;
            data[1] = 8.0f;
        } else {
            data[0] = 0.0f;
        }
    };
    t.hint = [](uint32_t, uint32_t) {};
    t.pixelStorei = [](uint32_t, int32_t) {};
    t.getString = [](uint32_t name) -> const uint8_t* {
        switch (name) {
            case 0x1F00: return reinterpret_cast<const uint8_t*>("DH2 host runner");
            case 0x1F01: return reinterpret_cast<const uint8_t*>("DH2 null GLES2");
            case 0x1F02: return reinterpret_cast<const uint8_t*>("OpenGL ES 2.0 (null)");
            case 0x8B8C: return reinterpret_cast<const uint8_t*>("OpenGL ES GLSL ES 1.00");
            case 0x1F03: return reinterpret_cast<const uint8_t*>(extensions());
            default: return reinterpret_cast<const uint8_t*>("");
        }
    };
    t.getError = []() -> uint32_t { return 0; };

    t.bindBuffer = [](uint32_t, uint32_t) {};
    t.bufferData = [](uint32_t, int32_t, const void*, uint32_t) {};
    t.genBuffers = [](int32_t n, uint32_t* names) {
        for (int32_t i = 0; i < n; ++i) names[i] = g_next++;
    };
    t.deleteBuffers = [](int32_t, const uint32_t*) {};
    t.bufferSubData = [](uint32_t, int32_t, int32_t, const void*) {};
    t.vertexAttribPointer = [](uint32_t, int32_t, uint32_t, uint8_t, int32_t, const void*) {};
    t.vertexAttrib4f = [](uint32_t, float, float, float, float) {};
    t.viewport = [](int32_t x, int32_t y, int32_t w, int32_t h) {
        g_viewport[0] = x;
        g_viewport[1] = y;
        g_viewport[2] = w;
        g_viewport[3] = h;
    };
    t.activeTexture = [](uint32_t) {};
    t.bindTexture = [](uint32_t, uint32_t) {};
    t.readPixels = [](int32_t, int32_t, int32_t w, int32_t h, uint32_t, uint32_t, void* pixels) {
        if (pixels != nullptr && w > 0 && h > 0) std::memset(pixels, 0, static_cast<size_t>(w) * static_cast<size_t>(h) * 4);
    };
    t.bindFramebuffer = [](uint32_t, uint32_t) {};
    t.enableVertexAttribArray = [](uint32_t) {};
    t.disableVertexAttribArray = [](uint32_t) {};
    // Draw calls and indices are counted for the runner's levelstat (batching regressions show as count changes).
    t.drawElements = [](uint32_t, int32_t count, uint32_t, const void*) { ++g_drawCalls; g_drawIndices += static_cast<unsigned long long>(count); };
    t.drawArrays = [](uint32_t, int32_t, int32_t count) { ++g_drawCalls; g_drawIndices += static_cast<unsigned long long>(count); };
    t.genRenderbuffers = [](int32_t n, uint32_t* names) {
        for (int32_t i = 0; i < n; ++i) names[i] = g_next++;
    };
    t.deleteRenderbuffers = [](int32_t, const uint32_t*) {};
    t.genTextures = [](int32_t n, uint32_t* names) {
        for (int32_t i = 0; i < n; ++i) names[i] = g_next++;
    };
    t.deleteTextures = [](int32_t, const uint32_t*) {};
    t.texParameteri = [](uint32_t, uint32_t, int32_t) {};
    t.texParameterf = [](uint32_t, uint32_t, float) {};
    t.texImage2D = [](uint32_t, int32_t, int32_t, int32_t, int32_t, int32_t, uint32_t, uint32_t, const void*) {};
    t.texSubImage2D = [](uint32_t, int32_t, int32_t, int32_t, int32_t, int32_t, uint32_t, uint32_t, const void*) {};
    t.compressedTexImage2D = [](uint32_t, int32_t, uint32_t, int32_t, int32_t, int32_t, int32_t, const void*) {};
    t.compressedTexSubImage2D = [](uint32_t, int32_t, int32_t, int32_t, int32_t, int32_t, uint32_t, int32_t, const void*) {};
    t.generateMipmap = [](uint32_t) {};
    t.copyTexSubImage2D = [](uint32_t, int32_t, int32_t, int32_t, int32_t, int32_t, int32_t, int32_t) {};
    t.genFramebuffers = [](int32_t n, uint32_t* names) {
        for (int32_t i = 0; i < n; ++i) names[i] = g_next++;
    };
    t.framebufferTexture2D = [](uint32_t, uint32_t, uint32_t, uint32_t, int32_t) {};
    t.framebufferRenderbuffer = [](uint32_t, uint32_t, uint32_t, uint32_t) {};
    t.checkFramebufferStatus = [](uint32_t) -> uint32_t { return 0x8CD5; };   // FRAMEBUFFER_COMPLETE
    t.bindRenderbuffer = [](uint32_t, uint32_t) {};
    t.renderbufferStorage = [](uint32_t, uint32_t, int32_t, int32_t) {};
    t.uniform1f = [](int32_t, float) {};
    t.uniform1i = [](int32_t, int32_t) {};
    t.uniform1iv = [](int32_t, int32_t, const int32_t*) {};
    t.uniform2iv = [](int32_t, int32_t, const int32_t*) {};
    t.uniform3iv = [](int32_t, int32_t, const int32_t*) {};
    t.uniform4iv = [](int32_t, int32_t, const int32_t*) {};
    t.uniform1fv = [](int32_t, int32_t, const float*) {};
    t.uniform2fv = [](int32_t, int32_t, const float*) {};
    t.uniform3fv = [](int32_t, int32_t, const float*) {};
    t.uniform4fv = [](int32_t, int32_t, const float*) {};
    t.uniformMatrix4fv = [](int32_t, int32_t, uint8_t, const float*) {};
}

}  // namespace dh2host
