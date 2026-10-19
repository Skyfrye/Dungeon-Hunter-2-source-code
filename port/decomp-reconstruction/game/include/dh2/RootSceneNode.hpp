// RootSceneNode: the root node of a level's COLLADA scene. It adds two scene-name strings, the animation
// roots and the displacement node that carries the root's movement, a game-object link and a cull gate
// on top of glitch::collada::CRootSceneNode. Its vtable has a second subobject at +0x20c (a
// reference-counted object with its own vptr and count, both set by the constructor).
// Original 32-bit size 0x214 (532). The base CRootSceneNode occupies +0x000 .. +0x1bb (engine layout,
// partial in glitch-scene-collada-gui; its end is taken from the first member here).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x35d824, dtor 0x35d67c, onAnimate 0x35d168).
#pragma once

#include <cstdint>
#include <string>

#include "glitch-scene-collada-gui/root_scene_node.hpp"
#include "glitch-shared/glitch_core.hpp"

class ObjectBase;

namespace glitch {
namespace collada {
class CColladaDatabase;
}  // namespace collada
namespace scene {
class ISceneNode;
class CEmptySceneNode;
class CCameraSceneNode;
class CSceneManager;
}  // namespace scene
}  // namespace glitch

class RootSceneNode : public glitch::collada::CRootSceneNode {
public:
    // Debug counters and the enlarged camera are static: they are not part of the object.
    static std::uint32_t s_dbgNumUpdateAbsolutePosition;            // bumped by updateAbsolutePosition, reset by ResetDebugCounters
    static std::uint32_t s_dbgAnimatedNodeCount;                    // bumped by onAnimate, reset by ResetDebugCounters
    static std::uint32_t s_dbgUpdateTimeNodeCount;                  // bumped by onAnimate, reset by ResetDebugCounters
    static glitch::scene::CCameraSceneNode s_enlargedCamera;        // camera that UpdateEnlargedViewFrustum copies the view into
    static float s_frustumScale;                                    // multiplies the field of view in UpdateEnlargedViewFrustum

    explicit RootSceneNode(const glitch::collada::CColladaDatabase& database);   // 0x35d824 (C1), 0x35d910 (C2)
    virtual ~RootSceneNode();                                       // vtable slot 0x14: 0x35d67c (D1), slot 0x18: 0x35d748 (D0); D2 at 0x35d764

    // Virtual overrides, in vtable order. The base in glitch-scene-collada-gui does not declare these
    // slots, so they are not marked override.
    virtual void onAnimate(std::uint32_t time);                     // slot 0x20: 0x35d168 (may skip the animation while not visible)
    virtual void onUpdateTime(std::uint32_t time);                  // slot 0x24: 0x35c0f4 (calls updateTime on the animators when flags 0x201 are set)
    virtual void setVisible(bool visible);                          // slot 0x54: 0x35c26c (a hidden root also hides the base node)
    virtual void updateAbsolutePosition(bool recurse);              // slot 0xc4: 0x35c27c

    void PlainOnAnimate(std::uint32_t time);                        // 0x35c268: thunk to glitch::collada::CRootSceneNode::onAnimate
    static void ResetDebugCounters();                               // 0x35c058
    void ForwardAnim(std::uint32_t time);                           // 0x35c09c: forwards the time to the animators in m_animators
    static void UpdateEnlargedViewFrustum(glitch::scene::CSceneManager* manager);   // 0x35c51c (Application::_Update passes the scene manager in r0; the body reads the manager's active camera at +0xe4)
    bool IsVisibleFastTest() const;                                 // 0x35c784: false when the cull gate and the game object say the node is culled
    void RefreshBoundingBox();                                      // 0x35c854
    void ResetPositionFromFile();                                   // 0x35cc0c: resets the animation root's transform from the file
    glitch::scene::ISceneNode* GetAnimRoot(bool alternate);         // 0x35ccdc: finds root_camera, Bip01, Root or root_character by name
    void _CalcDelta(glitch::core::vector3d<float>& delta);          // 0x35cd5c: sums the displacement of the applicators
    void _ResetDelta(std::uint32_t time);                           // 0x35ce6c
    bool _HandleDisplacement(std::uint32_t time);                   // 0x35cf48: moves the root by the delta, returns true when it moved
    void _EnableDisplacement(bool enable);                          // 0x35d4cc: finds the anim roots and creates the displacement node
    void NewAnim(bool enable);                                      // 0x35d624

    // CRootSceneNode occupies +0x000 .. +0x1bb (engine layout, not restated here).
    std::string m_fileName;                                         // +0x1bc (24 bytes in the original) scene file name, set by SceneManager::LoadScene
    std::string m_name;                                             // +0x1d4 (24 bytes in the original) node name, set by SceneManager::LoadScene
    bool m_displacementEnabled;                                     // +0x1ec set by _EnableDisplacement
    uint8_t pad_1ed[3];                                             // +0x1ed .. +0x1ef
    glitch::scene::ISceneNode* m_animRoot;                          // +0x1f0 GetAnimRoot(false), reference-counted (dropped by the destructor)
    glitch::scene::ISceneNode* m_animRootAlt;                       // +0x1f4 GetAnimRoot(true), reference-counted (dropped by the destructor)
    glitch::scene::CEmptySceneNode* m_displacementNode;             // +0x1f8 created by _EnableDisplacement (336 bytes), owns the displacement
    std::uint32_t m_lastAnimTime;                                   // +0x1fc the time last passed to onAnimate
    bool m_cullBeforeUpdate;                                        // +0x200 set by the ctor; IsVisibleFastTest reads it as a gate before the game object culling test.
                                                                    //       AnimatedFX::SetVisible (0x492ef0) also stores the visible flag at this byte (VisualObject m_node + 512).
    ObjectBase* m_object;                                           // +0x204 game object this root belongs to; its bounds are read by onAnimate
    bool unk_208;                                                   // +0x208 set by the ctor; onAnimate calls slot 0xb8 with 1 when it is set, then clears it.
                                                                    //       VisualObject::ForceUpdatePosition (0x470bd0) also stores 1 here (m_node + 520).
    bool m_visibleRequested;                                        // +0x209 set by setVisible; onAnimate applies it and clears it
    bool unk_20a;                                                   // +0x20a set by onAnimate when the animation was skipped
    uint8_t pad_20b[1];                                             // +0x20b
    // +0x20c .. +0x213 the glitch::IReferenceCounted virtual base (vptr, count at +0x210): it is the virtual base of ISceneNode, so the
    // compiler lays it out here and the node is dropped with referenceCounter / drop().
};
