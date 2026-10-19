// VoxSoundManager: the game-side sound glue, 0x36921c to 0x36a624 (platform pass).
//
// Each body has two branches. JAVA_SOUNDS (the Android sound mode) forwards to the native sound
// bridge (nativeXxx, declared in sound_manager.hpp). The other branch calls the static
// vox::VoxEngine facade. The binary passes the engine object as the instance argument of those
// calls; the port facade has no instance, so the argument is dropped, and engine_ keeps the null
// checks that the binary makes on *this.
//
// No PARTIAL body is left in this file. The emitter count that vox::VoxEngine::GetEmitterHandles
// returns was the one gap of the batch; it is closed: voxengine.hpp:121 declares it int and
// voxengine.cpp:601 returns the VoxEngineInternal count (0 without an engine), as the binary's
// 0x862548 returns r0. The Arrays::Sounds record lookup (sound id to the data index at +0x4 of the
// Structs::SoundAutoGen record) and the IsReady gate are reproduced, so every assigned row of this
// file now matches its listing.

#include "vox-audio/vox/sound_manager.hpp"

#include <cmath>
#include <cstddef>
#include <cstring>
#include <new>
#include <vector>

#include "dh2/Application.hpp"  // the sounds.zip flag (+0xa8)
#include "dh2/Singleton.hpp"
#include "dh2/Point3D.hpp"  // Stop3D takes a Point3D<float>*
#include "glitch-core-io/io/file_system.hpp"  // getObfuscatedFileName
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "vox-audio/deps/vox_file_system.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/sound_pack_xml.hpp"
#include "vox-audio/vox/voxengine.hpp"
#include "vox-audio/vox/voxutils.hpp"

namespace {

// Group names passed to VoxSoundPackXML::GetGroupMask.
const char kGroupMusic[] = "MUSIC";
const char kGroupSfx[] = "SFX";
const char kGroupVfx[] = "VFX";

// LoadSound places the file under RES_PATH followed by this directory.
const char kSoundDir[] = "data/sounds/";

// The pack file the constructor loads: RES_PATH + kSoundDir + this (the memcpy at 0x36c91c).
const char kSoundsXml[] = "sounds.xml";

// Channel argument of nativeSetVolumeBig: 1 for music, 2 for SFX and VFX.
constexpr int kChannelMusic = 1;
constexpr int kChannelSfxVfx = 2;

// Fade times the binary passes (float constants in the listings).
constexpr float kVolumeFade = 0.05f;
constexpr float kResumeFade = 0.2f;
constexpr float kPauseFade = 0.2f;

// Group mask that addresses every group.
constexpr unsigned int kAllGroups = 0xFFFFFFFFu;

// Argument of nativeResumeSoundBig that resumes every sound.
constexpr int kAllNativeSounds = 9999;

// Emitter slots the binary sets up for GetEmitterHandles: ten 40-byte EmitterHandles on the stack
// (the ARM loop writes 0x28 bytes per slot, ten times).
constexpr int kEmitterSlots = 10;

// Arrays::Sounds element `sound`. members points at element 0 of host Structs::SoundAutoGen records
// (pydata element_table.hpp); the original's 12-byte listing stride is not applied to bytes. +0x4
// (Id) is the sound's data index, the index the callers use for sounds_; +0x8 (Type) is the kind.
Structs::SoundAutoGen& SoundRecord(int sound) {
    return reinterpret_cast<Structs::SoundAutoGen*>(Arrays::Sounds::members)[sound];
}

// The EmitterHandle the binary builds on the stack for every slot: the vtable, the 64-bit id -1 and
// four zero words, which is EmitterHandle(-1, no engine, no handlable, zero stamps).
vox::EmitterHandle EmptyEmitterHandle() {
    return vox::EmitterHandle(-1, nullptr, nullptr, 0, 0);
}

std::vector<vox::EmitterHandle> MakeEmptyHandles(std::size_t count) {
    return std::vector<vox::EmitterHandle>(count, EmptyEmitterHandle());
}

// Destroys a DataHandle that LoadSound allocated: the destructor, then the block.
void DestroyDataHandle(vox::DataHandle* handle) {
    handle->~DataHandle();
    VoxFree(handle);
}

}  // namespace

