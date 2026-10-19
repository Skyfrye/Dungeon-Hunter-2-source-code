// Application: the process-wide singleton (Singleton<Application>::s_inst is the object itself, so there is
// no operator new size). Highest offset touched: +0x10f. Owns the device, the managers created in PostInit
// and the glitch event receivers. It is a glitch::IEventReceiver: vtable slots +0x00/+0x04 are the
// destructors, +0x08 is onEvent (the IEventReceiver base is not declared here until the engine unification
// wave provides a shared header; the vtable layout is the same).
// Pointers to managers are host-width; the comments give the original 32-bit offsets.
#pragma once

#include <cstdint>
#include <list>
#include <string>

class Level;
class EventManager;
class StateMachine;
class PyDataConstants;
class PyDataArrays;
class StringManager;
class ObjectManager;
class LuaManager;
class PlayerManager;
class PhysicalWorld;
class TouchScreenBase;
class AccelerometerBase;
class DataReloaderManager;
class SavegameManager;
class MenuManager;
class ZoomHandler;
class Console;
class PlayerLightTweaker;
class GamepadTweaker;
class updateJob_thread;
class UnderlaySceneNode;
class SceneManager;
enum GoToMainMenuEvent : int;  // values not recovered (3 = connection lost, see _Update)

namespace glitch {
class IDevice;
class IEventReceiver;
struct SEvent;
namespace scene { class ISceneNode; }
}  // namespace glitch

class Application {
public:
    Application();                                     // 0x32d79c / 0x32d980
    virtual ~Application();                            // +0x00 0x32fca0 (D1), +0x04 0x32fd80 (D0), 0x32fd10
    virtual bool onEvent(const glitch::SEvent& event); // +0x08 0x32a9c8

    // ---- initialisation and shutdown ----
    void Init(glitch::IDevice* device);                // 0x323ae0 takes a reference on the device
    void InitPS3(glitch::IDevice* device);             // 0x322afc
    void InitWin32(glitch::IDevice* device);           // 0x32fab4 creates touch screen, savegame manager, menu manager
    void InitIPhone(glitch::IDevice* device, float a, float b, float c, float d, float e);  // 0x31f4f4 one store of 1 to address 0 (a deliberate fault); game-app/src/ok3-Application.cpp
    void PostInit();                                   // 0x32f7e8 creates the managers stored in the members below
    void Quit();                                       // 0x323bc4
    bool IsInitFinish();                               // 0x31f504
    void CleanGlitch();                                // 0x31f55c

    // ---- main loop ----
    void Update();                                     // 0x32ccc4 one frame: online packets, ComputeDt, _Update, _Draw
    void _Update(int dtMs);                            // 0x32c438
    void _Draw();                                      // 0x32ade8
    void _CheckGamepad();                              // 0x321164
    float ComputeDt();                                 // 0x320da4 returns the fraction stored in +0x94 (the original returns float)
    int GetDt();                                       // 0x31f66c frame time in ms (+0x8c)
    int GetDtScaled();                                 // 0x31f674 (+0x90)
    void SetTimeScale(float scale);                    // 0x31f67c

    // ---- pause / interrupts ----
    void Pause();                                      // 0x322924
    void Resume();                                     // 0x328fe0
    void OnInterruptPause();                           // 0x324210
    void OnInterruptResume();                          // 0x3241b8
    void ResetTouch();                                 // 0x328f40

    // ---- level and state queries ----
    Level* GetCurrentLevel() const;                    // 0x31f594 GSLevel::s_level
    bool IsLevelLoaded();                              // 0x31f5b4
    bool IsInLevelTransition();                        // 0x31f5e8
    bool IsInActionPhase() const;                      // 0x31f5fc
    bool IsCurrentlyInGameView() const;                // 0x31f684
    bool IsLevelRunning();                             // 0x320f5c
    bool IsLevelPaused(bool ignoreIngameMenu);         // 0x321000
    void LoadWorldMap(int index);                      // 0x321140
    void LoadLevel(const char* name, int entryPointId, uint32_t savegameSlot, bool resume,
                   bool useSpawnPoint, int difficulty, bool isRemotelyTriggered, uint32_t seed,
                   uint32_t syncedSeed);               // 0x32bdc8
    void GoToMainMenu(GoToMainMenuEvent event);        // 0x32c1f4
    GoToMainMenuEvent GetGoToMainMenuEvent(bool clear);  // 0x31f774 returns +0xb0, zeroes it when clear

