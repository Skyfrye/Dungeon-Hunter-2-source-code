// Wave 07 of the partial-row rerun for glitch-scene-collada-gui.
// Declarations for the animation_track, particle-system force and collada factory
// bodies in this wave. Only the layout headers animation_track.hpp and collada_db.hpp
// are included. Guest-side behaviour that is not in a layout (virtual slots,
// material parameter setters, node and resource lookups) is passed in as an
// injected callable, so the reconstructed bodies can be tested on the host.
// The shared math types are not present yet, so plain float arrays are used.
#ifndef GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_07_HPP
#define GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_07_HPP

#include <cstddef>
#include <cstdint>
#include <functional>

#include "glitch-scene-collada-gui/layouts/animation_track.hpp"
#include "glitch-scene-collada-gui/layouts/collada_db.hpp"

namespace glitch::collada::recon_v2_07 {

// Injected guest virtual dispatch. `slot_offset` is the vtable byte offset that the
// original code calls; `arg` is null for one-argument slots.
using wave_07_slot_call = std::function<int(void* receiver, std::uint32_t slot_offset, const void* arg)>;

// Injected dispatch for IParticleSystem::bindForce. base_of maps the particle system
// object to the base sub-object at its virtual-base offset (read from vptr-12 in the original).
struct wave_07_bind_ports {
    std::function<void*(void* self)> base_of;
    wave_07_slot_call call;
};

// Injected node accessors for the force scene nodes (node offsets are not in any layout).
struct wave_07_node_ports {
    std::function<void*(void* node)> particle_system_of;   // *(node + 376) in the original
    std::function<std::uint32_t(void* self)> force_address_of; // self + 320 in the original
};

// Injected material parameter setter: IMaterialParameters::setParameterCvt<vector3d<float>>.
using wave_07_param_set = std::function<int(void* target, std::uint16_t parameter_id, const void* value)>;

// Injected key interpolation: writes three floats to out and returns out[0].
using wave_07_key_interp = std::function<float(int a2, int a3, float a4, float* out)>;

// Injected resource lookup (device file system, name, flags 0) and type tag (vtable slot +0xBC).
using wave_07_resource_lookup = std::function<void*(const char* name, std::uint32_t zero)>;
using wave_07_tag_of = std::function<std::uint32_t(void* object)>;

// Type tag checked by getExternalLightSceneNodeDefault ('lght' as a little-endian word).
constexpr std::uint32_t kWave07LightTag = 1952999276u;

// Placeholder config record for CColladaFactory::get{Vertex,Index}BufferConfig. The
// layout is not in the headers, so the field names are placeholders.
struct wave_07_buffer_config {
    std::uint32_t word00;   // written as 4 by both getters
    std::uint8_t byte04;    // written as 0
    std::uint8_t byte05;    // written as 0
};

// Dequantized key track: the table base (already fetched from the accessor), and the
// per-component scale and offset (3 floats each). Key k starts at base + 3 * k.
template <typename T>
struct wave_07_quantized {
    const T* base;
    const float* scale;
    const float* offset;
};

// Force proxy allocated by IParticleSystem::bindForce: vtable, a2, 0, a2 (16 bytes).
struct wave_07_force_proxy {
    std::uint32_t vtable;
    std::uint32_t arg_a;
    std::uint32_t zero;
    std::uint32_t arg_b;
};
static_assert(sizeof(wave_07_force_proxy) == 0x10, "force proxy is 16 bytes");

// Weighted sum of key vectors, or a copy when count is 1 (the original's rule).
void wave_07_blend_vec3(const float* values, const float* weights, int count, float* out);

// Two-key lerp of dequantized keys a2 and a3 (the CInterpreter body for short and char).
template <typename T>
float wave_07_lerp_quantized(const wave_07_quantized<T>& track, int a2, int a3, float a4, float* out) {
    float va[3];
    float vb[3];
    const T* key_a = track.base + 3 * a2;
    const T* key_b = track.base + 3 * a3;
    for (int c = 0; c < 3; ++c) {
        va[c] = static_cast<float>(key_a[c]) * track.scale[c] + track.offset[c];
        vb[c] = static_cast<float>(key_b[c]) * track.scale[c] + track.offset[c];
    }
    const float one_minus = 1.0f - a4;
    for (int c = 0; c < 3; ++c) {
        out[c] = (a4 * vb[c]) + ((one_minus * va[c]) + 0.0f);
    }
    return out[0];
}

// Two-key lerp over a float vec3 block (the CInterpreter body for float[3] material keys).
float wave_07_lerp_float_pair(const float* base, int a2, float a4, float* out);

// IParticleSystem::bindForce common body. base_of gives the target, the proxy is owned by the callee.
int wave_07_bind_force(void* self, std::uint32_t a2, std::uint32_t proxy_vtable, const wave_07_bind_ports& ports);

// Force scene node bind: forwards bindForce with the node's particle system and force address.
int wave_07_bind_node(void* self, void* node, std::uint32_t proxy_vtable, const wave_07_node_ports& nodes,
                      const wave_07_bind_ports& ports);

// 0x62ff08 _ZN6glitch7collada15CColladaFactory21getVertexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
wave_07_buffer_config* get_vertex_buffer_config_0x62ff08(const CColladaDatabase& db, const SGeometry* geom,
                                                           wave_07_buffer_config* result);

// 0x62ff20 _ZN6glitch7collada15CColladaFactory20getIndexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
wave_07_buffer_config* get_index_buffer_config_0x62ff20(const CColladaDatabase& db, const SGeometry* geom,
                                                          wave_07_buffer_config* result);

// 0x62ff80 _ZN6glitch7collada12_GLOBAL__N_132getExternalLightSceneNodeDefaultEPKc
void* get_external_light_0x62ff80(const char* name, const wave_07_resource_lookup& lookup, const wave_07_tag_of& tag_of);

// 0x630018 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
int bind_force_0x630018(void* self, std::uint32_t a2, const wave_07_bind_ports& ports);

// 0x630080 _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
int bind_node_0x630080(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports);

// 0x630090 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
int bind_force_0x630090(void* self, std::uint32_t a2, const wave_07_bind_ports& ports);

// 0x6300f8 _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
int bind_node_0x6300f8(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports);

// 0x630108 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
int bind_force_0x630108(void* self, std::uint32_t a2, const wave_07_bind_ports& ports);

// 0x630170 _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
int bind_node_0x630170(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports);

// 0x630180 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
int bind_force_0x630180(void* self, std::uint32_t a2, const wave_07_bind_ports& ports);

// 0x6301e8 _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
int bind_node_0x6301e8(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports);

}  // namespace glitch::collada::recon_v2_07

#endif  // GLITCH_SCENE_COLLADA_GUI_RECON_V2_WAVE_07_HPP