// 0x36c7b0 _ZN15VoxSoundManagerC1Ev
// 0x36cad0 _ZN15VoxSoundManagerC2Ev (the same body)
// Reconstructed from the ARM listing (tools/decomp_asm.py --address 0x36c7b0), in its order: the member defaults
// (0x36c7dc..0x36c820), the std::string member's block, the embedded VoxSoundPackXML's fields, the "In start..." traces
// (_DEBUG_OUT, logging only, dropped), the sounds.zip archive when the Application's byte at +0xa8 (byte_99F7D4) is set,
// RES_PATH + "data/sounds/" + "sounds.xml" into the pack (LoadXML), the sound count from the pack's table size, the two
// zeroed slot arrays, and last the engine: VoxEngine::GetVoxEngine() into +0x00 and its vtable +0x08 (Initialize).
// Deviations, all named:
//   (a) the two allocations at 0x36c968 and 0x36c998 are `operator new[](4 * count, 4)` in the listing. The port has no
//       allocate-only form of that operator (its four-argument VoxAlloc takes file/function/line), so it stores the block
//       returned by VoxAlloc(size, 4). The size is the listing's: 4 * count bytes.
//   (b) the listing reaches the sound table's size through the embedded pack's raw vector words (+0x64 and +0x68)
//       because the ARM pack object is not typed. The port asks the pack for the same number
//       (VoxSoundPackXML::GetSoundCount, the table vector's size).
//   (c) Initialize is called only when GetVoxEngine returned an engine (the real one never returns null; the test
//       stubs of this category answer null so that the constructor reaches no engine entry point).
//   (d) the sounds.zip archive is attached through FileSystemInterface::SetArchive (the binary calls the same member
//       through vtable +0x10) with the name from glitch::io::CFileSystem::getObfuscatedFileName.
VoxSoundManager::VoxSoundManager() {
    // The listing's member stores. The +0x1C store is sound_count_, which the pack's table size below overwrites. The
    // (begin, end, end_of_storage) triple at +0x0c..+0x14 and the string at +0x38 are C++ containers here.
    engine_ = nullptr;
    unk_04 = nullptr;
    sounds_ = nullptr;
    unk_18 = true;
    sound_count_ = 0;
    music_id_ = -1;
    prev_music_id_ = -1;
    beat_id_ = -1;
    initial_volume_set_ = false;
    music_loop_ = true;
    music_slot_ = true;
    in_safe_zone_ = false;
    ipod_playlist_set_ = false;
    unk_54 = 1000;
    unk_58 = 1000;
    unk_5c = 1.0f;
    ipod_paused_ = 0;

    // The sounds.zip archive, when the Application flag at +0xa8 asks for it.
    if (Singleton<Application>::s_inst.unk_a8) {
        vox::FileSystemInterface::GetInstance()->SetArchive(
            glitch::io::CFileSystem::getObfuscatedFileName("data/sounds/sounds.zip"), true, true, true);
    }

    // RES_PATH + "data/sounds/" + "sounds.xml" (the 512-byte stack buffer at sp+0xC of the listing).
    char path[512];
    std::strcpy(path, RES_PATH);
    std::strcpy(path + std::strlen(path), kSoundDir);
    std::strcat(path, kSoundsXml);
    sound_pack_.LoadXML(path);

    // The sound table's slot count (the listing's +0x64/+0x68 pair).
    sound_count_ = sound_pack_.GetSoundCount();

    // The two slot arrays, allocated and zeroed in the listing's order (+0x04 first, then +0x08).
    // 4 bytes per slot in the original (32-bit pointers); host pointers are 8 bytes wide (first boot: the 4-byte slots made sounds_[i] read the neighbouring
    // slot / heap, and VoxSoundManager::Stop called a virtual on a garbage DataHandle).
    // DEVIATION (VF2 audit): one spare slot. LoadSound's bound is `<=` (original bug, reproduced), so id == sound_count_ writes one
    // slot past the end; the original's 4-byte overflow lands in allocator slack, ours would corrupt the host heap.
    const unsigned int slot_bytes = static_cast<unsigned int>(sizeof(void*)) * (static_cast<unsigned int>(sound_count_) + 1u);
    void* user_slots = VoxAlloc(slot_bytes, static_cast<vox::VoxMemHint>(4));
    unk_04 = user_slots;
    std::memset(user_slots, 0, slot_bytes);
    vox::DataHandle** sound_slots =
        static_cast<vox::DataHandle**>(VoxAlloc(slot_bytes, static_cast<vox::VoxMemHint>(4)));
    sounds_ = sound_slots;
    std::memset(sound_slots, 0, slot_bytes);

    // The engine: VoxEngine::GetVoxEngine() into +0x00, then its vtable +0x08 (Initialize).
    engine_ = vox::VoxEngine::GetVoxEngine();
    if (engine_ != nullptr) {
        engine_->Initialize();
    }
}

