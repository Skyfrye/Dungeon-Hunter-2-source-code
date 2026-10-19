// glitch-video: the type vocabulary every glitch::video header shares. Canonical header of the engine
// unification wave (u1-video): forward declarations of every class of the domain, the enum types, and the
// small descriptor records that cross class boundaries. Other categories include this instead of declaring
// their own copies (reports/decomp-reconstruction/unification/video.json lists the stand-ins).
//
// Enum policy: the binary's enums are 32-bit ints and their enumerators are not recovered for most of them,
// so each is an int32_t alias (an alias redeclared identically elsewhere, as game/BufferedRenderer.hpp does for
// E_PRIMITIVE_TYPE, is legal C++). Aliases cannot be overloaded; where the binary has two overloads that differ
// only in an enum type (IBuffer::map for E_BUFFER_MAP_ACCESS and E_BUFFER_READ_MAP_ACCESS) they differ in
// constness as well, so both fit.
#pragma once

#include <cstdint>

#include "glitch-shared/glitch_core.hpp"
#include "glitch-video/deps/intrusive_ptr.hpp"

namespace glitch {
class IDevice;
class IReferenceCounted;
}  // namespace glitch

namespace glitch::io {
class IAttributes;
struct SAttributeReadWriteOptions;
class IReadFile;
class IWriteFile;
}  // namespace glitch::io

namespace glitch::core {
template <typename T>
class SScopedProcessArray;
}  // namespace glitch::core

namespace glitch::scene {
class CMeshBuffer;  // mesh_buffer.hpp
}  // namespace glitch::scene

