// VoxSoundManager: the game-side sound glue at 0x36xxxx. Only the members whose bodies are
// rebuilt so far are declared here. Most of the class calls game globals and game classes
// that are not in the port (JAVA_SOUNDS, MenuManager, RenderFX, ...), so the layout is not
// complete; see vox-audio/NOTES.md (VoxSoundManager).
//
// The first batch reads the Arrays::Sounds table (Arrays::Sounds in pydata-accessors/arrays.hpp,
// Structs::SoundAutoGen in structs_records.hpp) and the emitter count from
// vox::VoxEngine::GetEmitterHandles, which is int since the facade was corrected (0x862548 returns
// r0; voxengine.hpp:121, voxengine.cpp:601).
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-shared/glitch_core.hpp"
#include "vox-audio/vox/sound_pack_xml.hpp"

template <typename T>
struct Point3D;  // dh2/Point3D.hpp (the world-space position; Stop3D takes a pointer to one)

namespace vox {
class DataHandle;
class VoxEngine;
}  // namespace vox

// Game globals the sound glue reads and writes. Their definitions belong to the globals batches
// (game-app; RES_PATH is in core-platform filesystem_win32.cpp). Types follow the listings: the
// two 1-byte .bss flags are bool, music_volume and sfx_vfx_volume are 4-byte .bss floats (the listing
// stores the float register bits with no conversion), Save_Current_Music_ID is a 4-byte .data int.
extern bool JAVA_SOUNDS;               // Android sound-mode flag (ELF JAVA_SOUNDS).
extern bool Resume_Sound_Interrupt;    // set by the GS_InterruptLoading dtor under JAVA_SOUNDS.
extern int Save_Current_Music_ID;      // music id kept across an interrupt, -1 when none.
extern float music_volume;             // last music volume sent to the native player.
extern float sfx_vfx_volume;           // last SFX/VFX volume sent to the native player.
extern const char* RES_PATH;           // data root prefix.
extern int gAssertLevel;               // assert reporting level (core-platform memory.cpp): 1 prints, 2 faults.
void CustomFree(void* p);              // 0x310440, the game's free (core-platform memory.cpp).

// Android sound bridge: the native functions the JNI glue implements. Their bodies are rows of
// core-platform (0x531570, 0x5314c8, 0x531940, 0x53177c, 0x531a64) and are not defined on the
// desktop build. nativeStopAllBigSound is called with a second argument by every caller; its body
// reads only the first one.
extern "C" {
int nativeStopSoundBig(int sound_id);                             // 0x531570
int nativeResumeSoundBig(int sound_id);                           // 0x5314c8
int nativeStopAllBigSound(int sound_id, int fade_ms);             // 0x531940
int nativeSetVolumeBig(int sound_id, float volume, int channel);  // 0x53177c; channel 1 music, 2 SFX/VFX
int nativeIsMediaPlaying(int sound_id);                           // 0x531a64
// Declared with the core-platform bridge signatures (android_jni_bridge.hpp): the binary ignores their results.
void nativePlaySoundBig(int sound_id, float volume, int loop, int channel);  // 0x531348; channel 1 music, 2 SFX/VFX
void nativePauseSoundBig(int sound_id);                           // 0x531420
}

class VoxSoundManager {
public:
    // VoxSoundManager::s_instance (0x9a238c, .bss pointer): the process-wide sound manager, null until CreateInstance (0x36ca88) sets it. Defined in src/link1_VoxSoundManager_statics.cpp.
    static VoxSoundManager* s_instance;

    VoxSoundManager();                                                          // 0x36c7b0 C1 and 0x36cad0 C2
    static VoxSoundManager* CreateInstance();                                   // 0x36ca88
    static void DeleteInstance();                                               // 0x36b048
    void Initialize();                                                          // 0x36c2e4
    void SetLevelRouting(int level);                                            // 0x3695f4

    // 0x369348 VoxSoundManager::SetIPodShuffle(void). The original body is empty.
    void SetIPodShuffle();

    // 0x36934c VoxSoundManager::UpdateIPodAsync(void). The original body is empty.
    void UpdateIPodAsync();

