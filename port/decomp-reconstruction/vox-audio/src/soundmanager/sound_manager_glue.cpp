// VoxSoundManager glue that reaches into the game: the menu play call, the beat track, the music resume and restart, the platform music
// player controls and the playing-title HUD callback. The platform bridge calls are the extern "C" natives of core-platform
// (tb/android_jni_musicplayer.hpp).
#include "vox-audio/vox/sound_manager.hpp"

#include <cstdio>
#include <cstring>
#include <string>

#include "core-platform/debug_out.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/charai_ai.hpp"
#include "pydata-accessors/w7_pydata12.hpp"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_root.hpp"

extern "C" {
void nativeSetPlaylist(int playlist);
void nativeChangeStep(int step);
void nativeResumeMusicBG();
void nativeStopMusicBG();
int nativeGetisplaying();
void nativePauseMusicBG();
void nativePlayBGMusic();
int nativeGetNumPlaylists();
}

namespace {

// DebugSwitches::load() and then GetSwitch(name): the pair the binary runs before each switch read.
bool ReadDebugSwitch(const char* name) {
    DebugSwitches::s_inst.load();
    return DebugSwitches::s_inst.GetSwitch(std::string(name));
}

// "_root.menu_HUD_<HUDStyle>" on the HUD root movie, the character the music callbacks run on.
gameswf::character* HudStyleCharacter(MenuFX* hud) {
    char path[64];
    std::sprintf(path, "_root.menu_HUD_%d", Singleton<Application>::s_inst.GetSavedOption("HUDStyle"));
    return static_cast<gameswf::character*>(hud->Find(path));
}

// hud.PlaybackStateUpdated(state) on the HUD style character: the state is the number 0 (playing) or 1 (paused).
void SendPlaybackState(MenuFX* hud, double state) {
    gameswf::as_value value;
    value.set_double(state);
    hud->InvokeASCallback(HudStyleCharacter(hud), "PlaybackStateUpdated", &value, 1);
}

}  // namespace

// 0x36bc34 _ZN15VoxSoundManager8PlayMenuEibii
// Play(sound, loop, fade_ms, type) with the force flag set.
int VoxSoundManager::PlayMenu(int sound, bool loop, int fade_ms, int type) {
    return Play(sound, loop, fade_ms, type, true);
}

// 0x36a138 _ZN15VoxSoundManager8StopBeatEv
// Stops the beat track (with the SoundSettings BeatFadeoutTime constant as the fade) and forgets it.
void VoxSoundManager::StopBeat() {
    if (beat_id_ != -1) {
        Stop(beat_id_, ApplicationGetPyDataConstants()->getConstant("SoundSettings", "BeatFadeoutTime"));
        beat_id_ = -1;
    }
}

// 0x36bc58 _ZN15VoxSoundManager8PlayBeatEibb
// Nothing happens while sounds are disabled (the IsDisablingSounds switch) or while the sound-allowed byte (Application +0xb4, Hex-Rays byte_99F7E0) is clear. A sound of
// -1 stops the beat when stop_if_none is set; any other sound that is not already the beat replaces it (type 2, no force).
void VoxSoundManager::PlayBeat(int sound, bool loop, bool stop_if_none) {
    if (!ReadDebugSwitch("IsDisablingSounds") && Singleton<Application>::s_inst.unk_b4) {
        if (sound == -1) {
            if (stop_if_none) {
                StopBeat();
            }
        } else if (beat_id_ != sound) {
            StopBeat();
            if (beat_id_ != sound) {
                beat_id_ = sound;
                Play(sound, loop, 0, 2, false);
            }
        }
    }
}

// 0x36c164 _ZN15VoxSoundManager11ResumeMusicEi
// Plays the current music id again (looping as it was started) unless sounds are disabled.
void VoxSoundManager::ResumeMusic(int fade_ms) {
    if (!ReadDebugSwitch("IsDisablingSounds") && music_id_ != -1) {
        PlayMusic(music_id_, music_loop_, true, fade_ms);
    }
}

// 0x36c224 _ZN15VoxSoundManager12RestartMusicEi
// Plays the previous music id again unless sounds are disabled.
void VoxSoundManager::RestartMusic(int fade_ms) {
    if (!ReadDebugSwitch("IsDisablingSounds") && prev_music_id_ != -1) {
        PlayMusic(prev_music_id_, music_loop_, true, fade_ms);
    }
}

// 0x369480 _ZN15VoxSoundManager20GetIPodPlaylistCountEv: a thunk to nativeGetNumPlaylists.
int VoxSoundManager::GetIPodPlaylistCount() {
    return nativeGetNumPlaylists();
}

