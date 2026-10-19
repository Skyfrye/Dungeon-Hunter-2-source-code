// glitch::video::IShaderManager: the shader manager base (abstract). Layout and signatures come
// from libDungeonHunter2.so (ARM, 32-bit). Offsets are comments only: the members below are C++
// types (std::vector, std::string, the SIDedCollection stand-in), so no pointer arithmetic is done
// on them. Evidence is cited per fact; unconfirmed facts are listed under "Open questions" in
// NOTES.md, not coded.
//
// Vtable: _ZTVN6glitch5video14IShaderManagerE at 0x9781e8, 36 bytes. The object vptr is the
// symbol + 0x08 (listing of the C1 ctor 0x5e5704: ADD R2, R2, #8). Slots (from the vptr):
//   +0x00 D1 dtor (0x5e67c4)   +0x04 D0 dtor (0x5e6820 deleting thunk, D1 + free)
//   +0x08 init(IVideoDriver*, bool)          0x5e78dc
//   +0x0c removeUnusedShaders()              0x5e67b0
//   +0x10 clearDriverSpecificResources()     0x5e5b2c
//   +0x14 createEmptyShader(char const*)     pure in the base; CNullShaderManager 0x5b9bb4,
//                                            CGLSLShaderManager 0x6dfd4c override it
//   +0x18 createBatchBaker(IShader const*) const   0x5e562c
//
// Object layout:
//   +0x00  vptr
//   +0x04  m_shaders, SIDedCollection (0x28 bytes, see below)
//   +0x2c  m_driver (IVideoDriver*): init stores its argument here (0x5e78dc, "*(this+44) = a2");
//          createShader reads a2+0x2c as the CNullDriver (0x5b9bf4)
//   +0x30  m_searchPaths, std::vector<std::string>: begin +0x30, end +0x34, storage end +0x38
//          (dtor 0x5e67c4 walks (void***)this+12; addShaderSearchPath 0x5e771c reads +0x30..+0x38).
//          Element stride 0x18 (the loader divides the byte distance by 24).
//   +0x3c  m_name, std::string (0x18 bytes, +0x3c..+0x54): char* data at +0x50 (dtor 0x5e67c4
//          frees it when it is not the inline buffer at +0x3c; init 0x5e78dc passes it to
//          addShaderSearchPath). The ctor 0x5e5704 assigns the text ".".
//   +0x54  end of the base. ICodeShaderManager (ctor 0x6e0ca4 calls IShaderManager::IShaderManager,
//          then puts CShaderCodeManager at this+84 = +0x54) continues here.
//
// SIDedCollection m_shaders (the shared template's collection part, offsets from the manager base):
//   +0x04  name map header (rb tree header; leftmost node read at +0x0c by clearDriverSpecificResources)
//   +0x1c  entries begin (getBatchBaker 0x5e4798 reads a2[7] = +0x1c)
//   +0x20  entries end   (a2[8] = +0x20)
//   +0x24  storage end
//   +0x28  next free id, uint16 (createShader 0x5b9bf4 reads it as *(a2+40) via _WORD index 20)
//   +0x2a  live count, uint16 (ITexture-instance layout; not read by the IShader code seen so far)
// Entry (stride 8): +0x00 intrusive_ptr<IShader> value, +0x04 name-map node pointer.
// Name-map node (0x20 bytes, IShader instance, from SIdValue ctor 0x5e5490/0x5e54a0 and getId
// 0x5d85d0): +0x10 SName (char* name at +0x10, managed byte at +0x14), +0x18 SIdValue:
//   SIdValue+0x00  cached batch baker, IReferenceCounted* (getBatchBaker reads node+0x18,
//                  removeBatchBaker clears it)
//   SIdValue+0x04  uint16 id (getId 0x5d85d0 LDRH node+0x1c; the ctor writes STRH +4)
// The shared template (glitch-core-io/core/sided_collection.hpp) puts the id at SIdValue+0x1c (ITexture instance);
// that does not match this instance. See NOTES.md, "Open questions".

