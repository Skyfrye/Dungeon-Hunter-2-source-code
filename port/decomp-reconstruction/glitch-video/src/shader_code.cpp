#include "glitch-video/shader_code.hpp"

#include <cstring>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::video {

// 0x6e2130 _ZN6glitch5video11IShaderCodeC1EPKc
// 0x6e2178 _ZN6glitch5video11IShaderCodeC2EPKc
IShaderCode::IShaderCode(const char* name) : m_name(name) {
    referenceCounter = 0;  // +0x04 (the first intrusive_ptr takes the use)
}

// 0x6df690 _ZN6glitch5video15CGLSLShaderCodeC1EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
// 0x6df6e4 _ZN6glitch5video15CGLSLShaderCodeC2EPNS0_21CProgrammableGLDriverINS0_18CGLSLShaderHandlerEEE
// The driver is stored at +0x2c; the GL name (+0x30) and the compiled flag (+0x34) start at zero.
CGLSLShaderCode::CGLSLShaderCode(CProgrammableGLDriver* driver)
    : IShaderCode(""), m_driver(driver) {}

// 0x6e207c _ZN6glitch5video11IShaderCodeD1Ev
// 0x6e20e4 _ZN6glitch5video11IShaderCodeD2Ev
// The string member releases its heap buffer (the original calls GlitchFree
// when the buffer is not the inline one); the vtable store is implicit.

// 0x6e0804 / 0x6e0818 (ctor) and 0x6e1758 / 0x6e1828 (dtor) of the collection: the canonical SIDedCollection() and
// ~SIDedCollection() (glitch-shared/sid_collection.hpp), listed in ledger.d/u2-glitch-video.csv.

// 0x6e0ca4 _ZN6glitch5video18ICodeShaderManagerC1Ev / 0x6e0cf0 C2: the IShaderManager constructor, the vtable, the code
// collection at +0x54, the config text pointer (+0x7c) zeroed and its length (+0x80) set to -1.
ICodeShaderManager::ICodeShaderManager() = default;

// 0x6e176c _ZN6glitch5video18ICodeShaderManagerD1Ev / 0x6e17d8 D2 / 0x6e17bc D0: delete[] of the config text, the code
// collection, then the IShaderManager destructor.
ICodeShaderManager::~ICodeShaderManager() { delete[] m_additionalConfig; }

// 0x6e1b08 _ZNK6glitch5video18ICodeShaderManager13getShaderCodeEPKc
// Returns a null pointer when the name is unknown, as the original does.
boost::intrusive_ptr<IShaderCode> ICodeShaderManager::getShaderCode(const char* name) const {
    const uint16_t id = m_shaderCodes.getId(name);
    if (id == 0xffff) return boost::intrusive_ptr<IShaderCode>();
    return m_shaderCodes.get(id)->value;
}

// 0x6e1d70 _ZN6glitch5video18ICodeShaderManager13addShaderCodeERKN5boost13intrusive_ptrINS0_11IShaderCodeEEE
// The code is inserted under its own name (IShaderCode +0x1c, the name data pointer) as an unmanaged key; the id is
// returned.
uint32_t ICodeShaderManager::addShaderCode(const boost::intrusive_ptr<IShaderCode>& code) {
    return m_shaderCodes.insert(code->m_name.c_str(), code, false);
}

// 0x6e2028 _ZN6glitch5video18ICodeShaderManager23removeUnusedShaderCodesEv
// The collection's removeUnused() (removeAll(false)): only entries that nothing else holds are removed.
void ICodeShaderManager::removeUnusedShaderCodes() {
    m_shaderCodes.removeUnused();
}

// 0x6e2034 _ZN6glitch5video18ICodeShaderManager19removeUnusedShadersEv
// The IShaderManager version first, then the code collection; the first result is returned.
int ICodeShaderManager::removeUnusedShaders() {
    const int removed = IShaderManager::removeUnusedShaders();
    removeUnusedShaderCodes();
    return removed;
}

