#include "glitch-video/video_names.hpp"

namespace glitch::video {

namespace {
const char* const kPixelFormatNames[42] = {
    "L8", "L16", "A8", "A8L8", "L8A8", "R5G6B5", "A4R4G4B4", "R4G4B4A4", "A1R5G5B5", "R5G5B5A1", "R8G8B8", "B8G8R8", "A8R8G8B8",
    "B8G8R8A8", "R8G8B8A8", "A8B8G8R8", "A2B10G10R10", "COMPRESSED_RGB_S3TC_DXT1", "COMPRESSED_RGBA_S3TC_DXT1",
    "COMPRESSED_RGBA_S3TC_DXT3", "COMPRESSED_RGBA_S3TC_DXT5", "COMPRESSED_ATC_RGB", "COMPRESSED_ATC_RGBA",
    "COMPRESSED_ATC_ALPHA_INTERP", "COMPRESSED_RGB_PVRTC_2BPP", "COMPRESSED_RGBA_PVRTC_2BPP", "COMPRESSED_RGB_PVRTC_4BPP",
    "COMPRESSED_RGBA_PVRTC_4BPP", "RGB16F", "RGBA16F", "RGB32F", "RGBA32F", "DEPTH16", "DEPTH24", "DEPTH32", "DEPTH24_STENCIL8",
    "STENCIL1", "STENCIL4", "STENCIL8", "UNKNOWN", "COMPRESSED_RGB8_ETC2", "COMPRESSED_RGBA8_ETC2_EAC"};
const char* const kTextureTypeNames[4] = {"2D", "3D", "Cube Map", "Rectangle"};
const char* const kTextureLayoutNames[4] = {"Linear", "Linear Uniform Pitch", "Tiled 32", "Swizzled"};
const char* const kTextureFilterNames[6] = {"Nearest",    "Linear",     "Nearest Mipmap Nearest",
                                            "Linear Mipmap Nearest", "Nearest Mipmap Linear", "Linear Mipmap Linear"};
const char* const kBlendFactorNames[] = {"Zero", "One", "Source Color", "1 - Source Color", "Source Alpha", "1 - Source Alpha",
                                         "Destination Color", "1 - Destination Color", "Destination Alpha", "1 - Destination Alpha",
                                         "Constant Color", "1 - Constant Color", "Constant Alpha", "1 - Constant Alpha",
                                         "Source Alpha Saturate", "Separate", nullptr};
const char* const kBlendEquationNames[] = {"Add", "Subtract", "Reverse Subtract", "Min", "Max", "Separate", nullptr};
const char* const kFaceSideNames[] = {"Back", "Front", "Front and Back", nullptr};
const char* const kFaceWindingNames[] = {"Counterclockwise", "Clockwise", nullptr};
const char* const kCompareFuncNames[] = {"Never", "Less", "Equal", "Less or Equal", "Greater", "Not Equal", "Greater or Equal", "Always",
                                         "Separate", nullptr};
const char* const kPolygonModeNames[] = {"Fill", "Line", "Point", nullptr};
const char* const kStencilOpNames[] = {"Keep", "Zero", "Replace", "Increment", "Increment Wrap", "Decrement", "Decrement Wrap", "Invert",
                                       "Separate", nullptr};
const char* const kVertexAttributeNames[] = {
    "Position", "TexCoord0", "TexCoord1", "TexCoord2", "TexCoord3", "TexCoord4", "TexCoord5", "TexCoord6",
    "TexCoord7", "TexCoord8", "TexCoord9", "TexCoord10", "TexCoord11", "TexCoord12", "TexCoord13", "TexCoord14",
    "TexCoord15", "Normal", "Color0", "Color1", "Tangent0", "Tangent1", "Tangent2", "Tangent3", "Binormal0",
    "Binormal1", "Binormal2", "Binormal3", "SkinWeights", "SkinIndices", nullptr};
const char* const kShaderParameterTypeNames[] = {
    "Constant", "Color", "Texture", "Texture Matrix", "Texture Env Color", "Ambient Color", "Diffuse Color",
    "Specular Color", "Emsission Color", "Shininess", "Alpha Ref", "Bone Matrices", "Bone Texture",
    "Bone Texture Params", "Bone Quaternions", "Weight Mask", "ColorGen Constant Color", "Position for the fairy",
    "Light", "Light Position", "Light Direction", "Light Attenuation", "Light Ambient Color", "Light Diffuse Color",
    "Light Specular Color", "Light Spot Exponent", "Light Spot Cutoff", "Light Cone Angles", "Scene Ambient Light",
    "Fog Density", "Fog Start End", "Fog Color", "Clip Plane", "Point Size", "Model Matrix", "View Matrix",
    "Projection Matrix", "Model View Matrix", "Model View Projection Matrix", "Model Matrix Inverse",
    "View Matrix Inverse", "View Projection Matrix Inverse", "Model View Inverse", "Model View Projection Inverse",
    "Model Matrix Inverse Transpose", "View Matrix Inverse Transpose", "View Projection Matrix Inverse Transpose",
    "Model View Matrix Inverse Transpose", "Model View Projection Inverse Transpose", "Model Matrix Transpose",
    "View Matrix Transpose", "Model View Matrix Transpose", "Model View Projection Matrix Transpose",
    "Projection Matrix Inverse", "Projection Matrix Transpose", "Projection Matrix Inverse Transpose", "Texture Bias",
    "Camera Near and Far", "Eye Position", "Viewport", "Viewport Dimensions", "Viewport Dimensions Inverse", "Time", nullptr};
const char* const kShaderParameterValueTypeNames[] = {
    "ubyte", "int", "int2", "int3", "int4", "float", "float2", "float3", "float4", "float2x2", "float3x3", "float4x4",
    "sampler2D", "sampler3D", "samplerCUBE", "samplerRECT", "color", "colorf", "light", nullptr};
}  // namespace

const char* const* blendFactorNames() { return kBlendFactorNames; }
const char* const* blendEquationNames() { return kBlendEquationNames; }
const char* const* faceSideNames() { return kFaceSideNames; }
const char* const* faceWindingNames() { return kFaceWindingNames; }
const char* const* compareFuncNames() { return kCompareFuncNames; }
const char* const* polygonModeNames() { return kPolygonModeNames; }
const char* const* stencilOpNames() { return kStencilOpNames; }
const char* const* vertexAttributeNames() { return kVertexAttributeNames; }
const char* const* shaderParameterTypeNames() { return kShaderParameterTypeNames; }
const char* const* shaderParameterValueTypeNames() { return kShaderParameterValueTypeNames; }

namespace {
const char* const kIndexTypeChoices[] = {"u8", "u16", "u32", nullptr};
const char* const kTextureFilterChoices[] = {"Nearest", "Linear", "Nearest Mipmap Nearest", "Linear Mipmap Nearest",
                                             "Nearest Mipmap Linear", "Linear Mipmap Linear", nullptr};
const char* const kTextureClampChoices[] = {"Repeat", "Clamp", "Clamp to Edge", "Clamp to Border", "Mirror", nullptr};
}  // namespace
const char* const* indexTypeChoices() { return kIndexTypeChoices; }
const char* const* textureFilterChoices() { return kTextureFilterChoices; }
const char* const* textureClampChoices() { return kTextureClampChoices; }

const char* pixelFormatName(int32_t format) {
    return (static_cast<uint16_t>(format) == 39 || format < 0 || format >= 42) ? "unknown" : kPixelFormatNames[format];
}
const char* textureTypeName(uint32_t type) {
    return (static_cast<uint16_t>(type) == 255 || type >= 4) ? "unknown" : kTextureTypeNames[type];
}
const char* textureLayoutName(uint32_t layout) {
    return (static_cast<uint16_t>(layout) == 255 || layout >= 4) ? "unknown" : kTextureLayoutNames[layout];
}
const char* textureFilterName(uint32_t filter) { return filter >= 6 ? "unknown" : kTextureFilterNames[filter]; }

}  // namespace glitch::video
