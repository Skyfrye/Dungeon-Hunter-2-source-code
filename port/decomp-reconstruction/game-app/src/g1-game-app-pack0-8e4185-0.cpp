// Batch g1-game-app-pack0-8e4185-0 (ByteArray, DebugCachedCharacter, Gamepad, GamepadTweaker, IDataReloader).
//
// Notes for the whole batch:
//  - Identical C1/C2 constructor pairs (Gamepad::Gamepad, 0x34cd0c and 0x34ce88) have one body here, emitted
//    once and listed twice in the ledger.
//  - Scalar deleting destructors (D0: 0x404b80, 0x4a37d4) are compiler-generated on the host and are not written.
//  - Globals read here and not defined in this file: RES_PATH (STT_OBJECT, .data; no definition in the tree yet),
//    Vec3f_Origin (0x99f854) and gAssertLevel. The IDevice pointer that the tweaker base takes is Application::m_device
//    (+0x10 of Singleton<Application>::s_inst), read through ApplicationGetInstance().

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <ctime>

#include "dh2/Application.hpp"
#include "dh2/ByteArray.hpp"
#include "dh2/DebugCachedCharacter.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/RenderFX.hpp"
#include "gameswf/gameswf_character.h"
#include "dh2/Gamepad.hpp"
#include "dh2/GamepadTweaker.hpp"
#include "dh2/IDataReloader.hpp"
#include "dh2/Point3D.hpp"

// Declarations from core-platform/memory.hpp (CustomFree, gAssertLevel, MemoryHintState and the tagged operator
// new[]). That header is not included here: its glitch core types clash with the glitch-shared types that
// CTweakable.hpp brings in, so the four declarations are repeated with the same signatures and names.
enum MemoryHintState : int {
    MHS_UNRECOVERED = 0,
};
extern int gAssertLevel;
void CustomFree(void* p);
void* operator new[](std::size_t size, MemoryHintState hint);   // 0x31056c, defined in game-app's global unit

// Point3D<float> Vec3f_Origin (0x99f854). Declared here, not through dh2/global/Vec3f_Origin.hpp, because that header
// includes core-platform/deps/game_types.hpp, whose Point3D clashes with dh2/Point3D.hpp.
extern Point3D<float> Vec3f_Origin;

// Global owned by another unit. No definition exists in game-app/src or game/include yet.
extern const char* RES_PATH;                  // STT_OBJECT, 4 bytes, .data: a pointer to the resource root

