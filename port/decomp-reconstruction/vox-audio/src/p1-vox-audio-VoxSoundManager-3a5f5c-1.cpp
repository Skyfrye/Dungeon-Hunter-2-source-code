// VoxSoundManager: the rest of the game-side sound glue (batch p1-vox-audio-VoxSoundManager-3a5f5c-1,
// platform pass). Covers the destructor, the pause and play family, the music cross-fade, the music
// play and safe-zone switch, and the level release. The first half of the class is in
// src/p1-vox-audio-VoxSoundManager-3a5f5c-0.cpp.
//
// Conventions as in the first batch. A JAVA_SOUNDS branch forwards to the native sound bridge
// (nativeXxxSoundBig, declared in sound_manager.hpp). The other branch calls the static vox::VoxEngine
// facade and drops the engine instance argument of the binary. Arrays::Sounds records are reached
// through the typed element pointer (pydata element_table.hpp), never as bytes at a 32-bit stride.
// A body whose behaviour cannot be reproduced yet is marked PARTIAL where it stands; after the platform
// pass every body in this file is reconstructed, and the one deviation left (the deliberate null-pointer
// fault of the line-1440 assert in SetInSafeZoneMusic, and Stop's missing emitter loop that
// CrossfadeMusic and PlayMusic reach through StopMusic) is named at the function.

#include "vox-audio/vox/sound_manager.hpp"

#include <algorithm>
#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <vector>

#include "core-platform/device.hpp"
#include "core-platform/deps/application.hpp"
#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/random48.hpp"
#include "vox-audio/vox/voxengine.hpp"

namespace {

// Emitter slots the binary sets up for GetEmitterHandles in Pause.
constexpr int kEmitterSlots = 10;
// Fade the binary passes to the VoxEngine emitter calls of this batch: Play (PlaySoundPackSound, Play),
// Pause (Pause) and Resume (PlayMusic). Float constant 0.05.
constexpr float kPlayFade = 0.05f;
// Fade of the music calls (PlayMusic, SetInSafeZoneMusic, CrossfadeMusic), in milliseconds.
constexpr int kMusicFadeMs = 2000;
// Channel argument of nativePlaySoundBig: 1 for music, 2 for SFX and VFX.
constexpr int kChannelMusic = 1;
constexpr int kChannelSfxVfx = 2;
// Play group type of the music calls. Play tests (type - 1) <= 0x1d before it sets the group.
constexpr int kMusicType = 2;
// Level::m_loadStep when the level is fully loaded (Play3D).
constexpr int kLevelLoadedStep = 38;
// Parameters Play3D passes to PlayEvent (the bit patterns of -1.0f).
constexpr float kNoParam = -1.0f;
// Arrays::Sounds record kind of an event (Type == 1). The data index of an event is the event id.
constexpr std::int32_t kEventKind = 1;

// Position and basis vectors of the listing (the Hex-Rays words v18..v23 in PlaySoundPackSound).
struct Vec3 {
    float x;
    float y;
    float z;
};

// The same operation as glitch::core::vector3d<float>::normalize (0x35e8e0) in glitch-shared/glitch_core.hpp:
// scales by 1 / sqrt(|v|^2) unless |v|^2 is zero. Vec3 is local to this listing and does not use the shared type.
void NormalizeInPlace(Vec3& v) {
    const float v2 = (v.x * v.x + v.y * v.y) + v.z * v.z;
    if (v2 != 0.0f) {
        const float inv = 1.0f / std::sqrt(v2);
        v.x = v.x * inv;
        v.y = v.y * inv;
        v.z = v.z * inv;
    }
}

// DebugSwitches::load() and then GetSwitch(name): the pair the binary runs before each switch read.
bool ReadDebugSwitch(const char* name) {
    DebugSwitches::s_inst.load();
    return DebugSwitches::s_inst.GetSwitch(name);
}

// A trace switch: the binary reads it and drops the result.
void ReadTraceSwitch(const char* name) {
    (void)ReadDebugSwitch(name);
}

// Arrays::Sounds element `sound`. The table's members points at element 0 of host Structs::SoundAutoGen
// records (pydata element_table.hpp). The original's 12-byte listing stride is not applied to bytes.
// +0x4 (Id) is the sound's data index, which is the event id when Type == kEventKind; +0x8 (Type) is the kind.
Structs::SoundAutoGen& SoundRecord(int sound) {
    return reinterpret_cast<Structs::SoundAutoGen*>(Arrays::Sounds::members)[sound];
}

// The online half of the Play3D and Play gate: the byte at COnline +0x05 (COnline::isOnlineGame_), read
// through GetOnline(). The binary inlines `LDRB R3,[GetOnline(),#5]` at 0x36b6b8 (Play3D) and 0x36ba24
// (Play); the tree has the accessor GetOnlineGameFlag() (dh2/global/net_singletons.hpp, defined in
// game-app/src/online_flag.cpp) which is exactly GetOnline()->IsOnlineGame(), so the call sites use it and
// no stand-in is needed.
//
// The sound-allowed byte is Application +0xb4 (Application.hpp unk_b4); the music group id GetSoundVolume(2)
// reads comes from Arrays::Sounds.

// The EmitterHandle the binary builds on the stack for an empty slot: id -1, no engine, no handlable, zero stamps.
vox::EmitterHandle EmptyEmitterHandle() {
    return vox::EmitterHandle(-1, nullptr, nullptr, 0, 0);
}

std::vector<vox::EmitterHandle> MakeEmptyHandles(std::size_t count) {
    return std::vector<vox::EmitterHandle>(count, EmptyEmitterHandle());
}

// Destroys a DataHandle that LoadSound allocated: the destructor, then the block (as in the first batch).
void DestroyDataHandle(vox::DataHandle* handle) {
    handle->~DataHandle();
    VoxFree(handle);
}

}  // namespace