    // ---- scene helpers ----
    void AddUnderlayNode(glitch::scene::ISceneNode* node);     // 0x3270c8
    void RemoveUnderlayNode(glitch::scene::ISceneNode* node);  // 0x3261fc
    void RegisterForIrrlichtEvents(glitch::IEventReceiver* receiver);    // 0x32fa7c
    void UnRegisterForIrrlichtEvents(glitch::IEventReceiver* receiver);  // 0x329310

    // ---- platform queries and options ----
    void ShowStatubBar(bool show);                     // 0x31f668 empty
    void ResetOrientation(int orientation);            // 0x31f748 empty
    int SetOrientation(int orientation, bool animated);  // 0x31f74c returns 0
    bool IsVideoReorienting();                         // 0x31f754 false
    int GetDeviceLanguage();                           // 0x31f75c -1
    bool IsDeviceLanguageSupported(char* language);    // 0x31f764 false
    bool IsBluetoothEnabled();                         // 0x31f76c true
    bool IsInIGPOrGameCenter();                        // 0x31f554 false
    bool IsInternetAccessEnabled();                    // 0x320590
    bool IsWifiEnabled();                              // 0x320654
    bool IsOnlineGame();                               // 0x320668
    void SendGLHiScore();                              // 0x3205a4
    bool IsUsingUncompiledData(const char* path) const;  // 0x320678
    int GetVersionNumber();                            // 0x31f6a8 10000
    void GetVersionString(char* out, int size, bool full);  // 0x31f6b0
    int GetVersionMajor();                             // 0x320890
    int GetVersionMinor();                             // 0x320808
    int GetVersionBuild();                             // 0x320774
    void GetTitleString(char* out, int size);          // 0x3206d0
    bool HasSavedOption(const char* name);             // 0x320e0c
    bool IsSavedOptionOn(const char* name);            // 0x320e14
    int GetSavedOption(const char* name);              // 0x320e44
    bool IsUsingDPad();                                // 0x320e74 saved option "DPad"
    void SwitchGSInitBackground();                     // 0x320e94 thunk to GSInit::SwitchBackground