namespace {

// Clock stamps in the original are 32-bit ints (clock() truncated to int).
int32_t ClockStamp() {
    return static_cast<int32_t>(std::clock());
}

// Gamepad::Channel reset, as the constructor writes it: value 0, minimum 0, maximum 1, previous 0,
// unk_10 0, previous minimum 0, previous maximum 1, previous_above_threshold false.
void ResetChannel(Gamepad::Channel& channel) {
    channel.value = 0.0f;
    channel.minimum = 0.0f;
    channel.maximum = 1.0f;
    channel.previous = 0.0f;
    channel.unk_10 = 0;
    channel.previous_minimum = 0.0f;
    channel.previous_maximum = 1.0f;
    channel.previous_above_threshold = false;
}

// One frame of Gamepad::UpdateFrame for one channel (the first two loops of 0x34d124): the threshold flag is taken
// from the previous range before the previous fields are replaced by the current ones.
void AdvanceChannel(Gamepad::Channel& channel) {
    channel.previous_above_threshold =
        channel.previous >= (channel.previous_maximum + channel.previous_minimum + 1.0f) * 0.5f;
    channel.previous = channel.value;
    channel.previous_minimum = channel.minimum;
    channel.previous_maximum = channel.maximum;
}

// The stick logic of Gamepad::UpdateFrame for stick 0..3 (the last loop of 0x34d124). Stick k reads axes 2k (x) and
// 2k+1 (y). The y axis is negated. A stick whose direction is outside the dead zone (length below 0.65) counts as
// at rest. The first vector is the direction of the current press, and the repeat vector is the direction kept for
// a short window after the stick returns to rest.
void UpdateStick(Gamepad& pad, int stick) {
    const Gamepad::Channel& axisX = pad.m_axes[2 * stick];
    const Gamepad::Channel& axisY = pad.m_axes[2 * stick + 1];

    if (pad.m_firstStamps[stick] == 0) {
        pad.m_firstVectors[stick] = Vec3f_Origin;
    }
    if (pad.m_repeatStamps[stick] == 0) {
        pad.m_repeatVectors[stick] = Vec3f_Origin;
    }

    // Normalized axis values: (value + value) / (maximum - minimum), y negated.
    float x = (axisX.value + axisX.value) / (axisX.maximum - axisX.minimum);
    float y = -((axisY.value + axisY.value) / (axisY.maximum - axisY.minimum));
    float z = 0.0f;
    const float length = std::sqrt(x * x + y * y + 0.0f);

    Point3D<float> candidate{0.0f, 0.0f, 0.0f};
    if (length >= 0.65f) {
        Point3D<float> direction{x, y, z};
        direction.normalize();
        if (length < 0.95f) {
            const float scale = (length - 0.65f) / 0.3f;
            direction.X = scale * direction.X;
            direction.Y = scale * direction.Y;
            direction.Z = scale * direction.Z;
        }
        candidate = direction;
    } else {
        candidate = Vec3f_Origin;
    }

    if (candidate.X * candidate.X + candidate.Y * candidate.Y + candidate.Z * candidate.Z > 0.0f) {
        candidate.normalize();
        if (pad.m_firstStamps[stick] != 0) {
            if (ClockStamp() - pad.m_firstStamps[stick] > 200) {
                pad.m_firstVectors[stick] = Vec3f_Origin;
            }
        } else {
            pad.m_firstVectors[stick] = candidate;
            pad.m_firstStamps[stick] = ClockStamp();
        }
        return;
    }

    // The stick is at rest this frame.
    pad.m_firstStamps[stick] = 0;
    if (pad.m_firstVectors[stick] == Vec3f_Origin) {
        // No press is in progress: the repeat window ends once it is older than 400 clock ticks.
        if (ClockStamp() - pad.m_repeatStamps[stick] > 400) {
            pad.m_repeatStamps[stick] = 0;
            pad.m_repeatVectors[stick] = Vec3f_Origin;
        }
        return;
    }

    if (pad.m_repeatStamps[stick] == 0) {
        // A press has just started: the repeat window opens with the press direction.
        pad.m_repeatStamps[stick] = ClockStamp();
        pad.m_repeatVectors[stick] = pad.m_firstVectors[stick];
        return;
    }

    if (ClockStamp() - pad.m_repeatStamps[stick] <= 400) {
        if (!(pad.m_repeatVectors[stick] == Vec3f_Origin)) {
            const Point3D<float>& repeat = pad.m_repeatVectors[stick];
            const Point3D<float>& first = pad.m_firstVectors[stick];
            const float dot = repeat.X * first.X + repeat.Y * first.Y + repeat.Z * first.Z;
            // The repeat direction is dropped when the two directions differ by more than about 18 degrees
            // (acos(dot) > 0.31416). A dot above 1 (rounding) keeps it.
            if (dot <= 1.0f && (dot < -1.0f || std::acos(dot) > 0.31416f)) {
                pad.m_repeatVectors[stick] = Vec3f_Origin;
            }
            pad.m_repeatStamps[stick] = 0;
        }
        return;
    }
    pad.m_repeatVectors[stick] = Vec3f_Origin;
}

}  // namespace