// 0x36afb0 _ZN15VoxSoundManagerD1Ev
// 0x36b088 _ZN15VoxSoundManagerD2Ev (the second copy of the destructor; the same body)
VoxSoundManager::~VoxSoundManager() {
    if (!JAVA_SOUNDS) {
        CustomFree(unk_04);
        UnloadAllSounds();
        CustomFree(sounds_);
        vox::VoxEngine::DestroyVoxEngine();
    }
    // After this body the members are destroyed in reverse order: sound_pack_ (+0x64), unk_38 (+0x38) and
    // preload_ids_ (+0x0c). The binary runs the same three releases in that order.
}

// 0x36a664 _ZN15VoxSoundManager5PauseEi
// Verified line by line against 0x36a664..0x36a76c and the disassembly: sound < 0 returns; JAVA_SOUNDS
// forwards to nativePauseSoundBig; otherwise the Arrays::Sounds record's +4 data index selects sounds_[data]
// and a null there returns. The ten 40-byte EmitterHandles on the stack are then filled by
// VoxEngine::GetEmitterHandles(data, handles, 10), whose count in r0 bounds the loop that calls
// VoxEngine::Pause(handle, 0.05f) for each handle (0x36a71c tests the count, 0x36a740 ends the do-while).
// The facade now returns that count (voxengine.cpp, 0x862548), so the loop is reproduced.
// The binary's int result is a register leftover; the declaration is void.
void VoxSoundManager::Pause(int sound) {
    if (sound < 0) {
        return;
    }
    if (JAVA_SOUNDS) {
        nativePauseSoundBig(sound);
        return;
    }
    vox::DataHandle* data = sounds_[SoundRecord(sound).Id];
    if (data == nullptr) {
        return;
    }
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(kEmitterSlots);
    const int count = vox::VoxEngine::GetEmitterHandles(*data, handles.data(), kEmitterSlots);
    for (int i = 0; i < count; ++i) {
        vox::VoxEngine::Pause(handles[i], kPlayFade);
    }
}

// 0x36a784 _ZN15VoxSoundManager10PauseMusicEv
// Verified against 0x36a784..0x36a7b4: music_id_ == -1 returns, JAVA_SOUNDS forwards to nativePauseSoundBig
// with music_id_, and the non-JAVA path is the single call Pause(music_id_).
void VoxSoundManager::PauseMusic() {
    if (music_id_ == -1) {
        return;
    }
    if (JAVA_SOUNDS) {
        nativePauseSoundBig(music_id_);
    } else {
        Pause(music_id_);
    }
}

