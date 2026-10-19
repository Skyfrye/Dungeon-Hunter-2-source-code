// MeshSceneNode: a static mesh scene node. It is BaseMeshSceneNode over glitch's CMeshSceneNode and adds one
// word after the base's virtual subobject area: +0x140, set to 1 by the ctor before the base ctor runs.
// Original 32-bit size not recovered (no operator new site in class-facts); the ctor writes up to +0x143.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x35b240 / 0x35b2c0, dtors 0x35aad8 / 0x35ab40 / 0x35ab5c).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-scene-collada-gui/collada_scene_accessors.hpp"

#include "dh2/BaseMeshSceneNode.hpp"

namespace glitch {
namespace collada {
class IMesh;
}  // namespace collada
}  // namespace glitch

class MeshSceneNode : public BaseMeshSceneNode<glitch::collada::CMeshSceneNode> {
public:
    explicit MeshSceneNode(const boost::intrusive_ptr<glitch::collada::IMesh>& mesh);  // 0x35b240 (complete), 0x35b2c0 (base-object form)
    ~MeshSceneNode() override;                                                         // 0x35aad8 (complete dtor, D1), 0x35ab40 (deleting, D0), 0x35ab5c (base-object dtor taking the VTT, D2)

    // BaseMeshSceneNode occupies +0x00 .. +0x13f: render flag at +0x138, its virtual subobject at +0x13c.
    std::int32_t unk_140;                                                              // +0x140 set to 1 by the ctor; not read in the recovered code
};
