// Level: the loaded level (loading state machine, scripts, cameras, savegame, fog and listener updates).
// Original size 0x1ac (operator new(428)). Derives from EventManager (0x30 bytes), so the members start at
// +0x30. Vtable (16 bytes): +0x00/+0x04 destructors only; every other method is non-virtual.
// m_loadStep == 38 means the level is fully loaded (Application tests it); _LoadProcess runs one step per frame.
#pragma once

#include <cstdint>
#include <string>
#include <vector>
#include "core-platform/deps/game_types.hpp"  // Point3D
#include "dh2/StreamBuffer.hpp"    // StreamBuffer (embedded in LoadFileData)
#include "dh2/EventManager.hpp"
#include "dh2/LuaScript.hpp"

class Character;
class GameObject;
class LevelConfig;
class LevelSavegame;
class GameEventManager;
class CameraLevel;
class CameraOverview;
class TiXmlDocument;
class TiXmlNode;
class TiXmlElement;
namespace batch { class BatchNodeCompiler; }
namespace rnd { class RandomGenerator; class Tile; }
namespace glitch { namespace scene { class ISceneNode; } }

class Level : public EventManager {
public:
    // Parsing state of one level data file (operator new(80)): the file bytes, the XML document and the
    // cursor LoadFile/_LoadFromXML advance one element per call.
    struct LoadFileData {
        virtual ~LoadFileData();                       // +0x00 0x3f0310 (D1), 0x3f03ec (D0)
        // +0x00 vptr
        // Constructor of the original's inlined body in AssignSteamToLoadDataFile (0x3f02ac): copies the stream and clears the cursor.
        explicit LoadFileData(IStreamBase* source);
        StreamBuffer m_stream;                         // +0x08 (0x30 bytes in the original)
        TiXmlDocument* m_document;                     // +0x38 operator new(112), created on first LoadFile
        TiXmlNode* m_root;                             // +0x3c the document once parsed
        TiXmlNode* m_currentModule;                    // +0x40 child of m_root whose name matches the requested tag
        TiXmlElement* m_currentElement;                // +0x44 next element of m_currentModule to load
        bool unk_48;                                   // +0x48 0
    };

    // Arguments as passed by GSLevel::LoadLevel (see Application::LoadLevel): entryPointId selects the spawn
    // point, fromSubId is the previous level's +0x40 value (-1 for none).
    Level(const char* name, int entryPointId, uint32_t savegameSlot, uint32_t seed, uint32_t syncedSeed,
          bool resume, bool useSpawnPoint, int fromSubId, int difficulty);  // 0x3f3128 / 0x3f34c0
    ~Level() override;                                 // +0x00 0x3f90b0 (D1), +0x04 0x3f94d8 (D0), 0x3f92c4

    // ---- loading ----
    void Load();                                       // 0x3ef218 sets m_loadStep = 0
    void ResetIsLoaded();                              // 0x3ef224 clears m_isLoaded and m_loadStep
    void _SpawnLoadingThread();                        // 0x3ef200 empty
    void _CheckLoadProcess();
    void _ThreadLoadingProcess();
    bool LoadScriptFile();                             // 0x3ef20c true
    void _LoadScriptFile(std::string& file);           // 0x3f38a0 loads <file>_pyscripts.bin and _pyscriptnames.bin
    void _LoadResumeBatching();
    void _LoadProcess();                               // 0x3f6990 one loading step (m_loadStep 0..38)
    void _LoadBatchInit();                             // 0x3f240c
    void _LoadBatching();
    void _LoadBatchList();
    void _LoadBatchMap();
    void _LoadScripts();
    void _LoadLightSet();
    void _FlushMeshes();
    void _LoadFinalInit();
    void _LoadCharStates();
    void _LoadPlayer();
    void _LoadCamera();                                // 0x3f1008 creates CameraOverview and CameraLevel, sky box
    bool _LoadFromXML(TiXmlElement* element);          // loads one object element through ObjectManager::LoadFromXML
    int LoadFile(const std::string& file, const std::string& tag);  // 0x3f3b40 incremental XML read of a level or module file
    int LoadTile(rnd::Tile* tile, int moduleId);       // 0x3f4154 loads a random-level tile and its children; returns the next module id
    int GenerateRandomLevel(StreamBuffer& out, uint32_t seed);      // 0x3f07f8
    void AssignSteamToLoadDataFile(StreamBuffer& stream);           // 0x3f02ac (sic) wraps stream in a new LoadFileData
    void SetObjectModuleId(int id);                    // 0x3ef278
    void ResetSkinning();
    void Restart();                                    // 0x3ef9a0 Application::LoadLevel with the same arguments
    void Unload();                                     // 0x3f0690
    void LoadCheckpoint();                             // 0x3f0428

