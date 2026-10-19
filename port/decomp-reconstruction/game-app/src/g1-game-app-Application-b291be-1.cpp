// Batch g1-game-app-Application-b291be-1 (Application, part 2 of 4).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Member offsets are the original 32-bit ones, recorded in dh2/Application.hpp.
#include "dh2/Application.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/GSInit.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/GSLevelMap.hpp"
#include "core-platform/tb/android_jni_platform.hpp"  // nativeIsWifiAlive
#include "dh2/Character.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"  // dword_99F76C
#include "dh2/global/net_singletons.hpp"     // GetOnlineGameFlag
#include "net-session-online/cxplayer_manager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StateMachine.hpp"
#include "dh2/StringManager.hpp"
#include "glitch-core-io/os/logging.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

// Engine assert level. Its definition belongs to the globals batch (ELF gAssertLevel, .bss).
extern int gAssertLevel;

namespace {

// The state stack of a machine (StateMachine::m_stack, begin +0x0c, end +0x10). A null machine has no stack.
bool StackNonEmpty(const StateMachine* machine) {
    return machine != nullptr && !machine->m_stack.empty();
}

// The top state of the stack (end - 8 in the original), or nullptr when the stack is empty.
const StateBase* StackTop(const StateMachine* machine) {
    return StackNonEmpty(machine) ? machine->m_stack.back().state : nullptr;
}

// Source path of Application.cpp as the original's assert messages print it.
constexpr const char* kApplicationSourceFile =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Application.cpp";

// The four suffixes of s_supportedUncompiledData (ELF .data.rel.ro, 16 bytes, four char pointers).
const char* const s_supportedUncompiledData[4] = {".mlx", ".mgp", ".mvp", ".xml"};

// The m_stateMachine assertion of IsLevelRunning (line 2008) and IsLevelPaused (line 2028).
// At gAssertLevel 1 the original prints the message to stderr. At gAssertLevel 2 it stores through a
// null pointer (dword_0 = 0), a deliberate crash that is not reproduced here (PARTIAL).
void ReportNullStateMachine(int line) {
    if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", "m_stateMachine", kApplicationSourceFile, line);
    }
}

}  // namespace

// 0x31f76c Application::IsBluetoothEnabled()
bool Application::IsBluetoothEnabled() {
    return true;
}

// 0x31f774 Application::GetGoToMainMenuEvent(bool)
// Returns the pending go-to-main-menu event (+0xb0). When clear is set, the stored event is zeroed.
GoToMainMenuEvent Application::GetGoToMainMenuEvent(bool clear) {
    const GoToMainMenuEvent result = m_goToMainMenuEvent;  // +0xb0
    if (clear) {
        m_goToMainMenuEvent = static_cast<GoToMainMenuEvent>(0);
    }
    return result;
}

// 0x320590 Application::IsInternetAccessEnabled()
// True when the platform reports a live network connection: nativeIsWifiAlive() != 0 (core-platform JNI bridge).
bool Application::IsInternetAccessEnabled() {
    return nativeIsWifiAlive() != 0;
}

// 0x3205a4 Application::SendGLHiScore()
// The local player's character (PlayerManager::GetLocalPlayer(0, false), PlayerInfo +0x660; its CharProperties is at +0x560)
// supplies the high score, property 24 (PROPS_GetInt(24, false)). With internet access (IsInternetAccessEnabled), the CXPlayerManager
// byte at +0x05 (byte_99FC31, flag05_) is set and the score is uploaded (UploadMyScore); when the upload is accepted the property is reset
// to 0 (PROPS_SetInt(24, 0)). Without internet access the byte is cleared. Nothing happens without a local character.
void Application::SendGLHiScore() {
    Character* character = dword_99F76C->GetLocalPlayer(0, false)->unk_660;
    if (character == nullptr) {
        return;
    }
    const int score = character->PROPS_GetInt(24, false);
    if (IsInternetAccessEnabled()) {
        Singleton<CXPlayerManager>::s_inst.flag05_ = true;
        if (Singleton<CXPlayerManager>::s_inst.UploadMyScore(score)) {
            character->PROPS_SetInt(24, 0);
        }
    } else {
        Singleton<CXPlayerManager>::s_inst.flag05_ = false;
    }
}

