// The name tables of glitch::video::getStringsInternal for the video enums that are logged: E_PIXEL_FORMAT (0x5ed944, ELF
// 0x957470), E_TEXTURE_TYPE (0x5fda68, 0x99b788), E_TEXTURE_LAYOUT (0x5fda78, 0x99b79c) and E_TEXTURE_FILTER_TYPE (0x5fdaa0,
// 0x99b7cc). The original overloads cannot be declared side by side in the port (every E_* type is an int32_t alias), so they are
// functions with the table lookup done: the sentinel 255 (types, layouts) or 39 (pixel formats) and anything past a table print
// "unknown".
#pragma once

#include <cstdint>

namespace glitch::video {

const char* pixelFormatName(int32_t format);
const char* textureTypeName(uint32_t type);
const char* textureLayoutName(uint32_t layout);
const char* textureFilterName(uint32_t filter);

// The null-terminated choice lists glitch::video::getStringsInternal returns for the render-state enums (ELF 0x99d9a0 E_BLEND_FACTOR,
// 0x99d9e4 E_BLEND_EQUATION, 0x99da00 E_FACE_SIDE, 0x99da10 E_FACE_WINDING, 0x99da1c E_COMPARE_FUNC, 0x99da44 E_POLYGON_MODE,
// 0x99da54 E_STENCIL_OP), as the attribute serializers pass them to IAttributes::addEnum / getEnum.
const char* const* blendFactorNames();
const char* const* blendEquationNames();
const char* const* faceSideNames();
const char* const* faceWindingNames();
const char* const* compareFuncNames();
const char* const* polygonModeNames();
const char* const* stencilOpNames();
// E_VERTEX_ATTRIBUTE (ELF 0x99da7c, 30 names), E_SHADER_PARAMETER_TYPE (0x99b638, 63) and E_SHADER_PARAMETER_VALUE_TYPE (0x99b738, 19).
const char* const* vertexAttributeNames();
const char* const* shaderParameterTypeNames();
const char* const* shaderParameterValueTypeNames();
// E_INDEX_TYPE (ELF 0x99b5ec, 3 names), E_TEXTURE_FILTER_TYPE (0x99b7cc, 6) and E_TEXTURE_CLAMP (0x99b7e8, 5): the choice lists of
// getStringsInternal(E_INDEX_TYPE*) 0x5a1878, (E_TEXTURE_FILTER_TYPE*) 0x5fdaa0 and (E_TEXTURE_CLAMP*) 0x5fdab4.
const char* const* indexTypeChoices();
const char* const* textureFilterChoices();
const char* const* textureClampChoices();

}  // namespace glitch::video