    // Game-side glue (src/soundmanager/sound_manager_glue.cpp).
    int PlayMenu(int sound, bool loop, int fade_ms, int type);                  // 0x36bc34 Play(sound, loop, fade, type, force = true)
    void PlayBeat(int sound, bool loop, bool stop_if_none);                     // 0x36bc58
    void StopBeat();                                                            // 0x36a138
    void ResumeMusic(int fade_ms);                                              // 0x36c164 plays music_id_ again
    void RestartMusic(int fade_ms);                                             // 0x36c224 plays prev_music_id_
    int GetIPodPlaylistCount();                                                 // 0x369480 (a thunk to nativeGetNumPlaylists)
    void SetIPodPlaylist(int playlist);                                         // 0x369484
    void BackToMainMenu();                                                      // 0x3694d4 presses the playlist menu's Cancel button
    void ShowPlayingMusicTitle(char* title);                                    // 0x36b120
    void IPodControl(const char* command);                                      // 0x36cda8 "Play", "Pause", "Stop", "Next", "Previous", "Open"

    // 0x36c734 VoxSoundManager::GetIPodPlaylistName(int). The name of music playlist `index` from the platform bridge
    // (nativeGetPlaylistName), or the empty string when the index is not below nativeGetNumPlaylists(). The original returns the
    // string through a hidden result pointer.
    std::string GetIPodPlaylistName(int index);

    // 0x3692f0 VoxSoundManager::ConvertVisual3DToSound3D(glitch::core::vector3d<float> const&).
    // Scales each visual component by 0.01f (constant 0x3c23d70a in the ARM listing).
    static glitch::core::vector3d<float> ConvertVisual3DToSound3D(
        const glitch::core::vector3d<float>& visual);

    // Sound and music control. Bodies: src/p1-vox-audio-VoxSoundManager-3a5f5c-0.cpp.
    // The binary passes the engine object (*this) as the instance argument of the VoxEngine calls.
    // The port facade is static, so those calls drop it; engine_ keeps the null checks on *this.
    // The whole first batch is reconstructed: the emitter count comes from
    // VoxEngine::GetEmitterHandles (int since the facade was corrected at 0x862548) and the
    // Arrays::Sounds record of a sound id gives the data index at +0x4.
    void UnloadSound(int sound);                                            // 0x36921c
    void UnloadAllSounds();                                                 // 0x369298
    void SetMusicState(const char* state);                                  // 0x369514
    bool IsSoundPlaying(int sound);                                         // 0x3696dc
    bool IsMusicPlaying();                                                  // 0x369804
    void StopAllMusic(int fade_ms);                                         // 0x3698f0
    void StopAllSounds(int fade_ms);                                        // 0x369990
    void LoadSound(int sound);                                              // 0x3699fc
    float GetSoundVolume(int type);                                         // 0x369b38
    void SetInitialVolume(float music, float sfx, float vfx);               // 0x369c2c
    void SetSoundVolume(int type, float volume);                            // 0x369da0
    float GetMasterVolume();                                                // 0x369ee8
    void SetMasterVolume(float volume);                                     // 0x369f1c
    void SetListenerPos(const glitch::core::vector3d<float>& pos,
                        const glitch::core::vector3d<float>& front,
                        const glitch::core::vector3d<float>& up,
                        int a5, int a6, float a7);                          // 0x369f50
    void Stop(int sound, int fade_ms);                                      // 0x369fec
    void StopMusic(int fade_ms);                                            // 0x36a1a0
    // Stop3D takes the listener position as the original does (Point3D<float>*); the two game-world callers
    // (GameObject, SoundEmitter) pass one.
    void Stop3D(int sound, int fade_ms, Point3D<float>* pos, float radius);  // 0x36a218 _ZN15VoxSoundManager6Stop3DEiiP7Point3DIfEf
    void Resume(int sound);                                                 // 0x36a470
    void ResumeAllSounds();                                                 // 0x36a590
    void PauseAllSounds();                                                  // 0x36a624