// 0x320654 Application::IsWifiEnabled()
// nativeIsWifiAlive() != 0, as IsInternetAccessEnabled.
bool Application::IsWifiEnabled() {
    return nativeIsWifiAlive() != 0;
}

// 0x320668 Application::IsOnlineGame()
// The byte at +0x05 of GetOnline() (COnline::isOnlineGame_): GetOnlineGameFlag().
bool Application::IsOnlineGame() {
    return GetOnlineGameFlag();
}

// 0x320678 Application::IsUsingUncompiledData(char const*) const
// False at once while m_uncompiledData (+0xbc) is empty: the original compares the string's finish and start words (+0xcc, +0xd0 =
// +0x10 and +0x14 of the STLport string, equal for an empty string). Otherwise true when the path contains one of the four suffixes of
// s_supportedUncompiledData.
bool Application::IsUsingUncompiledData(const char* path) const {
    if (m_uncompiledData.empty()) {
        return false;
    }
    for (const char* suffix : s_supportedUncompiledData) {
        if (std::strstr(path, suffix) != nullptr) {
            return true;
        }
    }
    return false;
}

// 0x3206d0 Application::GetTitleString(char*, int)
// Writes the game title into out, at most size bytes (strncpy, so no terminator is guaranteed for short
// buffers, as in the original). Does nothing when out is null or size <= 0. Language 4 gives the fixed
// title "Dark Quest 2"; other languages use the MENU_GAME_TITLE string id. The original reads the
// savegame manager, PyData constants and string manager from the singleton (dword_99F778, dword_99F758,
// dword_99F760 are s_inst +0x4c, +0x2c, +0x34), which is this object.
void Application::GetTitleString(char* out, int size) {
    if (out == nullptr || size <= 0) {
        return;
    }
    if (m_savegameManager->getLanguage() == 4) {
        std::strncpy(out, "Dark Quest 2", static_cast<std::size_t>(size));
    } else {
        const int titleId = m_pyDataConstants->getConstant("StrID", "MENU_GAME_TITLE");
        const char* title = m_stringManager->getString(titleId);
        std::strncpy(out, title, static_cast<std::size_t>(size));
    }
}

// 0x320774 Application::GetVersionBuild()
// The version text is split at '.' and the third field is read with atoi. The original passes the third token straight to atoi.
// For the INGAME build ("01.00.00", cut to "01.00" by the NUL at +5) there is no third token and the original calls atoi(NULL), which
// crashes; the guard here returns 0 instead.
int Application::GetVersionBuild() {
    char version[12];
    GetVersionString(version, 10, false);
    version[5] = '\0';
    std::strtok(version, ".");
    std::strtok(nullptr, ".");
    const char* token = std::strtok(nullptr, ".");
    if (token == nullptr) {
        return 0;
    }
    return std::atoi(token);
}

// 0x320808 Application::GetVersionMinor()
int Application::GetVersionMinor() {
    char version[12];
    GetVersionString(version, 10, false);
    version[5] = '\0';
    std::strtok(version, ".");
    const char* token = std::strtok(nullptr, ".");
    return std::atoi(token);
}

// 0x320890 Application::GetVersionMajor()
int Application::GetVersionMajor() {
    char version[12];
    GetVersionString(version, 10, false);
    version[5] = '\0';
    const char* token = std::strtok(version, ".");
    return std::atoi(token);
}

