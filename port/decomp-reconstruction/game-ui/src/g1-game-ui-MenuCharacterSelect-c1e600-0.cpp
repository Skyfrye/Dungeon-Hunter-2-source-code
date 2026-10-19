// MenuCharacterSelect bodies, batch g1-game-ui-MenuCharacterSelect-c1e600-0 (the whole class, one batch).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original 32-bit
// ARM offsets. A function marked PARTIAL says in its comment which part is missing and why.
//
#include <array>
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/ColladaFactory.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/LightBase.hpp"
#include "dh2/LightPoint.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/RootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/CLightSceneNode.hpp"
#include "dh2/SceneManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/DeviceSceneManager.hpp"
#include "gameswf/gameswf_character.h"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/CRootSceneNode.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ICameraSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/video_driver.hpp"
#include "dh2/AnimSetManager.hpp"
#include "dh2/Character.hpp"
#include "dh2/CharAnimator.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuCharacterSelect.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "pydata-accessors/arrays.hpp"
#include <cstring>
#include "dh2/MenuFX.hpp"
#include "dh2/MenuMainMenu.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vendor-gameswf/as_value.hpp"

// core-platform/memory.hpp declares gAssertLevel. It is not included here, as in FlashAnimManager.
extern int gAssertLevel;

namespace {

// Writes the StrID constant's text into one character as HTML. The original reads the constant and the string
// in this order, after the character lookup that the caller has already done.
void FormatClassText(MenuFX* menu, gameswf::character* target, const char* constantName) {
    const int constant = ApplicationGetInstance().m_pyDataConstants->getConstant("StrID", constantName);
    const char* text = ApplicationGetInstance().m_stringManager->getString(constant);
    menu->FormatHTML(target, "%s", text);
}

// Sets the CurrentClass variable of the root movie's menu_SelectClass clip to the class member name.
// The gameswf as_value is destroyed at the end of this function, which is where the original calls drop_refs.
void SetCurrentClassOnRoot(const char* className) {
    MenuFX* root = MenuManager::GetInstance()->GetRoot();
    gameswf::as_value value;
    value.set_string(className);
    root->InvokeASCallback("_root.menu_SelectClass", "CurrentClass", &value, 1);
}

}  // namespace

// 0x427fd8 MenuCharacterSelect::IsAnimOver()
bool MenuCharacterSelect::IsAnimOver() {
    return m_animTime >= m_animEnd;  // +0xe0 >= +0xe8
}

// 0x427ffc MenuCharacterSelect::UpdateAnim()
// The animator is applied to the scene root at the current animation time (animator vtable +0x10), then the time advances by the
// frame delta and is clamped to the end time. Returns true once the end is reached.
bool MenuCharacterSelect::UpdateAnim() {
    m_animator->animateNode(m_sceneRoot, static_cast<unsigned int>(m_animTime));
    const float frameTime = static_cast<float>(static_cast<unsigned int>(ApplicationGetInstance().GetDt()));
    const float time = m_animTime + frameTime;  // +0xe0 + (float)(unsigned)GetDt()
    const float end = m_animEnd;                // +0xe8
    m_animTime = time;
    const bool over = time >= end;
    if (over) {
        m_animTime = end;
    }
    return over;
}

// 0x428078 MenuCharacterSelect::SetAnim(char const*)
// Selects the clip called name on the animation set (timeline controller): the clip index is looked up (assert idx >= 0 at
// MenuCharacterSelect.cpp:495), the clip is set and looping is turned off, the start and end times are stored as floats, the time
// goes to the start, and the controller jumps there.
void MenuCharacterSelect::SetAnim(const char* name) {
    const int index = m_animSet->getClipIndex(name);
    if (index < 0) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "idx >= 0",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuCharacterSelect.cpp", 495);
        }
    }
    m_animSet->setClip(index);
    m_animSet->setLoop(false);
    m_animStart = static_cast<float>(m_animSet->getClipStart(index));
    m_animEnd = static_cast<float>(m_animSet->getClipEnd(index));
    m_animTime = m_animStart;
    m_animSet->jumpTo(static_cast<int>(m_animStart));
}

