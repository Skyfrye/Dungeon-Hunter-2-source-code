// MenuManager: singleton that owns the menu movies (through MultiMenuManager) and every registered
// MenuBase, routes input events to them and draws them.
// Original 32-bit size: 0x114 (276, operator new(276) at the singleton allocation).
// Offsets in comments are original 32-bit ARM offsets (host pointers and STL types are wider).
// Secondary base RenderFX::EventListener sits at +0x04 (second vptr), MenuManager's own data starts at +0x08.
#pragma once

#include <cstdint>
#include <deque>
#include <map>
#include <string>
#include <vector>

#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/IEventReceiver.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/RenderFX.hpp"

namespace glitch {
namespace scene {
class ICameraSceneNode;
}  // namespace scene
}  // namespace glitch

class EventManager;
class IEvent;
class MenuFlash2DCamera;
class MultiMenuManager;

class MenuManager : public IEventReceiver, public RenderFX::EventListener {
public:
    static MenuManager* GetInstance();                        // 0x42ca8c

    MenuManager();                                            // 0x4319cc / 0x431c38
    ~MenuManager() override;                                  // +0x00, +0x04 (0x42dbb4, 0x42dd1c)

    // Vtable (primary): IEventReceiver slots, then MenuManager's own.
    bool onEvent(const IEvent* event, const EventManager* manager) override;  // +0x08  0x430ad4
    virtual void OnEvent(RenderFX::Event& e);                 // +0x0c  0x42d060  (also overrides EventListener)
    virtual void OnFSCommand(const char* command, const char* args);  // +0x10  0x42e75c
    virtual bool CanHandleEvent(RenderFX::Event& e);          // +0x14  0x42cc48  always true

    // Non-virtual members.
    void SetCursorPosition(float x, float y);                 // 0x42caac
    void ForceAllTextureToVRam();                             // 0x42cab0
    void UnloadSWFFile(int index);                            // 0x42cab4  legacy single-manager path (m_swfFiles)
    int GetNumMenus() const;                                  // 0x42cb38
    MenuBase* GetMenuByID(int id);                            // 0x42cb4c
    MenuFX* GetRoot();                                        // 0x42cb80  multi->m_menuFX[2]
    MenuFX* GetHUDRoot();                                     // 0x42cb8c  multi->m_menuFX[3]
    MenuFlash2DCamera* GetRootCamera();                       // 0x42cb98
    MenuFlash2DCamera* GetHUDRootCamera();                    // 0x42cba4
    MenuFlash2DCamera* GetRootCamera2();                      // 0x42cbb0
    void GetRawCurrentEventPosition(int& x, int& y) const;    // 0x42cbbc
    void consumeEvent();                                      // 0x42cc34
    bool mySendEvent(char* characterPath, RenderFX::EventType type);  // 0x42cf68
    void DBG_Draw2DDeadZones() const;                         // 0x42d0ec
    bool HasVisibleMenu() const;                              // 0x42d150
    MenuBase* GetMenuBelow(const char* name);                 // 0x42d19c
    MenuBase* GetMenuByName(const char* name);                // 0x42d1f0
    void HideAll();                                           // 0x42d234
    MenuFX* LoadSWFFile(const char* file, int index);         // 0x42d290  legacy single-manager path
    void SwitchMenusToIngame();                               // 0x42d30c
    void UnloadMenu(int index);                               // 0x42d4bc
    void SwitchMenusToMainMenu();                             // 0x42d59c
    void ResetFonts();                                        // 0x42d72c
    void Reset();                                             // 0x42d73c
    void RegisterDummyMenu(MenuFX* fx, MenuBase* menu);       // 0x42dfd8
    std::string GetMenuName(int id) const;                    // 0x42e098
    void UnRegisterListener(MenuBase* menu);                  // 0x42e110
    void PopMenu(MenuBase* menu);                             // 0x42e208
    void PopMenu(const char* name);                           // 0x42e2b0
    void DBG_Draw() const;                                    // 0x42e2d4
    void Draw(bool hudOnly);                                  // 0x42e818
    void Update(bool hudOnly);                                // 0x42ea04
    void RegisterMenu(MenuBase* menu);                        // 0x42ee94
    void PostLoad();                                          // 0x42efb8
    bool Init();                                              // 0x42f304  stepwise: one m_initStep per call, true when done
    void RegisterListener(MenuBase* menu);                    // 0x431750
    void PushMenu(MenuBase* menu);                            // 0x4317e8
    void PushMenu(const char* name);                          // 0x431924
    void LoadMenu(int index);                                 // 0x431ea4
    void LoadMainMenu();                                      // 0x4324dc

