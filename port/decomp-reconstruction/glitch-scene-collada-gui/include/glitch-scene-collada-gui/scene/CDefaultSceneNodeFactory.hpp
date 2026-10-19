// glitch::scene::CDefaultSceneNodeFactory: the node factory the scene manager registers first. Canonical header of the scene
// owner pass (R3b). It replaces the stand-in in scene_simple_accessors.hpp (a vector of 28-byte records with no base) and the free
// functions of recon/slice_25.hpp.
//
// Layout (original 32-bit offsets; constructors 0x6baae8 C2 / 0x6bb008 C1, created by CSceneManager's constructor with
// operator new(0x20)):
//   +0x00 vptr (vtable 0x987968, 44 bytes)   +0x04 reference count (the constructor stores 1)
//   +0x08 types: std::vector<SSceneNodeTypePair> (begin, end and capacity words at +0x08, +0x0c, +0x10; 28-byte elements)
//   +0x14 the scene manager (not held)   +0x18 the cursor control (not held)   +0x1c the file system (a use is held)
// SSceneNodeTypePair (28 bytes): the type id at +0x00 and a glitch std::string at +0x04 (16 bytes of inline buffer, the finish
// pointer at +0x14, the start pointer at +0x18, which is the name's character data).
//
// The constructor registers the sixteen creatable types, in this order: cube, sphere, text, terrain, skyBox, shadowVolume, mesh,
// light, empty, dummyTransformation, camera, billBoard, animatedMesh, particleSystem, cameraMaya, cameraFPS. addSceneNode(type)
// does not create all of them (shadowVolume has no case).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"

namespace glitch::scene {

class CDefaultSceneNodeFactory : public ISceneNodeFactory {
public:
    struct SSceneNodeTypePair {
        // 0x6ba774: the type and a copy of the name.
        SSceneNodeTypePair(E_SCENE_NODE_TYPE nodeType, const char* nodeName);

        E_SCENE_NODE_TYPE type;  // +0x00
        std::string name;        // +0x04
    };

    // 0x6baae8 (C2) and 0x6bb008 (C1): reference count 1, the three arguments stored (a use of the file system is taken) and the
    // sixteen types registered.
    CDefaultSceneNodeFactory(CSceneManager* manager, gui::ICursorControl* cursorControl,
                             const boost::intrusive_ptr<io::IFileSystem>& fileSystem);
    // 0x6ba8f8 (D1), 0x6ba940 (D0, skipped): drops the file system; the type list goes with the object.
    ~CDefaultSceneNodeFactory() override;

    // vptr+0x0c, 0x6b9f30: creates the node of the type (the cases are listed in the source), adds it to `parent` when both exist
    // (and drops the creator's use) and returns it; null for a type without a case. PARTIAL: see the source for the cases the
    // port cannot build yet.
    ISceneNode* addSceneNode(E_SCENE_NODE_TYPE type, ISceneNode* parent) override;
    // vptr+0x10, 0x6b9f04: addSceneNode(getTypeFromName(name), parent) through the vtable.
    ISceneNode* addSceneNode(const char* typeName, ISceneNode* parent) override;
    // vptr+0x14, 0x6b9cf0: the number of registered types.
    std::int32_t getCreatableSceneNodeTypeCount() const override;
    // vptr+0x18, 0x6b9d1c: the type at the index, 'unkn' when out of range.
    E_SCENE_NODE_TYPE getCreateableSceneNodeType(std::uint32_t index) const override;
    // vptr+0x1c, 0x6b9d60: the name at the index, null when out of range.
    const char* getCreateableSceneNodeTypeName(std::uint32_t index) const override;
    // vptr+0x20, 0x6b9da0: the name of the first record of the type, null when there is none.
    const char* getCreateableSceneNodeTypeName(E_SCENE_NODE_TYPE type) const override;

    // 0x6b9e58 (direct calls): the type of the first record with this name, 'unkn' when there is none.
    E_SCENE_NODE_TYPE getTypeFromName(const char* name) const;

    std::vector<SSceneNodeTypePair> types;               // +0x08
    CSceneManager* sceneManager = nullptr;                // +0x14
    gui::ICursorControl* cursorControl = nullptr;         // +0x18
    boost::intrusive_ptr<io::IFileSystem> fileSystem;     // +0x1c
};

}  // namespace glitch::scene
