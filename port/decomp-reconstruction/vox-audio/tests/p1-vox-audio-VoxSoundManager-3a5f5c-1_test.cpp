// Tests for the VoxSoundManager bodies of batch p1-vox-audio-VoxSoundManager-3a5f5c-1.
// The engine facade, the sound pack, the native bridge, the game singletons and the first batch's
// members are stubs here. They record their calls, so the test runs without the rest of the engine.
// Build: bash tools/trackb/check_tu.sh --test <this file> port/decomp-reconstruction/vox-audio/src/p1-vox-audio-VoxSoundManager-3a5f5c-1.cpp
//        (with port/decomp-reconstruction/vox-audio/src/random48.cpp, for vox::Lrand48)
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <initializer_list>
#include <new>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/global/net_singletons.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_00.hpp"
#include "vox-audio/vox/engine_handles.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/random48.hpp"
#include "vox-audio/vox/sound_manager.hpp"
#include "vox-audio/vox/voxengine.hpp"

// ---- Game globals (defined by the globals batches in the game build).
bool JAVA_SOUNDS = false;
bool Resume_Sound_Interrupt = false;
int Save_Current_Music_ID = -1;
float music_volume = 0.0f;
float sfx_vfx_volume = 0.0f;
// gAssertLevel is core-platform's (core-platform/src/memory.cpp, value 0) and comes from the link.
std::uint8_t* Arrays::Sounds::members = nullptr;
bool MenuBase::s_igmOpened = false;

