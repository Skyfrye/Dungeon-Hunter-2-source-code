// MenuCharacterSelect: the class-selection page ("menu_SelectClass"), a function-local singleton (GetInstance).
// It loads CLASS_SELECTION.bdae, spawns three player actors (Knight, Rogue, Mage), and steps through their
// idle and transition animations as the player picks a class.
// Original 32-bit size 0x1c8 (456).
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x429a98 / 0x429b98, dtor 0x428db4).
#pragma once

#include <cstdint>

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/MenuBase.hpp"

class Character;

namespace gameswf {
struct render_state;
}  // namespace gameswf

namespace glitch {
namespace scene {
class ICameraSceneNode;
class ITimelineController;
}  // namespace scene
namespace collada {
class CRootSceneNode;
class ISceneNodeAnimator;
}  // namespace collada
}  // namespace glitch

class MenuCharacterSelect : public MenuBase {
public:
    MenuCharacterSelect();                                              // 0x429a98 / 0x429b98
    ~MenuCharacterSelect() override;                                    // +0x00, +0x04 (0x428d44, 0x428d98); D2 0x428db4

    static MenuCharacterSelect* GetInstance();                          // 0x429b10
    static void RenderClassSelectPane(gameswf::render_state& state, void* user);  // 0x428b74, display callback

    // Overrides of MenuBase slots, in vtable order.
    void Show() override;                                               // +0x0c 0x428f38
    void Hide() override;                                               // +0x10 0x4283c0: calls IsValidMenu (+0x3c) first
    void Update() override;                                             // +0x1c 0x428498
    void OnEvent(RenderFX::Event& e) override;                          // +0x2c 0x4281b8

    // Non-virtual methods.
    void Init();                                                        // 0x428cc0 registers the menu, caches two paths
    bool IsAnimOver();                                                  // 0x427fd8 m_animTime >= m_animEnd
    bool UpdateAnim();                                                  // 0x427ffc advances m_animTime by the frame delta, clamped to m_animEnd
    void SetAnim(const char* name);                                     // 0x428078 selects a named animation on m_animSet

    // MenuBase occupies +0x00 .. +0xc3.
    glitch::collada::CRootSceneNode* m_sceneRoot;                       // +0xc4 constructScene() result, the root of CLASS_SELECTION.bdae
    glitch::scene::ICameraSceneNode* m_camera;                          // +0xc8 the camera found in m_sceneRoot, made active in Show
    glitch::collada::ISceneNodeAnimator* m_animator;                    // +0xcc constructAnimator() result
    glitch::scene::ITimelineController* m_animSet;                      // +0xd0 the timeline controller of m_animator (getTimelineCtrl, vtable +0x44), driven by SetAnim
    Character* m_actors[3];                                             // +0xd4 Player_CS_0..2, one per class (Knight, Rogue, Mage)
    float m_animTime;                                                   // +0xe0 current time of the playing animation
    float m_animStart;                                                  // +0xe4 start of the playing animation, set by SetAnim
    float m_animEnd;                                                    // +0xe8 end of the playing animation, set by SetAnim
    int m_classIndex;                                                   // +0xec requested class: 0 Knight, 1 Rogue, 2 Mage
    int m_shownClassIndex;                                              // +0xf0 class whose pane Update has applied (-1 after Show)
    bool m_dragging;                                                    // +0xf4 set while a swipe is in progress
    uint8_t pad_f5[3];                                                  // +0xf5
    float m_dragStartX;                                                 // +0xf8 x of the swipe start
    bool m_inputEnabled;                                                // +0xfc set when the idle animation ends, cleared on a class change
    uint8_t pad_fd[3];                                                  // +0xfd
    DebugCachedCharacter m_btnRight;                                    // +0x100 path "btn_right", the next-class arrow
    DebugCachedCharacter m_btnLeft;                                     // +0x130 path "btn_left", the previous-class arrow
    int m_savedSavegameSlot;                                            // +0x160 MenuMainMenu::mSavegameSlot, saved in Show and restored in Hide (-1 by default)
    int m_classMemberId;                                                // +0x164 CharacterTable member id of the selected class
    DebugCachedCharacter m_classTitle;                                  // +0x168 path "class_title.text"
    DebugCachedCharacter m_classDescription;                            // +0x198 path "class_description.text"
};