// 0x36ddac ByteArray::SetBuffer(void const*, int)
// The block is reused when the length is unchanged. Otherwise the old block is freed and a new block of the
// requested length is allocated from the engine allocator (memory hint 2). A non-empty block is zeroed and then
// filled from the source. The return value is the data pointer, or the (possibly null) block when nothing was copied.
void* ByteArray::SetBuffer(const void* data, int size) {
    void* result;
    if (m_size == size) {
        result = m_buffer;
    } else {
        if (m_buffer) {
            CustomFree(m_buffer);
            m_buffer = nullptr;
        }
        m_size = size;
        result = operator new[](static_cast<std::size_t>(size), static_cast<MemoryHintState>(2));
        m_buffer = result;
    }
    if (result) {
        if (m_size > 0) {
            std::memset(result, 0, static_cast<std::size_t>(m_size));
            return std::memcpy(m_buffer, data, static_cast<std::size_t>(m_size));
        }
    }
    return result;
}

// ---------------------------------------------------------------------------------------------------------------
// DebugCachedCharacter
//
// The weak_ptr<character> at +0x28 is the proxy (gameswf::smart_ptr_proxy, one reference) and the cached pointer at
// +0x2c. A cached pointer is valid while its proxy is alive. The proxy word is released by assigning null.

namespace {

// The proxy word at +0x28 names a live character when it is set and its weak_proxy is alive.
bool WeakCacheAlive(const DebugCachedCharacter& cache) {
    const weak_proxy* proxy = cache.m_characterProxy.get_proxy();
    return proxy != nullptr && proxy->is_alive();
}

// Releases the proxy reference and clears the cached pointer (the two words at +0x28 and +0x2c).
void ClearWeakCache(DebugCachedCharacter& cache) {
    cache.m_characterProxy = nullptr;
    cache.m_character = nullptr;
}

}  // namespace

// 0x41aeec DebugCachedCharacter::DebugCachedCharacter()
// The string member starts empty (its own constructor). The rest of the object is zeroed: the flag and counter, the
// menu and root pointers, and the cached pointer. The proxy word starts null from its default member initializer.
DebugCachedCharacter::DebugCachedCharacter() {
    m_flag = 0;
    unk_04 = 0;
    m_menu = nullptr;
    m_root = nullptr;
    m_character = nullptr;
}

// 0x431428 DebugCachedCharacter::DebugCachedCharacter(gameswf::character*) [clone]
// The binary's clone has the character argument folded to NULL (MenuManager passes null): it stores null into
// the weak pointer and leaves the argument unused. The clone never writes the +0x00 flag (its pseudocode writes the
// string at +0x08, +0x04, +0x20, +0x24, +0x28 and +0x2c). The store "m_flag = 0" below is not in the binary: it only
// gives the member a defined value on the host.
DebugCachedCharacter::DebugCachedCharacter(gameswf::character* character) {
    (void)character;
    m_flag = 0;
    unk_04 = 0;
    m_menu = nullptr;
    m_root = nullptr;
    ClearWeakCache(*this);
}

// 0x41a9fc DebugCachedCharacter::~DebugCachedCharacter()
// Releases the proxy reference (the original decrements the count and frees the proxy at zero). The string member is
// destroyed after this body, which is the string release at the end of the original.
DebugCachedCharacter::~DebugCachedCharacter() {
    m_characterProxy = nullptr;
}

// 0x427c44 DebugCachedCharacter::RefreshCache(gameswf::character*, MenuFX*, gameswf::character*)
// With a character: the weak pointer is assigned from it (weak_ptr<character>::operator=(T*), the proxy from
// character->get_weak_proxy()), the character's name (the tu_string behind character +0x44) is copied into m_path, and the
// root and the menu are stored. A null character changes nothing.
void DebugCachedCharacter::RefreshCache(gameswf::character* character, MenuFX* menu, gameswf::character* root) {
    if (character) {
        m_characterProxy = character->get_weak_proxy();
        m_character = character;
        m_path.assign(character->get_name().c_str());
        m_root = root;
        m_menu = menu;
    }
}