// 0x36a7c0 _ZN15VoxSoundManager18PlaySoundPackSoundEiPKcN3vox11FormatTypesEiiNS2_21VoxSourceLoadingFlagsERKN6glitch4core8vector3dIfEEff
// Parameters: the sound id, the data name, the format, field_16, the priority bank (the binary's a6),
// the loading flags (a7, unused by the body), the position, and the two floats the binary stores as
// 3D emitter parameters 2 and 1.
int VoxSoundManager::PlaySoundPackSound(int sound, const char* name, vox::FormatTypes format, int field_16,
                                        int bank_id, vox::VoxSourceLoadingFlags flags,
                                        const glitch::core::vector3d<float>& pos,
                                        float param2, float param1) {
    (void)name;
    (void)format;
    (void)field_16;
    (void)flags;
    if (JAVA_SOUNDS) {
        return 0;
    }
    vox::DataHandle* data = sounds_[sound];
    if (data == nullptr) {
        LoadSound(sound);
        data = sounds_[sound];
    }
    if (data != nullptr && vox::VoxEngine::IsReady(*data) != 0) {
        vox::VoxEngine::SetPriorityBankId(*data, bank_id);
        int emitter_uid = 0;
        int group = 0;
        bool loop = false;
        vox::Vox3DSoundType type = static_cast<vox::Vox3DSoundType>(0);
        const char* dsp_name = nullptr;
        sound_pack_.GetEmitterInfo(sound, emitter_uid, group, loop, type, dsp_name);
        // The binary passes the emitter uid as the flags argument and no user pointer (a null on the stack).
        vox::EmitterHandle emitter = vox::VoxEngine::CreateEmitter(*data, emitter_uid, nullptr);

        const int type_value = static_cast<int>(type);
        if (type_value != 0) {
            if (param2 >= 0.0f && param1 >= 0.0f) {
                vox::VoxEngine::Set3DEmitterPosition(emitter, pos.X, pos.Y, pos.Z);
                vox::VoxEngine::Set3DEmitterParameterf(emitter, 2, param2);
                vox::VoxEngine::Set3DEmitterParameterf(emitter, 1, param1);
            } else {
                vox::VoxEngine::Set3DEmitterPosition(emitter, pos.X, pos.Y, pos.Z);
                vox::VoxEngine::Set3DEmitterParameterf(emitter, 2, static_cast<float>(unk_54));
                vox::VoxEngine::Set3DEmitterParameterf(emitter, 1, static_cast<float>(unk_58));
            }
        } else {
            vox::VoxEngine::Set3DEmitterParameteri(emitter, 0, 1);
        }
        vox::VoxEngine::Set3DEmitterParameterf(emitter, 3, unk_5c);

        if (type_value == 2) {
            // Relative 3D: the emitter position is written in the listener's frame. The listener's front
            // is normalised, the side vector is the normalised cross(front, up), and the top vector is the
            // normalised cross(side, front). Each cross product is written as the listing writes it.
            // The listing (loc_36AB50) first sets 3D emitter parameter 0 to 1, before it reads the listener.
            vox::VoxEngine::Set3DEmitterParameteri(emitter, 0, 1);
            float fx = 0.0f;
            float fy = 0.0f;
            float fz = 0.0f;
            float ux = 0.0f;
            float uy = 0.0f;
            float uz = 0.0f;
            vox::VoxEngine::Get3DListenerOrientation(fx, fy, fz, ux, uy, uz);
            Vec3 front{fx, fy, fz};
            const Vec3 up{ux, uy, uz};
            NormalizeInPlace(front);
            Vec3 side{(front.z * -up.y) + (up.z * front.y),
                      (front.x * -up.z) + (up.x * front.z),
                      (front.y * -up.x) + (up.y * front.x)};
            NormalizeInPlace(side);
            Vec3 top{(side.z * -front.y) + (front.z * side.y),
                     (side.x * -front.z) + (front.x * side.z),
                     (side.y * -front.x) + (front.y * side.x)};
            NormalizeInPlace(top);

            float ex = 0.0f;
            float ey = 0.0f;
            float ez = 0.0f;
            vox::VoxEngine::Get3DEmitterPosition(emitter, ex, ey, ez);
            float lx = 0.0f;
            float ly = 0.0f;
            float lz = 0.0f;
            vox::VoxEngine::Get3DListenerPosition(lx, ly, lz);
            const float dx = ex - lx;
            const float dy = ey - ly;
            const float dz = ez - lz;
            const float rel_x = (side.x * dx + side.y * dy) + side.z * dz;
            const float rel_y = (top.x * dx + top.y * dy) + top.z * dz;
            const float rel_z = (front.x * dx + front.y * dy) + front.z * dz;
            vox::VoxEngine::Set3DEmitterPosition(emitter, rel_x, rel_y, rel_z);
        }

        vox::VoxEngine::SetDSPEmitterParameter(emitter, 0, const_cast<char*>(dsp_name));

        // The two group uids are function-local statics in the binary (guard variables), read from the
        // pack on first use.
        static const int sfx_3d_pitched = sound_pack_.GetGroupUid("sfx_3D_pitched");
        static const int sfx_3d_pitched_relative = sound_pack_.GetGroupUid("sfx_3D_pitched_relative");
        if (group == sfx_3d_pitched || group == sfx_3d_pitched_relative) {
            const int saved_option = Singleton<Application>::s_inst.GetSavedOption("VolumeFX");
            // The binary multiplies the option by (rand % 123) * 0.001 + 0.96 in double, then stores a float.
            const double scale = static_cast<double>(vox::Lrand48() % 123) * 0.001 + 0.96;
            const float volume = static_cast<float>(static_cast<double>(static_cast<float>(saved_option)) * scale);
            SetSoundVolume(group, volume);
        }
        vox::VoxEngine::SetGroup(emitter, group);
        vox::VoxEngine::Play(emitter, loop, kPlayFade);
    }
    return 0;
}

