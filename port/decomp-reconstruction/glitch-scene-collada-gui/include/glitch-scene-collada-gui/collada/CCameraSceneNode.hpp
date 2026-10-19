// glitch::collada::CCameraSceneNode: the camera node a COLLADA file instances. Canonical header of the scene-owner wave. It replaces the
// CCameraSceneNode accessor class of collada_scene_accessors.hpp (a target pointer and a uid holder at the wrong offsets, no base class)
// and the recon stand-ins that forward-declared it.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x6e5550 (C1) / 0x6e57b0 (C2), destructors 0x6e5418 (D1) / 0x6e54c0
// (D2), D0 0x6e54a4 skipped; tools/decomp_vtable.py glitch::collada::CCameraSceneNode, 424 bytes, virtual base IReferenceCounted at +0x398):
//   Derives from scene::CCameraSceneNode (scene/CCameraSceneNode.hpp, which ends at +0x384) and adds
//     +0x384 uid (the empty-string constant, then the record's name)
//     +0x388 CColladaDatabase (record, factory)
//     +0x390 the target node (a reference is held; null until attach finds it)
//     +0x394 SCamera* the file record
//   The constructor builds the base as scene::CCameraSceneNode(-1, position (0,0,0), target (0,0,100), false), copies the database, takes
//   the record, sets the up vector from the file's up axis (X_UP (1,0,0), Y_UP (0,1,0), Z_UP (0,0,1)) and the projection from the record:
//   orthographic records set the orthogonal byte, the aspect ratio and the magnification (fov / aspect); perspective records set the field
//   of view from the horizontal field of view (2 * atan(tan(fov * pi/180 / 2) / aspect)). The near and far values follow.
//   Overrides: onRegisterSceneNode (K 0x10, 0x6e5238: points the camera at the target node when there is one, otherwise 100 units along
//   the view axis), getUID (K 0x54, 0x6e5174), getType (K 0xbc, 'daec', 0x6e5168), getTargetNode (K 0x10c, 0x6e5160), and the destructors.
#pragma once

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/scene/CCameraSceneNode.hpp"

namespace glitch::collada {

class CCameraSceneNode : public scene::CCameraSceneNode {
public:
    // 0x6e5550 (C1) and 0x6e57b0 (C2).
    CCameraSceneNode(const CColladaDatabase& database, SCamera& camera);
    // 0x6e5418 (D1), 0x6e54c0 (D2); D0 0x6e54a4 is skipped. Drops the target node and the database handle.
    ~CCameraSceneNode() override;

    // K 0x10, 0x6e5238: with a target node its absolute position becomes the camera's target and the camera's rotation is rebuilt to
    // look at it; without one the target is 100 units along the camera's -Z axis. Then the base version runs.
    int onRegisterSceneNode() override;
    // K 0x54, 0x6e5174: the record's name.
    const char* getUID() const override;
    // K 0xbc, 0x6e5168: 'daec'.
    scene::E_SCENE_NODE_TYPE getType() const override;
    // K 0x10c, 0x6e5160: the target node.
    scene::ISceneNode* getTargetNode() const override;
    // 0x65b2e0: when the record names a target (a non-empty string at record +0x18), finds that node by uid below `root` and keeps it.
    void attach(scene::ISceneNode* root);

    const char* uid = "";                                  // +0x384
    CColladaDatabase database;                             // +0x388
    boost::intrusive_ptr<scene::ISceneNode> targetNode;    // +0x390
    SCamera* camera = nullptr;                             // +0x394
};

}  // namespace glitch::collada
