// Owner K1: the shader name helpers of glitch::video: guessShaderParameterType (0x5e2284), guessShaderVertexAttribute (0x6dbb50),
// guessSubIdFromName by type (0x5e7f80), sortParameters (0x5e7b50) and getLightParameterName (0x5e7974).
//
// The two guess functions look a lower-case copy of the name up in a function-local static std::map<char const*, E, SStringLess>
// that the first call builds from a boost::assign list of (name, type) pairs. The lists below are the pairs in the order the
// listing pushes them, which matters because the map keeps the first of two equal keys (no key repeats with a different type).
#include <cstring>
#include <map>
#include <string>
#include <vector>

#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/shared_string_heap_ops.hpp"
#include "glitch-video/shader_manager.hpp"
#include "glitch-video/video_names.hpp"
#include "glitch-video/video_types.hpp"

namespace glitch::video {

namespace {

struct SNamedType {
    const char* name;
    int32_t type;
};

// guessShaderParameterType: the 241 pairs of the assign list, in push order. (Two keys carry a trailing space in the original and
// are kept as they are.)
const SNamedType kParameterTypeNames[] = {
    {"matmodelt", 50}, {"matmodeltrans", 50}, {"matworldt", 50}, {"matworldtrans", 50}, {"modelt", 50}, {"modeltrans", 50},
    {"modeltransposed", 50}, {"worldt", 50}, {"worldtrans", 50}, {"worldtransposed", 50}, {"wvp", 39}, {"matwvp", 39},
    {"matmodelviewprojection", 39}, {"matworldviewprojection", 39}, {"worldviewprojectionmatrix", 39},
    {"modelviewprojection", 39}, {"worldviewprojection", 39}, {"matmodelviewprojectionit", 49},
    {"matworldviewprojectionit", 49}, {"modelviewprojectionit", 49}, {"modelviewprojectioninversetransposed", 49},
    {"worldviewprojectionit", 49}, {"worldviewprojectioninversetransposed", 49}, {"matmodelviewi", 43},
    {"matmodelviewinv", 43}, {"matworldviewi", 43}, {"matworldviewinv", 43}, {"modelviewi", 43}, {"modelviewinv", 43},
    {"modelviewinverse", 43}, {"worldviewi", 43}, {"worldviewinv", 43}, {"worldviewinverse", 43}, {"wvpt", 53},
    {"matmodelviewprojectiont", 53}, {"matmodelviewprojectiontrans", 53}, {"matworldviewprojectiont", 53},
    {"matworldviewprojectiontrans", 53}, {"modelviewprojectiont", 53}, {"modelviewprojectiontrans", 53},
    {"modelviewprojectiontransposed", 53}, {"worldviewprojectiont", 53}, {"worldviewprojectiontrans", 53},
    {"worldviewprojectiontransposed", 53}, {"matviewprojectionit", 47}, {"viewprojectionit", 47},
    {"viewprojectioninversetransposed ", 47}, {"matprojectioni", 54}, {"matprojectioninv", 54}, {"projectioni", 54},
    {"projectioninv", 54}, {"projectioninverse", 54}, {"matviewprojectioni", 42}, {"matviewprojectioninv", 42},
    {"viewprojectioni", 42}, {"viewprojectioninv", 42}, {"viewprojectioninverse", 42}, {"matviewit", 46}, {"viewit", 46},
    {"viewinversetransposed ", 46}, {"matmodelit", 45}, {"matworldit", 45}, {"worldit", 45}, {"modelinversetransposed", 45},
    {"worldit", 45}, {"worldinversetransposed", 45}, {"matmodelview", 38}, {"matworldview", 38}, {"worldviewmatrix", 38},
    {"worldview", 38}, {"modelviewmatrix", 38}, {"modelview", 38}, {"viewmatrix", 36}, {"matview", 36}, {"view", 36},
    {"matworldi", 40}, {"matworldinv", 40}, {"matmodeli", 40}, {"matmodelinv", 40}, {"worldi", 40}, {"worldinv", 40},
    {"worldinverse", 40}, {"modeli", 40}, {"modelinv", 40}, {"modelinverse", 40}, {"matprojection", 37},
    {"projectionmatrix", 37}, {"projection", 37}, {"matviewt", 51}, {"matviewtrans", 51}, {"viewt", 51}, {"viewtrans", 51},
    {"matmodelviewprojectioni", 44}, {"matmodelviewprojectioninv", 44}, {"matworldviewprojectioni", 44},
    {"matworldviewprojectioninv", 44}, {"modelviewprojectioni", 44}, {"modelviewprojectioninv", 44},
    {"modelviewprojectioninverse", 44}, {"worldviewprojectioni", 44}, {"worldviewprojectioninv", 44},
    {"worldviewprojectioninverse", 44}, {"matprojectiont", 55}, {"matprojectiontrans", 55}, {"projectiont", 55},
    {"projectiontrans", 55}, {"projectiontransposed", 55}, {"matmodelviewit", 48}, {"matworldviewit", 48}, {"modelviewit", 48},
    {"modelviewinversetransposed", 48}, {"worldviewit", 48}, {"worldviewinversetransposed", 48}, {"matmodel", 35},
    {"matworld", 35}, {"worldmatrix", 35}, {"world", 35}, {"matviewi", 41}, {"matviewinv", 41}, {"viewi", 41}, {"viewinv", 41},
    {"viewinverse", 41}, {"matmodelviewt", 52}, {"matmodelviewtrans", 52}, {"matworldviewt", 52}, {"matworldviewtrans", 52},
    {"modelviewt", 52}, {"modelviewtrans", 52}, {"modelviewtransposed", 52}, {"worldviewt", 52}, {"worldviewtrans", 52},
    {"worldviewtransposed", 52}, {"matprojectionit", 56}, {"projectionit", 56}, {"projectioninversetransposed", 56},
    {"texture_bias", 33}, {"sampler_bias", 33}, {"pointsize", 34}, {"viewportdimension", 60}, {"viewportsize", 60},
    {"eyepos", 58}, {"eye_pos", 58}, {"eyeposition", 58}, {"eye_position", 58}, {"cameraposition", 58}, {"camerapos", 58},
    {"camera_position", 58}, {"camera_pos", 58}, {"camnearandfar", 57}, {"time", 62}, {"systemtime", 62}, {"constant", 0},
    {"viewportdimensioni", 61}, {"viewportdimensioninv", 61}, {"viewport", 59}, {"light.specularcolor", 24},
    {"light.specular_color", 24}, {"lightspecularcolor", 24}, {"light_specular_color", 24}, {"lightdir", 20},
    {"light.direction", 20}, {"light_direction", 20}, {"lightdirection", 20}, {"lightdir", 20}, {"light.spotcutoff", 26},
    {"light.spot_cutoff", 26}, {"lightspotcutoff", 26}, {"light_spot_cutoff", 26}, {"light.ambientcolor", 22},
    {"light.ambient_color", 22}, {"lightambientcolor", 22}, {"light_ambient_color", 22}, {"lightcolor", 23},
    {"light.diffusecolor", 23}, {"light.diffuse_color", 23}, {"lightdiffusecolor", 23}, {"light_diffuse_color", 23},
    {"light.attenuation", 21}, {"lightattenuation", 21}, {"light_attenuation", 21}, {"lightpos", 19}, {"light.position", 19},
    {"light_position", 19}, {"lightposition", 19}, {"lightpos", 19}, {"light.spotexponent", 25}, {"light.spot_exponent", 25},
    {"lightspotexponent", 25}, {"light_spot_exponent", 25}, {"fogcolor", 31}, {"fog_color", 31}, {"fog.color", 31},
    {"fogstartend", 30}, {"fog_startend", 30}, {"fog_start_end", 30}, {"fog.startend", 30}, {"fog.start_end", 30},
    {"fogdensity", 29}, {"fog_density", 29}, {"fog.density", 29}, {"mattexcoord", 3}, {"texture_matrix", 3},
    {"texturematrix", 3}, {"textureenvcolor", 4}, {"texture", 2}, {"sampler", 2}, {"emissioncolormaterial", 8},
    {"emissioncolor", 8}, {"specularcolormaterial", 7}, {"specularcolor", 7}, {"diffusecolormaterial", 6}, {"diffusecolor", 6},
    {"ambientcolormaterial", 5}, {"ambientcolor", 5}, {"shininesscolormaterial", 9}, {"shininess", 9}, {"specularpower", 9},
    {"weightmask", 15}, {"weight_mask", 15}, {"bone_texture_params", 13}, {"bonetextureparams", 13}, {"bone_quat", 14},
    {"bonequat", 14}, {"bone_matrices", 11}, {"bonematrices", 11}, {"bone_texture", 12}, {"bonetexture", 12},
    {"clipplane", 32}, {"clip_plane", 32}, {"sceneambientlight", 28}, {"scene_ambient_light", 28}, {"sceneambient", 28},
    {"scene_ambient", 28}, {"ambientlightmodel", 28}, {"ambient_light_model", 28}, {"ambientlight", 28}, {"ambient_light", 28},
    {"alpharef", 10}, {"alpha_ref", 10}, {"colorgencolor", 16}, {"u_fairyposw", 17},
};

// guessShaderVertexAttribute: the 46 pairs of its assign list.
const SNamedType kVertexAttributeNames[] = {
    {"vertex", 0}, {"pos", 0}, {"position", 0}, {"vertices", 0}, {"normal", 17}, {"normals", 17}, {"tangent", 20},
    {"tangents", 20}, {"tangent0", 20}, {"tangent1", 21}, {"tangent2", 22}, {"tangent3", 23}, {"binormal", 24},
    {"binormals", 24}, {"binormal0", 24}, {"binormal1", 25}, {"binormal2", 26}, {"binormal3", 27}, {"diffuse", 18},
    {"color", 18}, {"color0", 18}, {"color1", 19}, {"secondarycolor", 19}, {"alternatecolor", 19}, {"coord", 1}, {"coord0", 1},
    {"coord1", 2}, {"coord2", 3}, {"coord3", 4}, {"coord4", 5}, {"coord5", 6}, {"coord6", 7}, {"coord7", 8}, {"texcoord", 1},
    {"texcoord0", 1}, {"texcoord1", 2}, {"texcoord2", 3}, {"texcoord3", 4}, {"texcoord4", 5}, {"texcoord5", 6},
    {"texcoord6", 7}, {"texcoord7", 8}, {"skinweights", 28}, {"skinweight", 28}, {"skinindices", 29}, {"skinindex", 29},
};

// A lower-case copy of the C string: the original maps bytes 0..255 through the C locale tolower table (ASCII letters only).
char lowerChar(unsigned char c) { return (c >= 'A' && c <= 'Z') ? static_cast<char>(c - 'A' + 'a') : static_cast<char>(c); }

}  // namespace

// 0x5e2284 _ZN6glitch5video24guessShaderParameterTypeEPKc
// The dictionary is the assign list plus, after it, the lower-case name of every E_SHADER_PARAMETER_TYPE (63 names, value =
// the index); a name already in the map keeps its first value. The lookup key drops everything inside [ ] and every digit and
// lower-cases the rest; 255 when it is not in the dictionary.
E_SHADER_PARAMETER_TYPE guessShaderParameterType(const char* name) {
    static const std::map<std::string, int32_t> dictionary = [] {
        std::map<std::string, int32_t> map;
        for (const SNamedType& entry : kParameterTypeNames) map.emplace(entry.name, entry.type);
        const char* const* names = shaderParameterTypeNames();
        for (int32_t i = 0; i < 63; ++i) {
            std::string lowered;
            for (const char* p = names[i] != nullptr ? names[i] : "unknown"; *p != '\0'; ++p) lowered += lowerChar(static_cast<unsigned char>(*p));
            map.emplace(lowered, i);
        }
        return map;
    }();
    std::string key;
    int depth = 0;
    for (const char* p = name; *p != '\0'; ++p) {
        const char c = *p;
        if (c == '[') {
            ++depth;
        } else if (c == ']') {
            --depth;
        } else if (depth == 0) {
            if (c == static_cast<char>(-1)) {
                key += c;
            } else if (!(c >= '0' && c <= '9')) {
                key += lowerChar(static_cast<unsigned char>(c));
            }
        }
    }
    const auto found = dictionary.find(key);
    return found == dictionary.end() ? 255 : found->second;
}

// 0x6dbb50 _ZN6glitch5video26guessShaderVertexAttributeEPKc
// The whole name in lower case against the dictionary of the assign list; 255 when it is not there.
int32_t guessShaderVertexAttribute(const char* name) {
    static const std::map<std::string, int32_t> dictionary = [] {
        std::map<std::string, int32_t> map;
        for (const SNamedType& entry : kVertexAttributeNames) map.emplace(entry.name, entry.type);
        return map;
    }();
    std::string key;
    for (const char* p = name; *p != '\0'; ++p) key += lowerChar(static_cast<unsigned char>(*p));
    const auto found = dictionary.find(key);
    return found == dictionary.end() ? 255 : found->second;
}

// 0x5e7f80 _ZN6glitch5video18guessSubIdFromNameEPKcNS0_23E_SHADER_PARAMETER_TYPEE
// The sub id (the number after a keyword in the name) for the parameter types that carry one: light (19..27), clip planes (32),
// bone quaternions (14), fog (29..31), samplers / textures (2 and 33). 255 means there is none.
int32_t guessSubIdFromName(const char* name, E_SHADER_PARAMETER_TYPE type) {
    constexpr int32_t kNone = 255;
    if (static_cast<uint32_t>(type - 19) <= 8) {
        const int32_t id = guessSubIdFromName(name, "light");
        return id != kNone ? id : 0;
    }
    if (type == 32) {
        int32_t id = guessSubIdFromName(name, "clipplane");
        if (id != kNone) return id;
        id = guessSubIdFromName(name, "clip_plane");
        return id != kNone ? id : 0;
    }
    if (type == 14) {
        const int32_t id = guessSubIdFromName(name, "bonequat");
        if (id == kNone) return guessSubIdFromName(name, "bone_quat");
        return id;
    }
    if (static_cast<uint32_t>(type - 29) > 2) {
        if (type != 33 && type != 2) return kNone;
        int32_t id = guessSubIdFromName(name, "sampler");
        if (id == kNone) {
            id = guessSubIdFromName(name, "texture");
            if (id == kNone) return 0;
        }
        return id;
    }
    const int32_t id = guessSubIdFromName(name, "fog");
    return id != kNone ? id : 0;
}

// 0x5e7b50 _ZN6glitch5video14sortParametersEPNS0_19SShaderParameterDefEt
// Moves the automatic parameters (types 34..62) in FRONT of the others, keeping the order inside each group; returns how many are
// automatic. Re-read from the listing at first boot: the loop writes a record of an automatic type to the caller's array (the cursor
// v16/v19, whose distance from the start is the return value) and any other record to the compacting copy, which is appended after the
// automatic ones at the end. (The earlier port had the two groups the other way round, so the bindable parameters, which the material
// code addresses as [field04, count), sat in front of field04 and the binding index went negative.) The definitions are copied with
// their name uses, as the original does through its temporary block.
uint16_t sortParameters(SShaderParameterDef* parameters, uint16_t count) {
    if (count == 0) return 0;
    std::vector<SShaderParameterDef> copies(parameters, parameters + count);
    std::vector<const SShaderParameterDef*> others;
    uint16_t front = 0;
    for (const SShaderParameterDef& definition : copies) {
        if (static_cast<uint32_t>(definition.parameterType) - 34 <= 0x1c) {
            parameters[front++] = definition;
        } else {
            others.push_back(&definition);
        }
    }
    uint16_t at = front;
    for (const SShaderParameterDef* definition : others) parameters[at++] = *definition;
    return front;
}

// 0x5e7974 _ZN6glitch5video21getLightParameterNameEPKc
// The interned name "light<digits>" of a light parameter name: the name is lower-cased, searched for "light", and the first run of
// digits after it is appended to "light" (no digits: just "light"); null when the name has no "light". The result holds a use.
glitch::core::SSharedString getLightParameterName(const char* name) {
    std::string lowered;
    for (const char* p = name; *p != '\0'; ++p) lowered += lowerChar(static_cast<unsigned char>(*p));
    const size_t at = lowered.find("light");
    if (at == std::string::npos) return glitch::core::SSharedString();
    std::string result = "light";
    size_t p = at + 5;
    while (p < lowered.size() && !(lowered[p] >= '0' && lowered[p] <= '9')) ++p;
    if (p < lowered.size()) {
        const size_t start = p;
        while (p < lowered.size() && lowered[p] >= '0' && lowered[p] <= '9') ++p;
        result += lowered.substr(start, p - start);
    }
    glitch::core::detail::SSharedStringData* record =
        glitch::core::detail::getSharedString(glitch::core::detail::sharedStringHeapTable(), result.c_str(), false);
    if (record != nullptr) ++record->useCount;
    return glitch::core::SSharedString(record);
}

}  // namespace glitch::video