namespace {

// Index of `name` in the Sounds name table, or -1: the first match in table order (the original compares with strcmp).
int FindSoundIndex(const char* name) {
    const pydata::NameTable& table = Arrays::Sounds::m_memberNames;
    for (int i = 0; i < table.size; ++i) {
        if (std::strcmp(name, table.names[i]) == 0) {
            return i;
        }
    }
    return -1;
}

}  // namespace

// 0x4281b8 MenuCharacterSelect::OnEvent(RenderFX::Event &)
// While input is enabled (+0xfc): a click (kind 2) on the right button moves the class one to the right (up to the mage), on
// the left button one to the left (down to the knight). A drag (kind 5) remembers the pointer x where it began and, once the
// pointer has moved more than 100 pixels, changes the class by one in the dragged direction and plays the "MenuTab" sound.
// Any other kind ends the drag. The event always reaches MenuBase::OnEvent.
void MenuCharacterSelect::OnEvent(RenderFX::Event& e) {
    if (m_inputEnabled) {  // +0xfc
        const int kind = static_cast<int>(e.type);  // +0x08 of the event
        if (kind == 2) {
            // Raw pointer compare, as the original does: the event target is an as_object*, the button is a character*.
            if (static_cast<const void*>(e.target) == static_cast<const void*>(m_btnRight.GetChar())) {
                if (m_classIndex <= 1) {  // +0xec
                    ++m_classIndex;
                }
            } else if (static_cast<const void*>(e.target) == static_cast<const void*>(m_btnLeft.GetChar())) {
                if (m_classIndex > 0) {
                    --m_classIndex;
                }
            }
        } else if (kind != 5) {
            m_dragging = false;  // +0xf4
        } else if (!m_dragging) {
            m_dragging = true;
            m_dragStartX = e.x;  // +0xf8, event +0x0c
        } else {
            const int delta = static_cast<int>(e.x - m_dragStartX);
            if (delta > 100) {
                if (m_classIndex > 0) {
                    --m_classIndex;
                    VoxSoundManager::s_instance->PlayMenu(FindSoundIndex("MenuTab"), false, 0, 0);
                }
            } else if (delta < -100) {
                if (m_classIndex <= 1) {
                    ++m_classIndex;
                    VoxSoundManager::s_instance->PlayMenu(FindSoundIndex("MenuTab"), false, 0, 0);
                }
            }
        }
    }
    MenuBase::OnEvent(e);
}

// 0x4283c0 MenuCharacterSelect::Hide()
// The class-select scene root (when there is one) is removed from the scene and the scene manager is cleared, the object and
// animation set managers are flushed, and the main menu preview is rebuilt (avatar camera, scene, character).
void MenuCharacterSelect::Hide() {
    if (!IsValidMenu()) {  // vtable +0x3c
        return;
    }
    MenuBase::Hide();
    if (m_sceneRoot != nullptr) {
        m_sceneRoot->remove();  // ISceneNode vtable +0x68
    }
    DeviceSceneManager()->clear();  // scene manager vtable +0x68
    dword_99F764->Flush();
    Singleton<AnimSetManager>::s_inst.Flush();
    // The original calls MenuMainMenu::GetInstance() before each static call below. The result is passed on in a
    // register, but the callees take no object. The calls are kept for the side effect of the first-use construction.
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::CreateAvatarCamera();
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::m_isDestroyed = false;
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::mSavegameSlot = m_savedSavegameSlot;  // +0x160
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::SetupScene();
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::SetupCharacter();
}