    // ---- members (original 32-bit offsets) ----
    // +0x00 vptr
    updateJob_thread* m_updateJobThread0;              // +0x04 job thread #1 (the others are file-scope globals)
    std::list<glitch::IEventReceiver*> m_eventReceivers;  // +0x08 sentinel node +0x08/+0x0c
    glitch::IDevice* m_device;                         // +0x10 reference counted
    EventManager* m_eventManager;                      // +0x14
    StateMachine* m_stateMachine;                      // +0x18 asserted non-null by IsLevelRunning ("m_stateMachine")
    SceneManager* unk_1c;                              // +0x1c scene manager (GetSpecificNode 0x4709dc/0x470a18, DBG_DrawCircle); name m_scene (rename suggestion); the source has no delete for it
    TouchScreenBase* m_touchScreen;                    // +0x20 TouchScreenWin32 (operator new(0x1b8))
    AccelerometerBase* m_accelerometer;                // +0x24 updated in _Update
    DataReloaderManager* m_dataReloaderManager;        // +0x28 passed to PyDataConstants/PyDataArrays
    PyDataConstants* m_pyDataConstants;                // +0x2c operator new(0x24)
    PyDataArrays* m_pyDataArrays;                      // +0x30 operator new(0x3c)
    StringManager* m_stringManager;                    // +0x34 operator new(0x7d8)
    ObjectManager* m_objectManager;                    // +0x38 operator new(0x1b0)
    LuaManager* m_luaManager;                          // +0x3c operator new(0x1c)
    PlayerManager* m_playerManager;                    // +0x40 operator new(0x720)
    PhysicalWorld* m_physicalWorld;                    // +0x44 operator new(0x14)
    Console* m_console;                                // +0x48 operator new(0xa8)
    SavegameManager* m_savegameManager;                // +0x4c operator new(0x58)
    ZoomHandler* m_zoomHandler;                        // +0x50 operator new(0x44)
    MenuManager* m_menuManager;                        // +0x54 operator new(0x114)
    PlayerLightTweaker* m_playerLightTweakers[4];      // +0x58 operator new(0x144) each
    GamepadTweaker* m_gamepadTweaker;                  // +0x68 operator new(0xe8)
    int unk_6c;                                        // +0x6c 30 (constructor)
    int m_lastTickTime;                                // +0x70 real time of the last Update/Resume
    int m_frameCount;                                  // +0x74 incremented at the end of _Update
    bool unk_78;                                       // +0x78 0
    bool unk_79;                                       // +0x79 0
    bool unk_7a;                                       // +0x7a 0; cleared at the start of Update() when set
    uint8_t pad_7b[5];
    int m_orientation;                                 // +0x80 passed to SetOrientation by Pause
    uint8_t pad_84[4];
    int m_lastTime;                                    // +0x88 real time read by ComputeDt
    int m_dt;                                          // +0x8c frame time in ms (GetDt)
    int m_dtScaled;                                    // +0x90 (GetDtScaled)
    float m_dtScaledRemainder;                         // +0x94 fractional part carried by ComputeDt
    float m_timeScale;                                 // +0x98 SetTimeScale
    float m_dtFactor;                                  // +0x9c 1.0 initially; multiplies the raw delta in ComputeDt
    int m_pauseTime;                                   // +0xa0 -1; device time stored by Pause, read by Resume
    bool m_paused;                                     // +0xa4 set by Pause, cleared by Resume; Update() returns while set
    bool m_pauseMenuPushed;                            // +0xa5 Pause pushed the in-game menu; read by Resume
    bool m_resumeMusic;                                // +0xa6 music was playing with the in-game menu open
    bool unk_a7;                                       // +0xa7 0
    bool unk_a8;                                       // +0xa8 0
    bool m_sceneUpdated;                               // +0xa9 set by _Update when the scene was updated; _Draw reads it
    bool m_goToMainMenuPending;                        // +0xaa online connection lost; _Update calls GoToMainMenu(3)
    bool unk_ab;                                       // +0xab 1; GoToMainMenu sets 1, LoadLevel clears
    uint8_t pad_ac;
    bool unk_ad;                                       // +0xad 0
    uint8_t pad_ae[2];
    GoToMainMenuEvent m_goToMainMenuEvent;             // +0xb0 written by GoToMainMenu
    bool unk_b4;                                       // +0xb4 1; sound-allowed byte: VoxSoundManager::PlayMusic and PlayBeat test it (Hex-Rays byte_99F7E0), Level::_LoadProcess sets it
    uint8_t pad_b5[3];
    UnderlaySceneNode* m_underlayNode;                 // +0xb8 dropped in Quit
    std::string m_uncompiledData;                      // +0xbc non-empty when running from uncompiled data; IsUsingUncompiledData (0x320678) compares the finish/start words at +0xcc/+0xd0 of this STLport string, equal when it is empty
    std::string unk_d4;                                // +0xd4 constructed empty, only freed in the destructor
    bool unk_ec;                                       // +0xec byte_99F818: set by MenuBase::Show, cleared by MenuBase::Hide for menu_VerificationLoading
    bool unk_ed;                                       // +0xed 0
    bool unk_ee;                                       // +0xee 0
    uint8_t pad_ef[0x1f];
    bool unk_10e;                                      // +0x10e 0
    bool unk_10f;                                      // +0x10f 1
};

// The process-wide instance, Singleton<Application>::s_inst (0x99f72c, 272 bytes). Same declaration as
// dh2/global/ctrl_camera.hpp; the definition comes at integration.
Application& ApplicationGetInstance();
