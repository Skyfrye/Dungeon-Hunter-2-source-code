// LightBase: a placed light (property "dae" can name a scene file whose first node is the glitch light).
// Original size 0x180 (ObjectBase 0x120 + 0x60). Vtable pointers at +0x00, +0x04 and +0x24 as in ObjectBase.
// Vtable (148 bytes): ObjectBase's slots, the overrides below, then RefreshAttachment/SyncData/TurnOn/TurnOff
// at +0x58..+0x64.
#pragma once

#include <cstdint>
#include <string>
#include "core-platform/deps/game_types.hpp"  // Point3D
#include "dh2/ObjectBase.hpp"

namespace glitch { namespace scene { class CLightSceneNode; } }

class LightBase : public ObjectBase {
public:
    explicit LightBase(GO_IDS id);                     // 0x40aba4 / 0x40ac58
    ~LightBase() override;                             // +0x00 0x40aaa0 (D1), +0x04 0x40ab18 (D0), 0x40ab34

    // ---- virtual, vtable slot order ----
    // +0x08 getUDTypeName, +0x0c createBindings, +0x10 Serialize, +0x14 Deserialize: ObjectBase/UserData versions
    void DeclareProperties() override;                 // +0x18 0x40adf0 position, radius, attenuation, colors, automatic, dae
    void InitPost() override;                          // +0x1c 0x40b0c0 divides colors by 255, creates or loads the light node
    // +0x20..+0x28 IsGameObject, IsCharacter, IsPlayer: ObjectBase versions
    void Update() override;                            // +0x2c 0x40a714 calls SyncData (slot +0x5c)
    void Draw() const override;                        // +0x30 0x40a784 debug box when "IsRenderingLightPosition"
    // +0x34 IsDead: ObjectBase version
    bool IsUpdatable() const override;                 // +0x38 0x40a70c true
    // +0x3c..+0x54: ObjectBase versions
    virtual void RefreshAttachment();                  // +0x58 0x40a708 empty
    virtual void SyncData();                           // +0x5c 0x40a8f8 copies the members into the light node's data
    virtual void TurnOn();                             // +0x60 0x40a728 adds the light node to the scene root
    virtual void TurnOff();                            // +0x64 0x40a768 removes the light node from its parent

    // ---- non-virtual ----
    void SetAttenuation(Point3D<float> attenuation);   // 0x40b3c8 y /= 1000, z /= 1000000
    void SetAmbientColor(Point3D<float> color);        // 0x40b720
    void SetDiffuseColor(Point3D<float> color);        // 0x40b674
    void SetSpecularColor(Point3D<float> color);       // 0x40b5c8
    void setLightNode(glitch::scene::CLightSceneNode* node);  // 0x40b498 takes a reference, reads the node's values back

    // ---- members ----
    // +0x00..+0x11f ObjectBase
    glitch::scene::CLightSceneNode* m_irrLight;        // +0x120 reference counted; asserted non-null in InitPost
    Point3D<float> m_position;                         // +0x124 property "position"
    float m_radius;                                    // +0x130 property "radius", default 2.0
    Point3D<float> m_attenuation;                      // +0x134 property "attenuation"; y and z are divided by 1e3 / 1e6 in InitPost
    Point3D<float> m_ambientColor;                     // +0x140 property "ambientColor", 0..255 in the data, /255 in InitPost
    Point3D<float> m_diffuseColor;                     // +0x14c property "diffuseColor"
    Point3D<float> m_specularColor;                    // +0x158 property "specularColor"
    bool m_automatic;                                  // +0x164 property "automatic", default 0; registered with the scene manager when set
    uint8_t pad_165[3];
    std::string m_dae;                                 // +0x168 property "dae" (scene file with the light), 24 bytes in the original
};