    // Platform pass (batch p1-vox-audio-VoxSoundManager-3a5f5c-1). Bodies: src/p1-vox-audio-VoxSoundManager-3a5f5c-1.cpp.
    // The 3D sound calls take the position as glitch::core::vector3d<float> and two floats that the binary stores as
    // 3D emitter parameters 2 and 1 (the listing's a9 and a10).
    ~VoxSoundManager();                                                     // 0x36afb0 and 0x36b088 (same body)
    void Pause(int sound);                                                  // 0x36a664
    void PauseMusic();                                                      // 0x36a784
    int PlaySoundPackSound(int sound, const char* name, vox::FormatTypes format, int field_16,
                           int bank_id, vox::VoxSourceLoadingFlags flags,
                           const glitch::core::vector3d<float>& pos,
                           float param2, float param1);                     // 0x36a7c0
    void ReleaseLvlSounds();                                                // 0x36b2cc
    int PlayEvent(int event, const glitch::core::vector3d<float>& pos,
                  float param2, float param1);                              // 0x36b420
    int Play3D(int sound, const glitch::core::vector3d<float>& pos, bool loop, int reserved,
               float param2, float param1);                                 // 0x36b5d8
    int Play(int sound, bool loop, int fade_ms, int type, bool force);      // 0x36b80c
    void CrossfadeMusic(int music_a, int music_b);                          // 0x36baa0 (the listing discards the GetEmitterHandles count)
    void PlayMusic(int music, bool loop, bool stop_if_none, int fade_ms);   // 0x36bd78
    void SetInSafeZoneMusic(bool in_zone);                                  // 0x36c014

    // Layout: the 32-bit offsets from the listings are the comments; pointers are host width.
    // Only the fields the rebuilt bodies touch are named. The constructor (0x36c7b0) sets engine_ from
    // VoxEngine::GetVoxEngine(), initialises it, and allocates sounds_.
    vox::VoxEngine* engine_ = nullptr;      // +0x00 (*this in the binary)
    void* unk_04 = nullptr;                 // +0x04, freed by the destructor (CustomFree); allocated outside this batch
    vox::DataHandle** sounds_ = nullptr;    // +0x08, one DataHandle* per sound id (LoadSound)
    std::vector<int> preload_ids_;          // +0x0c..+0x17 (begin, end, end of storage); ids ReleaseLvlSounds keeps
    bool unk_18 = true;                     // +0x18, the constructor stores 1; no reader recovered
    std::uint8_t pad_19[3];                 // +0x19..+0x1b
    int sound_count_ = 0;                   // +0x1c, sound ids run 0 .. sound_count_
    bool initial_volume_set_ = false;       // +0x20, SetInitialVolume has run
    std::uint8_t pad_21[3];                 // +0x21..+0x23
    int music_id_ = -1;                     // +0x24, current music sound id, -1 when none
    int prev_music_id_ = -1;                // +0x28, music id stopped last (StopAllMusic, StopMusic)
    int beat_id_ = -1;                      // +0x2c, sound id of the beat track (PlayBeat, StopBeat); -1 when none
    bool music_loop_ = true;                // +0x30, loop flag of the current music (PlayMusic stores it; the constructor stores 1)
    bool music_slot_ = false;               // +0x31, toggled by CrossfadeMusic; SetInSafeZoneMusic tests it
    bool in_safe_zone_ = false;             // +0x32, SetInSafeZoneMusic
    bool ipod_playlist_set_ = false;        // +0x33, a playlist was chosen (SetIPodPlaylist, IPodControl "Play")
    int ipod_playing_ = 0;                  // +0x34, 1 while the platform player is playing (IPodControl "Play" sets it, "Pause" clears it)
    std::string unk_38;                     // +0x38 .. +0x4f, an STLport string in the original (its block is freed by the destructor): the title
                                            // ShowPlayingMusicTitle shows (its text pointer is read at +0x4c by IPodControl "Open")
    int ipod_paused_ = 0;                   // +0x50, 1 after IPodControl "Pause", back to 0 by "Play"
    int unk_54 = 0;                         // +0x54, SetListenerPos a5
    int unk_58 = 0;                         // +0x58, SetListenerPos a6
    float unk_5c = 0.0f;                    // +0x5c, SetListenerPos a7
    std::uint8_t pad_60[4];                 // +0x60..+0x63
    vox::VoxSoundPackXML sound_pack_;       // +0x64, embedded sound pack (GetGroupMask, GetDataSourceInfo)
};