#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-shared/shared_string.hpp"
#include "glitch-video/batch_baker.hpp"
#include "glitch-video/shader_parameter_def.hpp"
#include "glitch-video/video_types.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"

namespace glitch {
class IReferenceCounted;
}  // namespace glitch

namespace glitch::video {

class IVideoDriver;
class IShader;
class CGenericBaker;

// Record handed out by SIDedCollection::getProperties for a shader entry (SIdValue+0x00).
// Only the first word is recovered: the cached batch baker.
struct SShaderProperties {
    boost::intrusive_ptr<IBatchBaker> batchBaker;  // SIdValue+0x00 (0x5e4798, 0x5e4878)
};

// 0x5e2284 glitch::video::guessShaderParameterType(char const*): the parameter type a shader parameter name implies (255 when none).
E_SHADER_PARAMETER_TYPE guessShaderParameterType(const char* name);
// 0x6dbb50 glitch::video::guessShaderVertexAttribute(char const*): the E_VERTEX_ATTRIBUTE a vertex attribute name implies (255 when none).
int32_t guessShaderVertexAttribute(const char* name);
// 0x5e7e00 (defined with CTextureManager): the number after `key` in the name.
int32_t guessSubIdFromName(const char* name, const char* key);
// 0x5e7f80: the sub id of a parameter of that type, from its name (255: none).
int32_t guessSubIdFromName(const char* name, E_SHADER_PARAMETER_TYPE type);
// 0x5e7b50: moves the automatic parameters (types 34..62) behind the others; returns the number that are not.
uint16_t sortParameters(SShaderParameterDef* parameters, uint16_t count);
// 0x5e7974 glitch::video::getLightParameterName(char const*): the interned name "light<digits>" of a light parameter name (the first
// run of digits after "light", compared in lower case), "light" without digits; null with no "light". The result holds a use.
glitch::core::SSharedString getLightParameterName(const char* name);

class IShaderManager {
public:
    // 0x5e5704 (C1) / 0x5e5770 (C2): the collection ctor, vptr, +0x2c..+0x38 zeroed, name "."
    IShaderManager();
    // 0x5e67c4 (D1) / 0x5e683c (D2). The deleting variant 0x5e6820 calls D1 and frees the object.
    virtual ~IShaderManager();

    // vtable +0x08, 0x5e78dc. Stores the driver at +0x2c, takes the base path from the driver's
    // file system (driver+0xd4 -> +0x34 -> vtable +0x2c), assigns it to m_name and, when the flag
    // is set, adds it to the search paths. The pseudocode returns the result of the reference drop
    // (int); kept as int.
    virtual int init(IVideoDriver* driver, bool addDefaultSearchPath);

    // vtable +0x0c, 0x5e67b0: SIDedCollection::removeAll(false) on m_shaders.
    virtual int removeUnusedShaders();

    // vtable +0x10, 0x5e5b2c: walks the name map in key order and calls vtable +0x14 on each
    // shader (see NOTES open question on the slot and on the decompiled return value).
    virtual void clearDriverSpecificResources();

    // vtable +0x14. Pure in the base. The name is taken from the CNullShaderManager and
    // CGLSLShaderManager vtables (slot +0x14), not from a symbol of this class.
    virtual boost::intrusive_ptr<IShader> createEmptyShader(const char* name) = 0;

    // vtable +0x18, 0x5e562c (const). The first argument of the pseudocode is the sret slot; a2
    // (the manager) is not used. Allocates 0x18 bytes, CGenericBaker(shader), stores it in the
    // return slot and adds one reference.
    virtual boost::intrusive_ptr<CGenericBaker> createBatchBaker(const IShader* shader) const;

    // 0x5e4798 (const): returns the cached baker of entry id, or creates one through vtable +0x18
    // and caches it. Null for an out-of-range id or an unset entry.
    boost::intrusive_ptr<IBatchBaker> getBatchBaker(uint16_t id) const;

    // 0x5e4878: clears the cached baker of entry id. Returns 1 when the entry is set, else 0.
    int removeBatchBaker(uint16_t id);

