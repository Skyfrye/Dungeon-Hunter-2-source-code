// LightSetManager: the game's light sets. Four named light sets of five glitch lights each, the static lights
// that Update measures against, the active lights that follow objects, and a dummy "off" light per slot that
// the material parameters point at when a light is not in the filter.
// Original 32-bit size 0x1a4 (420). The class itself has no vtable; the nested StaticLight and ActiveLight
// each have one (virtual destructor only).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x40daa8, operator= 0x3541d4, dtor 0x40ce60).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "core-platform/deps/game_types.hpp"  // Point3D
#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "dh2/ObjectHandle.hpp"

class LightBase;

namespace glitch {
namespace video {
class CLight;
class CMaterial;
}  // namespace video
namespace scene {
class CLightSceneNode;
}  // namespace scene
}  // namespace glitch

class LightSetManager {
public:
    // A static light: a glitch light node that stays where it is. Original 32-bit size 8.
    class StaticLight {
    public:
        virtual ~StaticLight();                                     // slot +0x00 0x40c178 (D1), slot +0x04 0x40c364 (D0)

        // StaticLight occupies +0x00 .. +0x07.
        glitch::scene::CLightSceneNode* m_node;                     // +0x04 set by AddStaticLight
    };

    // An active light: a glitch light node that follows the object in m_object. Update places the node at the
    // closest static light's position plus 20 on each axis. Original 32-bit size 20.
    class ActiveLight {
    public:
        virtual ~ActiveLight();                                     // slot +0x00 0x40c17c (D1), slot +0x04 0x40c398 (D0)

        // ActiveLight occupies +0x00 .. +0x13.
        glitch::scene::CLightSceneNode* m_node;                     // +0x04 set by AddActiveLight, moved by Update
        ObjectHandle m_object;                                      // +0x08 (12 bytes) the object this light follows
    };

    LightSetManager();                                              // 0x40d7d4 (C1) / 0x40daa8 (C2)
    ~LightSetManager();                                             // 0x40ccd0 (D1) / 0x40ce60 (D2)
    LightSetManager& operator=(const LightSetManager& other);       // 0x3541d4

    int GetLightSetIdFromName(std::string name);                    // 0x40c3cc: index of the matching light set name, 0 when none
    boost::intrusive_ptr<glitch::video::CLight>* GetLight(int lightSetId, int lightId);   // 0x40c40c: &m_lights[lightSetId][lightId]
    void AddStaticLight(glitch::scene::CLightSceneNode* node);      // 0x40c524
    void AddActiveLight(ObjectHandle object, glitch::scene::CLightSceneNode* node);      // 0x40c5d8
    StaticLight* GetClosestStaticLight(Point3D<float> position);    // 0x40c6b0: &m_staticLights[i] for the nearest light node
    void ApplySettings(int lightSetId, boost::intrusive_ptr<glitch::video::CMaterial>& material,
                       std::vector<bool>& filter);                  // 0x40c9a8
    void ResetLightSets();                                          // 0x40cbc0: releases every light and dummy light
    void InitLightFilter(std::vector<bool>& filter, bool value);    // 0x40cff0
    void SetLight(int lightSetId, int lightId,
                  const boost::intrusive_ptr<glitch::video::CLight>& light);   // 0x40d368
    void SetDummyLightOff(int index, const boost::intrusive_ptr<glitch::video::CLight>& light);   // 0x40d520
    void Update();                                                  // 0x40d5a0

    // LightSetManager occupies +0x00 .. +0x1a3.
    uint32_t unk_00;                                                // +0x00 copied by operator=; no other decompiled method touches it
    // The four light set names. GetLightSetIdFromName compares against m_lightSetNames[i] in order.
    // Each glitch string is 24 bytes; the ctor fills them from the light_set_names and off_99978x tables.
    std::string m_lightSetNames[4];                                 // +0x04 .. +0x63
    bool m_lightChanged[4][5];                                      // +0x64 .. +0x77 set by SetLight when the light pointer changes; the ctor clears them
    boost::intrusive_ptr<glitch::video::CLight> m_lights[4][5];     // +0x78 .. +0xc7 m_lights[lightSetId][lightId], returned by GetLight
    // Dummy "off" light per slot. SetDummyLightOff stores at index, ApplySettings binds m_dummyLightOff[i] to the
    // material parameter for a light that is not in the filter.
    boost::intrusive_ptr<glitch::video::CLight> m_dummyLightOff[5]; // +0xc8 .. +0xdb
    StaticLight m_staticLights[8];                                  // +0xdc .. +0x11b, MAX_NUM_STATIC_LIGHT - 1 usable
    ActiveLight m_activeLights[4];                                  // +0x11c .. +0x16b, MAX_NUM_ACTIVE_LIGHT - 1 usable
    float unk_16c[3];                                               // +0x16c .. +0x177 the ctor sets all three to -1e6
    int unk_178[4];                                                 // +0x178 .. +0x187 the ctor zeroes all four
    int m_countStaticLight;                                         // +0x188 number of static lights in use
    int m_countActiveLight;                                         // +0x18c number of active lights in use
    // Vector of LightBase pointers. The original allocator is glitch::core::SAllocator, which is not in the tree yet.
    std::vector<LightBase*> unk_190;                                // +0x190 .. +0x19b (12 bytes in the original)
    bool m_lightingEnabled;                                         // +0x19c the ctor sets 1 (SceneManager +0x430: lit techniques)
    bool m_specularEnabled;                                         // +0x19d the ctor sets 1 (SceneManager +0x431: specular suffix)
    bool m_fogEnabled;                                              // +0x19e the ctor sets 0 (SceneManager +0x432: fog on)
    uint8_t pad_19f[1];                                             // +0x19f
    int unk_1a0;                                                    // +0x1a0 the ctor zeroes it
};
