// MenuBase: base of every Flash menu page (17 menu classes derive from it).
// Original 32-bit size: 0xc4 (196); MenuConfirmBase adds one member at +0xc4.
// Offsets in comments are original 32-bit ARM offsets (host pointers and STL types are wider).
#pragma once

#include <cstdint>
#include <list>
#include <map>
#include <string>
#include <vector>

#include "dh2/MenuFX.hpp"

namespace gameswf {
class character;
struct rect;  // xmin, xmax, ymin, ymax floats (16 bytes)
}  // namespace gameswf

class DragAndDrop;
class SlideEventCharacter;

class MenuBase : public MenuFX::State {
public:
    using FSCommandFn = bool (*)(const char* command, const char* args, void* menu);

    // 12-byte element of the list at +0x6c (the list node is 0x14 bytes: next, prev, 12 bytes).
    // Only the constructor and destructor touch the list, so the fields are unnamed.
    struct ListEntry_6c {
        uint32_t unk_0;
        uint32_t unk_4;
        uint32_t unk_8;
    };

    explicit MenuBase(const char* name);                      // 0x4269dc / 0x427200

    // Vtable (primary), slots in order. Slots +0x00..+0x34 override MenuFX::State.
    ~MenuBase() override;                                     // +0x00, +0x04 (0x422824, 0x422958)
    void Create() override;                                   // +0x08  0x41b3e4
    void Show() override;                                     // +0x0c  0x425450
    void Hide() override;                                     // +0x10  0x424af4
    void GotFocus() override;                                 // +0x14  0x41b3e8
    void LostFocus() override;                                // +0x18  0x41b3ec
    void Update() override;                                   // +0x1c  0x421fe0
    // +0x20 Update(int), +0x24 UpdateBackground(), +0x28 UpdateBackground(int): inherited from State.
    using MenuFX::State::Update;
    using MenuFX::State::UpdateBackground;
    void OnEvent(RenderFX::Event& e) override;                // +0x2c  0x423214
    void OnFSCommand(const char* command, const char* args) override;  // +0x30  0x41b3d0 (calls MyFSCommand)
    bool CanHandleEvent(RenderFX::Event& e) override;         // +0x34  0x41f3fc
    virtual bool MyFSCommand(const char* command, const char* args);  // +0x38  0x427a24
    virtual bool IsValidMenu() const;                         // +0x3c  0x41b3f0
    virtual void ProcessLocalization();                       // +0x40  0x422d10
    virtual void SetIsLocalised(bool localised);              // +0x44  0x41b3f8
    virtual void DBG_Draw2DDeadZones() const;                 // +0x48  0x41ff08
    virtual void CacheStrings();                              // +0x4c  0x41b400

    // Non-virtual members.
    bool IsVisible() const;                                   // 0x41f3f4
    void SetVisible(bool visible);                            // 0x4223bc
    bool IsTopMost();                                         // 0x4213f0
    gameswf::character* GetCurrentMenuContext() const;        // 0x42204c
    void RemoveDeadZone(const gameswf::rect& zone);           // 0x41f454
    void ClearSlideEvents();                                  // 0x41f4f8
    bool HasHitDeadZone(int x, int y) const;                  // 0x423098
    void PostOnEvent(RenderFX::Event& e);                     // 0x4231b4
    void RegisterDeadZones();                                 // 0x42331c
    void RegisterSlideEvent();                                // 0x422620
    void TestSlideEvents(RenderFX::Event& e) const;           // 0x423d6c
    void RegisterDragAndDrops(int (*filter)(const gameswf::character*));  // 0x423db8
    static bool RegisterFSCommand(const char* name, FSCommandFn fn);      // 0x426980

