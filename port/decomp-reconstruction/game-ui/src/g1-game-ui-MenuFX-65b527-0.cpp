// MenuFX bodies, batch g1-game-ui-MenuFX-65b527-0.
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so. Offsets in comments are the original
// 32-bit ARM offsets. Partial functions say in their comment which part is missing.
//
// Layout facts used here (dh2/MenuFX.hpp):
//   MenuFX::State +0x48/+0x4c and +0x50/+0x54 are two gameswf::weak_ptr<character> values. Each is a
//   proxy pointer followed by the cached character. The vendored base/weak_ptr.h has the same shape:
//   smart_ptr<weak_proxy> at +0, mutable T* at +4. weak_proxy has int m_ref_count at +0 and bool
//   m_alive at +4. The proxy pointer and the cache are declared as void* and character* in MenuFX.hpp.
//   MenuFX +0x104 is m_states and +0x114 is m_stack, each a gameswf::array<State*> (data, size).
//   LC_API_STRCPY_0 is strcpy and LC_API_STRCMP_0 is strcmp (recovered/native/hexrays-all/chunk_000.c).

#include <cstdint>
#include <cstring>

#include "dh2/MenuFX.hpp"

namespace {
using WeakCharacter = ::weak_ptr<gameswf::character>;

WeakCharacter& CharacterOf(MenuFX::State* state) {
    return *reinterpret_cast<WeakCharacter*>(&state->m_characterProxy);  // +0x48
}

WeakCharacter& SavedFocusOf(MenuFX::State* state) {
    return *reinterpret_cast<WeakCharacter*>(&state->m_savedFocusProxy);  // +0x50
}
}  // namespace

// 0x41b3a4 MenuFX::State::Update(int)
// The original calls vtable slot +0x1c, which is Update() with no argument. The int in r1 is dropped.
void MenuFX::State::Update(int /*dt*/) {
    Update();
}

// 0x41b3b8 MenuFX::State::UpdateBackground()
void MenuFX::State::UpdateBackground() {}

// 0x41b3bc MenuFX::State::UpdateBackground(int)
// The original calls vtable slot +0x24, which is UpdateBackground() with no argument.
void MenuFX::State::UpdateBackground(int /*dt*/) {
    UpdateBackground();
}

// 0x41f3cc MenuFX::State::Create()
void MenuFX::State::Create() {}

// 0x41f3d0 MenuFX::State::Show()
void MenuFX::State::Show() {}

// 0x41f3d4 MenuFX::State::Hide()
void MenuFX::State::Hide() {}

// 0x41f3d8 MenuFX::State::GotFocus()
void MenuFX::State::GotFocus() {}

// 0x41f3dc MenuFX::State::LostFocus()
void MenuFX::State::LostFocus() {}

// 0x41f3e0 MenuFX::State::Update()
void MenuFX::State::Update() {}

// 0x41f3e4 MenuFX::State::OnEvent(RenderFX::Event&)
void MenuFX::State::OnEvent(RenderFX::Event&) {}

// 0x41f3e8 MenuFX::State::OnFSCommand(char const*, char const*)
void MenuFX::State::OnFSCommand(const char*, const char*) {}

// 0x41f3ec MenuFX::State::CanHandleEvent(RenderFX::Event&)
// The original returns 1 for every event.
bool MenuFX::State::CanHandleEvent(RenderFX::Event&) {
    return true;
}

// 0x421db4 MenuFX::State::~State()
// Releases the saved-focus weak pointer (+0x50) first, then the character weak pointer (+0x48).
MenuFX::State::~State() {
    SavedFocusOf(this) = static_cast<gameswf::character*>(nullptr);
    CharacterOf(this) = static_cast<gameswf::character*>(nullptr);
}

// 0x421e2c MenuFX::State::~State() (deleting destructor, vtable slot +0x04)
// Not written: the compiler emits the deleting destructor from the virtual ~State(). The original calls
// the complete-object destructor at 0x421db4 and then CustomFree(this).

// 0x421f80 MenuFX::State::State(char const*)
// The original stores the vptr, nulls the four weak_ptr<character> halves and the status, then strcpy's the name
// into m_name (+0x08). The two weak_ptr operator=(nullptr) calls (clone at 0x421f74) are no-ops on the already
// zeroed members, so the nulls below are the full effect. This copies at most 63 characters and always
// terminates, which equals the original strcpy for every name that fits the 64-byte buffer. m_menu (+0x04) is
// not written by the original; RegisterState sets it.
MenuFX::State::State(const char* name) {
    m_characterProxy = nullptr;                      // +0x48 weak_ptr proxy
    m_character = nullptr;                           // +0x4c weak_ptr cached character
    m_savedFocusProxy = nullptr;                     // +0x50 weak_ptr proxy
    m_savedFocus = nullptr;                          // +0x54 weak_ptr cached focus
    std::strncpy(m_name, name, sizeof(m_name) - 1);  // +0x08
    m_name[sizeof(m_name) - 1] = '\0';
    m_status = 0;                                    // +0x58
}

// 0x42db28 MenuFX::State::GetCharacter() const
// The character of the weak pointer at +0x48: a dead target releases the proxy, clears both words and gives null.
gameswf::character* MenuFX::State::GetCharacter() const {
    return CharacterOf(const_cast<State*>(this)).get_ptr();
}

// 0x7a7f00 MenuFX::OnFSCommand(char const*, char const*)
// Forwards the command to the top of the stack (m_stack data +0x114, size +0x118) through State vtable slot +0x30,
// which is State::OnFSCommand. With an empty stack nothing happens. The original returns this in r0 on that path;
// the void signature drops it.
void MenuFX::OnFSCommand(const char* command, const char* args) {
    if (m_stack.m_size > 0) {
        State* top = m_stack.m_data[m_stack.m_size - 1];
        top->OnFSCommand(command, args);
    }
}

// 0x7a7f30 MenuFX::GetCurrentState()
// Top of m_stack, or null when the stack is empty.
MenuFX::State* MenuFX::GetCurrentState() {
    return m_stack.m_size > 0 ? m_stack.m_data[m_stack.m_size - 1] : nullptr;
}

// 0x7a7f4c MenuFX::IsStateInStack(MenuFX::State*)
// The original checks element 0 first and then 1..size-1 in a loop. Together those cover every element once,
// so a single pass over all elements gives the same result.
bool MenuFX::IsStateInStack(State* state) {
    const int32_t count = m_stack.m_size;
    for (int32_t i = 0; i < count; ++i) {
        if (m_stack.m_data[i] == state) {
            return true;
        }
    }
    return false;
}

// 0x7a82c4 MenuFX::GetState(char const*)
// Name search over m_states (data +0x104, size +0x108). Returns the first State whose m_name (+0x08) equals name,
// or null when none does.
MenuFX::State* MenuFX::GetState(const char* name) {
    const int32_t count = m_states.m_size;
    for (int32_t i = 0; i < count; ++i) {
        State* state = m_states.m_data[i];
        if (std::strcmp(state->m_name, name) == 0) {
            return state;
        }
    }
    return nullptr;
}