    // vptr (IEventReceiver)                                  // +0x00
    // EventListener subobject (vptr only)                    // +0x04
    uint32_t unk_08;                                          // +0x08  Draw: video-state word [31] before drawing
    uint32_t unk_0c;                                          // +0x0c  Draw: video-state word [32]
    uint32_t unk_10;                                          // +0x10  Draw: video-state word [30]
    uint32_t unk_14;                                          // +0x14  Draw: same three words after drawing
    uint32_t unk_18;                                          // +0x18
    uint32_t unk_1c;                                          // +0x1c
    DebugCachedCharacter m_debugCachedCharacter;              // +0x20  embedded (original size 0x30)
    uint32_t unk_50;                                          // +0x50  zeroed in the ctor
    uint32_t unk_54;                                          // +0x54
    uint32_t unk_58;                                          // +0x58
    uint32_t unk_5c;                                          // +0x5c
    glitch::scene::ICameraSceneNode* m_savedCamera;           // +0x60  the scene camera that was active before an avatar or map camera took over; MenuBase::Hide clears it for menu_CharacterMenu / menu_Merchant
    std::vector<MenuBase*> m_menus;                           // +0x64  registered menus (GetNumMenus, GetMenuByID/Name)
    std::map<MenuBase*, bool> m_listeners;                    // +0x70  event listeners (Register/UnRegisterListener)
    bool m_resetListeners;                                    // +0x88  set by Reset, makes Update clear m_listeners
    uint8_t pad_89[3];                                        // +0x89
    MenuFX* m_swfFiles[4];                                    // +0x8c  legacy LoadSWFFile slots
    MenuFlash2DCamera* m_cameras[4];                          // +0x9c  legacy cameras, one per m_swfFiles slot
    uint32_t m_eventConsumed;                                 // +0xac  cleared per event, set by consumeEvent
    uint32_t unk_b0;                                          // +0xb0  zeroed in the ctor
    const IEvent* m_currentEvent;                             // +0xb4  valid while onEvent runs
    uint32_t unk_b8;                                          // +0xb8  not set by the ctor
    int32_t m_initStep;                                       // +0xbc  Init() state-machine counter
    uint32_t unk_c0;                                          // +0xc0  zeroed in the ctor
    bool unk_c4;                                              // +0xc4  set true in the ctor
    uint8_t pad_c5[3];                                        // +0xc5
    uint32_t unk_c8;                                          // +0xc8  not set by the ctor
    std::deque<MenuFX*> m_menuFXDeque;                        // +0xcc  STLport deque base, 40 bytes (0xcc..0xf4)
    MultiMenuManager* m_multiMenuManager;                     // +0xf4  operator new(0x164) in the ctor
    uint32_t unk_f8;                                          // +0xf8  zeroed in the ctor
    uint32_t unk_fc;                                          // +0xfc
    uint32_t unk_100;                                         // +0x100
    uint32_t unk_104;                                         // +0x104
    int32_t m_actionIconType;                                 // +0x108  starts at -1, drives FillActionIcon in Update
    uint32_t unk_10c;                                         // +0x10c  zeroed in the ctor
    bool unk_110;                                             // +0x110  gates touch events in onEvent; name: m_multitouch (NativeSetMultitouch stores to_bool(arg 0) here, game-app global-f216b6-6.cpp)
};
