// glitch::scene factory and loader interfaces that the scene manager holds: ISceneNodeFactory, ISceneNodeAnimatorFactory,
// IMeshLoader, IShadowReceiverTarget and ISceneUserDataSerializer. Canonical header of the engine unification wave (u1-scene),
// extended by the scene owner pass (R3b). They replace the empty-destructor stand-ins in scene_simple_accessors.hpp (classes with
// no base and no slots).
//
// Evidence (tools/decomp_vtable.py): each of the first three is a plain glitch::IReferenceCounted subclass (vtable header (0,0),
// (4,0)): slots +0x00 / +0x04 destructors, +0x08 onDelete, then the pure slots below, named by the implementations in
// CDefaultSceneNodeFactory (44 bytes), CDefaultSceneNodeAnimatorFactory (44 bytes) and CColladaBinaryFileLoader (32 bytes).
// IShadowReceiverTarget and ISceneUserDataSerializer have no vtable of their own in the binary (no class derives from them in
// the library); their slots are the ones CSceneManager calls (drawShadowReceivers 0x58b0a8; writeSceneNode 0x58cdd4,
// readSceneNode 0x58e1e0 and readUserData 0x58c4a4).
#pragma once

#include <cstdint>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/deps/core_stand_ins.hpp"
#include "glitch-scene-collada-gui/scene/scene_types.hpp"

namespace glitch::video {
class ITexture;
class IVideoDriver;
}  // namespace glitch::video

namespace glitch::io {
class IAttributes;
}

namespace glitch::scene {

class ICameraSceneNode;

// 0x6b9cec (D1; empty), 0x6b9e44 (D0, skipped).
class ISceneNodeFactory : public glitch::IReferenceCounted {
public:
    ~ISceneNodeFactory() override;
    virtual ISceneNode* addSceneNode(E_SCENE_NODE_TYPE type, ISceneNode* parent) = 0;               // +0x0c
    virtual ISceneNode* addSceneNode(const char* typeName, ISceneNode* parent) = 0;                 // +0x10
    virtual std::int32_t getCreatableSceneNodeTypeCount() const = 0;                                 // +0x14
    virtual E_SCENE_NODE_TYPE getCreateableSceneNodeType(std::uint32_t index) const = 0;             // +0x18
    virtual const char* getCreateableSceneNodeTypeName(std::uint32_t index) const = 0;              // +0x1c
    virtual const char* getCreateableSceneNodeTypeName(E_SCENE_NODE_TYPE type) const = 0;            // +0x20
};

// 0x6b958c (D1; empty), 0x6b97c0 (D0, skipped).
class ISceneNodeAnimatorFactory : public glitch::IReferenceCounted {
public:
    ~ISceneNodeAnimatorFactory() override;
    virtual ISceneNodeAnimator* createSceneNodeAnimator(E_SCENE_NODE_ANIMATOR_TYPE type, ISceneNode* target) = 0;  // +0x0c
    virtual ISceneNodeAnimator* createSceneNodeAnimator(const char* typeName, ISceneNode* target) = 0;             // +0x10
    virtual std::uint32_t getCreatableSceneNodeAnimatorTypeCount() const = 0;                                      // +0x14
    virtual E_SCENE_NODE_ANIMATOR_TYPE getCreateableSceneNodeAnimatorType(std::uint32_t index) const = 0;          // +0x18
    virtual const char* getCreateableSceneNodeAnimatorTypeName(std::uint32_t index) const = 0;                     // +0x1c
    virtual const char* getCreateableSceneNodeAnimatorTypeName(E_SCENE_NODE_ANIMATOR_TYPE type) const = 0;         // +0x20
};

// 0x6b930c (D1; empty), 0x6b9578 (D0, skipped). The two slots are the ones CColladaBinaryFileLoader implements (+0x0c, +0x10); its +0x14 createScene
// is the loader's own.
class IMeshLoader : public glitch::IReferenceCounted {
public:
    ~IMeshLoader() override;
    virtual bool isALoadableFileExtension(const char* fileName) const = 0;                          // +0x0c
    virtual boost::intrusive_ptr<IAnimatedMesh> createMesh(io::IReadFile* file) = 0;                 // +0x10
};

// The target a shadow receiver texture or node registers with the scene manager (CSceneManager::addShadowReceiverTarget). Layout
// (original 32-bit offsets): +0x00 vptr, +0x04 reference count, +0x0c the texture the target renders into (a use is held;
// removeShadowReceiverTarget 0x589754 compares it with its texture argument), +0x14 the camera the target renders the receivers
// with (drawShadowReceivers makes it the active camera), +0x1c the clear colour (four bytes, R G B A in memory order). The words at
// +0x08, +0x10 and +0x18 are not read by the scene manager.
//
// The slots after onDelete are the five calls drawShadowReceivers (0x58b0a8) makes, in this order for each target: begin(driver),
// then for each layer i below getLayerCount(): selectLayer(i), the camera setup, endLayer(driver), the list render, finish(driver).
class IShadowReceiverTarget : public glitch::IReferenceCounted {
public:
    ~IShadowReceiverTarget() override;

    virtual std::int32_t getLayerCount() = 0;                // +0x0c: the number of layers (cascades) to render
    virtual void selectLayer(std::int32_t layer) = 0;        // +0x10: makes `layer` the current one (before the camera is updated)
    virtual void begin(video::IVideoDriver* driver) = 0;     // +0x14: before the layers; the target's render target goes on
    virtual void endLayer(video::IVideoDriver* driver) = 0;  // +0x18: after the camera of a layer is set up, before the clear
    virtual void finish(video::IVideoDriver* driver) = 0;    // +0x1c: after each layer's receivers were rendered

    boost::intrusive_ptr<video::ITexture> texture;           // +0x0c
    ICameraSceneNode* camera = nullptr;                      // +0x14
    video::SColor clearColor;                                // +0x1c
};

// The user data serializer of saveScene / loadScene. Not reference counted: slots +0x00 / +0x04 are the destructors, then the three
// callbacks (writeSceneNode 0x58cdd4 calls +0x10, readSceneNode 0x58e1e0 calls +0x08 and readUserData 0x58c4a4 calls +0x0c).
class ISceneUserDataSerializer {
public:
    virtual ~ISceneUserDataSerializer() = default;  // +0x00, +0x04
    // +0x08: called with a node loadScene has just filled from the file.
    virtual void onCreateNode(ISceneNode* node) = 0;
    // +0x0c: the attributes a node's <u> element carried.
    virtual void onReadUserData(ISceneNode* node, io::IAttributes* userData) = 0;
    // +0x10: the attributes saveScene stores for a node (a new set, owned by the caller; null for none).
    virtual io::IAttributes* createUserData(ISceneNode* node) = 0;
};

}  // namespace glitch::scene