// 0x36921c _ZN15VoxSoundManager11UnloadSoundEi
void VoxSoundManager::UnloadSound(int sound) {
    if (JAVA_SOUNDS || sound < 0 || sound >= sound_count_) {
        return;
    }
    vox::DataHandle* handle = sounds_[sound];
    if (handle != nullptr) {
        // The binary calls the deleting destructor through vtable slot +4, then stores
        // JAVA_SOUNDS (0 on this branch) into the slot.
        DestroyDataHandle(handle);
        sounds_[sound] = nullptr;
    }
}

// 0x369298 _ZN15VoxSoundManager15UnloadAllSoundsEv
void VoxSoundManager::UnloadAllSounds() {
    if (JAVA_SOUNDS) {
        return;
    }
    // The binary runs a do-while from 0 while the count is above the index. Same loop.
    for (int sound = 0; sound < sound_count_; ++sound) {
        UnloadSound(sound);
    }
}

// 0x369514 _ZN15VoxSoundManager13SetMusicStateEPKc
// Verified against the Hex-Rays body and the ARM listing: a negative music_id_ (+0x24), or
// JAVA_SOUNDS, returns; the data index at +0x4 of the music id's Structs::SoundAutoGen record
// indexes sounds_ and a null slot returns; one EmitterHandle is built (id -1, the other words 0),
// VoxEngine::GetEmitterHandles(data, handle, 1) fills it, and the state goes to
// VoxEngine::SetInteractiveMusicState(handle, state) only when that count is above 0 (the handle is
// destroyed after either way, which the std::vector does). Deviation named: the reachable
// VoxEngine::SetInteractiveMusicState (0x861928) is itself partial because its target 0x86764c
// skips a null-decoder call on a non-zero data state word (see those two rows).
void VoxSoundManager::SetMusicState(const char* state) {
    if (music_id_ < 0 || JAVA_SOUNDS) {
        return;
    }
    vox::DataHandle* data = sounds_[SoundRecord(music_id_).Id];
    if (data == nullptr) {
        return;
    }
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(1);
    if (vox::VoxEngine::GetEmitterHandles(*data, handles.data(), 1) > 0) {
        vox::VoxEngine::SetInteractiveMusicState(handles[0], state);
    }
}

// 0x3696dc _ZN15VoxSoundManager14IsSoundPlayingEi
// Verified against the Hex-Rays body and the ARM listing: a negative id returns false; JAVA_SOUNDS
// returns nativeIsMediaPlaying(sound) != 0; otherwise sounds_[sound] is read with no bound check
// against sound_count_ (kept as is), a null slot returns false, ten EmitterHandles are filled by
// GetEmitterHandles(data, handles, 10) and the first count of them is tested with
// VoxEngine::IsPlaying - true when one of them plays. The handles are destroyed in reverse, which
// the std::vector does.
bool VoxSoundManager::IsSoundPlaying(int sound) {
    if (sound < 0) {
        return false;
    }
    if (JAVA_SOUNDS) {
        return nativeIsMediaPlaying(sound) != 0;
    }
    vox::DataHandle* data = sounds_[sound];
    if (data == nullptr) {
        return false;
    }
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(kEmitterSlots);
    const int count = vox::VoxEngine::GetEmitterHandles(*data, handles.data(), kEmitterSlots);
    for (int i = 0; i < count; ++i) {
        if (vox::VoxEngine::IsPlaying(handles[i]) != 0) {
            return true;
        }
    }
    return false;
}

