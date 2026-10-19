// glitch::scene::IAnimatedMeshSceneNode: the interface of the animated mesh node, and IAnimationEndCallBack. Canonical header of the
// scene residue pass 2.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::scene::CAnimatedMeshSceneNode): the class adds
// no members to ISceneNode (the constructor of CAnimatedMeshSceneNode, 0x6f6b7c, calls ISceneNode::ISceneNode directly) and twelve
// pure virtual slots after the ISceneNode ones, vptr+0xf4 .. +0x120 (listing +0x100 .. +0x12c):
//   setCurrentFrame(float)                 setFrameLoop(int, int)              setAnimationSpeed(float)
//   addShadowVolumeSceneNode(mesh, id, zfail, infinity)                        getFrameNr() const
//   getStartFrame() const                  getEndFrame() const                 setLoopMode(bool)
//   setAnimationEndCallback(IAnimationEndCallBack*)                            setMesh(intrusive_ptr<IAnimatedMesh> const&)
//   getMesh() const (returns the counted reference by value, 0x6f5fa8)         setRenderFromIdentity(bool)
// The destructors are 0x6f65ac (D1) and 0x6f72bc (D0); both are empty apart from the ISceneNode base destruction.
// IAnimationEndCallBack is a plain IReferenceCounted with one pure slot at vptr+0x0c (CAnimatedMeshSceneNode::buildFrameNr calls it with
// the node when a non-looping animation reaches its last frame, 0x6f5fd8).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::scene {

class IAnimatedMeshSceneNode;
class IShadowVolumeSceneNode;

class IAnimationEndCallBack : public glitch::IReferenceCounted {
public:
    // vptr+0x0c: the animation of `node` reached its end.
    virtual void onAnimationEnd(IAnimatedMeshSceneNode* node) = 0;
};

class IAnimatedMeshSceneNode : public ISceneNode {
public:
    using ISceneNode::ISceneNode;
    // 0x6f65ac (D1), 0x6f72bc (D0).
    ~IAnimatedMeshSceneNode() override;

    virtual void setCurrentFrame(float frame) = 0;
    virtual bool setFrameLoop(std::int32_t begin, std::int32_t end) = 0;
    virtual void setAnimationSpeed(float framesPerSecond) = 0;
    virtual IShadowVolumeSceneNode* addShadowVolumeSceneNode(const boost::intrusive_ptr<const IMesh>& mesh, std::int32_t id,
                                                             bool zfailMethod, float infinity) = 0;
    virtual float getFrameNr() const = 0;
    virtual std::int32_t getStartFrame() const = 0;
    virtual std::int32_t getEndFrame() const = 0;
    virtual void setLoopMode(bool playAnimationLooped) = 0;
    virtual void setAnimationEndCallback(IAnimationEndCallBack* callback) = 0;
    virtual void setMesh(const boost::intrusive_ptr<IAnimatedMesh>& mesh) = 0;
    virtual boost::intrusive_ptr<IAnimatedMesh> getMesh() const = 0;
    virtual void setRenderFromIdentity(bool value) = 0;
};

}  // namespace glitch::scene
