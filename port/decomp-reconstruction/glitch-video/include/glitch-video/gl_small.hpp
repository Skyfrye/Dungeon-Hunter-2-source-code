// Small GL driver pieces: the GLSL shader handler and the GLES2 driver's
// constant hooks. The full driver classes are not reconstructed yet.
#pragma once

#include <cstdint>

#include "glitch-video/deps/intrusive_ptr.hpp"

#include "glitch-video/deps/glitch_video_types.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/shader_code.hpp"

namespace glitch::io {
class IAttributes;
class IReadFile;
}  // namespace glitch::io

namespace glitch::video {

class IShaderManager;

class CGLSLShaderHandler {
public:
    CGLSLShaderHandler();                                    // 0x6df9b8 / 0x6df9c4
    bool initShaderHandler(IShaderManager* manager);          // 0x6df9d0

    // 0x6df9f8: checks the GLSL version string (GL_SHADING_LANGUAGE_VERSION) against a minimum of 2.00 and logs the shader binary
    // formats. Declared only.
    bool doVersionCheck(uint32_t minimum);

    uint32_t m_shaderLanguageVersion = 0;  // +0x00, cleared by the constructor; doVersionCheck stores 100 * major + minor tenths
};

// GL program wrapper. Derives from IShader (0x44 bytes) and adds the two shader code references (+0x44, +0x48), the
// GL program name (+0x4c) and a byte (+0x50). Vtable 0x98b148: the IShader slots with +0x0c / +0x10 / +0x14 overridden.
class CProgrammableGLDriver;

class CGLSLShader : public IShader {
public:
    // Not part of the original: lets a test build a shader without a driver.
    CGLSLShader() : IShader(0, "", nullptr) {}
    // 0x6df0d4 (C1) / 0x6df130 (C2): IShader(0, "", driver), then +0x44 .. +0x50 cleared.
    explicit CGLSLShader(CProgrammableGLDriver* driver);
    // 0x6df1f0 (C1) / 0x6df2c4 (C2): IShader(id, name, driver), the two codes kept, the program created and the two codes'
    // GL shaders attached; when `link` is set the program is linked and, if that fails, deleted again.
    CGLSLShader(uint16_t id, const char* name, const boost::intrusive_ptr<CGLSLShaderCode>& first,
                const boost::intrusive_ptr<CGLSLShaderCode>& second, CProgrammableGLDriver* driver,
                bool link);
    // 0x6df18c: after a context loss both codes are recompiled, a new program is created with them attached, the vertex attribute
    // mask (IShader +0x38) is cleared and the program linked (deleted again on failure).
    void rmRegenerateShader(CProgrammableGLDriver* driver);
    // 0x6de9f8: links the program and reads its parameters. Declared only.
    bool linkProgram();
    // 0x6def9c: compiles both codes, then links.
    bool compileAndLink();
    // 0x6de924: releases the names of the vertex attribute and parameter definitions and the block they live in.
    void deleteInfo();
    // 0x6defc0 (D1): deletes the GL program, the definitions, and drops both codes.
    ~CGLSLShader() override;
    void serializeAttributes(io::IAttributes* attributes) const override;  // +0x0c  0x6de878, empty
    void deserializeAttributes(io::IAttributes* attributes) override;      // +0x10  0x6de87c, empty
    bool createProgram();                                        // 0x6de8e0: glCreateProgram into +0x4c; returns true
    // 0x6de880: drops both shader code references (+0x44 and +0x48).
    void releaseShaderCode();
    // 0x6de8f8: deletes the GL program (+0x4c) when set, then releaseShaderCode().
    void releaseDriverSpecificResources() override;  // +0x14

    uint32_t m_glProgram = 0;  // +0x4c, the GL program name (set by createProgram)

private:
    boost::intrusive_ptr<CGLSLShaderCode> m_firstCode;   // +0x44, first code argument
    boost::intrusive_ptr<CGLSLShaderCode> m_secondCode;  // +0x48, second code argument
    uint8_t m_unknown50 = 0;   // +0x50, not identified
};

// 0x6e04ec (C1) / 0x6e0520 (C2): the code shader manager of the GLSL driver (0x84 bytes: ICodeShaderManager and nothing else).
// Vtable 0x98b188: the code manager's slots with createEmptyShader (+0x14, 0x6dfd4c) its own; the other creation functions
// (createShaderInternal 0x6dfd8c, createShaderCode 0x6dfe68, createShader 0x6e01b4 / 0x6e0348) are not reconstructed.
class CGLSLShaderManager : public ICodeShaderManager {
public:
    CGLSLShaderManager();
    ~CGLSLShaderManager() override;  // 0x6e0468 (D1) / 0x6e049c / 0x6e04b8
    // 0x6dfd4c: a new empty shader on the manager's driver (+0x2c), returned with one use.
    boost::intrusive_ptr<IShader> createEmptyShader(const char* name) override;
    // 0x6dfe68: the compiled code of a shader source file, with the manager's defines prepended; null when it cannot be read or compiled.
    // A code with the same name made before is returned as it is.
    boost::intrusive_ptr<CGLSLShaderCode> createShaderCode(const char* fileName, E_SHADER_TYPE type, const char* defines,
                                                           glitch::io::IReadFile* file);
    // 0x6dfd8c: a new shader on two codes, registered with the manager; null when its program did not link.
    boost::intrusive_ptr<IShader> createShaderInternal(const char* name, boost::intrusive_ptr<CGLSLShaderCode> first,
                                                       boost::intrusive_ptr<CGLSLShaderCode> second);
    // 0x6e0348: the shader of that name when there is one, else a new one on the two codes.
    boost::intrusive_ptr<IShader> createShader(const char* name, boost::intrusive_ptr<CGLSLShaderCode> first,
                                               boost::intrusive_ptr<CGLSLShaderCode> second);
    // 0x6e01b4: the shader of that name when there is one, else a new one on the vertex and fragment codes made from the named sources
    // (or from the given files).
    boost::intrusive_ptr<IShader> createShader(const char* name, const char* vertexName, const char* vertexDefines,
                                               const char* fragmentName, const char* fragmentDefines, glitch::io::IReadFile* vertexFile,
                                               glitch::io::IReadFile* fragmentFile);
};

// COpenGLES2Driver: glitch-video/opengles2_driver.hpp (it derives from CProgrammableGLDriver, which includes this header).

}  // namespace glitch::video
