#if defined(__ANDROID__)
#include <android/log.h>
#endif
// Owner K1: the GLSL shader classes: CGLSLShaderCode (source copy, GL create / compile), CGLSLShader (deleteInfo, compileAndLink,
// destructor), CGLSLShaderManager (creating shader codes and shaders from source files) and CGLSLShaderHandler::doVersionCheck.
// GL calls go through the shared GL function table (glitch-shared/gl_function_table.hpp); a call whose entry is not set is
// skipped, as elsewhere in glitch-video. linkProgram (0x6de9f8) is not in this file: its decompilation is cut after the failure path.
#include <cmath>
#include <cstdio>
#include <cstring>
#include <utility>
#include <vector>
#include <string>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-core-io/core/strings.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/gl_small.hpp"
#include "glitch-video/programmable_gl_driver.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

namespace {

constexpr uint32_t kGlVertexShader = 0x8b31;
constexpr uint32_t kGlFragmentShader = 0x8b30;
constexpr uint32_t kGlCompileStatus = 0x8b81;
constexpr uint32_t kGlInfoLogLength = 0x8b84;
constexpr uint32_t kGlShaderType = 0x8b4f;

void dropName(glitch::core::detail::SSharedStringData* data) {
    if (data != nullptr && data->useCount-- == 1) {
        glitch::core::detail::releaseSharedString(glitch::core::detail::sharedStringHeapTable(), data);
    }
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------------
// CGLSLShaderCode

// 0x6df738 _ZN6glitch5video15CGLSLShaderCodeC1EPKcPS3_NS0_13E_SHADER_TYPEEPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEEb
// 0x6df878 C2: the same body. The sources are copied (the list is null-terminated); the GL shader is created from the caller's list.
CGLSLShaderCode::CGLSLShaderCode(const char* name, const char** sources, E_SHADER_TYPE type, CProgrammableGLDriver* driver, bool compile)
    : IShaderCode(name) {
    m_driver = driver;  // +0x2c
    m_compiled = 0;     // +0x34
    m_glShader = 0;     // +0x30
    int32_t count = 0;
    if (sources != nullptr && *sources != nullptr) {
        while (sources[count] != nullptr) ++count;
    }
    m_glShaderType = type == 4 ? kGlVertexShader : kGlFragmentShader;  // +0x28
    m_sourceLineCount = count;                                         // +0x24
    m_sourceLines = new char*[count];                                  // +0x20
    for (int32_t i = 0; i < count; ++i) {
        const size_t length = std::strlen(sources[i]);
        m_sourceLines[i] = new char[length + 1];
        std::memcpy(m_sourceLines[i], sources[i], length + 1);
    }
    createShader(type == 4 ? 35633 : 35632, sources, count);
    if (compile) compileShader();
}

// 0x6df5d4 _ZN6glitch5video15CGLSLShaderCodeD1Ev
// The original frees the pointer list only (the strings it points to are not released); the port frees both.
CGLSLShaderCode::~CGLSLShaderCode() {
    if (m_sourceLines != nullptr) {
        for (int32_t i = 0; i < m_sourceLineCount; ++i) delete[] m_sourceLines[i];
        delete[] m_sourceLines;
    }
    auto& t = deps::activeGLFunctionTable();
    if (t.deleteShader) t.deleteShader(m_glShader);
}

// 0x6df560 _ZN6glitch5video15CGLSLShaderCode12createShaderEiPPKci
void CGLSLShaderCode::createShader(int type, const char** sources, int count) {
    auto& t = deps::activeGLFunctionTable();
    if (m_glShader == 0 && t.createShader) m_glShader = t.createShader(static_cast<uint32_t>(type));
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
    // V1 debug: GLSL text patches from /sdcard/Android/data/<pkg>/files/dh2_shpatch.txt (lines "FROM=>TO"), to bisect shading problems without rebuilding.
    if (t.shaderSource && count > 0) {
        static std::vector<std::pair<std::string, std::string>> patches;
        static bool loaded = false;
        if (!loaded) {
            loaded = true;
            if (FILE* f = std::fopen("/sdcard/Android/data/com.gameloft.android.GAND.GloftD2SS/files/dh2_shpatch.txt", "r")) {
                char line[512];
                while (std::fgets(line, sizeof line, f)) {
                    std::string l(line);
                    while (!l.empty() && (l.back() == 10 || l.back() == 13)) l.pop_back();
                    const size_t at = l.find("=>");
                    if (at != std::string::npos) {
                        std::string to = l.substr(at + 2);
                        for (size_t q; (q = to.find("\\n")) != std::string::npos;) to.replace(q, 2, "\n");   // a literal backslash-n in the patch file is a line break (for #ifdef)
                        patches.emplace_back(l.substr(0, at), to);
                    }
                }
                std::fclose(f);
                __android_log_print(ANDROID_LOG_INFO, "DH2SHP", "%d shader patches loaded", (int)patches.size());
            }
        }
        if (!patches.empty()) {
            std::vector<std::string> text(sources, sources + count);
            for (auto& tx : text)
                for (auto& pt : patches) {
                    size_t pos = 0;
                    while ((pos = tx.find(pt.first, pos)) != std::string::npos) { tx.replace(pos, pt.first.size(), pt.second); pos += pt.second.size(); __android_log_print(ANDROID_LOG_INFO, "DH2SHP", "patched '%s'", pt.first.c_str()); }
                }
            std::vector<const char*> ptrs;
            for (auto& tx : text) ptrs.push_back(tx.c_str());
            t.shaderSource(m_glShader, count, ptrs.data(), nullptr);
            return;
        }
    }
#endif
    if (t.shaderSource) t.shaderSource(m_glShader, count, sources, nullptr);
}

// 0x6df3c0 _ZNK6glitch5video15CGLSLShaderCode13compileShaderEv
// The info-log calls: a failed compile reads the shader log; a compile with a long log reads it with glGetProgramInfoLog, which is
// what the listing calls (the program entry point on a shader name), and reports it when it mentions "WARNING".
bool CGLSLShaderCode::compileShader() const {
    if (m_compiled != 0) return false;
    auto& t = deps::activeGLFunctionTable();
    int32_t status = 0;
    int32_t logLength = 0;
    if (t.compileShader) t.compileShader(m_glShader);
    if (t.getShaderiv) {
        t.getShaderiv(m_glShader, kGlCompileStatus, &status);
        t.getShaderiv(m_glShader, kGlInfoLogLength, &logLength);
    }
    if (status == 0) {
        char* log = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(logLength));
        int32_t length = 0;
        if (t.getShaderInfoLog) t.getShaderInfoLog(m_glShader, logLength, &length, log);
        int32_t shaderType = 0;
        if (t.getShaderiv) t.getShaderiv(m_glShader, kGlShaderType, &shaderType);
#if defined(__ANDROID__)
        // Port diagnostic, always on (real drivers are stricter than the emulator translator): compile log + head of the source reach logcat.
        __android_log_print(ANDROID_LOG_ERROR, "DH2GL", "GLSL shader type %d failed to compile: %s", shaderType, log != nullptr ? log : "(no log)");
        if (m_sourceLines != nullptr && m_sourceLineCount > 0) __android_log_print(ANDROID_LOG_ERROR, "DH2GL", "--- source[0] head: %.800s", m_sourceLines[0]);
#endif
        os::Printer::logf(glitch::ELL_ERROR, "GLSL %s shader failed to compile\n%s",
                          static_cast<uint32_t>(shaderType) == kGlVertexShader ? "vertex" : "fargment", log);
        if (log != nullptr) glitch::core::releaseProcessBuffer(log);
        return false;
    }
    if (logLength > 1) {
        char* log = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(logLength));
        int32_t length = 0;
        if (t.getProgramInfoLog) t.getProgramInfoLog(m_glShader, logLength, &length, log);
        int32_t shaderType = 0;
        if (t.getShaderiv) t.getShaderiv(m_glShader, kGlShaderType, &shaderType);
        if (log != nullptr && std::strstr(log, "WARNING") != nullptr) {
            os::Printer::logf(glitch::ELL_WARNING, "GLSL %s shader program have warnings\n%s",
                              static_cast<uint32_t>(shaderType) == kGlVertexShader ? "vertex" : "fargment", log);
        }
        if (log != nullptr) glitch::core::releaseProcessBuffer(log);
    }
    m_compiled = 1;
    return true;
}