// 0x427ca0 DebugCachedCharacter::RefreshCache(char const*, MenuFX*, gameswf::character*)
// Looks the path up with RenderFX::Find (from the root when one is given, else from the top) and assigns the weak pointer from
// the result; the path, the menu and the root are stored; a cached pointer whose proxy is already dead is released.
void DebugCachedCharacter::RefreshCache(const char* path, MenuFX* menu, gameswf::character* root) {
    gameswf::character* found = nullptr;
    if (root != nullptr) {
        found = menu->Find(path, root);
    } else {
        found = static_cast<gameswf::character*>(menu->Find(path));
    }
    if (found != nullptr) {
        m_characterProxy = found->get_weak_proxy();
        m_character = found;
    } else {
        ClearWeakCache(*this);
    }
    m_path.assign(path);
    m_menu = menu;
    m_root = root;
    if (m_character != nullptr && !WeakCacheAlive(*this)) {
        ClearWeakCache(*this);
    }
}

// 0x427d50 DebugCachedCharacter::GetChar()
// The cached character, validated through its weak pointer. An empty or dead cache is an ASSERT (MenuCachedCharacter.cpp:50;
// level 2 faults, level 1 prints) and is cleared. With the refresh flag (+0x00) set the path is looked up again
// (RefreshCache with m_path, the menu and the root). When the pointer changed, the counter at +0x04 is bumped and the cached
// character's parent chain is walked (get_parent() prunes a dead link), then the pointer is validated once more.
gameswf::character* DebugCachedCharacter::GetChar() {
    gameswf::character* v1 = m_character;
    bool cacheAlive = false;
    if (v1) {
        if (WeakCacheAlive(*this)) {
            cacheAlive = true;
        } else {
            ClearWeakCache(*this);   // v1 keeps the dead pointer; it is reloaded below
        }
    }
    if (!cacheAlive) {
        if (gAssertLevel == 2) {
            std::abort();
        } else if (gAssertLevel == 1) {
            std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_character.get_ptr() != __null",
                         "..\\..\\project_vs2005\\Game/..\\..\\sources\\Game\\Menus\\MenuCachedCharacter.cpp", 50);
        }
        v1 = m_character;   // null here: the dead cache was cleared, or the cache was already empty
    }

    gameswf::character* result = v1;
    if (m_flag != 0) {
        RefreshCache(m_path.c_str(), m_menu, m_root);
        result = m_character;
    }
    if (result && !WeakCacheAlive(*this)) {
        ClearWeakCache(*this);
        result = nullptr;
    }

    if (result != v1) {
        ++unk_04;
        if (!m_character) {
            return nullptr;
        }
        if (!WeakCacheAlive(*this)) {
            ClearWeakCache(*this);
            return nullptr;
        }
        // Walk up the cached character's parent chain: get_parent() checks each link's proxy and prunes a dead one.
        for (gameswf::character* link = m_character; link != nullptr; link = link->get_parent()) {
        }
        result = m_character;
    }
    if (result && !WeakCacheAlive(*this)) {
        ClearWeakCache(*this);
        return nullptr;
    }
    return result;
}

// ---------------------------------------------------------------------------------------------------------------
// Gamepad

// 0x34cd0c Gamepad::Gamepad()  (C2)
// 0x34ce88 Gamepad::Gamepad()  (C1, same body)
// The base is an input device of type 2 (gamepad). Both channel arrays are reset, the stick vectors and stamps are
// zeroed (the vectors are set to the zero vector), and the flags and counters are set: unk_754 to 128, the others to 0.
Gamepad::Gamepad() : InputDevice(TYPE_GAMEPAD) {
    for (Channel& channel : m_buttons) {
        ResetChannel(channel);
    }
    for (Channel& channel : m_axes) {
        ResetChannel(channel);
    }
    for (int stick = 0; stick < 4; ++stick) {
        m_firstVectors[stick] = Vec3f_Origin;
        m_firstStamps[stick] = 0;
        m_repeatVectors[stick] = Vec3f_Origin;
        m_repeatStamps[stick] = 0;
    }
    unk_74c = 0;
    unk_750 = 0;
    unk_754 = 128;
    m_connected = false;
}