    // Flash FSCommand handlers, registered by name in the constructor.
    static bool FS_PushMenu(const char*, const char*, void*);             // 0x421334
    static bool FS_PopMenu(const char*, const char*, void*);              // 0x421410
    static bool FS_PopAllAbove(const char*, const char*, void*);          // 0x421350
    static bool FS_PopAllMenu(const char*, const char*, void*);           // 0x4203e4
    static bool FS_SwitchMenu(const char*, const char*, void*);           // 0x4212f8
    static bool FS_PushState(const char*, const char*, void*);            // 0x421234
    static bool FS_SetFocus(const char*, const char*, void*);             // 0x42121c
    static bool FS_PlaySoundFX(const char*, const char*, void*);          // 0x421164
    static bool FS_PlayMusic(const char*, const char*, void*);            // 0x4210a8
    static bool FS_StopMusic(const char*, const char*, void*);            // 0x422304
    static bool FS_StartGame(const char*, const char*, void*);            // 0x4220a0
    static bool FS_ReturnToGame(const char*, const char*, void*);         // 0x420fac
    static bool FS_ContinueGame(const char*, const char*, void*);         // 0x420e64
    static bool FS_SetSaveSlot(const char*, const char*, void*);          // 0x42053c
    static bool FS_SetPlayerClass(const char*, const char*, void*);       // 0x41f640
    static bool FS_SetDifficulty(const char*, const char*, void*);        // 0x4222d8
    static bool FS_SetPlayerName(const char*, const char*, void*);        // 0x422280
    static bool FS_IsSaveSlotValid(const char*, const char*, void*);      // 0x420cfc
    static bool FS_GetSaveSlot(const char*, const char*, void*);          // 0x420d7c
    static bool FS_ResetSaveFile(const char*, const char*, void*);        // 0x420c98
    static bool FS_SkipScript(const char*, const char*, void*);           // 0x420c68
    static bool FS_GoToMainMenu(const char*, const char*, void*);         // 0x420c3c
    static bool FS_LoadLevel(const char*, const char*, void*);            // 0x420bb8
    static bool FS_LoadLevel2(const char*, const char*, void*);           // 0x41f578
    static bool FS_EndLoading(const char*, const char*, void*);           // 0x420b48
    static bool FS_LoadWorldMap(const char*, const char*, void*);         // 0x420b8c
    static bool FS_IsMapLocLocked(const char*, const char*, void*);       // 0x4248dc
    static bool FS_ExitGame(const char*, const char*, void*);             // 0x41f40c
    static bool FS_SetBtnImage(const char*, const char*, void*);          // 0x42040c
    static bool FS_GetCharProperty(const char*, const char*, void*);      // 0x421808
    static bool FS_GetCharProp(const char*, const char*, void*);          // 0x4247c0
    static bool FS_SetText(const char*, const char*, void*);              // 0x424698
    static bool FS_SetText2(const char*, const char*, void*);             // 0x424540
    static bool FS_GetString(const char*, const char*, void*);            // 0x420914
    static bool FS_GetString2(const char*, const char*, void*);           // 0x420a1c
    static bool FS_GetParsedString2(const char*, const char*, void*);     // 0x424ef0
    static bool FS_GetPlayerName(const char*, const char*, void*);        // 0x420988
    static bool FS_GetPlayerClass(const char*, const char*, void*);       // 0x421720
    static bool FS_GetPlayerClass2(const char*, const char*, void*);      // 0x421980
    static bool FS_GetHasTwoHandWeapon(const char*, const char*, void*);  // 0x421684
    static bool FS_GetHasMainHandWeapon(const char*, const char*, void*); // 0x4215ec
    static bool FS_GetHasOffHandWeapon(const char*, const char*, void*);  // 0x421554
    static bool FS_GetNumPotions(const char*, const char*, void*);        // 0x421aac
    static bool FS_AssignPoint(const char*, const char*, void*);          // 0x4219b8
    static bool FS_AutoEquipSlot(const char*, const char*, void*);        // 0x42143c
    static bool FS_IncSkill(const char*, const char*, void*);             // 0x421ce0
    static bool FS_ResetDraggablePosition(const char*, const char*, void*);  // 0x4208e4
    static bool FS_IncOption(const char*, const char*, void*);            // 0x420804
    static bool FS_DecOption(const char*, const char*, void*);            // 0x420728
    static bool FS_ToggleOption(const char*, const char*, void*);         // 0x420624
    static bool FS_SetOption(const char*, const char*, void*);            // 0x4205e0
    static bool FS_GetOption(const char*, const char*, void*);            // 0x421b58
    static bool FS_SetLanguage(const char*, const char*, void*);          // 0x42057c
    static bool FS_SaveOptions(const char*, const char*, void*);          // 0x4204fc
    static bool FS_LoadOptions(const char*, const char*, void*);          // 0x4204bc
    static bool FS_PlayAnim(const char*, const char*, void*);             // 0x4243e0
    static bool FS_GotoFrame(const char*, const char*, void*);            // 0x424288
    static bool FS_LockCharacter(const char*, const char*, void*);        // 0x420344
    static bool FS_UnlockCharacter(const char*, const char*, void*);      // 0x4202a8
    static bool FS_PauseGameplay(const char*, const char*, void*);        // 0x41f444
    static bool FS_ResumeGameplay(const char*, const char*, void*);       // 0x41f44c
    static bool FS_StopDialog(const char*, const char*, void*);           // 0x427b08
    static bool FS_LaunchTwitter(const char*, const char*, void*);        // 0x41f404

    // Statics.
    static bool m_isRolloverEventEnabled;                     // set true in the ctor and Show
    static bool s_igmOpened;                                  // true while menu_Ingame/playlist/Merchant is shown
    static std::map<std::string, FSCommandFn> m_FSCommandMap; // name -> handler, filled by RegisterFSCommand

    // MenuFX::State base (size 0x5c)                         // +0x00
    DragAndDrop* m_dragAndDrop;                               // +0x5c  owned, created by RegisterDragAndDrops
    std::vector<SlideEventCharacter*> m_slideEvents;          // +0x60  owned, freed by ClearSlideEvents
    std::list<ListEntry_6c> m_list6c;                         // +0x6c  STLport list (sentinel node at +0x6c)
    bool m_visible;                                           // +0x74  IsVisible / SetVisible
    bool m_isLocalised;                                       // +0x75  set by ProcessLocalization / SetIsLocalised
    uint8_t pad_76[2];                                        // +0x76
    uint32_t m_animOverCount;                                 // +0x78  Update() counts finished animations, Show() resets
    bool m_registered;                                        // +0x7c  set by MenuManager::RegisterMenu / RegisterDummyMenu
    bool m_deleteOnUnload;                                    // +0x7d  MenuManager deletes the menu on unload when set
    uint8_t pad_7e[2];                                        // +0x7e
    std::string m_playerName;                                 // +0x80  set by FS_SetPlayerName ("Bobb" for a null argument)
    int32_t unk_98;                                           // +0x98  name: m_characterTableRow. Written by FS_SetPlayerClass (0x41f640): CharacterTable row index, -1 when none (signed)
    std::string m_difficultyName;                             // +0x9c  set by FS_SetDifficulty
    bool m_deadZonesRegistered;                               // +0xb4  guard in RegisterDeadZones
    uint8_t pad_b5[3];                                        // +0xb5
    std::vector<gameswf::rect> m_deadZones;                   // +0xb8  16-byte rects (xmin, xmax, ymin, ymax)
};