// 0x36b2cc _ZN15VoxSoundManager16ReleaseLvlSoundsEv
void VoxSoundManager::ReleaseLvlSounds() {
    if (JAVA_SOUNDS) {
        return;
    }
    for (int sound = 0; sound < sound_count_; ++sound) {
        if (sounds_[sound] == nullptr) {
            continue;
        }
        // Sounds listed in preload_ids_ stay loaded.
        if (std::find(preload_ids_.begin(), preload_ids_.end(), sound) != preload_ids_.end()) {
            continue;
        }
        ReadTraceSwitch("isTracingPreload_SFX");
        vox::DataHandle* handle = sounds_[sound];
        if (handle != nullptr) {
            DestroyDataHandle(handle);
        }
        sounds_[sound] = nullptr;
    }
}

// 0x36b420 _ZN15VoxSoundManager9PlayEventEiRKN6glitch4core8vector3dIfEEff
int VoxSoundManager::PlayEvent(int event, const glitch::core::vector3d<float>& pos,
                               float param2, float param1) {
    if (!ReadDebugSwitch("IsDisablingSounds") && event >= 0) {
        if (JAVA_SOUNDS) {
            nativePlaySoundBig(event, sfx_vfx_volume, 0, kChannelSfxVfx);
        } else {
            int sound_uid = 0;
            sound_pack_.GetEventSoundUid(event, sound_uid);
            if (sound_uid >= 0) {
                ReadTraceSwitch("isTracingSFX");
                const char* name = nullptr;
                vox::FormatTypes format = static_cast<vox::FormatTypes>(0);
                int field_16 = 0;
                int bank_id = 0;
                vox::VoxSourceLoadingFlags flags = static_cast<vox::VoxSourceLoadingFlags>(0);
                sound_pack_.GetDataSourceInfo(sound_uid, name, format, field_16, bank_id, flags);
                PlaySoundPackSound(sound_uid, name, format, field_16, bank_id, flags, pos, param2, param1);
            }
        }
    }
    return 0;
}