// 0x6e0a3c _ZN6glitch5video18ICodeShaderManager20initAdditionalConfigEPKc
// Once (while the length is -1): opens the file through the device's file system (device +0x34, file system slot +0x0c,
// the shader manager's driver at +0x2c), sizes a new[] block by the file's size (slot +0x20), reads the whole file into
// it (slot +0x0c) and turns every '^' into a newline. Without a file the first call logs a warning at level 2.
// Port guard: a manager without a driver, device or file system is treated as "file not found".
void ICodeShaderManager::initAdditionalConfig(const char* name) {
    static bool warnOnce = true;  // initAdditionalConfig::warnOnce (0x99db18, 1 at load time)
    if (m_additionalConfigLength != -1) {
        return;
    }
    io::IFileSystem* fileSystem =
        (m_driver != nullptr && m_driver->m_device != nullptr) ? m_driver->m_device->fileSystem : nullptr;
    if (fileSystem != nullptr) ++fileSystem->referenceCounter;
    io::IReadFile* file = fileSystem != nullptr ? fileSystem->createAndOpenFile(name) : nullptr;  // file system slot +0x0c
    if (file != nullptr) {
        m_additionalConfigLength = static_cast<int32_t>(file->getSize());  // slot +0x20
        char* text = new char[m_additionalConfigLength + 1];
        char* old = m_additionalConfig;
        m_additionalConfig = text;
        delete[] old;
        file->read(m_additionalConfig, static_cast<uint32_t>(m_additionalConfigLength));  // slot +0x0c
        file->drop();
        m_additionalConfig[m_additionalConfigLength] = 0;
        for (char* p = m_additionalConfig; p != m_additionalConfig + m_additionalConfigLength; ++p) {
            if (*p == '^') *p = 0x0a;  // newline
        }
    } else if (warnOnce) {
        glitch::os::Printer::logf(glitch::os::ELL_WARNING, "%s not found; if you do not need one, create an empty one", name);
        warnOnce = false;
    }
    if (fileSystem != nullptr) fileSystem->drop();
}

// 0x6e0b64 _ZN6glitch5video18ICodeShaderManager18makeShaderCodeNameEPKcjS3_jS3_jPj
// A process buffer of a + b + c (+ the config text) + 1 bytes, with excess mode switched on while it is allocated, holding
// the four texts back to back.
char* ICodeShaderManager::makeShaderCodeName(const char* a, uint32_t aLength, const char* b, uint32_t bLength,
                                             const char* c, uint32_t cLength, uint32_t* outLength) {
    const bool previous = glitch::core::isProcessBufferHeapExcessEnabled();
    glitch::core::setProcessBufferHeapExcessEnabled(true);
    const uint32_t partsLength = cLength + bLength + aLength;
    uint32_t total = partsLength;
    if (m_additionalConfig != nullptr) {
        total = partsLength + static_cast<uint32_t>(m_additionalConfigLength);
    }
    char* buffer = reinterpret_cast<char*>(glitch::core::allocProcessBuffer(static_cast<int>(total + 1)));
    std::strcpy(buffer, a);
    std::strcpy(buffer + aLength, b);
    std::strcpy(buffer + bLength + aLength, c);
    if (m_additionalConfig != nullptr) {
        std::strcpy(buffer + partsLength, m_additionalConfig);
    }
    if (outLength != nullptr) {
        *outLength = total;
    }
    glitch::core::setProcessBufferHeapExcessEnabled(previous);
    return buffer;
}

// 0x6e0c10 _ZN6glitch5video18ICodeShaderManager18makeShaderCodeNameEPKcS3_S3_Pj
// A null b or c counts as the empty text; the lengths are taken here.
char* ICodeShaderManager::makeShaderCodeName(const char* a, const char* b, const char* c, uint32_t* outLength) {
    size_t bLength = 0;
    size_t cLength = 0;
    if (b != nullptr) {
        bLength = std::strlen(b);
    } else {
        b = "";
    }
    if (c != nullptr) {
        cLength = std::strlen(c);
    } else {
        c = "";
    }
    return makeShaderCodeName(a, static_cast<uint32_t>(std::strlen(a)), b, static_cast<uint32_t>(bLength), c,
                              static_cast<uint32_t>(cLength), outLength);
}

}  // namespace glitch::video