// 0x369484 _ZN15VoxSoundManager15SetIPodPlaylistEi
// Marks a playlist as chosen, selects it on the platform player and starts it.
void VoxSoundManager::SetIPodPlaylist(int playlist) {
    ipod_playlist_set_ = true;
    nativeSetPlaylist(playlist);
    nativePlayBGMusic();
}

// 0x3694d4 _ZN15VoxSoundManager14BackToMainMenuEv
// Presses the Cancel button of the playlist menu on the HUD root.
void VoxSoundManager::BackToMainMenu() {
    MenuManager::GetInstance()->GetHUDRoot()->InvokeASCallback("_root.menu_playlist", "buttons.btn_Cancel.onRelease", nullptr, 0);
}

// 0x36b120 _ZN15VoxSoundManager21ShowPlayingMusicTitleEPc
// Once the application has finished starting, the title is cut to 12 characters plus "..." when it is longer than 15, kept
// (unk_38), and sent to the HUD style 2 character as SetPlayingMusicTitle(title). The original prints two debug lines around it.
void VoxSoundManager::ShowPlayingMusicTitle(char* title) {
    _DEBUG_OUT("In startttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttttt------> %s", title);
    MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
    if (hud && Singleton<Application>::s_inst.IsInitFinish()) {
        char path[64];
        std::sprintf(path, "_root.menu_HUD_%d", 2);
        gameswf::character* hudCharacter = static_cast<gameswf::character*>(hud->Find(path));
        _DEBUG_OUT("In apssssssssssssssssssssssssssssss   musiccccccccccc ------> %s", reinterpret_cast<const char*>(hudCharacter));
        std::string shown(title);
        if (shown.size() > 15) {
            shown.resize(12);
            shown += "...";
        }
        unk_38 = shown;
        _DEBUG_OUT("In apssssssssssssssssssssssssssssss   musiccccccccccc ------> %s", shown.c_str());
        gameswf::as_value value;
        value.set_string(shown.c_str());
        hud->InvokeASCallback(hudCharacter, "SetPlayingMusicTitle", &value, 1);
    }
}

// 0x36cda8 _ZN15VoxSoundManager11IPodControlEPKc
//   "Play":     chooses playlist 0 (or none when the device has no playlist) the first time, then starts the player, or resumes it
//               when it was paused; when the player reports it is playing, the HUD gets PlaybackStateUpdated(0) and the playing flag.
//   "Pause":    pauses the player, sets the paused state, clears the playing flag and sends PlaybackStateUpdated(1).
//   "Stop":     stops the player.   "Next" / "Previous": change the track by +1 / -1.
//   "Open":     sends PlaybackStateUpdated(0 when the player is playing, else 1) and SetPlayingMusicTitle(unk_38).
void VoxSoundManager::IPodControl(const char* command) {
    if (std::strcmp(command, "Play") == 0) {
        if (!ipod_playlist_set_) {
            nativeSetPlaylist(nativeGetNumPlaylists() > 0 ? 0 : -1);
            ipod_playlist_set_ = true;
        }
        if (ipod_paused_ == 0) {
            nativePlayBGMusic();
        } else if (ipod_paused_ == 1) {
            ipod_paused_ = 0;
            nativeResumeMusicBG();
        }
        if (nativeGetisplaying() == 1) {
            SendPlaybackState(MenuManager::GetInstance()->GetHUDRoot(), 0.0);
            ipod_playing_ = 1;
        }
    } else if (std::strcmp(command, "Pause") == 0) {
        nativePauseMusicBG();
        ipod_paused_ = 1;
        ipod_playing_ = 0;
        SendPlaybackState(MenuManager::GetInstance()->GetHUDRoot(), 1.0);
    } else if (std::strcmp(command, "Stop") == 0) {
        nativeStopMusicBG();
    } else if (std::strcmp(command, "Next") == 0) {
        nativeChangeStep(1);
    } else if (std::strcmp(command, "Previous") == 0) {
        nativeChangeStep(-1);
    } else if (std::strcmp(command, "Open") == 0) {
        MenuFX* hud = MenuManager::GetInstance()->GetHUDRoot();
        SendPlaybackState(hud, nativeGetisplaying() == 1 ? 0.0 : 1.0);
        gameswf::as_value title;
        title.set_string(unk_38.c_str());
        hud->InvokeASCallback(HudStyleCharacter(hud), "SetPlayingMusicTitle", &title, 1);
    }
}
