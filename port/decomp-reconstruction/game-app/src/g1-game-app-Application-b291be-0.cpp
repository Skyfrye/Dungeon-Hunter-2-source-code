// Batch g1-game-app-Application-b291be-0 (Application, part 1 of 4).
// Rebuilt from the Hex-Rays pseudocode and checked against the assembly (tools/decomp_asm.py).
// Member offsets are the original 32-bit ones, recorded in dh2/Application.hpp and dh2/Level.hpp.
#include "dh2/Application.hpp"

#include "dh2/GSInit.hpp"
#include "dh2/GSLevel.hpp"
#include "dh2/Level.hpp"
#include "dh2/StateBase.hpp"
#include "dh2/StateMachine.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/video_driver.hpp"

namespace {

// Level::m_loadStep once the level is fully loaded (original value 0x26).
constexpr int kLevelLoadStepDone = 38;

}  // namespace

// ELF .bss global, 32-bit int, read by GetVersionString. Its definition belongs to the globals batch.
extern int OPERATOR_PACKAGE_INGAME;

// 0x31f4f4 Application::InitIPhone(glitch::IDevice*, float, float, float, float, float)
// iPhone-only init: the original body is a single store of 1 to address 0 (asm: MOV R3,#0; STRB R2,[R3]).
// Defined in game-app/src/ok3-Application.cpp.

// 0x31f504 Application::IsInitFinish()
// True when the state stack holds a state, its top state is not null and is not &GSInit::s_inst. The stack is
// StateMachine::m_stack (begin +0x0c, end +0x10, 8-byte StateInfo); the top entry is end - 8, which is back().
// The original reads m_stateMachine without a check. A null machine gives false here.
bool Application::IsInitFinish() {
    if (m_stateMachine == nullptr) {
        return false;
    }
    const std::vector<StateMachine::StateInfo>& stack = m_stateMachine->m_stack;
    if (stack.empty()) {
        return false;
    }
    const StateBase* top = stack.back().state;
    return top != nullptr && top != &GSInit::s_inst;
}

// 0x31f554 Application::IsInIGPOrGameCenter()
bool Application::IsInIGPOrGameCenter() {
    return false;
}

// 0x31f55c Application::CleanGlitch()
// The original calls the virtual at vtable +0xAC (slot 43) of the video driver at IDevice +0x10, reached
// through Singleton<Application>::s_inst.m_device. Slot +0xAC is IVideoDriver::removeUnused(). The callee's
// int return is dropped because the header declares void.
void Application::CleanGlitch() {
    if (m_device == nullptr || m_device->videoDriver == nullptr) {
        return;
    }
    m_device->videoDriver->removeUnused();
}

// 0x31f594 Application::GetCurrentLevel() const
// Returns GSLevel::s_level, the Level owned by the current GSLevel state (null outside a level).
Level* Application::GetCurrentLevel() const {
    return GSLevel::s_level;
}

// 0x31f5b4 Application::IsLevelLoaded()
bool Application::IsLevelLoaded() {
    Level* level = GetCurrentLevel();
    if (level == nullptr || level->m_loadStep == kLevelLoadStepDone) {
        return true;
    }
    m_sceneUpdated = false;  // +0xa9, cleared while the level is still loading
    return false;
}

// 0x31f5e8 Application::IsInLevelTransition()
bool Application::IsInLevelTransition() {
    const Level* level = GetCurrentLevel();
    if (level != nullptr) {
        return level->m_inTransition;  // Level +0x145
    }
    return false;
}

// 0x31f5fc Application::IsInActionPhase() const
// True when the state stack holds a state whose top is &GSLevel::s_gsLevel and the current level has
// m_loadStep == 38. The original's stack test is "more than 7 bytes", which is one StateInfo or more.
// A null state machine gives false here (the original would dereference it).
bool Application::IsInActionPhase() const {
    const Level* level = GetCurrentLevel();
    if (m_stateMachine == nullptr) {
        return false;
    }
    const std::vector<StateMachine::StateInfo>& stack = m_stateMachine->m_stack;
    const bool topIsGSLevel = !stack.empty() && stack.back().state == &GSLevel::s_gsLevel;
    return topIsGSLevel && level != nullptr && level->m_loadStep == kLevelLoadStepDone;
}

// 0x31f668 Application::ShowStatubBar(bool)
void Application::ShowStatubBar([[maybe_unused]] bool show) {
}

// 0x31f66c Application::GetDt()
int Application::GetDt() {
    return m_dt;  // +0x8c
}

// 0x31f674 Application::GetDtScaled()
int Application::GetDtScaled() {
    return m_dtScaled;  // +0x90
}

// 0x31f67c Application::SetTimeScale(float)
// The pseudocode also shows a return of this. The assembly (STR R1,[R0,#0x98]; BX LR) returns nothing,
// so the body is void.
void Application::SetTimeScale(float scale) {
    m_timeScale = scale;  // +0x98
}

// 0x31f684 Application::IsCurrentlyInGameView() const
bool Application::IsCurrentlyInGameView() const {
    // The original calls GetCurrentLevel twice. The getter has no side effects, so one call is kept.
    const Level* level = GetCurrentLevel();
    if (level != nullptr) {
        return level->m_isInGameView;  // Level +0x198
    }
    return false;
}

// 0x31f6a8 Application::GetVersionNumber()
int Application::GetVersionNumber() {
    return 10000;
}

// 0x31f6b0 Application::GetVersionString(char*, int, bool)
// Writes a version string into out. The bool argument is not read.
//   OPERATOR_PACKAGE_INGAME == 4: "01.00.00" (eight characters, NUL at +8)
//   otherwise:                    "1.0.2"    (five characters, NUL at +5)
// Returns without writing when out is null or size <= 0. Only size > 0 is checked, so the eight-character
// form can write past the end of a buffer shorter than nine bytes; the original does the same.
void Application::GetVersionString(char* out, int size, [[maybe_unused]] bool full) {
    if (out == nullptr || size <= 0) {
        return;
    }
    if (OPERATOR_PACKAGE_INGAME == 4) {
        out[0] = '0';
        out[1] = '1';
        out[2] = '.';
        out[3] = '0';
        out[4] = '0';
        out[5] = '.';
        out[6] = '0';
        out[7] = '0';
        out[8] = '\0';
    } else {
        out[0] = '1';
        out[1] = '.';
        out[2] = '0';
        out[3] = '.';
        out[4] = '2';
        out[5] = '\0';
    }
}

// 0x31f748 Application::ResetOrientation(int)
void Application::ResetOrientation([[maybe_unused]] int orientation) {
}

// 0x31f74c Application::SetOrientation(int, bool)
int Application::SetOrientation([[maybe_unused]] int orientation, [[maybe_unused]] bool animated) {
    return 0;
}

// 0x31f754 Application::IsVideoReorienting()
bool Application::IsVideoReorienting() {
    return false;
}

// 0x31f75c Application::GetDeviceLanguage()
int Application::GetDeviceLanguage() {
    return -1;
}

// 0x31f764 Application::IsDeviceLanguageSupported(char*)
bool Application::IsDeviceLanguageSupported([[maybe_unused]] char* language) {
    return false;
}