// 0x369804 _ZN15VoxSoundManager14IsMusicPlayingEv
// Verified against the Hex-Rays body and the ARM listing: music_id_ == -1 returns false; the music
// id's Structs::SoundAutoGen record gives the data index and a null slot returns false (the
// EmitterHandle is built before that test and destroyed on both paths, as here); the binary checks
// no JAVA_SOUNDS and none is added; GetEmitterHandles(data, handle, 1) then decides - false when the
// count is 0 or less, else VoxEngine::IsPlaying(handle).
bool VoxSoundManager::IsMusicPlaying() {
    if (music_id_ == -1) {
        return false;
    }
    vox::DataHandle* data = sounds_[SoundRecord(music_id_).Id];
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(1);
    if (data == nullptr) {
        return false;
    }
    if (vox::VoxEngine::GetEmitterHandles(*data, handles.data(), 1) <= 0) {
        return false;
    }
    return vox::VoxEngine::IsPlaying(handles[0]) != 0;
}

// 0x3698f0 _ZN15VoxSoundManager12StopAllMusicEi
void VoxSoundManager::StopAllMusic(int fade_ms) {
    if (JAVA_SOUNDS) {
        nativeStopAllBigSound(-1, fade_ms);
    } else {
        int mask = 0;
        sound_pack_.GetGroupMask(kGroupMusic, mask);
        vox::VoxEngine::StopAllEmitters(static_cast<unsigned int>(mask), static_cast<float>(fade_ms));
    }
    prev_music_id_ = music_id_;
    music_id_ = -1;
}

// 0x369990 _ZN15VoxSoundManager13StopAllSoundsEi
void VoxSoundManager::StopAllSounds(int fade_ms) {
    if (JAVA_SOUNDS) {
        nativeStopAllBigSound(-1, fade_ms);
        return;
    }
    if (engine_ != nullptr) {
        vox::VoxEngine::StopAllEmitters(kAllGroups, static_cast<float>(fade_ms) / 1000.0f);
    }
}

// 0x3699fc _ZN15VoxSoundManager9LoadSoundEi
void VoxSoundManager::LoadSound(int sound) {
    if (JAVA_SOUNDS || sound < 0 || sound > sound_count_) {
        return;
    }
    const char* name = nullptr;
    vox::FormatTypes format = {};
    int field_16 = 0;
    int field_15 = 0;
    vox::VoxSourceLoadingFlags flags = {};
    sound_pack_.GetDataSourceInfo(sound, name, format, field_16, field_15, flags);
    // The binary tests the slot again after GetDataSourceInfo; the bound is <= (not <), as in the
    // listing. The slot is written at index sound_count_ when that is the id.
    if (sound <= sound_count_ && sounds_[sound] == nullptr) {
        char path[512];
        std::strcpy(path, RES_PATH);
        std::strcpy(path + std::strlen(path), kSoundDir);
        std::strcat(path, name);
        // operator new(40, MemoryHintState 4) in the binary. The port's VoxAlloc takes its hint as
        // VoxMemHint, which names only the default (0); 4 is passed through as the binary has it.
        // The block is host-sized (sizeof(DataHandle)), not 40 bytes.
        void* block = VoxAlloc(sizeof(vox::DataHandle), static_cast<vox::VoxMemHint>(4));
        sounds_[sound] = new (block) vox::DataHandle(vox::VoxUtils::LoadDataSourceFromFileEx(
            path, static_cast<int>(format), static_cast<int>(flags), field_16));
    }
}