namespace {

int g_failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__, \
                         __LINE__, #cond);                             \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

struct Call {
    std::string name;
    std::vector<double> args;
};

std::vector<Call> g_calls;
int g_destroyed = 0;
bool g_onlineGame = false;  // GetOnlineGameFlag: COnline +0x05 (isOnlineGame_), false = offline
int g_emitterHandles = 0;   // the count VoxEngine::GetEmitterHandles reports (0 = no live emitter)

// Values the stubs return.
int g_uid = 7;            // GetEmitterInfo: emitter uid
int g_group = 5;          // GetEmitterInfo: group
int g_type = 2;           // GetEmitterInfo: Vox3DSoundType (0 none, 1 plain, 2 relative)
bool g_loop = true;       // GetEmitterInfo: flag
const char* g_dsp = "dsp";
int g_bank = 6;           // GetDataSourceInfo: field_15, the priority bank
int g_event_uid = 4;      // GetEventSoundUid
int g_group_pitched = 99;     // GetGroupUid("sfx_3D_pitched")
int g_group_pitched_rel = 98; // GetGroupUid("sfx_3D_pitched_relative")
int g_saved_option = 80;      // Application::GetSavedOption

// Listener and emitter the orientation and position stubs report.
float g_front[3] = {0.0f, 0.0f, 1.0f};
float g_up[3] = {0.0f, 1.0f, 0.0f};
float g_listener[3] = {1.0f, 1.0f, 1.0f};
float g_emitter[3] = {2.0f, 3.0f, 5.0f};

void Rec(const char* name, std::initializer_list<double> args = {}) {
    g_calls.push_back(Call{name, std::vector<double>(args)});
}

size_t CountCalls(const char* name) {
    size_t n = 0;
    for (const Call& c : g_calls) {
        if (c.name == name) {
            ++n;
        }
    }
    return n;
}

// The last recorded call with this name, or nullptr.
const Call* LastCall(const char* name) {
    for (size_t i = g_calls.size(); i-- > 0;) {
        if (g_calls[i].name == name) {
            return &g_calls[i];
        }
    }
    return nullptr;
}

// Index of the first recorded call with this name, or g_calls.size() when there is none.
size_t FirstCallIndex(const char* name) {
    for (size_t i = 0; i < g_calls.size(); ++i) {
        if (g_calls[i].name == name) {
            return i;
        }
    }
    return g_calls.size();
}

// True when a call with this name and these arguments was recorded (floats within 1e-4).
bool HasCall(const char* name, std::initializer_list<double> args) {
    for (const Call& c : g_calls) {
        if (c.name != name || c.args.size() != args.size()) {
            continue;
        }
        bool same = true;
        size_t i = 0;
        for (double a : args) {
            if (std::fabs(c.args[i++] - a) > 1e-4) {
                same = false;
                break;
            }
        }
        if (same) {
            return true;
        }
    }
    return false;
}

bool Near(double a, double b) { return std::fabs(a - b) < 1e-4; }

// ---- The Arrays::Sounds table. pydata-accessors owns it (w7_arrays_00.cpp), which this test does not
// link; the table is the members pointer the batch reads when it turns a sound id into a data index
// (the record's +0x4). Same host array of Structs::SoundAutoGen the first batch's test uses.
constexpr int kSoundRecords = 16;
alignas(16) unsigned char g_sound_records[sizeof(Structs::SoundAutoGen) * kSoundRecords];

// Points record `sound` at data index `index` of the manager's sounds_ array.
void SetRecordDataIndex(int sound, int index) {
    reinterpret_cast<Structs::SoundAutoGen*>(g_sound_records)[sound].Id = index;
}

void ResetSoundRecords() {
    std::memset(g_sound_records, 0, sizeof(g_sound_records));
    Arrays::Sounds::members = g_sound_records;
}

void ResetState() {
    g_calls.clear();
    g_destroyed = 0;
    JAVA_SOUNDS = false;
    Save_Current_Music_ID = -1;
    music_volume = 0.0f;
    sfx_vfx_volume = 0.0f;
    Singleton<Application>::s_inst.unk_b4 = true;
    g_onlineGame = false;
    MenuBase::s_igmOpened = false;
    g_emitterHandles = 0;
    ResetSoundRecords();
    g_type = 2;
    g_group = 5;
    g_front[0] = 0.0f;
    g_front[1] = 0.0f;
    g_front[2] = 1.0f;
    g_up[0] = 0.0f;
    g_up[1] = 1.0f;
    g_up[2] = 0.0f;
    g_listener[0] = 1.0f;
    g_listener[1] = 1.0f;
    g_listener[2] = 1.0f;
    g_emitter[0] = 2.0f;
    g_emitter[1] = 3.0f;
    g_emitter[2] = 5.0f;
}

// A DataHandle allocated the way LoadSound allocates one, so the release path can free it.
vox::DataHandle* MakeHandle() {
    void* mem = VoxAlloc(sizeof(vox::DataHandle), vox::kVoxMemHintDefault);
    return new (mem) vox::DataHandle(1, nullptr, nullptr, 0, 0);
}

// A sounds_ table of `count` entries, allocated with malloc so the destructor's CustomFree can free it.
vox::DataHandle** MakeSoundTable(int count) {
    auto** table = static_cast<vox::DataHandle**>(std::malloc(sizeof(vox::DataHandle*) * count));
    for (int i = 0; i < count; ++i) {
        table[i] = nullptr;
    }
    return table;
}

// Destroys a handle that the test still owns (the destructor of VoxSoundManager does not reach it).
void FreeHandle(vox::DataHandle* handle) {
    if (handle != nullptr) {
        handle->~DataHandle();
        VoxFree(handle);
    }
}

// The position used by the play tests.
glitch::core::vector3d<float> TestPos() {
    return glitch::core::vector3d<float>{2.0f, 3.0f, 5.0f};
}

// Common setup of a manager with one loaded sound at index 0 (the data index the sound record names).
void SetUpOneSound(VoxSoundManager& m) {
    m.sound_count_ = 8;
    m.sounds_ = MakeSoundTable(8);
    m.sounds_[0] = MakeHandle();
}

void TearDownSounds(VoxSoundManager& m) {
    for (int i = 0; i < m.sound_count_; ++i) {
        FreeHandle(m.sounds_[i]);
        m.sounds_[i] = nullptr;
    }
}

void TestRelative3D() {
    ResetState();
    VoxSoundManager m;
    SetUpOneSound(m);
    m.unk_5c = 0.75f;
    m.unk_54 = 11;
    m.unk_58 = 12;
    g_type = 2;
    m.PlaySoundPackSound(0, nullptr, static_cast<vox::FormatTypes>(0), 0, 6,
                         static_cast<vox::VoxSourceLoadingFlags>(0), TestPos(), 0.5f, 0.25f);
    CHECK(HasCall("SetPriorityBankId", {6}));
    CHECK(HasCall("Set3DEmitterPosition", {2, 3, 5}));       // the raw position first
    CHECK(HasCall("Set3DEmitterParameterf", {2, 0.5}));
    CHECK(HasCall("Set3DEmitterParameterf", {1, 0.25}));
    CHECK(HasCall("Set3DEmitterParameterf", {3, 0.75}));
    // Type 2 sets 3D parameter 0 to 1 once, before it reads the listener orientation (loc_36AB50).
    CHECK(HasCall("Set3DEmitterParameteri", {0, 1}));
    CHECK(CountCalls("Set3DEmitterParameteri") == 1);
    CHECK(FirstCallIndex("Set3DEmitterParameteri") < FirstCallIndex("Get3DListenerOrientation"));
    CHECK(CountCalls("Get3DListenerOrientation") == 1);
    // Front (0,0,1), up (0,1,0): side = (-1,0,0), top = (0,1,0), so d = (1,2,4) maps to (-1,2,4).
    CHECK(CountCalls("Set3DEmitterPosition") == 2);
    const Call* last = LastCall("Set3DEmitterPosition");
    CHECK(last != nullptr);
    if (last != nullptr) {
        CHECK(Near(last->args[0], -1.0));
        CHECK(Near(last->args[1], 2.0));
        CHECK(Near(last->args[2], 4.0));
    }
    CHECK(HasCall("SetGroup", {5}));
    CHECK(HasCall("Play", {1, 0.05}));
    CHECK(HasCall("CreateEmitter", {7}));
    CHECK(CountCalls("GetSoundVolume") == 0);
    TearDownSounds(m);
}

void TestRelativeRotated() {
    // Front (1,0,0), up (0,1,0): side = (0,0,1), top = (0,1,0). d = (2,3,5) - (1,1,1) = (1,2,4).
    // Expected relative position: (dot(side,d), dot(top,d), dot(front,d)) = (4, 2, 1).
    ResetState();
    VoxSoundManager m;
    SetUpOneSound(m);
    g_front[0] = 1.0f;
    g_front[1] = 0.0f;
    g_front[2] = 0.0f;
    g_type = 2;
    m.PlaySoundPackSound(0, nullptr, static_cast<vox::FormatTypes>(0), 0, 6,
                         static_cast<vox::VoxSourceLoadingFlags>(0), TestPos(), -1.0f, -1.0f);
    const Call* last = LastCall("Set3DEmitterPosition");
    CHECK(last != nullptr);
    if (last != nullptr) {
        CHECK(Near(last->args[0], 4.0));
        CHECK(Near(last->args[1], 2.0));
        CHECK(Near(last->args[2], 1.0));
    }
    // A negative param2 or param1 takes the unk_54 and unk_58 members instead.
    CHECK(HasCall("Set3DEmitterParameterf", {2, 0}));
    CHECK(HasCall("Set3DEmitterParameterf", {1, 0}));
    TearDownSounds(m);
}

void TestPlainAndTypeZero() {
    ResetState();
    VoxSoundManager m;
    SetUpOneSound(m);
    m.unk_54 = 11;
    m.unk_58 = 12;
    // Type 1: the raw position, and the members stand in for negative parameters.
    g_type = 1;
    m.PlaySoundPackSound(0, nullptr, static_cast<vox::FormatTypes>(0), 0, 6,
                         static_cast<vox::VoxSourceLoadingFlags>(0), TestPos(), -1.0f, -1.0f);
    CHECK(HasCall("Set3DEmitterPosition", {2, 3, 5}));
    CHECK(HasCall("Set3DEmitterParameterf", {2, 11}));
    CHECK(HasCall("Set3DEmitterParameterf", {1, 12}));
    CHECK(CountCalls("Get3DListenerOrientation") == 0);
    // Type 0: no position, the flag parameter 0 is set to 1 instead.
    ResetState();
    g_type = 0;
    m.PlaySoundPackSound(0, nullptr, static_cast<vox::FormatTypes>(0), 0, 6,
                         static_cast<vox::VoxSourceLoadingFlags>(0), TestPos(), 0.5f, 0.25f);
    CHECK(HasCall("Set3DEmitterParameteri", {0, 1}));
    CHECK(CountCalls("Set3DEmitterPosition") == 0);
    CHECK(CountCalls("Set3DEmitterParameterf") == 1);  // parameter 3 only
    TearDownSounds(m);
}

void TestPitchedVolume() {
    ResetState();
    VoxSoundManager m;
    SetUpOneSound(m);
    g_type = 1;
    g_group = 99;  // sfx_3D_pitched
    vox::Srand48(12345);
    const int r = vox::Lrand48() % 123;
    vox::Srand48(12345);
    m.PlaySoundPackSound(0, nullptr, static_cast<vox::FormatTypes>(0), 0, 6,
                         static_cast<vox::VoxSourceLoadingFlags>(0), TestPos(), 0.5f, 0.25f);
    const double expected = static_cast<double>(static_cast<float>(
        static_cast<double>(g_saved_option) * (static_cast<double>(r) * 0.001 + 0.96)));
    const Call* volume = LastCall("SetSoundVolume");
    CHECK(volume != nullptr);
    if (volume != nullptr) {
        CHECK(Near(volume->args[0], 99));
        CHECK(std::fabs(volume->args[1] - expected) < 1e-3);
    }
    CHECK(HasCall("GetSavedOption", {}) || LastCall("GetSavedOption") != nullptr);
    TearDownSounds(m);
}

void TestPlayEvent() {
    ResetState();
    VoxSoundManager m;
    SetUpOneSound(m);
    m.sounds_[4] = MakeHandle();  // the event's sound uid
    g_type = 1;
    const int result = m.PlayEvent(3, TestPos(), 0.5f, 0.25f);
    CHECK(result == 0);
    CHECK(HasCall("SetPriorityBankId", {6}));  // field_15 from GetDataSourceInfo
    CHECK(HasCall("CreateEmitter", {7}));
    CHECK(CountCalls("nativePlaySoundBig") == 0);
    TearDownSounds(m);
}

void TestReleaseLvlSounds() {
    ResetState();
    VoxSoundManager m;
    m.sound_count_ = 4;
    m.sounds_ = MakeSoundTable(4);
    m.sounds_[0] = MakeHandle();
    m.sounds_[1] = MakeHandle();  // listed as preload: kept
    m.sounds_[2] = nullptr;
    m.sounds_[3] = MakeHandle();
    m.preload_ids_.push_back(1);
    vox::DataHandle* kept = m.sounds_[1];
    m.ReleaseLvlSounds();
    CHECK(m.sounds_[0] == nullptr);
    CHECK(m.sounds_[1] == kept);
    CHECK(m.sounds_[3] == nullptr);
    CHECK(g_destroyed == 2);
    // The release traces the preload switch once per released sound.
    CHECK(CountCalls("DebugSwitches.GetSwitch.isTracingPreload_SFX") == 2);
    FreeHandle(kept);
    m.sounds_[1] = nullptr;
}

void TestDestructorNative() {
    ResetState();
    {
        VoxSoundManager m;
        m.unk_04 = std::malloc(8);
        m.sounds_ = MakeSoundTable(2);
    }
    CHECK(CountCalls("UnloadAllSounds") == 1);
    CHECK(CountCalls("DestroyVoxEngine") == 1);
}

void TestDestructorJava() {
    ResetState();
    JAVA_SOUNDS = true;
    {
        VoxSoundManager m;
    }
    CHECK(CountCalls("UnloadAllSounds") == 0);
    CHECK(CountCalls("DestroyVoxEngine") == 0);
    JAVA_SOUNDS = false;
}

void TestJavaForwarders() {
    ResetState();
    JAVA_SOUNDS = true;
    sfx_vfx_volume = 0.5f;
    music_volume = 0.75f;
    VoxSoundManager m;

    m.Pause(3);
    CHECK(HasCall("nativePauseSoundBig", {3}));

    m.music_id_ = 5;
    m.PauseMusic();
    CHECK(HasCall("nativePauseSoundBig", {5}));

    m.PlayEvent(2, TestPos(), 0.5f, 0.25f);
    CHECK(HasCall("nativePlaySoundBig", {2, 0.5, 0, 2}));

    const int result = m.PlaySoundPackSound(0, nullptr, static_cast<vox::FormatTypes>(0), 0, 6,
                                            static_cast<vox::VoxSourceLoadingFlags>(0), TestPos(), 0.5f, 0.25f);
    CHECK(result == 0);
    CHECK(CountCalls("CreateEmitter") == 0);

    m.Play(4, true, 1000, 2, false);
    CHECK(HasCall("nativePlaySoundBig", {4, 0.5, 1, 2}));

    // PlayMusic with no music playing: the old id is stopped (nothing to stop here), and the native
    // player gets the new id on the music channel. Save_Current_Music_ID keeps it for interrupts.
    m.music_id_ = -1;
    m.PlayMusic(7, true, false, 2000);
    CHECK(Save_Current_Music_ID == 7);
    CHECK(HasCall("nativePlaySoundBig", {7, 0.75, 1, 1}));
    CHECK(m.music_id_ == 7);
    CHECK(m.prev_music_id_ == -1);
    JAVA_SOUNDS = false;
}

void TestPauseHandles() {
    // Pause (0x36a664): the count GetEmitterHandles returns is the bound of the VoxEngine::Pause loop.
    ResetState();
    VoxSoundManager m;
    SetUpOneSound(m);
    SetRecordDataIndex(0, 0);  // sound 0 -> sounds_[0]

    m.Pause(0);  // no live emitter: the fill happens, the loop does not
    CHECK(HasCall("GetEmitterHandles", {10}));
    CHECK(CountCalls("Pause") == 0);

    g_emitterHandles = 3;
    m.Pause(0);
    CHECK(CountCalls("Pause") == 3);
    CHECK(HasCall("Pause", {0.05}));
    // An empty slot returns before the fill (sounds_[record.Id] is null).
    SetRecordDataIndex(1, 1);
    const size_t fills = CountCalls("GetEmitterHandles");
    m.Pause(1);
    CHECK(CountCalls("GetEmitterHandles") == fills);
    CHECK(CountCalls("Pause") == 3);

    // A negative id returns at once.
    m.Pause(-1);
    CHECK(CountCalls("GetEmitterHandles") == fills);
    TearDownSounds(m);
}

void TestPlayMusicResume() {
    // PlayMusic (0x36bd78), the music_id_ == music branch: a live emitter is resumed with 0.05 and the
    // function returns before music_loop_ is stored; without one the music is started again.
    ResetState();
    VoxSoundManager m;
    SetUpOneSound(m);
    SetRecordDataIndex(3, 0);  // sound 3 -> sounds_[0]
    m.music_id_ = 3;
    m.music_loop_ = false;

    g_emitterHandles = 1;
    m.PlayMusic(3, true, false, 2000);
    CHECK(CountCalls("Resume") == 1);
    CHECK(HasCall("Resume", {0.05}));
    CHECK(HasCall("GetEmitterHandles", {1}));
    CHECK(CountCalls("Play") == 0);
    CHECK(m.music_loop_ == false);  // the resume branch returned before the store

    g_calls.clear();
    g_emitterHandles = 0;
    m.PlayMusic(3, false, false, 2000);
    CHECK(CountCalls("Resume") == 0);
    CHECK(CountCalls("Play") == 1);
    CHECK(m.music_loop_ == false);
    TearDownSounds(m);
}

void TestOnlineGate() {
    // Play's gate (0x36ba40): online with the in-game menu open a non-forced play is dropped, force
    // passes, and either half being clear lets it through. JAVA mode makes the call observable.
    ResetState();
    JAVA_SOUNDS = true;
    sfx_vfx_volume = 0.5f;
    VoxSoundManager m;
    g_onlineGame = true;
    MenuBase::s_igmOpened = true;

    m.Play(4, true, 1000, 2, false);
    CHECK(CountCalls("nativePlaySoundBig") == 0);
    m.Play(4, true, 1000, 2, true);
    CHECK(HasCall("nativePlaySoundBig", {4, 0.5, 1, 2}));

    g_calls.clear();
    MenuBase::s_igmOpened = false;  // online, no in-game menu
    m.Play(4, true, 1000, 2, false);
    CHECK(HasCall("nativePlaySoundBig", {4, 0.5, 1, 2}));

    g_calls.clear();
    g_onlineGame = false;  // offline
    MenuBase::s_igmOpened = true;
    m.Play(4, true, 1000, 2, false);
    CHECK(HasCall("nativePlaySoundBig", {4, 0.5, 1, 2}));
    JAVA_SOUNDS = false;
}

void TestSoundAllowedGate() {
    // Application +0xb4 (0x36be2c, Hex-Rays byte_99F7E0): PlayMusic does nothing while the sound-allowed byte is clear.
    ResetState();
    JAVA_SOUNDS = true;
    music_volume = 0.75f;
    VoxSoundManager m;
    m.music_id_ = -1;

    Singleton<Application>::s_inst.unk_b4 = false;
    m.PlayMusic(7, true, false, 2000);
    CHECK(m.music_id_ == -1);
    CHECK(Save_Current_Music_ID == -1);
    CHECK(CountCalls("nativePlaySoundBig") == 0);

    Singleton<Application>::s_inst.unk_b4 = true;
    m.PlayMusic(7, true, false, 2000);
    CHECK(m.music_id_ == 7);
    CHECK(HasCall("nativePlaySoundBig", {7, 0.75, 1, 1}));
    JAVA_SOUNDS = false;
}

}  // namespace