// 0x34d004 Gamepad::ToggleVibration()
void Gamepad::ToggleVibration() {
    s_vibration ^= 1u;
}

// 0x34d02c Gamepad::IsVibrationEnabled()
// The original returns the flag byte. The flag only takes the values 0 and 1 (ToggleVibration), so it is returned
// as a bool here.
bool Gamepad::IsVibrationEnabled() {
    return s_vibration != 0;
}

// The static flag. Its initial value is 1: the .data byte at 0x999744 (IDA) is 1, so IsVibrationEnabled returns true until
// the first ToggleVibration turns it off.
uint8_t Gamepad::s_vibration = 1;

// 0x34d124 Gamepad::UpdateFrame(float)
// The argument is not used by the original. Each channel's previous values are updated (buttons, then axes), then
// each of the four sticks runs its direction logic (see UpdateStick).
void Gamepad::UpdateFrame(float dt) {
    (void)dt;
    for (Channel& channel : m_buttons) {
        AdvanceChannel(channel);
    }
    for (Channel& channel : m_axes) {
        AdvanceChannel(channel);
    }
    for (int stick = 0; stick < 4; ++stick) {
        UpdateStick(*this, stick);
    }
}

// ---------------------------------------------------------------------------------------------------------------
// GamepadTweaker

// 0x32f074 GamepadTweaker::GamepadTweaker()
// The base tweaker takes the device pointer, which is Application::m_device (+0x10 of Singleton<Application>::s_inst,
// read through ApplicationGetInstance(); the asm loads it from the singleton, not from a separate global). The raw
// button values and the mapped values are zeroed, then each raw value is registered with the tweaker under its name.
// The tweaker XML is loaded from the resource root.
GamepadTweaker::GamepadTweaker() : glitch::debugger::CTweakable(ApplicationGetInstance().m_device) {
    m_btn_cross = 0;
    m_btn_circle = 0;
    m_btn_square = 0;
    m_btn_triangle = 0;
    m_btn_l_1 = 0;
    m_btn_l_2 = 0;
    m_btn_l_3 = 0;
    m_btn_r_1 = 0;
    m_btn_r_2 = 0;
    m_btn_r_3 = 0;
    m_btn_start = 0;
    m_btn_select = 0;
    m_btn_power = 0;
    for (int& mapped : m_mappedButtons) {
        mapped = 0;
    }

    registerVariable("btn_cross", m_btn_cross);
    registerVariable("btn_circle", m_btn_circle);
    registerVariable("btn_square", m_btn_square);
    registerVariable("btn_triangle", m_btn_triangle);
    registerVariable("btn_l_1", m_btn_l_1);
    registerVariable("btn_l_2", m_btn_l_2);
    registerVariable("btn_l_3", m_btn_l_3);
    registerVariable("btn_r_1", m_btn_r_1);
    registerVariable("btn_r_2", m_btn_r_2);
    registerVariable("btn_r_3", m_btn_r_3);
    registerVariable("btn_start", m_btn_start);
    registerVariable("btn_select", m_btn_select);
    registerVariable("btn_power", m_btn_power);

    char s[256];
    std::snprintf(s, sizeof(s), "%s/data/tweaker/player_light.tweaker_xml", RES_PATH);
    loadXML(s, true);
}

// 0x404b4c GamepadTweaker::~GamepadTweaker()  (D1, complete-object destructor)
// The vtable store and the base destructor are compiler-generated; the base destructor runs after this body.
GamepadTweaker::~GamepadTweaker() {
}

// 0x404b80 GamepadTweaker::~GamepadTweaker()  (D0, scalar deleting destructor)
// Not written: compiler-generated on the host (the destructor above, then operator delete for this object).