// 0x6df5a4 _ZN6glitch5video15CGLSLShaderCode17rmRecompileShaderEv
// After a context loss: the GL shader is gone (name cleared), the same sources create a new one and it is compiled again.
void CGLSLShaderCode::rmRecompileShader() {
    m_glShader = 0;
    createShader(static_cast<int>(m_glShaderType), const_cast<const char**>(m_sourceLines), m_sourceLineCount);
    m_compiled = 0;
    compileShader();
}

// ---------------------------------------------------------------------------------------------------------------------------
// CGLSLShader

// 0x6de924 _ZN6glitch5video11CGLSLShader10deleteInfoEv
// The names of the vertex attribute definitions (+0x24, the byte count at +0x3c) and of the first stage's parameter definitions
// (+0x28, count at +0x2e) are released and the block holding both is freed; the first stage is emptied.
void CGLSLShader::deleteInfo() {
    SShaderVertexAttributeDef* attributes = m_vertexAttributeDefs;
    if (attributes == nullptr) return;
    for (uint8_t i = 0; i < m_vertexAttributeDefCount; ++i) {
        dropName(const_cast<glitch::core::detail::SSharedStringData*>(attributes[i].name));
    }
    SShaderStageParameters& first = m_stageParameters[0];
    if (first.parameters != nullptr) {
        for (uint16_t i = 0; i < first.count; ++i) {
            dropName(first.parameters[i].name);
            first.parameters[i].name = nullptr;
        }
    }
    delete[] reinterpret_cast<uint8_t*>(m_vertexAttributeDefs);
    first.parameters = nullptr;  // +0x28
    first.count = 0;             // +0x2e
    first.field04 = 0;           // +0x2c
}