// 0x428498 MenuCharacterSelect::Update()
// A finished idle animation re-arms input; a class change rewrites the title, description, class id and the root CurrentClass,
// shows or hides the arrows by the instance names of btn_right and btn_left, starts the transition animation, and sets each
// actor idle animation state (selected: loop on). Then the animation and the actors are updated.
void MenuCharacterSelect::Update() {
    if (m_shownClassIndex == m_classIndex) {  // +0xf0 == +0xec
        if (IsAnimOver()) {
            switch (m_classIndex) {
                case 1:
                    SetAnim("lol_2_idle");
                    break;
                case 2:
                    SetAnim("lol_3_idle");
                    break;
                case 0:
                    SetAnim("lol_1_idle");
                    break;
            }
            m_inputEnabled = true;  // +0xfc
        }
    } else {
        switch (m_classIndex) {
            case 1:  // Rogue
                FormatClassText(m_menu, m_classTitle.GetChar(), "MENU_CLASS_01");
                FormatClassText(m_menu, m_classDescription.GetChar(), "MENU_ROGUE_DESC");
                m_classMemberId = Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase");  // +0x164
                SetCurrentClassOnRoot("RoguePlayerBase");
                m_menu->SetVisible(m_btnRight.GetChar()->get_name().c_str(), true);
                m_menu->SetVisible(m_btnLeft.GetChar()->get_name().c_str(), true);
                SetAnim(m_shownClassIndex != 0 ? "lol_3_to_2" : "lol_1_to_2");
                break;
            case 2:  // Mage
                FormatClassText(m_menu, m_classTitle.GetChar(), "MENU_CLASS_02");
                FormatClassText(m_menu, m_classDescription.GetChar(), "MENU_MAGE_DESC");
                m_classMemberId = Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase");
                SetCurrentClassOnRoot("MagePlayerBase");
                m_menu->SetVisible(m_btnRight.GetChar()->get_name().c_str(), false);
                m_menu->SetVisible(m_btnLeft.GetChar()->get_name().c_str(), true);
                SetAnim("lol_2_to_3");
                break;
            case 0:  // Knight
                FormatClassText(m_menu, m_classTitle.GetChar(), "MENU_CLASS_00");
                FormatClassText(m_menu, m_classDescription.GetChar(), "MENU_KNIGHT_DESC");
                m_classMemberId = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase");
                SetCurrentClassOnRoot("KnightPlayerBase");
                m_menu->SetVisible(m_btnRight.GetChar()->get_name().c_str(), true);
                m_menu->SetVisible(m_btnLeft.GetChar()->get_name().c_str(), false);
                SetAnim("lol_2_to_1");
                break;
        }

        const int newClass = m_classIndex;
        m_inputEnabled = false;      // +0xfc
        m_shownClassIndex = newClass;  // +0xf0

        // Actor i plays its selected idle (row word +0x60, looping) when i is the shown class, and its
        // unselected idle (row word +0x5c, not looping) otherwise. The row is Character::GetCharAnimTable().
        // The pydata names of those words are m_w24 and m_w23; their meaning is not recovered.
        for (int i = 0; i < 3; ++i) {
            Character* actor = m_actors[i];
            const Structs::CharAnim* row = actor->GetCharAnimTable();
            CharStateMachine* machine = static_cast<CharStateMachine*>(actor);
            if (i == m_shownClassIndex) {
                machine->SM_SetAnimState(row->MenuOnSelect, true, false);
            } else {
                machine->SM_SetAnimState(row->MenuIdle, false, false);
            }
        }
    }

    UpdateAnim();
    for (Character* actor : m_actors) {
        // The original passes a null CharAnimator* when the actor is missing. This port skips the call instead.
        // Actors are spawned in Show, so the null case is not reached after Show.
        if (actor != nullptr) {
            actor->CharAnimator::Update();
        }
    }
}

// 0x428b74 MenuCharacterSelect::RenderClassSelectPane(gameswf::render_state &,void *)
// The bounds of the "class_select" character become the driver viewport in pixels (the previous one is saved), the scene is drawn
// (scene manager vtable +0x3c with no node) and the viewport is restored. The user pointer is the menu (the Hex-Rays *(a2+4) is
// its MenuFX).
void MenuCharacterSelect::RenderClassSelectPane(gameswf::render_state& /*state*/, void* user) {
    MenuCharacterSelect* menu = static_cast<MenuCharacterSelect*>(user);
    gameswf::character* pane = static_cast<gameswf::character*>(menu->m_menu->Find("class_select"));
    const std::array<float, 4> bounds = GameSWFUtils::GetAbsoluteBoundingRect(pane);
    glitch::video::IRenderTarget* target = ApplicationGetInstance().m_device->videoDriver->m_renderTargets.back().get();
    const glitch::core::rect<int> savedViewport = target->viewport();
    gameswf::root* root = menu->m_menu->GetRoot();
    const float invX = GameSWFUtils::GetInvPixelScaleX(root);
    const float invY = GameSWFUtils::GetInvPixelScaleY(root);
    glitch::core::rect<int> viewport;
    viewport.UpperLeftCorner.X = static_cast<int>(bounds[0] / invX);
    viewport.UpperLeftCorner.Y = static_cast<int>(bounds[2] / invY);
    viewport.LowerRightCorner.X = static_cast<int>(bounds[1] / invX);
    viewport.LowerRightCorner.Y = static_cast<int>(bounds[3] / invY);
    target->setViewport(viewport);
    DeviceSceneManager()->drawAll(static_cast<glitch::scene::ISceneNode*>(nullptr));
    target->setViewport(savedViewport);
}