// 0x404698 GamepadTweaker::UpdateButtonMappings()
// Copies each raw button value into its mapped slot. The slot order is the ButtonSlot order.
void GamepadTweaker::UpdateButtonMappings() {
    m_mappedButtons[BUTTON_CROSS] = m_btn_cross;
    m_mappedButtons[BUTTON_CIRCLE] = m_btn_circle;
    m_mappedButtons[BUTTON_SQUARE] = m_btn_square;
    m_mappedButtons[BUTTON_TRIANGLE] = m_btn_triangle;
    m_mappedButtons[BUTTON_L1] = m_btn_l_1;
    m_mappedButtons[BUTTON_L2] = m_btn_l_2;
    m_mappedButtons[BUTTON_L3] = m_btn_l_3;
    m_mappedButtons[BUTTON_R1] = m_btn_r_1;
    m_mappedButtons[BUTTON_R2] = m_btn_r_2;
    m_mappedButtons[BUTTON_R3] = m_btn_r_3;
    m_mappedButtons[BUTTON_START] = m_btn_start;
    m_mappedButtons[BUTTON_SELECT] = m_btn_select;
    m_mappedButtons[BUTTON_POWER] = m_btn_power;
}

// 0x40470c GamepadTweaker::onSetValue(std::string const&)
// Thunk: the original jumps to UpdateButtonMappings with the same this pointer.
void GamepadTweaker::onSetValue(const std::string& name) {
    (void)name;
    UpdateButtonMappings();
}

// 0x404710 GamepadTweaker::TranslateButton(int, Gamepad::Button)
// Maps a button id to its mapped value. The first argument selects one of two id tables. Table 0 maps ids 0, 1, 2,
// 3, 6, 7, 8, 9, 14, 15, 16, 23 and 24. Table 1 maps ids 0, 1, 2, 3, 6, 8, 14, 15, 16, 19, 22, 23 and 24. Each id maps
// to one ButtonSlot (the two tables assign different slots to some ids). An id that is not in the table, or a first
// argument other than 0 or 1, returns the id unchanged.
int GamepadTweaker::TranslateButton(int direction, int button) {
    int slot;
    if (direction == 0) {
        switch (button) {
            case 0:  slot = BUTTON_CROSS; break;
            case 1:  slot = BUTTON_CIRCLE; break;
            case 2:  slot = BUTTON_SQUARE; break;
            case 3:  slot = BUTTON_TRIANGLE; break;
            case 6:  slot = BUTTON_L1; break;
            case 7:  slot = BUTTON_L2; break;
            case 8:  slot = BUTTON_R1; break;
            case 9:  slot = BUTTON_R2; break;
            case 14: slot = BUTTON_START; break;
            case 15: slot = BUTTON_SELECT; break;
            case 16: slot = BUTTON_POWER; break;
            case 23: slot = BUTTON_L3; break;
            case 24: slot = BUTTON_R3; break;
            default: return button;
        }
    } else if (direction == 1) {
        switch (button) {
            case 0:  slot = BUTTON_CROSS; break;
            case 1:  slot = BUTTON_CIRCLE; break;
            case 2:  slot = BUTTON_SQUARE; break;
            case 3:  slot = BUTTON_TRIANGLE; break;
            case 6:  slot = BUTTON_L1; break;
            case 8:  slot = BUTTON_R1; break;
            case 14: slot = BUTTON_START; break;
            case 15: slot = BUTTON_SELECT; break;
            case 16: slot = BUTTON_POWER; break;
            case 19: slot = BUTTON_L3; break;
            case 22: slot = BUTTON_R3; break;
            case 23: slot = BUTTON_L2; break;
            case 24: slot = BUTTON_R2; break;
            default: return button;
        }
    } else {
        return button;
    }
    return m_mappedButtons[slot];
}

// ---------------------------------------------------------------------------------------------------------------
// IDataReloader

// 0x4a37d0 IDataReloader::~IDataReloader()  (D1)
// The original body is empty (a single return). The vtable store is compiler-generated.
IDataReloader::~IDataReloader() {
}

// 0x4a37d4 IDataReloader::~IDataReloader()  (D0, scalar deleting destructor)
// Not written: compiler-generated on the host (the destructor above, then operator delete for this object).