// ---- Stubs for the engine facade (vox::VoxEngine, static), recording their calls.
namespace vox {

int VoxEngine::IsReady(DataHandle& data) {
    (void)data;
    Rec("IsReady");
    return 1;
}

void VoxEngine::SetPriorityBankId(DataHandle& data, int bank) {
    (void)data;
    Rec("SetPriorityBankId", {static_cast<double>(bank)});
}

EmitterHandle VoxEngine::CreateEmitter(DataHandle& data, int flags, void* user) {
    (void)data;
    (void)user;
    Rec("CreateEmitter", {static_cast<double>(flags)});
    return EmitterHandle(42, nullptr, nullptr, 0, 0);
}

void VoxEngine::Set3DEmitterPosition(EmitterHandle& emitter, float x, float y, float z) {
    (void)emitter;
    Rec("Set3DEmitterPosition", {x, y, z});
}

void VoxEngine::Set3DEmitterParameterf(EmitterHandle& emitter, int param, float value) {
    (void)emitter;
    Rec("Set3DEmitterParameterf", {static_cast<double>(param), value});
}

void VoxEngine::Set3DEmitterParameteri(EmitterHandle& emitter, int param, int value) {
    (void)emitter;
    Rec("Set3DEmitterParameteri", {static_cast<double>(param), static_cast<double>(value)});
}

void VoxEngine::Get3DListenerOrientation(float& fx, float& fy, float& fz, float& ux, float& uy, float& uz) {
    Rec("Get3DListenerOrientation");
    fx = g_front[0];
    fy = g_front[1];
    fz = g_front[2];
    ux = g_up[0];
    uy = g_up[1];
    uz = g_up[2];
}

void VoxEngine::Get3DEmitterPosition(EmitterHandle& emitter, float& x, float& y, float& z) {
    (void)emitter;
    Rec("Get3DEmitterPosition");
    x = g_emitter[0];
    y = g_emitter[1];
    z = g_emitter[2];
}

void VoxEngine::Get3DListenerPosition(float& x, float& y, float& z) {
    Rec("Get3DListenerPosition");
    x = g_listener[0];
    y = g_listener[1];
    z = g_listener[2];
}

int VoxEngine::SetDSPEmitterParameter(EmitterHandle& emitter, int param, void* value) {
    (void)emitter;
    Rec("SetDSPEmitterParameter", {static_cast<double>(param)});
    (void)value;
    return 0;
}

void VoxEngine::SetGroup(EmitterHandle& emitter, int group) {
    (void)emitter;
    Rec("SetGroup", {static_cast<double>(group)});
}

void VoxEngine::Play(EmitterHandle& emitter, bool loop, float fade) {
    (void)emitter;
    Rec("Play", {loop ? 1.0 : 0.0, static_cast<double>(fade)});
}

// The count is the loop bound the batch's Pause and PlayMusic use. 0 by default (no live emitter); a test
// asks for one with g_emitterHandles, and the first slot is then filled with a handle, as the engine does.
int VoxEngine::GetEmitterHandles(DataHandle& data, EmitterHandle* out, int max_count) {
    (void)data;
    Rec("GetEmitterHandles", {static_cast<double>(max_count)});
    const int count = g_emitterHandles < max_count ? g_emitterHandles : max_count;
    if (count > 0 && out != nullptr) {
        out[0] = EmitterHandle(42, nullptr, nullptr, 0, 0);
    }
    return count;
}

void VoxEngine::Pause(EmitterHandle& emitter, float fade) {
    (void)emitter;
    Rec("Pause", {static_cast<double>(fade)});
}

void VoxEngine::Resume(EmitterHandle& emitter, float fade) {
    (void)emitter;
    Rec("Resume", {static_cast<double>(fade)});
}

float VoxEngine::GetPlayCursor(EmitterHandle& emitter) {
    (void)emitter;
    return 0.0f;
}

void VoxEngine::SetPlayCursor(EmitterHandle& emitter, float position) {
    (void)emitter;
    (void)position;
}

void VoxEngine::DestroyVoxEngine() { Rec("DestroyVoxEngine"); }

// The EmitterHandle and DataHandle members the test needs (the handle layout is in handle.hpp).
EmitterHandle::EmitterHandle(std::int64_t id, VoxEngineInternal** engine, Handlable* object,
                             std::uint32_t first_stamp, std::uint32_t second_stamp) {
    id_ = id;
    engine_ = engine;
    handlable_ = nullptr;
    object_ = object;
    stamp_[0] = first_stamp;
    stamp_[1] = second_stamp;
}

EmitterHandle::EmitterHandle(const EmitterHandle& other)
    : Handle(other), engine_(other.engine_), handlable_(other.handlable_) {}

// The copy assignment the emitter stubs need when they hand a handle back to a body. The original
// (0x868324) releases the old reference and keeps the new one; with no engine linked, the test keeps the
// pointers as its copy constructor does.
EmitterHandle& EmitterHandle::operator=(const EmitterHandle& other) {
    if (this != &other) {
        Handle::operator=(other);
        engine_ = other.engine_;
        handlable_ = other.handlable_;
    }
    return *this;
}

EmitterHandle::~EmitterHandle() {}

DataHandle::DataHandle(std::int64_t id, VoxEngineInternal** engine, Handlable* object,
                       std::uint32_t first_stamp, std::uint32_t second_stamp) {
    (void)id;
    (void)engine;
    (void)object;
    (void)first_stamp;
    (void)second_stamp;
}

DataHandle::~DataHandle() { ++g_destroyed; }

Handle::~Handle() {}

// The sound pack (the XML tables), with the outputs the binary reads.
int VoxSoundPackXML::GetDataSourceInfo(int index, const char*& name, FormatTypes& format, int& field_16,
                                       int& field_15, VoxSourceLoadingFlags& flags) const {
    (void)index;
    Rec("GetDataSourceInfo");
    name = "data";
    format = static_cast<FormatTypes>(3);
    field_16 = 2;
    field_15 = g_bank;
    flags = static_cast<VoxSourceLoadingFlags>(1);
    return 1;
}

int VoxSoundPackXML::GetEmitterInfo(int index, int& emitter_uid, int& group, bool& flag,
                                    Vox3DSoundType& type, const char*& name) const {
    (void)index;
    Rec("GetEmitterInfo");
    emitter_uid = g_uid;
    group = g_group;
    flag = g_loop;
    type = static_cast<Vox3DSoundType>(g_type);
    name = g_dsp;
    return 1;
}

int VoxSoundPackXML::GetEventSoundUid(int index, int& sound_uid) {
    (void)index;
    Rec("GetEventSoundUid");
    sound_uid = g_event_uid;
    return 1;
}

int VoxSoundPackXML::GetGroupUid(const char* name) const {
    if (std::string(name) == "sfx_3D_pitched") {
        return g_group_pitched;
    }
    if (std::string(name) == "sfx_3D_pitched_relative") {
        return g_group_pitched_rel;
    }
    return -1;
}

VoxSoundPackXML::~VoxSoundPackXML() {}

}  // namespace vox