    // ---- per frame ----
    void Update(bool forceUpdate);                     // 0x3f82d8 runs _LoadProcess instead until m_loadStep == 38 unless forceUpdate
    void Draw() const;                                 // 0x3f254c (_ZNK5Level4DrawEv) debug drawing only
    void Draw2D() const;                               // 0x3ef248 empty
    void UpdateListener();                             // 0x3f0ae0 sound listener from camera/player per Arrays::Listeners
    void UpdateCameraZoom();                           // 0x3f9870 co-op zoom from the players' screen positions
    void UpdateMaterial(bool a, bool b);
    void UpdateLightSet(bool a, int b);
    void UpdateLightSet(int index, std::vector<bool>& visited, glitch::scene::ISceneNode* node);
    void UpdateDynamicFog();                           // 0x3f16c0
    void UpdateFog(glitch::scene::ISceneNode* node);
    void EnableFog(glitch::scene::ISceneNode* node);
    void DisableFog(glitch::scene::ISceneNode* node);

    // ---- queries ----
    LevelConfig* GetLevelConfig() const;               // 0x3ef4a8 asserts "m_levelConfig != 0"
    void SetLevelConfig(LevelConfig* config);          // 0x3f150c also resolves the music/ambience sound ids
    std::string GetRimLightFile();                     // 0x474260 copy of the config's rim-light file name
    GameObject* GetMPReferee() const;                  // 0x3ef540 first object named "referee*", cached in m_mpReferee
    const char* GetMPGameScript() const;               // 0x3f1394 (_ZNK5Level15GetMPGameScriptEv) the config's mp_script string (+0x314 is its data pointer)
    GameObject* GetSpawnPoint();                       // 0x3ef614 spawn object (type 13) whose id equals m_entryPointId
    bool hasActiveDialog() const;                      // 0x3ef24c
    bool CanMoveTowards(const Point3D<float>& from, const Point3D<float>& direction);  // 0x3f94f4 co-op camera limits
    void CleanUpAllSkills();
    void UnlockAllObjects();
    void PlaceFaeryAndFollowers(Character* player);

    // ---- savegame ----
    void SG_BlockLevel(bool blocked);                  // 0x3ef238 LevelSavegame +0x39
    void QuickSave(bool levelChange);                  // 0x3f059c
    void CheckpointSave(const Point3D<float>& position, bool usePosition);  // 0x3f04b4
    void SG_SaveAllPlayer(bool levelChange);
    void SG_SaveLocalPlayer(bool levelChange);
    void SG_SavePlayer(Character* player, bool levelChange);
    void SG_SavePlayer(int playerIndex, bool levelChange);
    bool SG_IsMapLocSeen(int location) const;                // 0x3ef7ac true when any local player has seen it
    bool SG_IsMapLocLocked(int location) const;              // 0x3ef850 true when every player has it locked
    bool SG_IsLevelLocked(int level) const;                  // 0x3ef8f8
    void SG_DBG_TraceDetailedQuestInformation(int questState) const;

    static int s_dbgLevelLoadCount;                    // ++ per Level constructed (auto-load debug mode)

