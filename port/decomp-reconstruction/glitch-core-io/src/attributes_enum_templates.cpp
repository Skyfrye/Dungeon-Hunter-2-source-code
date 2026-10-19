// The IAttributes::getEnum<T> / addEnum<T> instances for the video enums (see the declarations at the end of iattributes.hpp).
#include "glitch-core-io/io/iattributes.hpp"

#include "glitch-video/video_names.hpp"

namespace glitch::io {

// 0x5e09cc getEnum<E_BLEND_FACTOR>(const char*): the virtual getEnum(name, choices) (vtable +0x100) with the blend factor names.
int32_t IAttributes::getEnumBlendFactor(const char* name) { return getEnum(name, video::blendFactorNames()); }

// 0x5e0a2c getEnum<E_COMPARE_FUNC>(const char*)
int32_t IAttributes::getEnumCompareFunc(const char* name) { return getEnum(name, video::compareFuncNames()); }

// 0x5e0a5c getEnum<E_STENCIL_OP>(const char*)
int32_t IAttributes::getEnumStencilOp(const char* name) { return getEnum(name, video::stencilOpNames()); }

// 0x5e09fc getEnum<E_POLYGON_MODE>(const char*)
int32_t IAttributes::getEnumPolygonMode(const char* name) { return getEnum(name, video::polygonModeNames()); }

// 0x5fde3c getEnum<E_TEXTURE_FILTER_TYPE>(const char*)
int32_t IAttributes::getEnumTextureFilterType(const char* name) { return getEnum(name, video::textureFilterChoices()); }

// 0x5fde6c getEnum<E_TEXTURE_CLAMP>(const char*)
int32_t IAttributes::getEnumTextureClamp(const char* name) { return getEnum(name, video::textureClampChoices()); }

// 0x5a03cc getEnum<E_INDEX_TYPE>(int): the by-index form (vtable +0x104).
int32_t IAttributes::getEnumIndexType(int index) { return getEnum(index, video::indexTypeChoices()); }

// 0x5ba66c addEnum<E_SHADER_PARAMETER_VALUE_TYPE>(const char*, E_SHADER_PARAMETER_VALUE_TYPE, bool): the virtual addEnum(name, int, choices,
// flag) (vtable +0xf4) with the value type names.
void IAttributes::addEnumShaderParameterValueType(const char* name, int32_t value, bool flag) {
    addEnum(name, static_cast<int>(value), video::shaderParameterValueTypeNames(), flag);
}

}  // namespace glitch::io