// ---- Stubs for the first batch's members, which the second batch calls.
void VoxSoundManager::LoadSound(int sound) { Rec("LoadSound", {static_cast<double>(sound)}); }
void VoxSoundManager::UnloadAllSounds() { Rec("UnloadAllSounds"); }
void VoxSoundManager::SetSoundVolume(int type, float volume) {
    Rec("SetSoundVolume", {static_cast<double>(type), volume});
}
float VoxSoundManager::GetSoundVolume(int type) {
    Rec("GetSoundVolume", {static_cast<double>(type)});
    return 100.0f;
}
void VoxSoundManager::StopMusic(int fade_ms) { Rec("StopMusic", {static_cast<double>(fade_ms)}); }
void VoxSoundManager::Stop(int sound, int fade_ms) {
    Rec("Stop", {static_cast<double>(sound), static_cast<double>(fade_ms)});
}

// ---- Native bridge (extern "C" as in sound_manager.hpp).
extern "C" void nativePlaySoundBig(int sound_id, float volume, int loop, int channel) {
    Rec("nativePlaySoundBig", {static_cast<double>(sound_id), static_cast<double>(volume),
                               static_cast<double>(loop), static_cast<double>(channel)});
}
extern "C" void nativePauseSoundBig(int sound_id) {
    Rec("nativePauseSoundBig", {static_cast<double>(sound_id)});
}