// 0x36b5d8 _ZN15VoxSoundManager6Play3DEiRKN6glitch4core8vector3dIfEEbiff
// Verified against the listing (0x36b5d8..0x36b7e0) and the disassembly: IsDisablingSounds is read first,
// then GetCurrentLevel, then the gate `level->m_loadStep (+0x130) == 38 && (!isOnlineGame_ || !MenuBase::s_igmOpened)
// && sound >= 0`. The online byte is *(GetOnline() + 5), read here through GetOnlineGameFlag() (the tree's
// accessor for that byte). Records of kind 1 go to PlayEvent with the data index as the event id and the two
// -1.0f parameters; every other record calls GetDataSourceInfo, traces isTracingSFX and calls
// PlaySoundPackSound with the position, param2 (a6) and param1 (a7). The fourth int argument is not read by
// the body. No deviation remains.
int VoxSoundManager::Play3D(int sound, const glitch::core::vector3d<float>& pos, bool loop, int reserved,
                            float param2, float param1) {
    (void)reserved;  // the binary's int argument is not read by the body
    if (ReadDebugSwitch("IsDisablingSounds")) {
        return 0;
    }
    Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
    if (level == nullptr) {
        return 0;
    }
    if (level->m_loadStep == kLevelLoadedStep &&
        (!GetOnlineGameFlag() || !MenuBase::s_igmOpened) && sound >= 0) {
        if (JAVA_SOUNDS) {
            nativePlaySoundBig(sound, sfx_vfx_volume, loop ? 1 : 0, kChannelSfxVfx);
        } else {
            const Structs::SoundAutoGen& record = SoundRecord(sound);
            const std::int32_t data = record.Id;
            if (record.Type == kEventKind) {
                PlayEvent(data, pos, kNoParam, kNoParam);
            } else {
                const char* name = nullptr;
                vox::FormatTypes format = static_cast<vox::FormatTypes>(0);
                int field_16 = 0;
                int bank_id = 0;
                vox::VoxSourceLoadingFlags flags = static_cast<vox::VoxSourceLoadingFlags>(0);
                sound_pack_.GetDataSourceInfo(data, name, format, field_16, bank_id, flags);
                ReadTraceSwitch("isTracingSFX");
                PlaySoundPackSound(data, name, format, field_16, bank_id, flags, pos, param2, param1);
            }
        }
    }
    return 0;
}

// 0x36b80c _ZN15VoxSoundManager4PlayEibiib
// Verified against the listing (0x36b80c..0x36ba7c) and the disassembly: the gate is
// `!IsDisablingSounds && sound >= 0 && (force || !isOnlineGame_ || !MenuBase::s_igmOpened)`, with force
// tested first (0x36ba2c tests the online byte, 0x36ba40 the in-game-menu flag). The online byte is
// *(GetOnline() + 5), read here through GetOnlineGameFlag(). Then the JAVA forward, else the data index of
// the Arrays::Sounds record, GetDataSourceInfo, LoadSound on a miss, IsReady, SetPriorityBankId,
// GetEmitterInfo, CreateEmitter(data, emitter_uid, null), 3D parameter 0 = 1, the DSP parameter, SetGroup
// when (type - 1) <= 0x1d and Play(handle, loop, fade_ms / 1000.0). CreateEmitter's argument order was
// re-read from the disassembly at 0x36b988 (R2 = sounds_[data], R3 = the emitter uid, stack user = null).
// No deviation remains.
int VoxSoundManager::Play(int sound, bool loop, int fade_ms, int type, bool force) {
    if (ReadDebugSwitch("IsDisablingSounds") || sound < 0) {
        return 0;
    }
    if (!(force || !GetOnlineGameFlag() || !MenuBase::s_igmOpened)) {
        return 0;
    }
    if (JAVA_SOUNDS) {
        nativePlaySoundBig(sound, sfx_vfx_volume, loop ? 1 : 0, kChannelSfxVfx);
        return 0;
    }
    const std::int32_t data = SoundRecord(sound).Id;
    const char* name = nullptr;
    vox::FormatTypes format = static_cast<vox::FormatTypes>(0);
    int field_16 = 0;
    int bank_id = 0;
    vox::VoxSourceLoadingFlags flags = static_cast<vox::VoxSourceLoadingFlags>(0);
    sound_pack_.GetDataSourceInfo(data, name, format, field_16, bank_id, flags);
    vox::DataHandle* handle = sounds_[data];
    if (handle == nullptr) {
        LoadSound(data);
        handle = sounds_[data];
    }
    if (handle == nullptr || vox::VoxEngine::IsReady(*handle) == 0) {
        return 0;
    }
    vox::VoxEngine::SetPriorityBankId(*handle, bank_id);
    int emitter_uid = 0;
    int group = 0;
    bool flag = false;
    vox::Vox3DSoundType emitter_type = static_cast<vox::Vox3DSoundType>(0);
    const char* dsp_name = nullptr;
    sound_pack_.GetEmitterInfo(data, emitter_uid, group, flag, emitter_type, dsp_name);
    vox::EmitterHandle emitter = vox::VoxEngine::CreateEmitter(*handle, emitter_uid, nullptr);
    vox::VoxEngine::Set3DEmitterParameteri(emitter, 0, 1);
    vox::VoxEngine::SetDSPEmitterParameter(emitter, 0, const_cast<char*>(dsp_name));
    if (static_cast<unsigned int>(type - 1) <= 0x1Du) {
        vox::VoxEngine::SetGroup(emitter, group);
    }
    vox::VoxEngine::Play(emitter, flag, static_cast<float>(static_cast<double>(static_cast<float>(fade_ms)) / 1000.0));
    return 0;
}

