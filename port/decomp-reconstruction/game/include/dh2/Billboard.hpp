// Billboard: an ObjectBase that owns a glitch billboard scene node (created as "billBoard") and shows its
// texture ("tga") at a position and size. It can attach to another object by name ("AttachTo") or to the
// active camera. Its properties are declared in DeclareProperties; InitPost resolves the texture, the
// material and the attachment.
// Original 32-bit size not recorded in class-facts (no operator new size); the members end at +0x17c.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x387d84 / 0x38815c, DeclareProperties 0x387fc4,
// InitPost 0x38781c).
#pragma once

#include <cstdint>
#include <string>

#include "core-platform/deps/game_types.hpp"  // Point2D, Point3D
#include "core-platform/deps/glitch_core.hpp"  // glitch::core::vector3d<float>, dimension2d<float>

#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"

namespace glitch {
namespace scene {
class CBillboardSceneNode;
}  // namespace scene
}  // namespace glitch

class Billboard : public ObjectBase {
public:
    explicit Billboard(ObjectBase::GO_IDS id);          // 0x387d84 (C2) / 0x38815c (C1)
    ~Billboard() override;                              // 0x387ba4 (D1), 0x387c1c (D0), 0x387c38 (D2)

    // Overrides of ObjectBase slots and the one new virtual, in vtable order.
    void DeclareProperties() override;                  // slot 0x18: 0x387fc4 "tga", "AttachTo", "size", "position", "isAdditive"
    void InitPost() override;                           // slot 0x1c: 0x38781c
    void Update() override;                             // slot 0x2c: 0x3876dc
    void Draw() const override;                         // slot 0x30: 0x3876c8 empty
    bool IsUpdatable() const override;                  // slot 0x38: 0x3876d4 true
    virtual bool IsZonable() const;                     // slot 0x58: 0x3876cc false; not declared by ObjectBase

    // ObjectBase occupies +0x00 .. +0x11f. The constructor also sets ObjectBase::unk_85 (updating) to 1.
    std::string m_tga;                                  // +0x120 property "tga", texture file name (read by InitPost)
    std::string m_attachTo;                             // +0x138 property "AttachTo", object name to attach to (read by InitPost)
    glitch::core::dimension2d<float> m_size;            // +0x150 property "size" (SimpleTypeProperty<dimension2d<float>>, vtable 0x963f60), passed to the node's size setter
    glitch::core::vector3d<float> m_position;           // +0x158 property "position" (SimpleTypeProperty<vector3d<float>>, vtable 0x963f40), passed to the node's position setter
    bool m_isAdditive;                                  // +0x164 property "isAdditive"; InitPost picks material 10 (true) or 11
    std::uint8_t pad_165[3];                            // +0x165
    ObjectHandle m_attachHandle;                        // +0x168 object filled by ObjectManager::GetObjectByName(m_attachTo)
    bool m_attachToActiveCamera;                        // +0x174 set in InitPost when m_attachTo == "ActiveCamera"
    std::uint8_t pad_175[3];                            // +0x175
    glitch::scene::CBillboardSceneNode* m_billboardNode; // +0x178 node created by the scene manager; reference counted, dropped in ~Billboard
};