// ---- Allocation and free (vox memory). CustomFree is the inline stand-in in pydata-accessors/deps.
void* VoxAlloc(std::size_t size, vox::VoxMemHint /*hint*/) { return std::malloc(size); }
void VoxFree(void* ptr) { std::free(ptr); }

// ---- Game singletons and globals the sound glue reads. Application has two virtuals (the destructor and
// onEvent); the stubs define both so the vtable links. The header declares Singleton<Application> extern
// template; the game instantiates it in game-app/src/Globals.cpp, so the test instantiates it here.
template class Singleton<Application>;
Application::Application() {}
Application::~Application() {}
bool Application::onEvent(const glitch::SEvent&) { return false; }
int Application::GetSavedOption(const char* name) {
    (void)name;
    Rec("GetSavedOption");
    return g_saved_option;
}
Level* Application::GetCurrentLevel() const { return nullptr; }

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() { Rec("DebugSwitches.load"); }
bool DebugSwitches::GetSwitch(const std::string& name) {
    Rec(("DebugSwitches.GetSwitch." + name).c_str());
    return false;
}

COnline* GetOnline() {
    Rec("GetOnline");
    return nullptr;
}

// The online half of the Play3D and Play gate. The library reads it as GetOnline()->IsOnlineGame()
// (COnline +0x05); the test answers from g_onlineGame, since its GetOnline returns null.
bool GetOnlineGameFlag() {
    Rec("GetOnlineGameFlag");
    return g_onlineGame;
}

// ---- Core-platform globals the second batch's bodies reach (their own rows, not linked here).
int gAssertLevel = 0;
void CustomFree(void* p) { std::free(p); }

// Neither constructor is reconstructed in the tree yet (0x36c7b0 / 0x36cad0), so the test supplies an
// empty one, which keeps the header's default member initialisers (engine_ null, sounds_ null).
VoxSoundManager::VoxSoundManager() {}

int main() {
    TestRelative3D();
    TestRelativeRotated();
    TestPlainAndTypeZero();
    TestPitchedVolume();
    TestPlayEvent();
    TestReleaseLvlSounds();
    TestDestructorNative();
    TestDestructorJava();
    TestJavaForwarders();
    TestPauseHandles();
    TestPlayMusicResume();
    TestOnlineGate();
    TestSoundAllowedGate();
    if (g_failures != 0) {
        std::fprintf(stderr, "VoxSoundManager batch 1 test: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("VoxSoundManager batch 1 test: all checks passed\n");
    return 0;
}