// 0x6def9c _ZN6glitch5video11CGLSLShader14compileAndLinkEv
bool CGLSLShader::compileAndLink() {
    m_firstCode->compileShader();
    m_secondCode->compileShader();
    return linkProgram();
}

// 0x6defc0 _ZN6glitch5video11CGLSLShaderD1Ev
CGLSLShader::~CGLSLShader() {
    if (m_glProgram != 0) {
        auto& t = deps::activeGLFunctionTable();
        if (t.deleteProgram) t.deleteProgram(m_glProgram);
        m_glProgram = 0;
    }
    deleteInfo();
    // the second code (+0x48), then the first (+0x44), are dropped by the members; IShader::~IShader follows
}

// ---------------------------------------------------------------------------------------------------------------------------
// CGLSLShaderManager

// 0x6dfe68 _ZN6glitch5video18CGLSLShaderManager16createShaderCodeEPKcNS0_13E_SHADER_TYPEES3_PNS_2io9IReadFileE
boost::intrusive_ptr<CGLSLShaderCode> CGLSLShaderManager::createShaderCode(const char* fileName, E_SHADER_TYPE type, const char* defines,
                                                                          glitch::io::IReadFile* file) {
    if (m_additionalConfigLength == -1) initAdditionalConfig("glsl.config");
    char* codeName = makeShaderCodeName(fileName, nullptr, defines, nullptr);
    boost::intrusive_ptr<CGLSLShaderCode> result;
    const boost::intrusive_ptr<IShaderCode> existing = getShaderCode(codeName);
    if (existing) {
        result = boost::intrusive_ptr<CGLSLShaderCode>(static_cast<CGLSLShaderCode*>(existing.get()), true);
    } else {
        glitch::io::IFileSystem* fileSystem = m_driver->m_device->fileSystem;  // driver +0xd4 -> +0x34
        if (fileSystem != nullptr) ++fileSystem->referenceCounter;
        glitch::io::IReadFile* source = file;
        if (source == nullptr) source = fileSystem->createAndOpenFile(fileName);  // file system vtable +0x0c
        if (source != nullptr) {
            const long size = source->getSize();  // read file vtable +0x20
            char* text = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(size) + 1));
            if (source->read(text, static_cast<uint32_t>(size)) == size) {  // vtable +0x0c
                text[size] = '\0';
                if (source != file) source->drop();
                const uint32_t options = m_driver->m_options;  // driver +0x88
                const char* lines[9] = {
                    (options & 0x400) != 0 ? "#define GLITCH_USE_HIGHP\n" : "",
                    (options & 0x800) != 0 ? "#define GLITCH_USE_BIAS\n" : "",
                    (options & 0x1000) != 0 ? "#define GLITCH_FORCE_USE_BIAS\n" : "",
                    "#define GLITCH_OPENGLES_2\n",
                    m_additionalConfig != nullptr ? m_additionalConfig : "",  // +0x7c
                    defines != nullptr ? defines : "",
                    "\n",
                    text,
                    nullptr};
                CGLSLShaderCode* code = new CGLSLShaderCode(codeName, lines, type, static_cast<CProgrammableGLDriver*>(m_driver), true);
                boost::intrusive_ptr<CGLSLShaderCode> held(code, true);  // the object is born with count 0
                if (code->m_compiled != 0) result = held;
            } else {
                os::Printer::logf(glitch::ELL_ERROR, "error reading %s", fileName);
            }
            if (text != nullptr) glitch::core::releaseProcessBuffer(text);
        }
        if (fileSystem != nullptr) fileSystem->drop();
    }
    if (codeName != nullptr) glitch::core::releaseProcessBuffer(codeName);
    return result;
}

// 0x6dfd8c _ZN6glitch5video18CGLSLShaderManager20createShaderInternalEPKcN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES7_
boost::intrusive_ptr<IShader> CGLSLShaderManager::createShaderInternal(const char* name, boost::intrusive_ptr<CGLSLShaderCode> first,
                                                                      boost::intrusive_ptr<CGLSLShaderCode> second) {
    const uint16_t id = m_shaders.getNextId();  // +0x28
    boost::intrusive_ptr<CGLSLShader> shader(
        new CGLSLShader(id, name, first, second, static_cast<CProgrammableGLDriver*>(m_driver), true), true);  // count 0 -> 1
    if (shader->m_id == 0xffff || shader->m_unknown3e == 0) return boost::intrusive_ptr<IShader>();  // +0x40, +0x3e
    boost::intrusive_ptr<IShader> asShader(shader.get(), true);
    addShader(asShader);
    return asShader;
}

