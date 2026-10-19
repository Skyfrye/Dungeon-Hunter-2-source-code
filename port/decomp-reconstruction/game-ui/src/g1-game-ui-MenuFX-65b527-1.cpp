#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
#include <android/log.h>
#endif
// MenuFX bodies, batch g1-game-ui-MenuFX-65b527-1 (part 2 of 2 of MenuFX).
// Constructors and destructors, Unload, the menu stack (PushMenu, SwitchMenu, PopMenu, PopAll, SetMenu),
// state registration, the per-frame Update and the event dispatch. Rebuilt from the Hex-Rays pseudocode of
// libDungeonHunter2.so. Offsets in comments are the original 32-bit ARM offsets.
//
// MenuFX::State keeps its two gameswf::weak_ptr<character> values as (proxy pointer, character pointer) pairs,
// void* and character* in dh2/MenuFX.hpp. The pair has the layout of ::weak_ptr<gameswf::character> (smart_ptr to the proxy,
// then the cached pointer), so the bodies below view the pair as that type; get_ptr() is the liveness test the
// original open-codes (a dead proxy is released and both words are cleared).
// Where the original writes through the result of a dead weak pointer (the pseudocode shows a store to address 0x9b), the
// store is skipped.

#include "dh2/MenuFX.hpp"

#include <cstdio>

#include "core-platform/w7_global_03.hpp"  // message_log
#include "gameswf/gameswf_sprite.h"

namespace {
using WeakCharacter = ::weak_ptr<gameswf::character>;

WeakCharacter& CharacterOf(MenuFX::State* state) {
    return *reinterpret_cast<WeakCharacter*>(&state->m_characterProxy);  // +0x48
}

WeakCharacter& SavedFocusOf(MenuFX::State* state) {
    return *reinterpret_cast<WeakCharacter*>(&state->m_savedFocusProxy);  // +0x50
}

void ReleaseStateArray(MenuFX::StateArray& array) {
    array.m_size = 0;
    reinterpret_cast< ::array<MenuFX::State*>&>(array).reserve(0);
}

void GrowStateArray(MenuFX::StateArray& array, int newSize) {
    if (newSize > array.m_capacity) {
        reinterpret_cast< ::array<MenuFX::State*>&>(array).reserve(newSize + (newSize >> 1));
    }
}
}  // namespace

// 0x7a86e4 _ZN6MenuFXC1Ev
// 0x7a8750 _ZN6MenuFXC2Ev (same body: one C++ constructor serves both)
// The RenderFX base is built first (vptr +0x00), the EventListener subobject at +0x100 follows; both arrays start empty and
// the last statement registers the listener subobject with the RenderFX.
MenuFX::MenuFX() {
    m_states = StateArray{nullptr, 0, 0, false};  // +0x104 data, +0x108 size, +0x10c capacity, +0x110 static flag
    m_stack = StateArray{nullptr, 0, 0, false};   // +0x114 data, +0x118 size, +0x11c capacity, +0x120 static flag
    SetEventListener(static_cast<RenderFX::EventListener*>(this));
}

// 0x7abc68 _ZN6MenuFXD1Ev (base-object destructor; its body is the same as 0x7abd48)
// 0x7abd48 _ZN6MenuFXD2Ev (complete-object destructor, same body)
// Both arrays are emptied and their buffers released (stack first); RenderFX::~RenderFX runs after this body.
MenuFX::~MenuFX() {
    ReleaseStateArray(m_stack);
    ReleaseStateArray(m_states);
}

// 0x7abbbc _ZN6MenuFX6UnloadEv
// RenderFX::Unload, the four controllers reset, then both arrays emptied (the states first, then the stack).
void MenuFX::Unload() {
    RenderFX::Unload();
    for (int i = 0; i < 4; ++i) {
        m_controllers[i].Reset();
    }
    m_states.m_size = 0;  // +0x108
    m_stack.m_size = 0;   // +0x118
}

// 0x7ac444 _ZN6MenuFX15SetFocusDefaultEv
// The "btn" characters under the context character (m_context, +0x40) are searched with
// RenderFX::FindCharacters(ctx, "btn", 3). With none, RenderFX::ResetFocus(0) runs; otherwise
// RenderFX::SetFocus(first button, 0). The result is the RenderFX member array (data +0x00, count +0x04).
void MenuFX::SetFocusDefault() {
    CharacterArray* buttons = FindCharacters(m_context, "btn", 3);
    if (buttons->count <= 0) {
        ResetFocus(0);
    } else {
        SetFocus(buttons->data[0], 0);
    }
}

