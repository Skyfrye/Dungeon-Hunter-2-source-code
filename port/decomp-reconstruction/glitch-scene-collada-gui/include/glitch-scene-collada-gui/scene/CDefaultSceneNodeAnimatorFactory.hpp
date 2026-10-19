// glitch::scene::CDefaultSceneNodeAnimatorFactory: the factory CSceneManager registers for the nine built-in animator types. Canonical
// header of the scene owner pass (R3b). It replaces the stand-in class in scene_simple_accessors.hpp and the free functions of recon
// slice 25.
//
// Layout (original 32-bit offsets; constructors 0x6b9590 C1 / 0x6b95dc C2, created by CSceneManager's constructor with operator new(0x10)):
//   +0x00 vptr (vtable 0x987908, 44 bytes)   +0x04 reference count (IReferenceCounted; the constructor stores 1)
//   +0x08 CSceneManager* (not owned)         +0x0c ICursorControl* (a use is held)
// The ISceneNodeAnimatorFactory slots (SceneFactories.hpp) are all overridden. The names of the types are the table
// glitch::scene::SceneNodeAnimatorTypeNames (0x957ba4): nine C strings and a null terminator.
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/scene/SceneFactories.hpp"

namespace glitch::gui {
class ICursorControl;
}

namespace glitch::scene {

class CSceneManager;

// 0x957ba4: "flyCircle", "flyStraight", "followSpline", "rotation", "texture", "deletion", "collisionResponse", "cameraFPS", "cameraMaya", null.
extern const char* const SceneNodeAnimatorTypeNames[10];

class CDefaultSceneNodeAnimatorFactory : public ISceneNodeAnimatorFactory {
public:
    // 0x6b9590 (C1) and 0x6b95dc (C2): stores the scene manager and the cursor control (a use is added).
    CDefaultSceneNodeAnimatorFactory(CSceneManager* sceneManager, gui::ICursorControl* cursorControl);
    // 0x6b9628 (D1), 0x6b9668 (D2), 0x6b97a4 (D0): drops the cursor control.
    ~CDefaultSceneNodeAnimatorFactory() override;

    // vptr+0x0c, 0x6b9928: builds the animator of the type with the default parameters (see the .cpp) and, when there is a target node,
    // adds it to the node. Null for a type outside 0 .. 8.
    ISceneNodeAnimator* createSceneNodeAnimator(E_SCENE_NODE_ANIMATOR_TYPE type, ISceneNode* target) override;
    // vptr+0x10, 0x6b9778: getTypeFromName, then the overload above (through the vtable).
    ISceneNodeAnimator* createSceneNodeAnimator(const char* typeName, ISceneNode* target) override;
    // vptr+0x14, 0x6b96a8: 9.
    std::uint32_t getCreatableSceneNodeAnimatorTypeCount() const override;
    // vptr+0x18, 0x6b96b0: the index, or 10 (ESNAT_UNKNOWN) above 8.
    E_SCENE_NODE_ANIMATOR_TYPE getCreateableSceneNodeAnimatorType(std::uint32_t index) const override;
    // vptr+0x1c and +0x20, 0x6b96c0 and 0x6b96e0: the name table entry; null from 9 up.
    const char* getCreateableSceneNodeAnimatorTypeName(std::uint32_t index) const override;
    const char* getCreateableSceneNodeAnimatorTypeName(E_SCENE_NODE_ANIMATOR_TYPE type) const override;

    // 0x6b9720: the index of the first table entry that equals `name` (a case-sensitive compare), or 10 when none does.
    E_SCENE_NODE_ANIMATOR_TYPE getTypeFromName(const char* name) const;

    CSceneManager* sceneManager = nullptr;         // +0x08
    gui::ICursorControl* cursorControl = nullptr;  // +0x0c (a use is held)
};

}  // namespace glitch::scene
