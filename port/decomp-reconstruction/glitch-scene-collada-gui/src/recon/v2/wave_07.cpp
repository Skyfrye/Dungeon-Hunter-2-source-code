#include "glitch-scene-collada-gui/recon/v2/wave_07.hpp"

#include <cstring>

namespace glitch::collada::recon_v2_07 {

void wave_07_blend_vec3(const float* values, const float* weights, int count, float* out) {
    if (count == 1) {
        out[0] = values[0];
        out[1] = values[1];
        out[2] = values[2];
        return;
    }
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    for (int i = 0; i < count; ++i) {
        const float w = weights[i];
        x = x + w * values[3 * i + 0];
        y = y + w * values[3 * i + 1];
        z = z + w * values[3 * i + 2];
    }
    out[0] = x;
    out[1] = y;
    out[2] = z;
}

float wave_07_lerp_float_pair(const float* base, int a2, float a4, float* out) {
    const float* key_a = base + 3 * a2;
    const float* key_b = key_a + 3;
    const float one_minus = 1.0f - a4;
    for (int c = 0; c < 3; ++c) {
        out[c] = (a4 * key_b[c]) + ((one_minus * key_a[c]) + 0.0f);
    }
    return out[0];
}

int wave_07_bind_force(void* self, std::uint32_t a2, std::uint32_t proxy_vtable, const wave_07_bind_ports& ports) {
    void* target = ports.base_of(self);
    wave_07_force_proxy* proxy = new wave_07_force_proxy{proxy_vtable, a2, 0u, a2};
    return ports.call(target, 0x58u, proxy);
}

int wave_07_bind_node(void* self, void* node, std::uint32_t proxy_vtable, const wave_07_node_ports& nodes,
                      const wave_07_bind_ports& ports) {
    void* particle_system = nodes.particle_system_of(node);
    return wave_07_bind_force(particle_system, nodes.force_address_of(self), proxy_vtable, ports);
}

// 0x62ff08 _ZN6glitch7collada15CColladaFactory21getVertexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
wave_07_buffer_config* get_vertex_buffer_config_0x62ff08(const CColladaDatabase& db, const SGeometry* geom,
                                                           wave_07_buffer_config* result) {
    (void)db;
    (void)geom;
    result->byte05 = 0;
    result->word00 = 4u;
    result->byte04 = 0;
    return result;
}

// 0x62ff20 _ZN6glitch7collada15CColladaFactory20getIndexBufferConfigERKNS0_16CColladaDatabaseEPNS0_9SGeometryE
wave_07_buffer_config* get_index_buffer_config_0x62ff20(const CColladaDatabase& db, const SGeometry* geom,
                                                          wave_07_buffer_config* result) {
    (void)db;
    (void)geom;
    result->byte05 = 0;
    result->word00 = 4u;
    result->byte04 = 0;
    return result;
}

// 0x62ff80 _ZN6glitch7collada12_GLOBAL__N_132getExternalLightSceneNodeDefaultEPKc
void* get_external_light_0x62ff80(const char* name, const wave_07_resource_lookup& lookup, const wave_07_tag_of& tag_of) {
    const char* hash = std::strchr(name, '#');
    const char* key = hash ? hash + 1 : name;
    void* object = lookup(key, 0u);
    if (object != nullptr && tag_of(object) == kWave07LightTag) return object;
    return nullptr;
}

// 0x630018 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
int bind_force_0x630018(void* self, std::uint32_t a2, const wave_07_bind_ports& ports) {
    return wave_07_bind_force(self, a2, 0x97B378U, ports);
}

// 0x630080 _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
int bind_node_0x630080(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports) {
    return wave_07_bind_node(self, node, 0x97B378U, nodes, ports);
}

// 0x630090 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_5PWindEEEiRNT_15parameters_typeE
int bind_force_0x630090(void* self, std::uint32_t a2, const wave_07_bind_ports& ports) {
    return wave_07_bind_force(self, a2, 0x97B390U, ports);
}

// 0x6300f8 _ZN6glitch7collada15particle_system19CWindForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
int bind_node_0x6300f8(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports) {
    return wave_07_bind_node(self, node, 0x97B390U, nodes, ports);
}

// 0x630108 _ZN6glitch2ps15IParticleSystemINS0_12GNPSParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
int bind_force_0x630108(void* self, std::uint32_t a2, const wave_07_bind_ports& ports) {
    return wave_07_bind_force(self, a2, 0x97B7B0U, ports);
}

// 0x630170 _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_33CGlitchNewParticleSystemSceneNodeE
int bind_node_0x630170(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports) {
    return wave_07_bind_node(self, node, 0x97B7B0U, nodes, ports);
}

// 0x630180 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE9bindForceINS0_8PGravityEEEiRNT_15parameters_typeE
int bind_force_0x630180(void* self, std::uint32_t a2, const wave_07_bind_ports& ports) {
    return wave_07_bind_force(self, a2, 0x97B7C8U, ports);
}

// 0x6301e8 _ZN6glitch7collada15particle_system22CGravityForceSceneNode4bindEPNS0_24CParticleSystemSceneNodeE
int bind_node_0x6301e8(void* self, void* node, const wave_07_node_ports& nodes, const wave_07_bind_ports& ports) {
    return wave_07_bind_node(self, node, 0x97B7C8U, nodes, ports);
}

}  // namespace glitch::collada::recon_v2_07