// 0x369b38 _ZN15VoxSoundManager14GetSoundVolumeEi
float VoxSoundManager::GetSoundVolume(int type) {
    if (JAVA_SOUNDS) {
        return 1.0f;
    }
    int group = 0;
    if (type == 2) {
        sound_pack_.GetGroupMask(kGroupMusic, group);
        return vox::VoxEngine::GetGroupGain(group) * 100.0f;
    }
    if (type == 3) {
        sound_pack_.GetGroupMask(kGroupVfx, group);
        return vox::VoxEngine::GetGroupGain(group) * 100.0f;
    }
    // Type 1 reads the SFX group. Any other type reads group 0 (the binary's JAVA_SOUNDS value).
    if (type == 1) {
        sound_pack_.GetGroupMask(kGroupSfx, group);
    }
    return vox::VoxEngine::GetGroupGain(group) * 100.0f;
}

// 0x369c2c _ZN15VoxSoundManager16SetInitialVolumeEfff
// The listing's Java branch stores the music and SFX values in the globals and passes them with
// channels 1 and 2 (the Hex-Rays view drops those two arguments).
void VoxSoundManager::SetInitialVolume(float music, float sfx, float vfx) {
    if (JAVA_SOUNDS) {
        sfx_vfx_volume = sfx;
        music_volume = music;
        nativeSetVolumeBig(music_id_, music, kChannelMusic);
        nativeSetVolumeBig(music_id_, sfx_vfx_volume, kChannelSfxVfx);
        return;
    }
    if (initial_volume_set_) {
        return;
    }
    int mask = 0;
    sound_pack_.GetGroupMask(kGroupMusic, mask);
    vox::VoxEngine::SetGroupGain(static_cast<unsigned int>(mask), music / 100.0f, kVolumeFade);
    sound_pack_.GetGroupMask(kGroupSfx, mask);
    vox::VoxEngine::SetGroupGain(static_cast<unsigned int>(mask), sfx / 100.0f, kVolumeFade);
    sound_pack_.GetGroupMask(kGroupVfx, mask);
    vox::VoxEngine::SetGroupGain(static_cast<unsigned int>(mask), vfx / 100.0f, kVolumeFade);
    initial_volume_set_ = true;
}

// 0x369da0 _ZN15VoxSoundManager14SetSoundVolumeEif
// As in SetInitialVolume, the Java branch passes the volume with channel 1 (music) or 2 (SFX, VFX).
void VoxSoundManager::SetSoundVolume(int type, float volume) {
    if (JAVA_SOUNDS) {
        if (type == 2) {
            music_volume = volume;
            nativeSetVolumeBig(music_id_, volume, kChannelMusic);
        } else if (type == 3 || type == 1) {
            sfx_vfx_volume = volume;
            nativeSetVolumeBig(music_id_, volume, kChannelSfxVfx);
        }
        return;
    }
    unsigned int group = 0;  // the binary's default is the JAVA_SOUNDS value, 0
    int mask = 0;
    switch (type) {
        case 2:
            sound_pack_.GetGroupMask(kGroupMusic, mask);
            group = static_cast<unsigned int>(mask);
            break;
        case 3:
            sound_pack_.GetGroupMask(kGroupVfx, mask);
            group = static_cast<unsigned int>(mask);
            break;
        case 1:
            sound_pack_.GetGroupMask(kGroupSfx, mask);
            group = static_cast<unsigned int>(mask);
            break;
        default:
            break;
    }
    vox::VoxEngine::SetGroupGain(group, volume / 100.0f, kVolumeFade);
}

// 0x369ee8 _ZN15VoxSoundManager15GetMasterVolumeEv
// The Java branch returns 0x3f800000, the bit pattern of 1.0f, so the result is a float.
float VoxSoundManager::GetMasterVolume() {
    if (JAVA_SOUNDS) {
        return 1.0f;
    }
    return vox::VoxEngine::GetMasterGain();
}

