// glitch::video::IShaderCode, CGLSLShaderCode and the code-shader manager. Canonical definition of IShaderCode (engine
// unification wave u1-video); the stand-in in glitch-core-io (deps/glitch_core_objects.hpp) is replaced by this header.
// The shader-code collection is the canonical SIDedCollection instance (glitch-core-io/core/sided_collection.hpp, over
// glitch-shared/sid_collection.hpp); its getId keeps the 0xffff "not found" convention.
//
// IShaderCode layout (32-bit; constructors 0x6e2130 C1 / 0x6e2178 C2, size 0x20):
//   +0x00  vptr (vtable 0x98b208, five slots)
//   +0x04  reference count; the constructor stores 0 (a new code is wrapped with intrusive_ptr<IShaderCode>(p, true))
//   +0x08  std::string name (STLport, 0x18 bytes)
// Vtable: +0x00 ~IShaderCode (D1 0x6e207c, D2 0x6e20e4; D0 0x6e20c8)  +0x04 deleting destructor  +0x08 onDelete
//         +0x0c serializeAttributes(IAttributes*) const (pure)  +0x10 deserializeAttributes(IAttributes*) (pure)
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

class IShaderCode : public glitch::IReferenceCounted {
public:
    explicit IShaderCode(const char* name);  // 0x6e2130 (C1), 0x6e2178 (C2)
    ~IShaderCode() override = default;       // 0x6e207c (D1), 0x6e20e4 (D2): frees the name

    virtual void serializeAttributes(io::IAttributes* attributes) const = 0;  // +0x0c
    virtual void deserializeAttributes(io::IAttributes* attributes) = 0;      // +0x10

    // +0x04 is IReferenceCounted::referenceCounter.
    std::string m_name;   // +0x08, std::string built from the name argument
};

class CProgrammableGLDriver;

// CGLSLShaderCode layout (constructors 0x6df690 / 0x6df6e4 driver only, 0x6df738 / 0x6df878 with source text; size 0x38):
//   +0x20  char** source lines (new[] copies of the strings)   +0x24  line count
//   +0x28  GL shader type (0x8b30 fragment, 0x8b31 vertex)     +0x2c  CProgrammableGLDriver*
//   +0x30  GL shader object name                               +0x34  uint8, compiled flag (0 after construction)
class CGLSLShaderCode : public IShaderCode {
public:
    // 0x6df690 (C1) / 0x6df6e4 (C2). The base is built with an empty name. The driver is kept at +0x2c; the GL shader
    // name (+0x30) and the compiled flag (+0x34) are zeroed.
    explicit CGLSLShaderCode(CProgrammableGLDriver* driver);
    // 0x6df738 (C1) / 0x6df878 (C2): a code on a null-terminated list of source strings (copied), of the vertex shader type (4) or the
    // fragment type; the GL shader is created with the source, and compiled at once when `compile` is set.
    CGLSLShaderCode(const char* name, const char** sources, E_SHADER_TYPE type, CProgrammableGLDriver* driver, bool compile);
    // 0x6df5d4 (D1): frees the source list and deletes the GL shader.
    ~CGLSLShaderCode() override;
    // 0x6df560: creates the GL shader when there is none (glCreateShader) and hands it the sources (glShaderSource).
    void createShader(int type, const char** sources, int count);
    // 0x6df3c0 (const): compiles the GL shader once; false, with the info log reported, when the compile fails; a log with "WARNING" is
    // reported as a warning. Sets the compiled flag.
    bool compileShader() const;
    void serializeAttributes(io::IAttributes* attributes) const override;  // 0x6df398, empty
    void deserializeAttributes(io::IAttributes* attributes) override;      // 0x6df39c, empty

    // 0x6df5a4: recompiles the code after a context loss. Declared only.
    void rmRecompileShader();

    char** m_sourceLines = nullptr;             // +0x20
    int32_t m_sourceLineCount = 0;              // +0x24
    uint32_t m_glShaderType = 0;                // +0x28
    CProgrammableGLDriver* m_driver = nullptr;  // +0x2c
    uint32_t m_glShader = 0;                    // +0x30, the GL shader object name
    mutable uint8_t m_compiled = 0;             // +0x34, compiled flag (compileShader is const in the original)
};

// The shader-code collection of ICodeShaderManager (+0x54): SIDedCollection<intrusive_ptr<IShaderCode>, ushort, false,
// SEmptyProperties, SValueTraits>, the canonical instance. Its ctor and dtor are the collection's own, 0x6e0804 / 0x6e0818
// and 0x6e1758 / 0x6e1828 (glitch-shared/sid_collection.hpp). Used through getId(name) (0xffff when not found),
// insert(name, code, managed), get(id)->value and removeUnused() (removeAll(false)).
using ShaderCodeCollection =
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<IShaderCode>, uint16_t, false,
                                          glitch::core::detail::sidedcollection::SEmptyProperties,
                                          glitch::core::detail::sidedcollection::SValueTraits>;

// ICodeShaderManager: IShaderManager plus the shader-code collection. Layout (32-bit): the IShaderManager base (0x54 bytes),
// the CShaderCodeManager collection at +0x54 (0x28 bytes), +0x7c the additional config text (new[], null until loaded) and
// +0x80 its length (-1 until a text is loaded). Constructors 0x6e0ca4 (C1) / 0x6e0cf0 (C2), vtable 0x98b1e0: the base's
// slots with removeUnusedShaders (+0x0c, 0x6e2034) overridden. createEmptyShader (+0x14) stays pure here; CGLSLShaderManager
// implements it.
class ICodeShaderManager : public IShaderManager {
public:
    ICodeShaderManager();                    // 0x6e0ca4 (C1), 0x6e0cf0 (C2)
    ~ICodeShaderManager() override;          // 0x6e176c (D1), 0x6e17d8 (D2), 0x6e17bc (D0)

    boost::intrusive_ptr<IShaderCode> getShaderCode(const char* name) const;  // 0x6e1b08
    uint32_t addShaderCode(const boost::intrusive_ptr<IShaderCode>& code);   // 0x6e1d70, returns the id
    void removeUnusedShaderCodes();                                          // 0x6e2028
    // +0x0c, 0x6e2034: IShaderManager::removeUnusedShaders, then removeUnusedShaderCodes; returns the first result.
    int removeUnusedShaders() override;

    // 0x6e0a3c: reads the file `name` through the device's file system once (m_additionalConfigLength stays -1 until a
    // file is found) into a new[] block, and replaces every '^' by a newline. When the file is missing a warning is
    // logged the first time.
    void initAdditionalConfig(const char* name);

    // 0x6e0b64: a process buffer (glitch::core::allocProcessBuffer) holding a, b, c and then the additional config text
    // when one is loaded; outLength (when not null) receives the total length. The caller releases the block with
    // glitch::core::releaseProcessBuffer. The process buffer heap's excess mode is switched on for the allocation.
    char* makeShaderCodeName(const char* a, uint32_t aLength, const char* b, uint32_t bLength, const char* c,
                             uint32_t cLength, uint32_t* outLength);
    // 0x6e0c10: the same with the lengths taken here; a null b or c counts as empty.
    char* makeShaderCodeName(const char* a, const char* b, const char* c, uint32_t* outLength);

    ShaderCodeCollection m_shaderCodes;  // +0x54
    char* m_additionalConfig = nullptr;  // +0x7c
    int32_t m_additionalConfigLength = -1;  // +0x80
};

}  // namespace glitch::video