// 0x36baa0 _ZN15VoxSoundManager14CrossfadeMusicEii
// Verified line by line against 0x36baa0..0x36bbf4: JAVA_SOUNDS or music_b == -1 returns; music_slot_ (+0x31)
// picks the stopping and the playing sound; the stopping record takes the playing record's data index (+4)
// and kind (+8); both data indices are loaded on a miss; one EmitterHandle is filled with
// GetEmitterHandles(..., 1) and the playing cursor (GetPlayCursor) is taken from the stopping emitter before
// Stop and handed to the playing emitter (SetPlayCursor) after Play; music_slot_ is toggled. The listing
// discards GetEmitterHandles' count here (no use of r0 at 0x36bb78 or 0x36bbd0), which the returned int now
// makes explicit. Deviation, named and tracked on its own row: Stop (0x369fec, batch -0) still has no
// GetEmitterHandles loop, so the old music emitters are not actually stopped by the Stop call below.
void VoxSoundManager::CrossfadeMusic(int music_a, int music_b) {
    if (JAVA_SOUNDS || music_b == -1) {
        return;
    }
    // music_slot_ picks the stopping sound and the playing sound.
    const int stop_sound = music_slot_ ? music_a : music_b;
    const int play_sound = music_slot_ ? music_b : music_a;
    Structs::SoundAutoGen& play_record = SoundRecord(play_sound);
    Structs::SoundAutoGen& stop_record = SoundRecord(stop_sound);
    const std::int32_t play_data = play_record.Id;
    const std::int32_t stop_data = stop_record.Id;
    // The stop record takes the play record's data index and kind.
    stop_record.Id = play_data;
    stop_record.Type = play_record.Type;
    if (sounds_[stop_data] == nullptr) {
        LoadSound(stop_data);
    }
    if (sounds_[play_data] == nullptr) {
        LoadSound(play_data);
    }
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(1);
    vox::VoxEngine::GetEmitterHandles(*sounds_[stop_data], handles.data(), 1);
    const float cursor = vox::VoxEngine::GetPlayCursor(handles[0]);
    Stop(stop_sound, kMusicFadeMs);
    Play(play_sound, true, kMusicFadeMs, kMusicType, false);
    vox::VoxEngine::GetEmitterHandles(*sounds_[play_data], handles.data(), 1);
    vox::VoxEngine::SetPlayCursor(handles[0], cursor);
    music_slot_ = !music_slot_;
}

// 0x36bd78 _ZN15VoxSoundManager9PlayMusicEibbi
// Verified line by line against 0x36bd78..0x36bfec and the disassembly: the body runs only while
// GetSoundVolume(2) >= 0.5, IsDisablingSounds is clear and the sound-allowed byte (0x36be2c, Hex-Rays byte_99F7E0)
// is set: it is Application +0xb4 (the LDRB base is Singleton<Application>::s_inst, 0x99f72c), 1 from the
// Application constructor and set again by Level::_LoadProcess.
// music == -1 clears music_id_ and stops only when stop_if_none. Otherwise,
// when music_id_ (+0x24) already is `music`: JAVA_SOUNDS re-sends the native play with Save_Current_Music_ID,
// and the non-JAVA path takes the record's +4 data index, tests sounds_[data], fills one EmitterHandle with
// VoxEngine::GetEmitterHandles(..., 1) and, when that count (r0, 0x36bf74) is above 0, resumes the emitter
// (VoxEngine::Resume(handle, 0.05f), 0x36bf8c) and returns. On the fall-through, prev_music_id_ (+0x28) takes
// music_id_, the old music is stopped when it differs, music_id_ and music_loop_ (+0x30) are stored, and the
// music is played with type 2 and force (or the native play on the JAVA side). Deviation, named and tracked
// on its own row: the StopMusic call below reaches Stop (0x369fec, batch -0), which still has no
// GetEmitterHandles loop, so a replaced music's emitters are not actually stopped.
void VoxSoundManager::PlayMusic(int music, bool loop, bool stop_if_none, int fade_ms) {
    // GetSoundVolume type 2 is the music group (the binary's literal 2).
    if (GetSoundVolume(2) < 0.5) {
        return;
    }
    if (ReadDebugSwitch("IsDisablingSounds")) {
        return;
    }
    if (!Singleton<Application>::s_inst.unk_b4) {
        return;
    }
    if (music == -1) {
        if (stop_if_none) {
            music_id_ = -1;
            StopMusic(fade_ms);
        }
        return;
    }
    if (music_id_ == music) {
        if (JAVA_SOUNDS) {
            Save_Current_Music_ID = music_id_;
            nativePlaySoundBig(Save_Current_Music_ID, music_volume, loop ? 1 : 0, kChannelMusic);
            return;
        }
        vox::EmitterHandle emitter = EmptyEmitterHandle();
        vox::DataHandle* handle = sounds_[SoundRecord(music).Id];
        if (handle != nullptr && vox::VoxEngine::GetEmitterHandles(*handle, &emitter, 1) > 0) {
            vox::VoxEngine::Resume(emitter, kPlayFade);
            return;
        }
    }
    const int previous = music_id_;
    prev_music_id_ = previous;
    if (previous != music) {
        StopMusic(fade_ms);
    }
    music_id_ = music;
    music_loop_ = loop;
    if (JAVA_SOUNDS) {
        Save_Current_Music_ID = music;
        nativePlaySoundBig(music, music_volume, loop ? 1 : 0, kChannelMusic);
    } else {
        Play(music, loop, fade_ms, kMusicType, true);
    }
}