// 0x6e0348 _ZN6glitch5video18CGLSLShaderManager12createShaderEPKcN5boost13intrusive_ptrINS0_15CGLSLShaderCodeEEES7_
boost::intrusive_ptr<IShader> CGLSLShaderManager::createShader(const char* name, boost::intrusive_ptr<CGLSLShaderCode> first,
                                                              boost::intrusive_ptr<CGLSLShaderCode> second) {
    const uint16_t id = m_shaders.getId(name);
    if (id != 0xffff) return m_shaders.get(id)->value;
    if (first && second) return createShaderInternal(name, first, second);
    return boost::intrusive_ptr<IShader>();
}

// 0x6e01b4 _ZN6glitch5video18CGLSLShaderManager12createShaderEPKcS3_S3_S3_S3_PNS_2io9IReadFileES6_
boost::intrusive_ptr<IShader> CGLSLShaderManager::createShader(const char* name, const char* vertexName, const char* vertexDefines,
                                                              const char* fragmentName, const char* fragmentDefines,
                                                              glitch::io::IReadFile* vertexFile, glitch::io::IReadFile* fragmentFile) {
    const uint16_t id = m_shaders.getId(name);
    if (id != 0xffff) return m_shaders.get(id)->value;
    const boost::intrusive_ptr<CGLSLShaderCode> vertexCode = createShaderCode(vertexName, 4, vertexDefines, vertexFile);
    if (!vertexCode) return boost::intrusive_ptr<IShader>();
    const boost::intrusive_ptr<CGLSLShaderCode> fragmentCode = createShaderCode(fragmentName, 14, fragmentDefines, fragmentFile);
    if (!fragmentCode) return boost::intrusive_ptr<IShader>();
    return createShaderInternal(name, vertexCode, fragmentCode);
}

// ---------------------------------------------------------------------------------------------------------------------------
// CGLSLShaderHandler

// 0x6df9f8 _ZN6glitch5video18CGLSLShaderHandler14doVersionCheckEj
// Reads GL_SHADING_LANGUAGE_VERSION, keeps the "major.minor" part of it, and stores 100 * major + ceil(10 * fraction) in the first
// word; versions from 1.00 are accepted and logged with the number and the list of binary shader formats the driver supports.
bool CGLSLShaderHandler::doVersionCheck(uint32_t minimum) {
    if (minimum <= 199) return false;
    auto& t = deps::activeGLFunctionTable();
    const uint8_t* raw = t.getString ? t.getString(0x8b8c) : nullptr;
    std::string version = raw != nullptr ? reinterpret_cast<const char*>(raw) : "";
    if (!version.empty()) {
        const size_t dot = version.find('.');
        if (dot != std::string::npos && dot > 0) {
            // The number is the text from the character before the dot, up to the first space after the dot when there is one.
            const size_t space = dot < version.size() ? version.find(' ', dot) : std::string::npos;
            if (space == std::string::npos || dot >= space) {
                version = version.substr(dot - 1, version.size() + 1 - dot);
            } else {
                version = version.substr(dot - 1, 1 - dot + space);
            }
        }
    }
    float x = 0.0f;
    glitch::core::fast_atof_move(version.c_str(), x);
    const float fraction = (x - std::floor(x)) * 10.0f;
    const uint32_t parsed = static_cast<uint32_t>(static_cast<int>(std::ceil(fraction)) + 100 * static_cast<int>(x));
    m_shaderLanguageVersion = parsed;  // +0x00
    if (parsed <= 99) return false;
    char* text = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(32));
    os::Printer::log("    GLSL|ES version", version.c_str(), glitch::ELL_INFORMATION);
    int32_t formats = 0;
    if (t.getIntegerv) t.getIntegerv(0x8df9, &formats);
    std::sprintf(text, "%d", formats);
    os::Printer::log("    GLSL|ES number of binary shader format supported", text, glitch::ELL_INFORMATION);
    if (formats != 0) {
        int32_t* list = new int32_t[formats];
        if (t.getIntegerv) t.getIntegerv(0x8df8, list);
        for (int32_t i = 0; i < formats; ++i) {
            std::sprintf(text, "%d", list[i]);
            os::Printer::log("     - Shader binary format", text, glitch::ELL_INFORMATION);
        }
        delete[] list;  // the original does not free the list
    }
    if (text != nullptr) glitch::core::releaseProcessBuffer(text);
    return true;
}

}  // namespace glitch::video