// 0x7ad88c _ZN6MenuFX6UpdateEib
// RenderFX::Update, the top state's Update(dt) and, from the second-from-top down, UpdateBackground(dt) on every state whose
// movie is visible. Then every registered state that is hiding (status 2) and whose movie has stopped playing is made invisible
// once no controller holds a pending click. The original reads the flag of a dead movie through a null pointer; that case is skipped.
void MenuFX::Update(int dt, bool a) {
    RenderFX::Update(dt, a);
    int count = m_stack.m_size;
    if (count > 0) {
        m_stack.m_data[count - 1]->Update(dt);  // top state, vtable +0x20
        count = m_stack.m_size;
    }
    for (int i = count - 2; i >= 0; --i) {
        State* state = m_stack.m_data[i];
        gameswf::character* character = CharacterOf(state).get_ptr();
        if (character != nullptr && character->get_visible()) {   // +0x9b
            state->UpdateBackground(dt);                          // vtable +0x28
        }
    }
    for (int i = 0; i < m_states.m_size; ++i) {
        State* state = m_states.m_data[i];
        if (state->m_status != 2) {
            continue;
        }
        gameswf::character* character = CharacterOf(state).get_ptr();
#if defined(__ANDROID__) && defined(DH2_BOOT_DEBUG)
        { static int n = 0; if ((n++ % 120) == 0) __android_log_print(ANDROID_LOG_INFO, "DH2MENU", "hiding state %s: character %p playstate %d visible %d", state->m_name, (void*)character, character ? (int)character->get_play_state() : -1, character ? (int)character->get_visible() : -1); }
#endif
        if (character == nullptr || character->get_play_state() != gameswf::character::STOP) {
            continue;
        }
        character = CharacterOf(state).get_ptr();
        if (character != nullptr && character->get_visible() && m_controllers[0].m_characters[3].get_ptr() == nullptr &&
            m_controllers[1].m_characters[3].get_ptr() == nullptr && m_controllers[2].m_characters[3].get_ptr() == nullptr &&
            m_controllers[3].m_characters[3].get_ptr() == nullptr) {
            character->set_visible(false);
        }
    }
}

// 0x7addb0 _ZN6MenuFX15GetStateHandlerEPN7gameswf9characterE
// From the top of the stack down, the first state whose movie is the target or one of its parents; the current state otherwise
// (also for an empty stack or a null target).
MenuFX::State* MenuFX::GetStateHandler(gameswf::character* target) {
    for (int i = m_stack.m_size - 1; i >= 0; --i) {
        State* state = m_stack.m_data[i];
        for (gameswf::character* character = target; character != nullptr; character = character->get_parent()) {
            if (CharacterOf(state).get_ptr() == character) {
                return state;
            }
        }
    }
    return GetCurrentState();
}

// 0x7adee0 _ZN6MenuFX14CanHandleEventERN8RenderFX5EventE
// The state that owns the event target decides (vtable +0x34); an empty stack accepts everything.
bool MenuFX::CanHandleEvent(RenderFX::Event& e) {
    if (m_stack.m_size <= 0) {
        return true;
    }
    return GetStateHandler(e.target)->CanHandleEvent(e);
}

// 0x7adf20 _ZN6MenuFX7OnEventERN8RenderFX5EventE
// The state that owns the event target receives the event (vtable +0x2c).
void MenuFX::OnEvent(RenderFX::Event& e) {
    if (m_stack.m_size > 0) {
        GetStateHandler(e.target)->OnEvent(e);
    }
}

// 0x7adf50 _ZN6MenuFX13RegisterStateEPNS_5StateEPKc
// The state is appended to m_states, bound to the movie clip found under movieName (the state's own name when null), the clip is
// hidden and Create() runs. The original dereferences a clip that was not found; that case skips the binding here.
void MenuFX::RegisterState(State* state, const char* movieName) {
    state->m_menu = this;                        // +0x04
    const int32_t index = m_states.m_size;       // +0x108
    const int32_t newSize = index + 1;
    if (index != -1) {
        GrowStateArray(m_states, newSize);
    }
    m_states.m_data[index] = nullptr;
    if (movieName == nullptr) {
        movieName = state->m_name;               // +0x08, the state's own name
    }
    m_states.m_size = newSize;
    m_states.m_data[index] = state;
    gameswf::as_object* found = Find(movieName);
    CharacterOf(state) = static_cast<gameswf::character*>(found);
    if (found != nullptr) {
        static_cast<gameswf::character*>(found)->set_visible(false);   // +0x9b
    }
    state->Create();                             // vtable +0x08
}