// 0x369f1c _ZN15VoxSoundManager15SetMasterVolumeEf
void VoxSoundManager::SetMasterVolume(float volume) {
    if (!JAVA_SOUNDS) {
        vox::VoxEngine::SetMasterGain(volume, kVolumeFade);
    }
}

// 0x369f50 _ZN15VoxSoundManager14SetListenerPosERKN6glitch4core8vector3dIfEES5_S5_iif
void VoxSoundManager::SetListenerPos(const glitch::core::vector3d<float>& pos,
                                     const glitch::core::vector3d<float>& front,
                                     const glitch::core::vector3d<float>& up,
                                     int a5, int a6, float a7) {
    if (JAVA_SOUNDS) {
        return;
    }
    vox::VoxEngine::Set3DListenerPosition(pos.X, pos.Y, pos.Z);
    vox::VoxEngine::Set3DListenerOrientation(front.X, front.Y, front.Z, up.X, up.Y, up.Z);
    unk_5c = a7;
    unk_54 = a5;
    unk_58 = a6;
}

// 0x369fec _ZN15VoxSoundManager4StopEii
// Verified against the Hex-Rays body and the ARM listing: a negative id returns; JAVA_SOUNDS calls
// nativeStopSoundBig(sound); otherwise the data index at +0x4 of the sound's Structs::SoundAutoGen
// record indexes sounds_, a null slot returns, VoxEngine::IsReady(data) must hold, ten
// EmitterHandles are filled by GetEmitterHandles(data, handles, 10) and each of the first count is
// stopped with VoxEngine::Stop(handle, fade_ms / 1000.0f) (the fade is computed before the fill,
// like the listing's i2f/1000.0f). The handles are destroyed in reverse, which the std::vector
// does.
void VoxSoundManager::Stop(int sound, int fade_ms) {
    if (sound < 0) {
        return;
    }
    if (JAVA_SOUNDS) {
        nativeStopSoundBig(sound);
        return;
    }
    vox::DataHandle* data = sounds_[SoundRecord(sound).Id];
    if (data == nullptr) {
        return;
    }
    if (vox::VoxEngine::IsReady(*data) == 0) {
        return;
    }
    const float fade = static_cast<float>(fade_ms) / 1000.0f;
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(kEmitterSlots);
    const int count = vox::VoxEngine::GetEmitterHandles(*data, handles.data(), kEmitterSlots);
    for (int i = 0; i < count; ++i) {
        vox::VoxEngine::Stop(handles[i], fade);
    }
}

// 0x36a1a0 _ZN15VoxSoundManager9StopMusicEi
// Hex-Rays fails on this row (from 0x36a1d8), so the body was re-derived from the ARM listing at
// 0x36a1a0 (py -3 tools/decomp_asm.py --address 0x36a1a0): music_id_ (+0x24) is -1 returns;
// JAVA_SOUNDS clear calls Stop(music_id_, fade_ms); set stores -1 in Save_Current_Music_ID and calls
// nativeStopSoundBig(music_id_); both paths then store prev_music_id_ = music_id_ and
// music_id_ = -1 (loc_36A1DC loads +0x24 before the two stores). The Ghidra export agrees.
void VoxSoundManager::StopMusic(int fade_ms) {
    if (music_id_ == -1) {
        return;
    }
    if (!JAVA_SOUNDS) {
        Stop(music_id_, fade_ms);
    } else {
        Save_Current_Music_ID = -1;
        nativeStopSoundBig(music_id_);
    }
    prev_music_id_ = music_id_;
    music_id_ = -1;
}