    // 0x5e7298: inserts shader under its own name (IShader+0x20, the name char*) with managed=false.
    // Returns 1.
    int addShader(const boost::intrusive_ptr<IShader>& shader);

    // 0x5e7510: inserts shader under a copy of name (managed=true). Returns 1.
    int addShader(const char* name, const boost::intrusive_ptr<IShader>& shader);

    // 0x5e771c: adds path to m_searchPaths unless it is already there. The flag selects the
    // insertion point; the flag set path inserts at the front (see NOTES open question).
    void addShaderSearchPath(const char* path, bool atFront);

    // 0x5e72bc: searches the search paths for the file, reads it through the file system
    // (vtable +0x44 and +0x50) and builds the object from it. Pseudocode return type kept.
    bool loadShader(const char* name);  // 1 once the shader is loaded and added, else 0 (the pseudocode returns the reference result as a word)

    // 0x5e59ac: writes the shader's attributes (IShader vtable +0x0c) into a .shd XML file named
    // after name and the base path. Pseudocode return type kept (a reference-counted writer result).
    bool serializeShader(boost::intrusive_ptr<IShader> shader, const char* name);  // 1 when written, else 0

    // Layout (see the header comment for the offsets). The C++ members are the stand-ins.
    // m_shaders is +0x04..+0x2c in the original; m_driver is +0x2c; m_searchPaths is +0x30..+0x38;
    // m_name is +0x3c..+0x54.
    glitch::core::detail::SIDedCollection<boost::intrusive_ptr<IShader>, uint16_t, false,
                                          SShaderProperties,
                                          glitch::core::detail::sidedcollection::SValueTraits>
        m_shaders;
    IVideoDriver* m_driver = nullptr;             // +0x2c
    std::vector<std::string> m_searchPaths;       // +0x30..+0x38
    std::string m_name = ".";                     // +0x3c..+0x54, data pointer at +0x50
};

}  // namespace glitch::video

// Derived layouts (comments only; the classes live in their own headers):
//
// CNullShaderManager (null_shader_manager.hpp, vtable _ZTVN6glitch5video18CNullShaderManagerE):
//   vtable: +0x00/+0x04 own dtor (0x5b9b80, 0x5b9cf0), +0x08 IShaderManager::init,
//           +0x0c own removeUnusedShaders (0x5b9cec, forwards to the base), +0x10 base
//           clearDriverSpecificResources, +0x14 own createEmptyShader (0x5b9bb4),
//           +0x18 base createBatchBaker.
//   createShader(char const*) (0x5b9bf4, non-virtual, sret intrusive_ptr): getId on m_shaders
//   (this+4); if not found, new 0x50-byte CNullShader(id = this+0x28, name, driver = this+0x2c),
//   addShader(name) and return it; else return the existing entry.
//   Members at IShaderManager offsets (the derived class adds none in the pseudocode seen).
//
// CShaderCodeManager (shader_code.hpp, inside ICodeShaderManager):
//   SIDedCollection<intrusive_ptr<IShaderCode>, uint16_t, false, SEmptyProperties,
//   SValueTraits> at ICodeShaderManager+0x54 (0x28 bytes). Ctor 0x6e0804 (C1) / 0x6e0818 (C2) is
//   the collection ctor only (pseudocode: SIDedCollection::SIDedCollection(this)). The collection
//   offsets are the same as the IShaderManager ones above (entries +0x18, end +0x1c, storage +0x20,
//   next id +0x24, count +0x26, relative to the collection).
//   ICodeShaderManager ctor 0x6e0ca4: calls IShaderManager::IShaderManager(this), stores its own
//   vtable pointer (off_98B1E0), builds the code collection at this+84 = +0x54, +0x7c = 0, +0x80 = -1.
//   Node id for IShaderCode is at node+0x18 (getId 0x6e1ab4 LDRH [R5,#0x18]), not +0x1c.
//
// CGLSLShaderManager: vtable +0x0c is ICodeShaderManager::removeUnusedShaders, +0x14 is its own
//   createEmptyShader (0x6dfd4c).