// 0x36c014 _ZN15VoxSoundManager18SetInSafeZoneMusicEb
// Verified line by line against 0x36c014..0x36c0e8: JAVA_SOUNDS stores in_safe_zone_ (+0x32) and plays the
// level's m_musicSoundId (+0x11c); the non-JAVA in-zone path reads the zone music at Level +0x120 and, when
// it is not negative, sets in_safe_zone_ and plays it only when music_slot_ (+0x31) is set, otherwise the
// out-of-zone path clears in_safe_zone_ and plays m_musicSoundId. The three PlayMusic calls pass loop 1,
// stop_if_none false and fade 2000.
// Deviation, host-necessitated and named: the line-1440 ASSERT(false) branch. At assert level 2 the binary
// runs `*(_DWORD *)v4 = v4;` (0x36c100) with v4 = (unsigned char)JAVA_SOUNDS = 0, i.e. it stores 0 through
// the null address - a deliberate fault that would abort the process - and it prints the message only at
// level 1 (0x36c0bc). Reproducing the fault is pointless on the host, so only the level-1 fprintf is kept;
// at level 2 nothing happens here.
void VoxSoundManager::SetInSafeZoneMusic(bool in_zone) {
    if (JAVA_SOUNDS) {
        in_safe_zone_ = in_zone;
        Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
        PlayMusic(level->m_musicSoundId, true, false, kMusicFadeMs);
    } else if (in_zone) {
        const int zone_music = Singleton<Application>::s_inst.GetCurrentLevel()->unk_120;
        if (zone_music < 0) {
            // ASSERT(false) in VoxSoundManager.cpp:1440. The binary writes through a null pointer at assert
            // level 2 (a deliberate fault), which is not reproduced. Level 1 prints the message.
            if (gAssertLevel == 1) {
                std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "false",
                             "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\VOXSoundManager\\VoxSoundManager.cpp",
                             1440);
            }
        } else {
            const bool slot_set = music_slot_;
            in_safe_zone_ = true;
            if (slot_set) {
                PlayMusic(zone_music, true, false, kMusicFadeMs);
            }
        }
    } else {
        in_safe_zone_ = false;
        Level* level = Singleton<Application>::s_inst.GetCurrentLevel();
        PlayMusic(level->m_musicSoundId, true, false, kMusicFadeMs);
    }
}

// 0x36ca88 _ZN15VoxSoundManager14CreateInstanceEv
// The process-wide manager is built once: operator new(196, 4) (196 = 0xc4 bytes on the target) and the constructor, stored in
// s_instance. The original returns void; the declaration returns the instance (the existing callers drop it).
VoxSoundManager* VoxSoundManager::CreateInstance() {
    if (s_instance == nullptr) {
        s_instance = new VoxSoundManager();
    }
    return s_instance;
}

