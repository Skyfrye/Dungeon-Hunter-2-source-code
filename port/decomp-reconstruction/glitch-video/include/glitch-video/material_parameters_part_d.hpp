// glitch::video::detail::rparams: typed accessors of IMaterialParameters<CMaterialRenderer,
// ISharedMemoryBlockHeader<CMaterialRenderer>> (wave 4, slice 1d). The owner keeps its table as
// count (uint16) at +0x0e, the entry array at +0x20 and the value buffer at +0x24. The values here
// are free functions over SRendererValueTable because the class in material_parameters.hpp has no
// value buffer. Integration: the class forwards each member to the matching function below.
//
// Intrusive pointer rows (boost::intrusive_ptr<ITexture>, <CLight>) are not declared here; they are
// blocked (see NOTES.md, wave 4 slice 1d).
#pragma once

#include <cstdint>
#include <map>

#include "glitch-video/material_parameters.hpp"
#include "glitch-video/deps/glitch_core.hpp"

namespace glitch::video::detail::rparams {

struct SRendererValueTable {
    uint16_t count = 0;                                              // +0x0e: number of entries
    const SParameterEntry* entries = nullptr;                        // +0x20: 16-byte entries
    uint8_t* values = nullptr;                                       // +0x24: value buffer
    // Matrix slots (value type 11) keyed by the entry's valueOffset. The original stores a pointer in
    // the 4-byte slot; the port keeps the CMatrix4 here.
    std::map<uint32_t, core::CMatrix4<float>*>* matrices = nullptr;
};

int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector3d<float>& out);  // 0x5cfed4
int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector4d<float>& out);  // 0x5cff40
int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, SColor& out);  // 0x5cffb0
int getParameter(const SRendererValueTable& t, uint16_t id, uint32_t index, SColorf& out);  // 0x5d0010
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector2d<int>& out);  // 0x5d0110
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector3d<int>& out);  // 0x5d0198
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector4d<int>& out);  // 0x5d0228
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector2d<float>& out);  // 0x5d0364
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector3d<float>& out);  // 0x5d03ec
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, int& out);  // 0x5d0078
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, float& out);  // 0x5d02c4
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, core::vector4d<float>& out);  // 0x5d047c
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, SColor& out);  // 0x5d05ac
int getParameterCvt(const SRendererValueTable& t, uint16_t id, uint32_t index, SColorf& out);  // 0x5d0734
int getParameterCvt(const SRendererValueTable& t, uint16_t id, int* out, int stride);  // 0x5d1428
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector2d<int>* out, int stride);  // 0x5d1340
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector3d<int>* out, int stride);  // 0x5d1250
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector4d<int>* out, int stride);  // 0x5d1160
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector2d<float>* out, int stride);  // 0x5d0f64
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector3d<float>* out, int stride);  // 0x5d0e74
int getParameterCvt(const SRendererValueTable& t, uint16_t id, float* out, int stride);  // 0x5d104c
int getParameterCvt(const SRendererValueTable& t, uint16_t id, core::vector4d<float>* out, int stride);  // 0x5d0c64
int getParameterCvt(const SRendererValueTable& t, uint16_t id, SColor* out, int stride);  // 0x5d0a3c
int getParameterCvt(const SRendererValueTable& t, uint16_t id, SColorf* out, int stride);  // 0x5d086c
int getParameter(const SRendererValueTable& t, uint16_t id, int* out, int stride);  // 0x5d1b24
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector2d<int>* out, int stride);  // 0x5d1a74
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector3d<int>* out, int stride);  // 0x5d19c4
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector4d<int>* out, int stride);  // 0x5d1914
int getParameter(const SRendererValueTable& t, uint16_t id, float* out, int stride);  // 0x5d1878
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector2d<float>* out, int stride);  // 0x5d17c8
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector3d<float>* out, int stride);  // 0x5d1718
int getParameter(const SRendererValueTable& t, uint16_t id, core::vector4d<float>* out, int stride);  // 0x5d1668
int getParameter(const SRendererValueTable& t, uint16_t id, SColor* out, int stride);  // 0x5d15b4
int getParameter(const SRendererValueTable& t, uint16_t id, SColorf* out, int stride);  // 0x5d1500
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector2d<int>* src, int stride);  // 0x5d265c
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector3d<int>* src, int stride);  // 0x5d256c
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector4d<int>* src, int stride);  // 0x5d247c
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector2d<float>* src, int stride);  // 0x5d2280
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector3d<float>* src, int stride);  // 0x5d2190
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const int* src, int stride);  // 0x5d2744
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const float* src, int stride);  // 0x5d2368
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const core::vector4d<float>* src, int stride);  // 0x5d1fbc
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const SColor* src, int stride);  // 0x5d1d9c
int setParameterCvt(const SRendererValueTable& t, uint16_t id, const SColorf* src, int stride);  // 0x5d1bc0
int setParameter(const SRendererValueTable& t, uint16_t id, const int* src, int stride);  // 0x5d2e7c
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector2d<int>* src, int stride);  // 0x5d2dcc
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector3d<int>* src, int stride);  // 0x5d2d1c
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector4d<int>* src, int stride);  // 0x5d2c6c
int setParameter(const SRendererValueTable& t, uint16_t id, const float* src, int stride);  // 0x5d2bd0
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector2d<float>* src, int stride);  // 0x5d2b20
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector3d<float>* src, int stride);  // 0x5d2a70
int setParameter(const SRendererValueTable& t, uint16_t id, const core::vector4d<float>* src, int stride);  // 0x5d29c0
int setParameter(const SRendererValueTable& t, uint16_t id, const SColor* src, int stride);  // 0x5d290c
int setParameter(const SRendererValueTable& t, uint16_t id, const SColorf* src, int stride);  // 0x5d2858
int setParameterElement(const SRendererValueTable& t, uint16_t id, uint32_t index, uint32_t element, uint8_t value);  // 0x5d404c
int setParameterElement(const SRendererValueTable& t, uint16_t id, uint32_t index, uint32_t element, int32_t value);  // 0x5d4154
int setParameterElement(const SRendererValueTable& t, uint16_t id, uint32_t index, uint32_t element, float value);  // 0x5d425c

}  // namespace glitch::video::detail::rparams
