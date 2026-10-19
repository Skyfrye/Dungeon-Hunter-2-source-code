// LevelConfig: the per-level settings object. DeclareProperties exposes the level's music, fog, lighting,
// sun, shadow, camera and buffer settings as properties with defaults. InitPost fills the empty camera and
// light-set names with defaults once and hands the config to Level::SetLevelConfig. Update and Draw are empty.
// Original 32-bit size not recorded in class-facts (no operator new size); the members end at +0x318.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x3f4910 / 0x3f51a8, DeclareProperties 0x3f4b9c,
// InitPost 0x3f28ec, dtor 0x3f20c8).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "core-platform/deps/game_types.hpp"  // Point3D

#include "dh2/ObjectBase.hpp"

class LevelConfig : public ObjectBase {
public:
    explicit LevelConfig(ObjectBase::GO_IDS id);        // 0x3f4910 (C2) / 0x3f51a8 (C1)
    ~LevelConfig() override;                            // 0x3f20c8 (D1), 0x3f2194 (D0), 0x3f21b0 (D2)

    // Overrides of ObjectBase slots, in vtable order.
    void DeclareProperties() override;                  // slot 0x18: 0x3f4b9c
    void InitPost() override;                           // slot 0x1c: 0x3f28ec
    void Update() override;                             // slot 0x2c: 0x3ef184 empty
    void Draw() const override;                         // slot 0x30: 0x3ef188 empty

    // ObjectBase occupies +0x00 .. +0x11f. "gametype" and "name" are declared again here with their own
    // strings, so the members are named m_config* to keep them apart from ObjectBase::m_gameType (+0x48) and
    // ObjectBase::m_name (+0x30).
    std::string m_configGameType;                       // +0x120 property "gametype", default "LevelConfig"
    std::string m_configName;                           // +0x138 property "name", default "level_config"
    std::string m_scriptFile;                           // +0x150 property "scriptFile"
    std::string m_music;                                // +0x168 property "music"
    std::string m_safezoneMusic;                        // +0x180 property "safezone_music"
    std::string m_combatMusic;                          // +0x198 property "combat_music"
    std::string m_ambiantMusic;                         // +0x1b0 property "ambiant_music" (spelling of the original)
    bool m_combatMusicEnabled;                          // +0x1c8 property "combat_music_enabled", default true
    std::uint8_t pad_1c9[3];                            // +0x1c9
    Point3D<float> m_ambientColor;                      // +0x1cc property "ambientColor"; InitPost converts 0..255 to 0..1
    std::int32_t m_fogStart;                            // +0x1d8 property "fog_start", default 1
    std::int32_t m_fogEnd;                              // +0x1dc property "fog_end", default 0
    Point3D<float> m_fogColor;                          // +0x1e0 property "fog_color"
    Point3D<float> m_clearColor;                        // +0x1ec property "clear_color", default 0
    Point3D<float> m_fogDirectionMask;                  // +0x1f8 property "fog_direction_mask", default (0, 0, 1)
    std::vector<Point3D<float>> m_dfogColors;           // +0x204 property "dfog_colors" (12 bytes in the original)
    float m_dfogChangeMinDist;                          // +0x210 property "dfog_change_min_dist", default 200
    float m_dfogBlendDist;                              // +0x214 property "dfog_blend_dist", default 100
    Point3D<float> m_sunPosition;                       // +0x218 property "sun_position"
    Point3D<float> m_shadowColor;                       // +0x224 property "shadow_color", default 0
    float m_shadowOpacity;                              // +0x230 property "shadow_opacity", default 0
    std::string m_skybox;                               // +0x234 property "skybox"
    std::string m_cameraFile;                           // +0x24c property "camera_file"; InitPost defaults an empty value to data/3D/camera/CameraTests.bdae
    std::string m_cameraAnimset;                        // +0x264 property "camera_animset", default "Default"
    std::string m_cameraName;                           // +0x27c property "camera_name"; InitPost defaults an empty value to PlayerCamera_Default
    std::int32_t m_cameraZnear;                         // +0x294 property "camera_znear", default 600
    std::int32_t m_cameraZfar;                          // +0x298 property "camera_zfar", default 10000
    bool unk_29c;                                       // +0x29c InitPost guard: 0 until the first call, then 1
    std::uint8_t pad_29d[3];                            // +0x29d
    std::int32_t m_progVertexBufferSize;                // +0x2a0 property "prog_vertex_buffer_size", default 5242880
    std::int32_t m_progIndexBufferSize;                 // +0x2a4 property "prog_index_buffer_size", default 655360
    bool m_progQuantize;                                // +0x2a8 property "prog_quantize"
    std::uint8_t pad_2a9[3];                            // +0x2a9
    std::int32_t m_fixVertexBufferSize;                 // +0x2ac property "fix_vertex_buffer_size", default 5242880
    std::int32_t m_fixIndexBufferSize;                  // +0x2b0 property "fix_index_buffer_size", default 655360
    bool m_fixQuantize;                                 // +0x2b4 property "fix_quantize"
    std::uint8_t pad_2b5[3];                            // +0x2b5
    std::string m_lightSet;                             // +0x2b8 property "light_set"; InitPost defaults an empty value to data/3D/Light/default.lightset_xml
    std::string m_fixedLightSet;                        // +0x2d0 property "fixed_light_set"; same InitPost default
    std::string m_rimLightFile;                         // +0x2e8 property "rim_light_file", default char_rim_light.tga
    std::string m_mpScript;                             // +0x300 property "mp_script"
};