// 0x428cc0 MenuCharacterSelect::Init()
void MenuCharacterSelect::Init() {
    MenuManager::GetInstance()->RegisterMenu(this);
    if (m_menu != nullptr) {  // +0x04 of MenuFX::State
        m_classTitle.RefreshCache("class_title.text", m_menu, GetCurrentMenuContext());
        m_classDescription.RefreshCache("class_description.text", m_menu, GetCurrentMenuContext());
        m_classMemberId = Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase");  // +0x164
    }
}

// 0x428db4 MenuCharacterSelect::~MenuCharacterSelect()  (D2 body)
// 0x428d44 MenuCharacterSelect::~MenuCharacterSelect()  (D1 body, identical)
// The members are destroyed in reverse declaration order: m_classDescription (+0x198), m_classTitle (+0x168),
// m_btnLeft (+0x130), m_btnRight (+0x100), which is the original order. Then MenuBase::~MenuBase runs.
MenuCharacterSelect::~MenuCharacterSelect() {}

// 0x429a98 MenuCharacterSelect::MenuCharacterSelect()  (C1 body)
// 0x429b98 MenuCharacterSelect::MenuCharacterSelect()  (C2 body, identical)
MenuCharacterSelect::MenuCharacterSelect() : MenuBase("menu_SelectClass") {
    // The original object is the function-local static of GetInstance, so every field this constructor does not
    // write is zero (.bss). They are set to zero here.
    m_sceneRoot = nullptr;
    m_camera = nullptr;
    m_animator = nullptr;
    m_animSet = nullptr;
    for (Character*& actor : m_actors) {
        actor = nullptr;
    }
    m_animTime = 0.0f;
    m_animStart = 0.0f;
    m_animEnd = 0.0f;
    m_classIndex = 0;
    m_shownClassIndex = 0;
    m_dragStartX = 0.0f;
    m_inputEnabled = false;
    m_classMemberId = 0;

    m_dragging = false;        // +0xf4
    m_savedSavegameSlot = -1;  // +0x160
    Init();
}

// 0x428d98 MenuCharacterSelect::~MenuCharacterSelect()  (D0, deleting destructor)
// Skipped: the compiler emits the deleting destructor for a delete expression (destructor, then the storage release).

// 0x429b10 MenuCharacterSelect::GetInstance()
MenuCharacterSelect* MenuCharacterSelect::GetInstance() {
    static MenuCharacterSelect instance;  // guard variable and atexit registration are the compiler's
    return &instance;
}

