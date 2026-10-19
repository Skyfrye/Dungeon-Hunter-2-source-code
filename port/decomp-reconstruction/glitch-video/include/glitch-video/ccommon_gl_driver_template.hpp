// Layout of the template instance
//   CCommonGLDriver<CProgrammableGLDriver<CGLSLShaderHandler>, detail::CProgrammableGLFunctionPointerSet>
// past the offsets already held by CCommonGLDriverBase and CCommonGLDriver (ccommon_gl_driver_base.hpp,
// ccommon_gl_driver.hpp). Dependency pass, offsets only: no method bodies here.
//
// Each offset cites the instance method (address) whose pseudocode shows it. Offsets that are not
// confirmed are listed in glitch-video/NOTES.md ("Dependency pass: CCommonGLDriver template instance"),
// not here. Pseudocode: tools/decomp_extract.py (Hex-Rays). Driver vtable slots are byte offsets.
#pragma once

#include <cstddef>
#include <cstdint>

namespace glitch::video::ccgl_template {

// ---- Driver object (this in the instance methods; a1 / a2 / a4 in the pseudocode) ----

// +0x4c, int: texture unit count. 0x5b28dc (CTexture::unbindImpl) loops over it; 0x5b5610 (bindImpl) and
// 0x5b280c (generateMipmapsImpl) use (count - 1) as the scratch unit: glActiveTexture(count + 0x84bf).
inline constexpr std::size_t kTextureUnitCount = 0x4c;

// +0x9c, uint32: capability word. Bits seen in the instance methods:
//   0x00000004  0x5afff0 (updateData tail): driver-side mipmap generation; calls the texture's vtable +0x20.
//   0x00000080  0x5afd40 (updateParameters): WRAP_T is set again on the 0x40 dirty path.
//   0x00000800  0x5b1244 (CFramebuffer::bind), 0x5b1bd8 (CFramebuffer ctor): framebuffer objects present.
//   0x00020000  0x5afd40: max anisotropy (GL 0x84FE) is applied.
inline constexpr std::size_t kCapsWord = 0x9c;
inline constexpr std::uint32_t kCapsMipmapGeneration = 0x4;
inline constexpr std::uint32_t kCapsWrapR = 0x80;
inline constexpr std::uint32_t kCapsFramebufferObject = 0x800;
inline constexpr std::uint32_t kCapsMaxAnisotropy = 0x20000;

// +0xf0, pointer: last material cache. 0x5b73e0 (applyRenderStates) compares its +4 with the material's
// +4 (renderer). Type not confirmed (open question in NOTES).
inline constexpr std::size_t kLastMaterialCache = 0xf0;

// +0x1dc, E_FACE_WINDING (already m_frontFace in CCommonGLDriverBase). 0x5b1244 uses it for glFrontFace.
inline constexpr std::size_t kFrontFace = 0x1dc;

// +0x254 (596), uint32 x N: bound buffer name per buffer target. Index is the target byte of the buffer
// (CBuffer +0x10). 0x5b051c, 0x5b2468, 0x5b3a1c, 0x5b6374, 0x5b67b0 read driver + 4*(target+148) + 4.
inline constexpr std::size_t kBoundBufferByTarget = 0x254;

// +0x268 (616), int: active texture unit index. Compared with the unit at the bind site; updated with
// glActiveTexture(GL_TEXTURE0 + unit). 0x5b280c, 0x5b5610.
inline constexpr std::size_t kActiveTextureUnit = 0x268;

// +0x26c (620), int: cached GL_UNPACK_ALIGNMENT (glPixelStorei 0x0cf5). 0x5afff0 (updateData).
inline constexpr std::size_t kUnpackAlignment = 0x26c;

// +0x420 (1056): bound texture table. Row per texture type (CTexture +0x38 & 3), 32 bytes per row, one
// uint32 per unit: driver + 0x420 + 32*type + 4*unit. 0x5b28dc, 0x5b5610, 0x5b280c, DRV::setTexture.
// The row width (32 bytes) suggests at most 8 units; not confirmed (open question).
inline constexpr std::size_t kTextureTable = 0x420;
inline constexpr std::size_t kTextureTableRowStride = 32;

// +0x4a0 (1184), byte: front-face flip. 0x5b1244 (CFramebuffer::bind) clears it and calls glFrontFace
// with FaceWindingMap[driver +0x1dc]. Same offset as CCommonGLDriver::m_frontFaceFlip.
inline constexpr std::size_t kFrontFaceFlip = 0x4a0;

// +0x4a8 (1192), float: maximum texture anisotropy. 0x5afd40 caps a texture's +0x44 value with it.
inline constexpr std::size_t kMaxAnisotropy = 0x4a8;

// +0x4b0 (1200): pixel-format table, rows of 20 bytes indexed by the texture pixel format
// (CTexture +0x38 bits 4-9). Row fields used by 0x5afff0 (updateData):
//   row + 0x0 internal format (glTexImage2D arg 3), row + 0x4 format (arg 7), row + 0x8 type (arg 8).
// Bytes 0x0c..0x13 of a row are not read by the instance methods. The table data is not in the repo.
inline constexpr std::size_t kFormatTable = 0x4b0;
inline constexpr std::size_t kFormatTableRowStride = 20;

// +0x7ec (2028), uint32: caps word. Bit 0x80000 gates applying GL_TEXTURE_MAX_LEVEL (0x813d) in
// 0x5afd40 (updateParameters).
inline constexpr std::size_t kCapsWord2 = 0x7ec;
inline constexpr std::uint32_t kCaps2MaxLevel = 0x80000;

// Driver vtable slots (byte offsets into the vtable), as called by the instance methods:
inline constexpr std::size_t kVtDriverBufferData = 0x48;    // 0x67b0 bindImpl: (driver, name, glTarget, glUsage, size, data)
inline constexpr std::size_t kVtDriverDeleteBuffer = 0x50;  // 0x5b051c unbindImpl: (driver, name)
inline constexpr std::size_t kVtDriverUnk6c = 0x6c;         // 0x5b1244 CFramebuffer::bind: (driver, 2, v5); name open
inline constexpr std::size_t kVtDriverUnk70 = 0x70;         // 0x5b1244 CFramebuffer::bind: (driver, 2); name open
inline constexpr std::size_t kVtDriverUnkA8 = 0xa8;         // 0x5b1244 CFramebuffer::bind: (driver, -1); name open
inline constexpr std::size_t kVtDriverAttach = 0x1e8;       // 0x5b1244 CFramebuffer::bind: (driver, this + 0x14)

// ---- CBuffer (nested in the instance; IBuffer subobject, operator new(0x20) in 0x5b1480) ----

// IBuffer fields used by the instance methods (see buffer.hpp):
inline constexpr std::size_t kBufferData = 0x08;      // data pointer
inline constexpr std::size_t kBufferSize = 0x0c;      // uint32, byte count
inline constexpr std::size_t kBufferTarget = 0x10;    // byte, index into BufferTypeMap
inline constexpr std::size_t kBufferUsage = 0x11;     // byte, index into BufferUsageMap; 4 is set on a failed upload
inline constexpr std::size_t kBufferFlags = 0x12;     // byte, see flag bits below
inline constexpr std::size_t kBufferMapState = 0x13;  // byte: low 5 bits map count, bits 5-6 access (mapImpl)
// Flag bits of kBufferFlags (from 0x5b3a1c, 0x5b6374, 0x5b67b0, 0x5b051c, 0x5b2468, 0x5b1480):
inline constexpr std::uint8_t kBufferFlagNotOwned = 0x01;     // clone passes flags & 1 (0x5b1480)
inline constexpr std::uint8_t kBufferFlagDirty = 0x02;        // set by mapImpl when usage != 4; cleared by update()
inline constexpr std::uint8_t kBufferFlagBindPending = 0x08;  // set by bindImpl; cleared by unbindImpl (& 0xe7)
inline constexpr std::uint8_t kBufferFlagUploadFailed = 0x10; // set by update()/bindImpl on a failed upload
inline constexpr std::uint8_t kBufferFlagUnmapCallback = 0x20; // cleared by unmapImpl (& 0xdf); IBuffer notes call it the unmap callback bit
// CBufferBase fields (ccommon_gl_driver_base.hpp), now identified:
inline constexpr std::size_t kBufferDriver = 0x14;    // driver pointer
inline constexpr std::size_t kBufferName = 0x18;      // GL buffer name (glGenBuffers / glDeleteBuffers)
inline constexpr std::size_t kBufferMapped = 0x1c;    // mapped pointer; unmapImpl writes 0

// ---- CTexture (nested; ITexture subobject, see texture.hpp) ----

inline constexpr std::size_t kTextureName = 0x1c;          // const char*, used in the log text of 0x5afd40 / 0x5afff0
inline constexpr std::size_t kTextureWidth = 0x20;         // int32
inline constexpr std::size_t kTextureHeight = 0x24;        // int32
inline constexpr std::size_t kTextureData = 0x2c;          // data pointer (updateData: null means no CPU data)
inline constexpr std::size_t kTextureLevelSizes = 0x30;    // uint32[mipCount + 1], then the dirty bitmap
inline constexpr std::size_t kTextureDriver = 0x34;        // driver pointer (unbindImpl, updateParameters, generateMipmapsImpl)
inline constexpr std::size_t kTexturePacked = 0x38;        // uint32 packed state (see masks below)
inline constexpr std::size_t kTextureMipCount = 0x3e;      // byte, level count used by update, updateData, bind
inline constexpr std::size_t kTextureFlags = 0x3f;         // byte, see the flag notes in NOTES.md
inline constexpr std::size_t kTextureDirty = 0x40;         // uint16 dirty word
inline constexpr std::size_t kTextureMaxAnisotropy = 0x44; // float
inline constexpr std::size_t kTextureMaxLevel = 0x50;      // float: GL_TEXTURE_MAX_LEVEL value (0x5afd40)
inline constexpr std::size_t kTextureGLName = 0x54;        // uint32 GL texture name
inline constexpr std::size_t kTextureFullAllocate = 0x58;  // byte: updateData's a2 (TexImage2D vs TexSubImage2D)

// kTexturePacked fields (0x5afd40, 0x5afff0, 0x5b5610, 0x5b28dc, 0x5b280c):
inline constexpr std::uint32_t kPackedTypeMask = 0x3;          // TextureTypeMap index
inline constexpr unsigned kPackedFormatShift = 4;              // pixel format, 6 bits (0x3f)
inline constexpr std::uint32_t kPackedFormatMask = 0x3f;
inline constexpr unsigned kPackedMinFilterShift = 12;          // 3 bits, TextureFilterMap (GL 0x2801)
inline constexpr unsigned kPackedMagFilterShift = 15;          // 3 bits, TextureFilterMap (GL 0x2800)
inline constexpr unsigned kPackedWrapSShift = 18;              // 3 bits, TextureWrapModeMap (GL 0x2802)
inline constexpr unsigned kPackedWrapTShift = 21;              // 3 bits, TextureWrapModeMap (GL 0x2803)
inline constexpr std::uint32_t kPackedFieldMask3 = 0x7;

// kTextureDirty bits (0x5afd40 updateParameters; 0x5afff0 clears 0x3; 0x5b5610 sets 0x4):
inline constexpr std::uint16_t kDirtyData = 0x0001;            // updateData
inline constexpr std::uint16_t kDirtyMipmaps = 0x0002;         // mipmap generation pending
inline constexpr std::uint16_t kDirtyMinFilter = 0x0004;       // GL 0x2801
inline constexpr std::uint16_t kDirtyMagFilter = 0x0008;       // GL 0x2800
inline constexpr std::uint16_t kDirtyWrapS = 0x0010;           // GL 0x2802
inline constexpr std::uint16_t kDirtyWrapT = 0x0020;           // GL 0x2803
inline constexpr std::uint16_t kDirtyWrapR = 0x0040;           // GL 0x2803 in the instance (see NOTES)
inline constexpr std::uint16_t kDirtyMaxAnisotropy = 0x0080;   // GL 0x84fe
inline constexpr std::uint16_t kDirtyMaxLevel = 0x0400;        // GL 0x813d
inline constexpr std::uint16_t kDirtyParameterMask = 0x1ffc;   // update(): any parameter bit (0x5b044c)

// ---- CRenderBuffer / CFramebuffer (nested) ----

// CRenderBuffer: +0x18 GL renderbuffer name (0x5b11ec bind, 0x5b130c unbind). Same name slot as CBuffer.
inline constexpr std::size_t kRenderBufferName = 0x18;

// CFramebuffer: +0x08 driver (read by bind, 0x5b1244); +0x14 attachment block passed to driver vtable
// +0x1e8; +0x34 saved GL_FRAMEBUFFER_BINDING (0x8ca6, written by the ctor 0x5b1bd8).
// The ctor does not store the driver at +0x08 (open question in NOTES).
inline constexpr std::size_t kFramebufferDriver = 0x08;
inline constexpr std::size_t kFramebufferAttachments = 0x14;
inline constexpr std::size_t kFramebufferSavedBinding = 0x34;

// ---- helper ----

// Reads a field of the given type at a byte offset of a raw object. The offsets above are the
// original's; this only documents the access pattern (no object is owned here).
template <typename T>
inline T& fieldAt(void* object, std::size_t offset) {
    return *reinterpret_cast<T*>(static_cast<unsigned char*>(object) + offset);
}

}  // namespace glitch::video::ccgl_template
