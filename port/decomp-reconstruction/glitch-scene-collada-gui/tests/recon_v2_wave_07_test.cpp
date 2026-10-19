#include "glitch-scene-collada-gui/recon/v2/wave_07.hpp"

#include <cstdio>
#include <string>
#include <vector>

using namespace glitch::collada;
using namespace glitch::collada::recon_v2_07;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Factory config getters write the placeholder record.
    wave_07_buffer_config cfg{0xFFFFFFFFu, 1, 1};
    CColladaDatabase db;
    SGeometry geom{};
    CHECK(get_vertex_buffer_config_0x62ff08(db, &geom, &cfg) == &cfg);
    CHECK(get_index_buffer_config_0x62ff20(db, &geom, &cfg) == &cfg);
    CHECK(cfg.word00 == 4u && cfg.byte04 == 0 && cfg.byte05 == 0);

    // Light lookup strips up to and including '#' and checks the type tag.
    std::vector<std::string> seen;
    wave_07_resource_lookup lookup = [&seen](const char* name, std::uint32_t zero) -> void* {
        seen.emplace_back(name);
        CHECK(zero == 0u);
        static int object = 0;
        return &object;
    };
    wave_07_tag_of good = [](void*) -> std::uint32_t { return kWave07LightTag; };
    wave_07_tag_of bad = [](void*) -> std::uint32_t { return 0u; };
    CHECK(get_external_light_0x62ff80("file.dae#lightA", lookup, good) != nullptr);
    CHECK(seen.back() == "lightA");
    CHECK(get_external_light_0x62ff80("plain", lookup, good) != nullptr);
    CHECK(seen.back() == "plain");
    CHECK(get_external_light_0x62ff80("x#y", lookup, bad) == nullptr);

    int receiver_tag = 0;

    // Force bind: the proxy is 16 bytes with vtable, a2, 0, a2; dispatch at +0x58.
    int particle_tag = 0;
    void* base_seen = nullptr;
    wave_07_bind_ports ports;
    ports.base_of = [&](void* self) -> void* { base_seen = self; return &particle_tag; };
    const void* proxy_seen = nullptr;
    std::uint32_t slot_seen = 0;
    ports.call = [&](void* receiver, std::uint32_t slot, const void* arg) -> int {
        CHECK(receiver == &particle_tag);
        slot_seen = slot;
        proxy_seen = arg;
        return 3;
    };
    CHECK(bind_force_0x630018(&receiver_tag, 0x1234u, ports) == 3);
    CHECK(base_seen == &receiver_tag && slot_seen == 0x58u);
    const wave_07_force_proxy* proxy = static_cast<const wave_07_force_proxy*>(proxy_seen);
    CHECK(proxy->vtable == 0x97B378u && proxy->arg_a == 0x1234u && proxy->zero == 0u && proxy->arg_b == 0x1234u);
    delete proxy;

    if (failures == 0) std::printf("recon_v2_wave_07_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