// 0x428f38 MenuCharacterSelect::Show()
// The main menu preview is torn down (its slot saved), then, when the menu is valid: the "class_select" pane is enabled and its
// display callback registered; CLASS_SELECTION.bdae is built as the scene root with its camera (up vector, near 50, far 50000,
// position (0, 0, -200)) made active, black ambient light, the scene point light bound to a "LightPoint" object, the animator
// (its timeline controller is kept in m_animSet and driven by SetAnim); every "dummy_gameobject_" node spawns an AnimatedDecor
// with its transform and a looping animation; the three Player actors are spawned on the Warrior, Rogue and Mage dummy nodes with
// class-select properties, equipment and idle animation state; the arrows are cached (right shown, left hidden).
void MenuCharacterSelect::Show() {
    // The original calls GetInstance before each static call here (see Hide for why).
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::DestroyScene();
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::DestroyAvatarCamera();
    (void)MenuMainMenu::GetInstance();
    m_savedSavegameSlot = MenuMainMenu::mSavegameSlot;  // +0x160
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::m_isDestroyed = true;
    (void)MenuMainMenu::GetInstance();
    MenuMainMenu::mSavegameSlot = -1;

    if (!IsValidMenu()) {  // vtable +0x3c
        return;
    }
    MenuBase::Show();
    m_shownClassIndex = -1;  // +0xf0

    DebugSwitches::s_inst.load();
    (void)DebugSwitches::s_inst.GetSwitch("isTracingMenuCharacterSelect");

    gameswf::character* classSelect = static_cast<gameswf::character*>(m_menu->Find("class_select"));
    classSelect->m_has_mouse_handler = true;  // byte +0x9c
    m_menu->SetEnabled(classSelect, true);
    m_menu->RegisterDisplayCallback(classSelect, &MenuCharacterSelect::RenderClassSelectPane, this);

    glitch::collada::CColladaDatabase database("data/3D/OptimizedMaxFiles/CLASS_SELECTION.bdae", &ColladaFactory::s_factory);
    m_sceneRoot = database.constructScene(ApplicationGetInstance().m_device->videoDriver);
    DeviceSceneManager()->rootNode->addChild(m_sceneRoot);  // CSceneManager +0x04, vtable +0x5c
    m_camera = static_cast<glitch::scene::ICameraSceneNode*>(m_sceneRoot->getSceneNodeFromType(glitch::scene::ESNT_DAE_CAMERA));
    m_camera->setUpVector(glitch::core::vector3d<float>{0.0f, 0.0f, 1.0f});  // vtable +0x114
    m_camera->setNearValue(50.0f);                                             // vtable +0x130
    m_camera->setFarValue(50000.0f);                                           // vtable +0x134
    m_camera->setPosition(glitch::core::vector3d<float>{0.0f, 0.0f, -200.0f});
    DeviceSceneManager()->setActiveCamera(m_camera);
    glitch::video::SColorf ambient;
    ambient.r = 0.0f;
    ambient.g = 0.0f;
    ambient.b = 0.0f;
    ambient.a = 1.0f;
    DeviceSceneManager()->setAmbientLight(ambient);

    glitch::scene::ISceneNode* lightNode = DeviceSceneManager()->getSceneNodeFromType(glitch::scene::ESNT_LIGHT, nullptr);
    if (lightNode != nullptr) {
        ObjectHandle lightHandle = dword_99F764->Spawn("LightPoint", "charselectLight", true, true);
        ObjectBase* lightObject = lightHandle.GetObject(false);
        LightBase* light = nullptr;
        if (lightObject != nullptr && lightObject->m_goId == 19) {
            light = static_cast<LightBase*>(lightObject);
        }
        light->setLightNode(static_cast<glitch::scene::CLightSceneNode*>(lightNode));
        static_cast<LightPoint*>(light)->AssignTweaker(0, 0);
        DeviceSceneManager()->m_lightSetManager.unk_190.push_back(light);  // SceneManager +0x424
        light->SetAttenuation(Point3D<float>{0.375f, 0.511719f, 1.04688f});
        light->SetAmbientColor(Point3D<float>{1.0f, 1.0f, 1.0f});
        light->SetDiffuseColor(Point3D<float>{1.0f, 1.0f, 1.0f});
        light->SetSpecularColor(Point3D<float>{1.0f, 1.0f, 1.0f});
    }

    m_animator = static_cast<glitch::collada::ISceneNodeAnimator*>(database.constructAnimator());
    if (m_animator != nullptr) {
        m_animSet = m_animator->getTimelineCtrl();
        ++static_cast<glitch::IReferenceCounted*>(m_animSet)->referenceCounter;
        m_animator->setTimelineCtrl(nullptr);  // vtable +0x3c
        m_animator->onBind(m_sceneRoot);       // vtable +0x28
        ++static_cast<glitch::IReferenceCounted*>(m_animator)->referenceCounter;
    }
    SetAnim("lol_1_idle");
    m_inputEnabled = true;  // +0xfc
    m_classIndex = 0;       // +0xec

    glitch::core::svector<glitch::scene::ISceneNode*> nodes;
    m_sceneRoot->getSceneNodesFromType(glitch::scene::ESNT_DAEN, nodes);
    for (unsigned int i = 0; i < nodes.size(); ++i) {
        const char* nodeName = nodes[i]->getName();  // vtable +0x24
        const char* marker = std::strstr(nodeName, "dummy_gameobject_");
        if (marker == nullptr) {
            continue;
        }
        const char* tail = marker + 17;
        const int length = static_cast<int>(std::strcspn(tail, "0")) - 1;
        char baseName[32];
        if (length > 30) {
            if (gAssertLevel == 2) {
                std::abort();
            } else if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "len + 1 < 32",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuCharacterSelect.cpp", 171);
            }
        }
        std::strncpy(baseName, tail, static_cast<std::size_t>(length));
        baseName[length] = 0;
        char path[64];
        char objectName[32];
        std::snprintf(path, sizeof path, "data/3D/GameObjects/%s.bdae", baseName);
        std::snprintf(objectName, sizeof objectName, "%s_%02d", baseName, static_cast<int>(i));
        ObjectHandle decorHandle = dword_99F764->Spawn("AnimatedDecor", objectName, true, true);
        GameObject* decor = static_cast<GameObject*>(decorHandle);
        decor->SetVisualObject(path, "", true);
        glitch::scene::ISceneNode* decorNode = decor->m_visualObject->m_node;
        decorNode->setPosition(nodes[i]->getPosition());  // vtable +0xa4
        decorNode->setRotation(nodes[i]->getRotation());  // vtable +0x9c
        decorNode->setScale(nodes[i]->getScale());        // vtable +0x94
        glitch::scene::ISceneNodeAnimator* decorAnimator = *decorNode->getAnimators().begin();
        decorAnimator->getTimelineCtrl()->setLoop(true);
    }

    for (int i = 0; i != 3; ++i) {
        char actorName[32];
        std::snprintf(actorName, sizeof actorName, "%s_%d", "Player_CS", i);
        ObjectHandle actorHandle = dword_99F764->Spawn("Player", actorName, true, true);
        Character* actor = static_cast<Character*>(actorHandle);
        m_actors[i] = actor;
        actor->SetVisualObject("data/3D/characters/prince/prince_modular.bdae", "", true);
        VisualObject* visual = actor->m_visualObject;
        visual->SetVisible(true);
        glitch::scene::ISceneNode* actorNode = visual->m_node;
        glitch::scene::ISceneNode* dummy = nullptr;
        if (i == 1) {
            actor->LoadPropertiesForClassSelect(Arrays::GetMemberIDByString<Arrays::CharacterTable>("RoguePlayerBase"));
            dummy = m_sceneRoot->getSceneNodeFromName("dummy_Rogue");
        } else if (i == 2) {
            actor->LoadPropertiesForClassSelect(Arrays::GetMemberIDByString<Arrays::CharacterTable>("MagePlayerBase"));
            dummy = m_sceneRoot->getSceneNodeFromName("dummy_Mage");
        } else {
            actor->LoadPropertiesForClassSelect(Arrays::GetMemberIDByString<Arrays::CharacterTable>("KnightPlayerBase"));
            dummy = m_sceneRoot->getSceneNodeFromName("dummy_Warrior");
        }
        actor->_InitEquipment();
        actor->CharAnimator::SetAnimationSet();
        static_cast<CharStateMachine*>(actor)->SM_SetAnimState(actor->GetCharAnimTable()->MenuIdle, false, false);
        actorNode->setPosition(dummy->getAbsolutePosition());  // vtable +0xa4
        actorNode->setRotation(dummy->getRotation());          // vtable +0x9c
        actorNode->setScale(dummy->getScale());                // vtable +0x94
    }

    m_btnRight.RefreshCache("btn_right", m_menu, GetCurrentMenuContext());
    m_btnLeft.RefreshCache("btn_left", m_menu, GetCurrentMenuContext());
    m_menu->SetVisible(m_btnRight.GetChar()->get_name().c_str(), true);
    m_menu->SetVisible(m_btnLeft.GetChar()->get_name().c_str(), false);
}