    // ---- members (original 32-bit offsets) ----
    // +0x00..+0x2f EventManager
    int m_loadProgressPercent;                         // +0x30 0..100, shown by menu_Loading
    uint8_t pad_34[4];
    LevelConfig* m_levelConfig;                        // +0x38 (Level.h:476 asserts it non-null)
    int m_levelListIndex;                              // +0x3c index of the level in Arrays::LevelList, -1 when absent
    int m_levelListSubId;                              // +0x40 LevelList member at +0x10, -1 when absent
    LuaScript m_script;                                // +0x44 (0x98 bytes) loads level/combat_formulas and level/death_scripts
    uint32_t m_seed;                                   // +0xdc Random::s_seed at load step 7
    uint32_t m_syncedSeed;                             // +0xe0 Random::s_syncedSeed
    int m_listenerIndex;                               // +0xe4 1; row of Arrays::Listeners used by UpdateListener
    bool m_isRandomLevel;                              // +0xe8 LevelList member at +0x14; generated by rnd::RandomGenerator
    uint8_t pad_e9[3];
    LevelSavegame* m_levelSavegame;                    // +0xec created when the level is in LevelList
    bool m_levelChange;                                // +0xf0 set by Application::LoadLevel before saving; passed to QuickSave/SG_SaveAllPlayer
    bool m_resume;                                     // +0xf1 constructor argument
    bool m_useSpawnPoint;                              // +0xf2 constructor argument
    bool m_cameFromOtherLevel;                         // +0xf3 set when fromSubId differs from m_levelListSubId
    bool m_loadingCheckpoint;                          // +0xf4 set while LoadCheckpoint runs
    bool m_hasPreviousLevel;                           // +0xf5 fromSubId != -1
    uint8_t pad_f6[2];
    std::string m_levelName;                           // +0xf8 file name, 24 bytes in the original (c_str at +0x10c)
    int m_entryPointId;                                // +0x110 spawn point id, compared with the spawn object's id
    uint32_t m_savegameSlot;                           // +0x114
    int m_difficulty;                                  // +0x118 last constructor argument; goes to LevelSavegame
    int m_musicSoundId;                                // +0x11c -1; Arrays::Sounds id of the config's music
    int unk_120;                                       // +0x120 -1; sound id resolved from the config in SetLevelConfig
    int m_ambienceSoundId;                             // +0x124 -1; played once by Update when the level starts
    CameraLevel* m_camera;                             // +0x128 main camera (deleted in Unload)
    CameraOverview* m_cameraOverview;                  // +0x12c (deleted in Unload; updated while it is the active camera)
    int m_loadStep;                                    // +0x130 0..38, "m_loadStep" in the debug trace; 38 = loaded
    int m_loadWorkDone;                                // +0x134 clamped to m_loadWorkTotal (loading progress)
    int m_loadWorkTotal;                               // +0x138 ObjectManager object count at step 10
    int m_loadFileCount;                               // +0x13c ++ per level file loaded at step 7
    LoadFileData* m_loadFileData;                      // +0x140 file being parsed, null when idle
    bool m_isLoaded;                                   // +0x144 set by the first full Update, cleared by ResetIsLoaded
    bool m_inTransition;                               // +0x145 set before leaving the level (IsInLevelTransition)
    uint8_t pad_146[2];
    int m_startScriptId;                               // +0x148 -1; ScriptManager::StartScript each Update when set
    rnd::RandomGenerator* m_randomGenerator;           // +0x14c operator new(400), only during GenerateRandomLevel
    void* unk_150;                                     // +0x150 0; game type 0..3 per LuaScript::_SetGameType (0x37f878), which
                                                       //       range-checks the value. Retype to int needs Level-7c7f5d-2.cpp (unk_150 = nullptr) changed first
    mutable GameObject* m_mpReferee;                   // +0x154 cached by GetMPReferee (written from const GetMPReferee)
    batch::BatchNodeCompiler* m_batchNodeCompiler;     // +0x158 operator new(56) in _LoadBatchInit
    batch::BatchNodeCompiler* m_batchNodeCompiler2;    // +0x15c
    Point3D<float> m_moduleOffset;                     // +0x160 position of the module being loaded (LoadTile)
    bool unk_16c;                                      // +0x16c 0
    uint8_t pad_16d[0x1f];
    int m_objectModuleId;                              // +0x18c -1; SetObjectModuleId, passed to ObjectManager::LoadFromXML
    uint8_t m_playerHudOpen[4];                        // +0x190 per local player index: that player's HUD menu is open (NativeOnHUDOpenEvent stores it; CameraLevel::HandleCentering reads it)
    GameEventManager* m_gameEventManager;              // +0x194 created at load step 6
    bool m_isInGameView;                               // +0x198 Application::IsCurrentlyInGameView
    uint8_t pad_199[3];
    Point3D<float> m_cameraBaseOffset;                 // +0x19c subtracted from the camera position for the fog distance
    bool unk_1a8;                                      // +0x1a8 0; while set Application::_Update skips the scene update
    // original size 0x1ac (3 bytes of padding)
};