// 0x320da4 Application::ComputeDt()
// The raw frame delta (the real-time clock minus +0x88) is scaled by m_dtFactor (+0x9c) into m_dt (+0x8c,
// truncated). That is scaled by m_timeScale (+0x98) and the carried remainder (+0x94) is added, giving m_dtScaled
// (+0x90, truncated). The fraction left over is stored back in +0x94 and returned. The original also stores the
// unscaled delta into +0x8c before the scaling. That store is overwritten at once, so it is not repeated.
float Application::ComputeDt() {
    const std::uint32_t now = glitch::os::Timer::getRealTime();
    const std::uint32_t delta = now - static_cast<std::uint32_t>(m_lastTime);  // +0x88
    m_lastTime = static_cast<int>(now);                                       // +0x88
    m_dt = static_cast<int>(static_cast<float>(delta) * m_dtFactor);          // +0x8c
    const float scaled = static_cast<float>(static_cast<std::uint32_t>(m_dt)) * m_timeScale +
                         m_dtScaledRemainder;                                 // +0x98, +0x94
    m_dtScaled = static_cast<int>(scaled);                                    // +0x90
    const float remainder =
        scaled - static_cast<float>(static_cast<std::uint32_t>(static_cast<int>(scaled)));
    m_dtScaledRemainder = remainder;                                          // +0x94
    return remainder;
}

// 0x320e0c Application::HasSavedOption(char const*)
bool Application::HasSavedOption(const char* name) {
    return m_savegameManager->hasOption(name);  // +0x4c
}

// 0x320e14 Application::IsSavedOptionOn(char const*)
bool Application::IsSavedOptionOn(const char* name) {
    if (!m_savegameManager->hasOption(name)) {
        return false;
    }
    return m_savegameManager->isOptionToggled(name);
}

// 0x320e44 Application::GetSavedOption(char const*)
int Application::GetSavedOption(const char* name) {
    if (!m_savegameManager->hasOption(name)) {
        return 0;
    }
    return m_savegameManager->getOption(name);
}

// 0x320e74 Application::IsUsingDPad()
bool Application::IsUsingDPad() {
    return GetSavedOption("DPad") != 0;
}

// 0x320e94 Application::SwitchGSInitBackground()
// Thunk: the original tail-branches to GSInit::SwitchBackground with this set to the Application pointer.
// SwitchBackground never reads its this (it works on GSInit::s_inst and the globals), so the call is made on
// the static GSInit instance, which is the object it actually uses.
void Application::SwitchGSInitBackground() {
    GSInit::s_inst.SwitchBackground();
}

// 0x320f5c Application::IsLevelRunning()
// True when GetCurrentLevel() (GSLevel::s_level) is not null. The m_stateMachine assert at gAssertLevel 2 stores through a null pointer
// in the original (dword_0 = 0, a deliberate crash); that crash is not reproduced (see ReportNullStateMachine).
bool Application::IsLevelRunning() {
    if (m_stateMachine == nullptr) {  // +0x18
        ReportNullStateMachine(2008);
    }
    return GetCurrentLevel() != nullptr;
}

// 0x321000 Application::IsLevelPaused(bool)
// The level and state-stack tests are the original's: a running level whose state stack is non-empty and whose top
// state is not &GSLevel::s_gsLevel counts as paused when ignoreIngameMenu is set. Otherwise a running level with an
// empty stack or a non-GSLevel top is paused, and an in-level stack returns MenuBase::s_igmOpened.
// The gAssertLevel 2 crash of the m_stateMachine assertion (line 2028) is not reproduced, as in IsLevelRunning.
bool Application::IsLevelPaused(bool ignoreIngameMenu) {
    if (m_stateMachine == nullptr) {  // +0x18
        ReportNullStateMachine(2028);
    }
    if (ignoreIngameMenu) {
        if (!IsLevelRunning()) {
            return false;
        }
        if (StackNonEmpty(m_stateMachine)) {
            return StackTop(m_stateMachine) != &GSLevel::s_gsLevel;
        }
        return true;
    }
    if (!IsLevelRunning()) {
        return false;
    }
    if (!StackNonEmpty(m_stateMachine) || StackTop(m_stateMachine) != &GSLevel::s_gsLevel) {
        return true;
    }
    return MenuBase::s_igmOpened;
}

// 0x321140 Application::LoadWorldMap(int)
// Switches the state machine to the world map state for index (GSLevelMap::Inst), not owned by the machine.
void Application::LoadWorldMap(int index) {
    m_stateMachine->SwitchState(GSLevelMap::Inst(index), false);  // +0x18
}