// 0x7adff0 _ZN6MenuFX14RegisterStatesEPPNS_5StateEi
// All states are appended first; then each is bound to the clip of its own name (hidden, Create) or, when the clip is missing,
// logged. Finally every sprite under the context whose name has "btn" in it is enabled (+0xea).
void MenuFX::RegisterStates(State** states, int count) {
    for (int i = 0; i < count; ++i) {
        states[i]->m_menu = this;                // +0x04
        const int32_t index = m_states.m_size;   // +0x108
        const int32_t newSize = index + 1;
        if (index != -1) {
            GrowStateArray(m_states, newSize);
        }
        m_states.m_data[index] = nullptr;
        m_states.m_size = newSize;
        m_states.m_data[index] = states[i];
    }
    for (int i = 0; i < count; ++i) {
        const char* name = states[i]->m_name;    // +0x08
        gameswf::as_object* found = Find(name);
        if (found != nullptr) {
            CharacterOf(states[i]) = static_cast<gameswf::character*>(found);
            static_cast<gameswf::character*>(found)->set_visible(false);   // +0x9b
            states[i]->Create();                 // vtable +0x08
        } else {
            char message[128];
            std::sprintf(message, "menu %s not found", name);
            message_log(message);
        }
    }
    CharacterArray* buttons = FindCharacters(m_context, "btn", 0);
    for (int i = 0; i < buttons->count; ++i) {
        gameswf::character* button = buttons->data[i];
        if (button->is(2)) {
            static_cast<gameswf::sprite_instance*>(button)->m_enabled = true;   // +0xea
        }
    }
}

// 0x7ae284 _ZN6MenuFX7SetMenuEPKcb
// The order of the original is kept: LostFocus and, for a switch, Hide on the old top; then the hide animation
// (a switch, or a push whose focus_out does not play) or the focus_out animation (a push), unless flags bit 0x40 is
// set; the focus of controller 0 is saved on the old top; with flags bit 0x08 the old top's sprite is disabled when the new
// movie is a sprite; the stack update; the new movie made visible (and enabled with bit 0x08); SetContext; the show animation
// (unless bit 0x40); SetFocusDefault (bit 0x01); then Show, GotFocus and status 1 on the new state.
// Empty-stack SwitchMenu: the original decrements the size to -1, stores at data[-1] and leaves the size at 0, so
// the new state is activated but not on the stack. This port stores nothing before the buffer and leaves the size
// at 0, which gives the same stack size. A dead movie (the original writes through a null pointer) is skipped.
void MenuFX::SetMenu(const char* name, bool push) {
    State* next = GetState(name);
    if (next == nullptr) {
        return;
    }
    const bool hasTop = m_stack.m_size > 0;
    if (hasTop) {
        State* top = m_stack.m_data[m_stack.m_size - 1];
        top->LostFocus();                        // vtable +0x18
        if (!push) {
            top->Hide();                         // vtable +0x10
        }
        if ((m_flags & 0x40) == 0) {
            // A push plays focus_out first; when that plays nothing, the old top is hidden instead.
            const bool focusOutPlayed = push && PlayAnim(CharacterOf(top).get_ptr(), "focus_out", 0) != 0;
            if (focusOutPlayed) {
                top->m_status = 4;               // +0x58, focus out
            } else if (PlayAnim(CharacterOf(top).get_ptr(), "hide", 0) != 0) {
                top->m_status = 2;               // +0x58, hiding
            }
        }
        SavedFocusOf(top) = m_controllers[0].m_characters[0].get_ptr();   // +0x50, the focus of controller 0
        if ((m_flags & 8) != 0) {
            gameswf::character* nextCharacter = CharacterOf(next).get_ptr();
            if (nextCharacter != nullptr && nextCharacter->is(2)) {
                gameswf::character* topCharacter = CharacterOf(top).get_ptr();
                if (topCharacter != nullptr) {
                    static_cast<gameswf::sprite_instance*>(topCharacter)->m_enabled = false;   // +0xea
                }
            }
        }
    }
    if (push || hasTop) {
        if (!push) {
            m_stack.m_size -= 1;                 // SwitchMenu replaces the top
        }
        const int32_t index = m_stack.m_size;    // +0x118
        if (index != -1) {
            GrowStateArray(m_stack, index + 1);
        }
        m_stack.m_data[index] = nullptr;
        m_stack.m_size = index + 1;
        m_stack.m_data[index] = next;
    }
    gameswf::character* nextCharacter = CharacterOf(next).get_ptr();
    if (nextCharacter != nullptr) {
        nextCharacter->set_visible(true);        // +0x9b
    }
    if ((m_flags & 8) != 0) {
        nextCharacter = CharacterOf(next).get_ptr();
        if (nextCharacter != nullptr && nextCharacter->is(2)) {
            static_cast<gameswf::sprite_instance*>(nextCharacter)->m_enabled = true;   // +0xea
        }
    }
    SetContext(CharacterOf(next).get_ptr());     // context is the new state's character
    if ((m_flags & 0x40) == 0) {
        PlayAnim(CharacterOf(next).get_ptr(), "show", 0);
    }
    if ((m_flags & 1) != 0) {
        SetFocusDefault();                       // vtable +0x24
    }
    next->Show();                                // vtable +0x0c
    next->GotFocus();                            // vtable +0x14
    next->m_status = 1;                          // +0x58, shown
}