namespace glitch::video {

// Enum types (value sets recovered only where a class header says so).
using E_BLEND_FACTOR = int32_t;
using E_BLEND_EQUATION = int32_t;
using E_FACE_SIDE = int32_t;
using E_FACE_WINDING = int32_t;
using E_COMPARE_FUNC = int32_t;
using E_POLYGON_MODE = int32_t;
using E_STENCIL_OP = int32_t;
using E_TRANSFORMATION_STATE = int32_t;
using E_TEXTURE_CUBE_MAP_FACE = int32_t;
using E_PIXEL_FORMAT = int32_t;
using E_DRIVER_TYPE = int32_t;
using E_BUFFER_TYPE = int32_t;
using E_BUFFER_USAGE = int32_t;
using E_BUFFER_MAP_ACCESS = int32_t;       // 0..3 (IBuffer::map stores 32 * access in the map byte)
using E_BUFFER_READ_MAP_ACCESS = int32_t;  // 1 = read back a dirty mirror (IBuffer::map const)
using E_PRIMITIVE_TYPE = int32_t;
using E_PROCESS_BUFFER_TYPE = int32_t;     // 0 = process-buffer heap, 1 = driver (binding) buffer
using E_DRIVER_ALLOCATION_RESULT = int32_t;  // getProcessBuffer result: 4 ok, 8 failed, 16 already allocated
using E_ORIENTATION = int32_t;             // 0..3, quarter turns (IVideoDriver::setOrientation)
using E_LIGHT_TYPE = int32_t;
using E_VERTEX_ATTRIBUTE = int32_t;
using E_SHADER_PARAMETER_TYPE = int32_t;
using E_SHADER_PARAMETER_VALUE_TYPE = int32_t;
using E_SHADER_TYPE = int32_t;  // 4 = vertex shader, 14 = fragment shader (CGLSLShaderManager::createShader 0x6e01b4)
using E_TEXTURE_CLAMP = int32_t;
using E_TEXTURE_TYPE = int32_t;
using E_TEXTURE_LAYOUT = int32_t;

// Classes of the domain (definitions in the header named in the comment).
class IVideoDriver;                    // video_driver.hpp
class CNullDriver;                     // null_driver.hpp
class C2DDriver;                       // c2d_driver.hpp
class CBatchDriver;                    // batch_driver.hpp; that header is pulled in by null_driver.hpp, not here,
                                       // because the class derives from CNullDriver
class CDriverBinding;
class ITexture;                        // texture.hpp
class IBuffer;                         // buffer.hpp
class CImage;                          // image.hpp
class IRenderBuffer;
class IRenderTarget;                   // render_target.hpp
class IMultipleRenderTarget;
class CMaterial;                       // material.hpp
class CMaterialRenderer;               // material_renderer.hpp
class CMaterialRendererManager;        // material_renderer_manager.hpp
class CMaterialVertexAttributeMap;     // material_vertex_attribute_map.hpp
class CVertexAttributeMap;             // vertex_attribute_map.hpp
class CVertexStreams;                  // vertex_streams.hpp
class CPrimitiveStream;                // primitive_stream.hpp
class CLight;                          // light.hpp
class IShader;                         // shader_attributes.hpp
class IShaderCode;                     // shader_code.hpp
class IShaderManager;                  // shader_manager.hpp
class IBatchBaker;
class CTextureManager;                 // texture_manager.hpp
class CGlobalMaterialParameterManager;
class IImageLoader;                    // texture_loaders.hpp
class IImageWriter;                    // texture_manager.hpp
class CVideoModeList;                  // video_mode_list.hpp
struct SVertexStream;                  // vertex_streams.hpp
struct SVertexStreamData;              // vertex_streams.hpp
struct STransformationSource;          // light.hpp

// Texture load descriptor (24-bit-aligned record of 0x20 bytes in the original). Evidence: the ATC header
// reader (0x602e34) and the DDS reader (0x604398) write it; IVideoDriver::createTexture (0x5aa5f8) checks type,
// dimensions and format before calling the driver; ITexture::ITexture (0x5fe404) copies it into the texture.
struct STextureDesc {
    uint32_t type = 0;          // +0x00, texture type: bit (6 + type) of the driver capability word must be set;
                                //        1 requires equal width, height and depth, 2 is the cube map (6 faces)
    uint32_t format = 0;        // +0x04, E_PIXEL_FORMAT (21 or 22 for ATC); 0xff in the low 16 bits = unknown
    uint32_t unknown08 = 0;     // +0x08, ITexture packs its low two bits at flags bit 2; a value of 1 also makes
                                //        the mip-size loop use the flagged size rule (computeMipmapSizeInBytes)
    uint32_t unknown0c = 0;     // +0x0c, ITexture packs its low two bits at flags bit 10
    uint32_t width = 0;         // +0x10
    uint32_t height = 0;        // +0x14
    uint32_t depth = 0;         // +0x18, 1 unless the type is 1
    uint8_t flag = 0;           // +0x1c, set to 1 by the ATC reader; non-zero requests a full mip chain
    uint8_t flag1d = 0;         // +0x1d, non-zero sets bit 2 of ITexture +0x3f
    uint8_t unloadable = 0;     // +0x1e, non-zero makes CTextureManager::addTexture list the texture as unloadable (addTexture 0x5ea7f8)
};

namespace detail::driver {
// The driver render-state block that IVideoDriver::getRenderState (vtable +0x1e0) fills and setRenderState (+0x1e4)
// applies, 0x24 bytes. Layout from CCommonGLDriverBase::SShadowRenderState::getRenderState (0x6dcfb4):
//   +0x00 word: bits 0-7 stencil mask, bits 8-15 clear stencil, bits 16-19 the colour-mask channels (r, g, b, a), bit 20 dither,
//         bit 21 scissor test
//   +0x04 clear colour (four bytes)   +0x08 clear depth   +0x0c depth range near   +0x10 depth range far
//   +0x14 scissor rectangle (four ints)
// The only holder recovered besides the drivers is gameswf's render_handler_glitch (+0x14..+0x1b): its constructor stores the word
// 0x001f00ff and a zero word there, begin_display saves the driver state into it and end_display gives it back.
struct SRenderState {
    uint32_t m_word00 = 0x001f00ffu;  // +0x00
    uint32_t m_word04 = 0;            // +0x04
    float m_clearDepth = 0.0f;        // +0x08
    float m_depthRangeNear = 0.0f;    // +0x0c
    float m_depthRangeFar = 0.0f;     // +0x10
    int32_t m_scissor[4] = {};        // +0x14, upper-left x, y, lower-right x, y
};
}  // namespace detail::driver

// Light type of the dynamic-light parameter pool and of CLight +0x58 (values not recovered).
// The default dynamic light is created with type 3 (IVideoDriver::resetDefaultDynamicLight, 0x5a8ae8).
constexpr int32_t kLightTypeDefaultDynamic = 3;

}  // namespace glitch::video
