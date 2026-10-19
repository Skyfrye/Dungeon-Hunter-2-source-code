// BaseMeshSceneNode<T>: a mesh scene node whose render can be switched off. T is one of the engine
// mesh nodes glitch::collada::CMeshSceneNode, CSkinnedMeshSceneNode or CModularSkinnedMeshSceneNode.
// The class derives from T and adds one flag byte after T. The ctor takes the IMesh and sets the flag.
// The three instances share this shape. Each calls its own T ctor and dtor, and the flag offset follows sizeof(T):
//   T = CMeshSceneNode:                 flag at +0x138, virtual base subobject at +0x13c
//   T = CSkinnedMeshSceneNode:          flag at +0x17c, virtual base subobject at +0x180
//   T = CModularSkinnedMeshSceneNode:   flag at +0x17c, virtual base subobject at +0x180
// The virtual base is not identified and is not declared here. Its vtable group carries the dtor thunks
// and ISceneNode::onDelete. Original 32-bit size not recovered.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x35b19c, 0x35affc, 0x35ae5c; render 0x35a9a8..0x35a9c8).
#pragma once

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada/CMeshSceneNode.hpp"

namespace glitch {
namespace collada {
class IMesh;
}  // namespace collada
}  // namespace glitch

template <typename T>
class BaseMeshSceneNode : public T {
public:
    // Ctor. Calls T's ctor with the mesh and then sets m_renderEnabled.
    // CMeshSceneNode 0x35b19c, CSkinnedMeshSceneNode 0x35affc, CModularSkinnedMeshSceneNode 0x35ae5c.
    explicit BaseMeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);

    // Slot 2 is the complete dtor and slot 3 the deleting dtor (it frees the object after the complete one).
    // CMeshSceneNode: 0x35aa00 (complete), 0x35b478 (deleting).
    // CSkinnedMeshSceneNode: 0x35b750 (complete), 0x35bb18 (deleting).
    // CModularSkinnedMeshSceneNode: 0x35b668 (complete), 0x35b714 (deleting). 0x35b9bc is a dtor that
    // takes an extra vtable-table argument (the base-object form); its use is not identified.
    // "override" is not written on the two virtuals below: the engine T classes in this tree
    // (collada_scene_accessors.hpp) declare no virtual dtor or render, so override fails when the template is
    // instantiated. "virtual" keeps the vtable slots the binary has.
    ~BaseMeshSceneNode() override;

    // Slot 7. Calls T's render only when m_renderEnabled is set.
    // CMeshSceneNode 0x35a9a8, CSkinnedMeshSceneNode 0x35a9b8, CModularSkinnedMeshSceneNode 0x35a9c8.
    void render(void* renderContext) override;

    // T occupies +0x00 .. sizeof(T)-1. Field offset as noted above.
    // Named after its use as the render gate (render() tests it, the ctor sets it to 1).
    bool m_renderEnabled;                                               // +0x138 (CMeshSceneNode), +0x17c (skinned variants), i.e. sizeof(T)
};