// 0x7ae69c _ZN6MenuFX10SwitchMenuEPKc
void MenuFX::SwitchMenu(const char* name) {
    SetMenu(name, false);
}

// 0x7ae6a4 _ZN6MenuFX8PushMenuEPKc
void MenuFX::PushMenu(const char* name) {
    SetMenu(name, true);
}

// 0x7abb20 _ZN6MenuFX6PopAllEv
// Hides every state from the top down (status 2), then the root movie becomes the context again.
void MenuFX::PopAll() {
    while (m_stack.m_size > 0) {
        m_stack.m_data[m_stack.m_size - 1]->Hide();         // vtable +0x10
        m_stack.m_data[m_stack.m_size - 1]->m_status = 2;   // +0x58, hiding
        m_stack.m_size -= 1;                                // shrink; reserve is only needed to grow
    }
    SetContext(m_root->m_movie.get_ptr());
}

// 0x7ae808 _ZN6MenuFX7PopMenuEv
// Order of the original: LostFocus, Hide and the hide animation (unless flags bit 0x40) on the popped top; status 2;
// with flags bit 0x08 the popped movie is disabled when it is a sprite; SetContext on the root movie; then the stack shrinks,
// the new top's movie is made visible (and enabled with bit 0x08), SetContext on it, the focus_in animation (or show when
// focus_in plays nothing, both unless bit 0x40), the saved-focus restore (bit 0x01), GotFocus and status 3 on the new top.
// Empty stack: the original reads stack[-1]; this port returns. A dead movie (a store through null in the original) is skipped.
void MenuFX::PopMenu() {
    if (m_stack.m_size <= 0) {
        return;
    }
    State* top = m_stack.m_data[m_stack.m_size - 1];
    top->LostFocus();                            // vtable +0x18
    top->Hide();                                 // vtable +0x10
    if ((m_flags & 0x40) == 0) {
        PlayAnim(CharacterOf(top).get_ptr(), "hide", 0);  // the result is not used
    }
    top->m_status = 2;                           // +0x58, hiding
    if ((m_flags & 8) != 0) {
        gameswf::character* topCharacter = CharacterOf(top).get_ptr();
        if (topCharacter != nullptr && topCharacter->is(2)) {
            static_cast<gameswf::sprite_instance*>(topCharacter)->m_enabled = false;   // +0xea
        }
    }
    SetContext(m_root->m_movie.get_ptr());       // root movie, root +0x10
    if (m_stack.m_size == 1) {
        m_stack.m_size = 0;
        return;
    }
    m_stack.m_size -= 1;
    State* below = m_stack.m_data[m_stack.m_size - 1];
    gameswf::character* belowCharacter = CharacterOf(below).get_ptr();
    if (belowCharacter != nullptr) {
        belowCharacter->set_visible(true);       // +0x9b
    }
    if ((m_flags & 8) != 0) {
        belowCharacter = CharacterOf(below).get_ptr();
        if (belowCharacter != nullptr && belowCharacter->is(2)) {
            static_cast<gameswf::sprite_instance*>(belowCharacter)->m_enabled = true;   // +0xea
        }
    }
    SetContext(CharacterOf(below).get_ptr());
    if ((m_flags & 0x40) == 0) {
        if (PlayAnim(CharacterOf(below).get_ptr(), "focus_in", 0) == 0) {
            PlayAnim(CharacterOf(below).get_ptr(), "show", 0);
        }
    }
    if ((m_flags & 1) != 0) {
        gameswf::character* saved = SavedFocusOf(below).get_ptr();   // +0x50
        if (saved != nullptr) {
            ResetFocus(0);
            SetFocus(saved, 0);
        }
    }
    below->GotFocus();                           // vtable +0x14
    below->m_status = 3;                         // +0x58, focus back
}