// 0x36b048 _ZN15VoxSoundManager14DeleteInstanceEv
// The destructor runs on the instance and the block is released (CustomFree). The original does not clear s_instance, so a
// second DeleteInstance would free it twice; the port clears the pointer (deviation, undefined behaviour in the original).
void VoxSoundManager::DeleteInstance() {
    VoxSoundManager* instance = s_instance;
    if (instance != nullptr) {
        s_instance = nullptr;
        delete instance;
    }
}

// 0x3695f4 _ZN15VoxSoundManager15SetLevelRoutingEi
// -1 or the Java sound mode: nothing (the original returns 0). Otherwise the dynamic bus routing file of the level:
// RES_PATH + "data/routing/" + the level list row's routing name (Arrays::LevelList element +0x0c), through
// VoxEngine::SetDynamicBusRouting. The original returns 1; the declared void result drops it (no caller reads it).
void VoxSoundManager::SetLevelRouting(int level) {
    if (level == -1 || JAVA_SOUNDS) {
        return;
    }
    const auto* rows = static_cast<const Structs::LevelDeclaration*>(static_cast<const void*>(Arrays::LevelList::members));
    char path[512];
    std::strcpy(path, RES_PATH);
    std::strcpy(path + std::strlen(path), "data/routing/");
    std::strcat(path, static_cast<const char*>(rows[level].DynamicBusRouting));  // element +0x0c
    vox::VoxEngine::SetDynamicBusRouting(path);
}

// 0x36c2e4 _ZN15VoxSoundManager10InitializeEv
// The iPod playlist flag (+0x33) is cleared, the iPod title string (+0x38) emptied, and the flag cleared again when iOS 3.2 is
// not supported (always false on this platform). The FX and music volumes come from the saved options "VolumeFX" and
// "VolumeMusic" (SetSoundVolume types 1 and 2). The static bus routing file is
// "/app_home/data/routing/template_dhpsn.vrt", 3D general parameter 2 is set to 4. The pack's banks (40 bytes each) are
// counted: more than 8 prints the VOX_NUM_PRIORITY_BANK warning; with two or more, banks 1.. are registered through
// VoxEngine::SetPriorityBank (GetBankInfo gives the three words). Unless Java sounds are on, a high-performance device (or HTC,
// Sharp devices, or multiplayer mode) preloads the "preload_sfx" event: every uid it yields is recorded in preload_ids_ and
// loaded with LoadSound (the isTracingPreload_SFX debug switch is read and ignored, as in the original).
// The original's trailing value is the _DEBUG_OUT result (trace only); the port returns void.
void VoxSoundManager::Initialize() {
    ipod_playlist_set_ = false;
    unk_38.clear();
    if (!Device::IsiOSVersionSupported("3.2")) {
        ipod_playlist_set_ = false;
    }
    SetSoundVolume(1, static_cast<float>(Singleton<Application>::s_inst.GetSavedOption("VolumeFX")));
    SetSoundVolume(2, static_cast<float>(Singleton<Application>::s_inst.GetSavedOption("VolumeMusic")));
    char busRouting[] = "/app_home/data/routing/template_dhpsn.vrt";
    vox::VoxEngine::SetStaticBusRouting(busRouting);
    vox::VoxEngine::Set3DGeneralParameteri(2, 4);
    const int bankCount = sound_pack_.GetBankCount();
    if (bankCount > 8) {
        std::printf("Xml file define %d banks, but only %d are defined in configuration, change VOX_NUM_PRIORITY_BANK to "
                    "match actual bank count\n",
                    bankCount, 8);
    }
    if (bankCount >= 2) {
        for (int bank = 1; bank < sound_pack_.GetBankCount(); ++bank) {
            int field_0c = 0;
            int field_08 = 0;
            vox::PriorityBankBehavior behavior{};
            sound_pack_.GetBankInfo(bank, field_0c, field_08, behavior);
            vox::VoxEngine::SetPriorityBank(bank, field_0c, field_08, behavior);
        }
    }
    if (!JAVA_SOUNDS && (Device::IsHighPerformance() || HTC_DEVICES || SHARP_DEVICES || Is_In_Multiplayer_Mode)) {
        const int eventSize = sound_pack_.GetEventSize("preload_sfx");
        for (int i = 0; i < eventSize; ++i) {
            int uid = 0;
            sound_pack_.GetEventSoundUid("preload_sfx", uid);
            DebugSwitches::s_inst.load();
            (void)DebugSwitches::s_inst.GetSwitch("isTracingPreload_SFX");
            preload_ids_.push_back(uid);
            LoadSound(uid);
        }
    }
}