// 0x36a218 _ZN15VoxSoundManager6Stop3DEiiP7Point3DIfEf
// Verified against the Hex-Rays body and the ARM listing (the loop at 0x36a338 to 0x36a414): a
// negative id returns; JAVA_SOUNDS calls nativeStopSoundBig(sound); otherwise the data index at
// +0x4 of the sound's Structs::SoundAutoGen record indexes sounds_, a null slot returns,
// VoxEngine::IsReady(data) must hold, the fade (fade_ms / 1000.0f) is computed, ten EmitterHandles
// are filled by GetEmitterHandles(data, handles, 10) and each of the first count is stopped with
// VoxEngine::Stop(handle, fade): with a null pos every handle is stopped, otherwise the handle's
// position comes from VoxEngine::Get3DEmitterPosition(handle, x, y, z) and the handle is stopped
// when radius < the Euclidean distance (__aeabi_f2d, sqrt, __aeabi_d2f in the listing). The third
// parameter is the original Point3D<float>* (mangles P7Point3DIfE).
void VoxSoundManager::Stop3D(int sound, int fade_ms, Point3D<float>* pos, float radius) {
    if (sound < 0) {
        return;
    }
    if (JAVA_SOUNDS) {
        nativeStopSoundBig(sound);
        return;
    }
    vox::DataHandle* data = sounds_[SoundRecord(sound).Id];
    if (data == nullptr) {
        return;
    }
    if (vox::VoxEngine::IsReady(*data) == 0) {
        return;
    }
    const float fade = static_cast<float>(fade_ms) / 1000.0f;
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(kEmitterSlots);
    const int count = vox::VoxEngine::GetEmitterHandles(*data, handles.data(), kEmitterSlots);
    for (int i = 0; i < count; ++i) {
        if (pos != nullptr) {
            float x = 0.0f;
            float y = 0.0f;
            float z = 0.0f;
            vox::VoxEngine::Get3DEmitterPosition(handles[i], x, y, z);
            const float dx = x - pos->X;
            const float dy = y - pos->Y;
            const float dz = z - pos->Z;
            const float distance =
                static_cast<float>(std::sqrt(static_cast<double>((dx * dx + dy * dy) + dz * dz)));
            if (!(radius < distance)) {
                continue;
            }
        }
        vox::VoxEngine::Stop(handles[i], fade);
    }
}

// 0x36a470 _ZN15VoxSoundManager6ResumeEi
// Verified against the Hex-Rays body and the ARM listing: a negative id returns; JAVA_SOUNDS calls
// nativeResumeSoundBig(sound); otherwise the data index at +0x4 of the sound's Structs::SoundAutoGen
// record indexes sounds_, a null slot returns (there is no IsReady gate in the listing and none is
// added), ten EmitterHandles are filled by GetEmitterHandles(data, handles, 10) and each of the
// first count is resumed with VoxEngine::Resume(handle, 0.05f) (the float constant 0x3d4ccccd).
void VoxSoundManager::Resume(int sound) {
    if (sound < 0) {
        return;
    }
    if (JAVA_SOUNDS) {
        nativeResumeSoundBig(sound);
        return;
    }
    vox::DataHandle* data = sounds_[SoundRecord(sound).Id];
    if (data == nullptr) {
        return;
    }
    std::vector<vox::EmitterHandle> handles = MakeEmptyHandles(kEmitterSlots);
    const int count = vox::VoxEngine::GetEmitterHandles(*data, handles.data(), kEmitterSlots);
    for (int i = 0; i < count; ++i) {
        vox::VoxEngine::Resume(handles[i], 0.05f);
    }
}

// 0x36a590 _ZN15VoxSoundManager15ResumeAllSoundsEv
void VoxSoundManager::ResumeAllSounds() {
    if (JAVA_SOUNDS) {
        nativeResumeSoundBig(kAllNativeSounds);
        if (Resume_Sound_Interrupt) {
            Resume_Sound_Interrupt = false;
            if (Save_Current_Music_ID != -1) {
                nativeResumeSoundBig(Save_Current_Music_ID);
            }
        }
    } else if (engine_ != nullptr) {
        vox::VoxEngine::ResumeAllEmitters(kAllGroups, kResumeFade);
    }
}

// 0x36a624 _ZN15VoxSoundManager14PauseAllSoundsEv
void VoxSoundManager::PauseAllSounds() {
    if (!JAVA_SOUNDS && engine_ != nullptr) {
        vox::VoxEngine::PauseAllEmitters(kAllGroups, kPauseFade);
    }
}
