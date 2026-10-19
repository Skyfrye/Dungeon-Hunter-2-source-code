// PlayerLightTweaker: a CTweakable that exposes the player light set (five lights: attenuation,
// ambient, diffuse, specular) plus the level fog to the debug tweaker. Values are registered by
// name ("m_attenuation[0].X", "m_fogStart", ...) and written to the level and the global material
// parameters from onSetValue. The tweaker XML is data/tweaker/player_light.tweaker_xml.
// Original 32-bit size 0x144 (324). Its base glitch::debugger::CTweakable occupies +0x00 .. +0x7b
// (glitch-scene-collada-gui/debugger/CTweakable.hpp), so the first member is placed at its original offset +0x7c.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x32f2b4, onSetValue 0x40de48).
#pragma once

#include <cstdint>
#include <string>

#include "glitch-shared/glitch_core.hpp"  // glitch::core::vector3d<float>, glitch::video::SColor
#include "glitch-scene-collada-gui/debugger/CTweakable.hpp"  // glitch::debugger::CTweakable (canonical, glitch-scene-collada-gui)

class LightBase;

class PlayerLightTweaker : public glitch::debugger::CTweakable {
public:
    PlayerLightTweaker();                                           // 0x32f2b4 (ctor, 1068 bytes)
    ~PlayerLightTweaker() override;                                 // +0x00/+0x04 0x40e4c4 (D1), 0x40e518 (D0)
    // Names of the four light tweakers, in the order Application::PostInit (0x32f7e8) creates them. Contents not recovered.
    static const char* const TWEAKER_NAMES[4];

    // Vtable slots +0x08 .. +0x10 come from CTweakable (getInstanceName, getXML, writeValues).
    // Slot +0x14 is overridden here.
    // Applies a changed value by name: the fog to the global material parameters and the current level.
    void onSetValue(const std::string& name) override;              // +0x14 0x40de48

    // Maps a name ending in "[n]" to the light index n in 0..4, but the original reads the digit at name[strlen]
    // (the terminator, asm 0x40dd7c), so a bracketed name returns 0xffffffd0 after the assert, and any other name -1.
    unsigned int GetIdsFromName(const char* name);                  // 0x40dd7c

    // Light and fog state, registered with CTweakable::registerVariable in ctor order.
    glitch::core::vector3d<float> m_attenuation[5];                 // +0x7c  "m_attenuation[i].X/Y/Z", zeroed in ctor
    glitch::video::SColor m_ambientColor[5];                        // +0xb8  "m_ambientColor[i]"
    glitch::video::SColor m_diffuseColor[5];                        // +0xcc  "m_diffuseColor[i]"
    glitch::video::SColor m_specularColor[5];                       // +0xe0  "m_specularColor[i]"
    glitch::video::SColor m_fogColor;                               // +0xf4  "m_fogColor", copied to the global parameters
    // +0xf8: std::string m_lightType, assigned TWEAKER_NAMES[i] by Application::PostInit (0x32f7e8). The ctor maps "m_lightType" to it with SMapping kind 2 (kind not named in the canonical CTweakable.hpp). The ctor also stores a heap block
    // pointer in the 0x108/0x10c words; the layout of that string member is not recovered.
    std::string m_lightType;                                                // +0xf8
    uint8_t pad_fc[20];                                             // +0xfc .. +0x10f
    float m_fogStart;                                               // +0x110  "m_fogStart", fog start distance
    float m_fogEnd;                                                 // +0x114  "m_fogEnd", fog end distance
    float m_fogEnabled;                                             // +0x118  set to 1.0 once when the fog is turned on (name inferred)
    glitch::core::vector3d<float> m_fogDirectionMask;               // +0x11c  "m_fogDirectionMask.X/Y/Z"
    LightBase* m_lights[5];                                         // +0x128 .. +0x13b, one light per index; zeroed in ctor, onSetValue calls the setters when set
    uint8_t pad_13c[8];                                             // +0x13c .. +0x143
};
