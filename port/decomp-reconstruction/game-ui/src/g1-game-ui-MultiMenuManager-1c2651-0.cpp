// MultiMenuManager bodies, batch g1-game-ui-MultiMenuManager-1c2651-0: the two constructors, the three destructors, the
// movie load and unload, the State and cursor helpers, and the page stack (PushMenu and the two PopMenu overloads).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the pseudocode line by line.
// Offsets in comments are the original 32-bit ARM offsets (see dh2/MultiMenuManager.hpp).
//
// Facts shared by the functions:
//   - m_menuFXStack (+0x124) is the gameswf::array<MenuFX*> of movies in use. The top movie is the last element.
//   - m_menuFX[k] (+0x134 + 4k) is movie k and m_cameras[k] (+0x144 + 4k) its 2D camera. Each movie keeps its pages
//     (MenuFX::State) on its m_stack (+0x114 data, +0x118 count), top = last.
//   - gameswf::array<T>::remove is MultiMenuManagerArrayRemove (dh2/global/multi_menu_manager.hpp).
//   - gameswf::weak_ptr<character> (MenuFX::State +0x48 and +0x50) is void* plus a character* in dh2/MenuFX.hpp. It is
//     reached here as ::weak_ptr<gameswf::character> (the layout MenuFX.cpp uses): get_ptr drops a dead proxy and clears both
//     words, as the original does inline.
//   - The character at +0x9b is the visible flag (character::m_visible) and the byte at +0xea of a sprite is its enabled flag
//     (sprite_instance::m_enabled). The flags bit 0x08 blocks test is(AS_SPRITE) on a character before the enabled flag is
//     written. In the new-top path of PopMenu the original reads the top state of this->m_stack (the MultiMenuManager own MenuFX
//     stack) for that test; it is kept, and skipped when that stack is empty.
//   - gameswf::array reserve calls are never made: a shrink never grows, and the push buffers are managed by the array type.

#include <cstdint>
#include <cstring>

#include "core-platform/debug_out.hpp"
#include "dh2/MenuBase.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuFlash2DCamera.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/global/multi_menu_manager.hpp"
#include "dh2/global/script_command_globals.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_sprite.h"

namespace {

// gameswf::array<T>::resize growth (the binary inlines it): a size above the capacity reserves newSize + newSize / 2 (the container the
// header declares as GameswfArray, same layout as the vendored ::array<T>). First boot: PushMenu appended without growing, writing through the null data.
template <typename T>
void GrowGameswfArray(MultiMenuManager::GameswfArray<T>& array, int newSize) {
    if (newSize > array.m_capacity) {
        reinterpret_cast< ::array<T>&>(array).reserve(newSize + (newSize >> 1));
    }
}

using WeakCharacter = ::weak_ptr<gameswf::character>;

WeakCharacter& CharacterOf(MenuFX::State* state) {
    return *reinterpret_cast<WeakCharacter*>(&state->m_characterProxy);  // +0x48
}

WeakCharacter& SavedFocusOf(MenuFX::State* state) {
    return *reinterpret_cast<WeakCharacter*>(&state->m_savedFocusProxy);  // +0x50
}

// The test the flags bit 0x08 blocks make on a character before they write the enabled flag: character::is(AS_SPRITE).
bool IsSprite(gameswf::character* character) {
    return character != nullptr && character->is(gameswf::AS_SPRITE);
}

// Byte +0xea of a sprite, the "enabled" property.
void SetSpriteEnabled(gameswf::character* character, bool enabled) {
    static_cast<gameswf::sprite_instance*>(character)->m_enabled = enabled;
}

// The saved-focus restore that follows the show of a state when flags bit 0x01 is set: the focus is reset and moved to the
// state saved focus character, when there is one.
void RestoreSavedFocus(MenuFX* movie, MenuFX::State* state) {
    if (SavedFocusOf(state).get_ptr() != nullptr) {
        movie->ResetFocus(0);
        movie->SetFocus(SavedFocusOf(state).get_ptr(), 0);
    }
}

// The body that PopMenu(bool) (0x438c14) and PopMenu(const char*, bool) (0x439270, flag set) share: hides the top
// state of the top movie, shrinks that movie's state stack, shrinks m_menuFXStack, and shows the new top movie's top
// state. The caller has checked that the top movie has a state. Not a binary symbol: the original inlines it twice.
void PopTopState(MultiMenuManager& mm) {
    MenuFX* top = mm.m_menuFXStack.m_data[mm.m_menuFXStack.m_size - 1];
    MenuFX::State* state = top->m_stack.m_data[top->m_stack.m_size - 1];
    state->LostFocus();                                  // vtable +0x18
    state->Hide();                                       // vtable +0x10
    top->InvokeASCallback(state->m_name, "OnHide", nullptr, 0);
    if ((top->m_flags & 0x40) == 0) {
        top->PlayAnim(state->GetCharacter(), "hide", 0);  // the result is not used
    }
    state->m_status = 2;                                 // +0x58, hiding
    if ((top->m_flags & 0x08) != 0 && IsSprite(state->GetCharacter())) {
        SetSpriteEnabled(state->GetCharacter(), false);
    }
    top->SetContext(top->GetFlashRoot());                // root character, root +0x10
    top->m_stack.m_size -= 1;

    const int32_t count = mm.m_menuFXStack.m_size;
    mm.m_menuFXStack.m_size = count - 1;
    if (count - 1 > 0) {
        MenuFX* below = mm.m_menuFXStack.m_data[count - 2];
        if (below != nullptr && below->m_stack.m_size > 0) {
            MenuFX::State* shown = below->m_stack.m_data[below->m_stack.m_size - 1];
            shown->GetCharacter()->m_visible = true;     // byte +0x9b
            if ((below->m_flags & 0x08) != 0 && mm.m_stack.m_size > 0) {
                MenuFX::State* own = mm.m_stack.m_data[mm.m_stack.m_size - 1];  // the original reads this->m_stack
                if (IsSprite(own->GetCharacter())) {
                    SetSpriteEnabled(shown->GetCharacter(), true);
                }
            }
            below->SetContext(shown->GetCharacter());
            if ((below->m_flags & 0x40) == 0) {
                below->InvokeASCallback(shown->m_name, "OnShow", nullptr, 0);
                if (below->PlayAnim(shown->GetCharacter(), "focus_in", 0) == 0) {
                    below->PlayAnim(shown->GetCharacter(), "show", 0);
                }
            }
            if ((below->m_flags & 0x01) != 0) {
                RestoreSavedFocus(below, shown);
            }
            shown->GotFocus();                           // vtable +0x14
            shown->m_status = 3;                         // +0x58, focus back
        }
    }
}

}  // namespace

// 0x437924 _ZN16MultiMenuManager14IsStateInStackEPN6MenuFX5StateE
// True when the state is on the State stack of any movie in m_menuFXStack. Each movie's states are searched from
// index 0 up to its count.
bool MultiMenuManager::IsStateInStack(MenuFX::State* state) {
    for (int32_t i = 0; i < m_menuFXStack.m_size; ++i) {
        MenuFX* movie = m_menuFXStack.m_data[i];
        for (int32_t j = 0; j < movie->m_stack.m_size; ++j) {
            if (movie->m_stack.m_data[j] == state) {
                return true;
            }
        }
    }
    return false;
}

// 0x43799c _ZN16MultiMenuManager17ResetUpdateCursorEv
// The cursor record is the original 16 stack bytes: -10000.0f, -10000.0f, angle 0 and state 0. For each movie in m_menuFX[0..3]
// that is set, UpdateCursor runs with the index 0..3 (vtable +0x14); the record is shared by all calls.
void MultiMenuManager::ResetUpdateCursor() {
    RenderFX::Cursor cursor;
    cursor.x = -10000.0f;
    cursor.y = -10000.0f;
    cursor.angle = 0.0f;
    cursor.state = 0;
    for (int movie = 0; movie < 4; ++movie) {
        for (int i = 0; i < 4; ++i) {
            if (m_menuFX[movie] != nullptr) {
                m_menuFX[movie]->UpdateCursor(cursor, i);  // vtable +0x14 (RenderFX::UpdateCursor)
            }
        }
    }
}

// 0x437a38 _ZN16MultiMenuManager10ResetFontsEv
// For each movie in m_menuFX[0..3] that is set, RenderFX::ClearFonts runs with a null player context (the default context).
void MultiMenuManager::ResetFonts() {
    for (int i = 0; i < 4; ++i) {
        if (m_menuFX[i] != nullptr) {
            RenderFX::ClearFonts(nullptr);
        }
    }
}

// 0x437b3c _ZN16MultiMenuManager13UnloadSWFFileEi
// Unloads the movie in slot index. Nothing happens when the slot is empty. Otherwise the movie is removed from
// m_menuFXStack (every entry equal to it, from the top down), its Unload() runs (vtable +0x0c), and the movie is
// deleted (vtable +0x04) and its slot cleared. The camera in the same index is then deleted and its slot cleared.
void MultiMenuManager::UnloadSWFFile(int index) {
    MenuFX* movie = m_menuFX[index];
    if (movie == nullptr) {
        return;
    }
    for (int32_t i = m_menuFXStack.m_size - 1; i >= 0; --i) {
        if (m_menuFXStack.m_data[i] == movie) {
            MultiMenuManagerArrayRemove(m_menuFXStack.m_data, m_menuFXStack.m_size, i);
        }
    }
    movie->Unload();
    MenuFX* loaded = m_menuFX[index];
    if (loaded != nullptr) {
        delete loaded;
    }
    m_menuFX[index] = nullptr;
    MenuFlash2DCamera* camera = m_cameras[index];
    if (camera != nullptr) {
        delete camera;
    }
    m_cameras[index] = nullptr;
}

// 0x437d68 _ZN16MultiMenuManager11LoadSWFFileEPKci
// Sets Game_Text to (index == 2). When slot index is empty, creates the movie, stores it in the slot, loads the file
// (RenderFX::Load with a null player context), turns on text buffering and creates the movie's 2D camera in the
// matching camera slot. Returns the movie in the slot.
MenuFX* MultiMenuManager::LoadSWFFile(const char* file, int index) {
    Game_Text = index == 2;
    if (m_menuFX[index] == nullptr) {
        MenuFX* movie = new MenuFX();
        m_menuFX[index] = movie;
        movie->Load(file, nullptr);
        movie->SetTextBufferingEnabled(true);
        m_cameras[index] = new MenuFlash2DCamera(movie);
    }
    return m_menuFX[index];
}

// 0x437e24 _ZN16MultiMenuManagerC1Ev (complete-object constructor)
// 0x437ea4 _ZN16MultiMenuManagerC2Ev (base-object constructor, same bytes: this one definition serves both)
// The MenuFX base constructor and the vptr stores are the implicit ones. The movie stack, the unk_154 array, the four
// movies and the four cameras are all zero.
MultiMenuManager::MultiMenuManager() {
    m_menuFXStack = GameswfArray<MenuFX*>{};
    unk_154 = GameswfArray<void*>{};
    for (int i = 0; i < 4; ++i) {
        m_menuFX[i] = nullptr;
        m_cameras[i] = nullptr;
    }
}

// 0x437f94 _ZN16MultiMenuManagerD1Ev (complete-object destructor)
// 0x4380c0 _ZN16MultiMenuManagerD2Ev (base-object destructor, same bytes: this one definition serves both)
// Each set movie is deleted (vtable +0x04). Its camera is deleted when it is set, and the movie slot is cleared before
// the camera is deleted, as in the original. The movie stack count is set to 0.
// The three gameswf::array<smart_ptr<as_object>> calls on unk_154 (resize, resize, reserve(0)) only empty an array that holds
// nothing (the constructor zeroes it and no function appends to it), and the reserve(0) that frees the m_menuFXStack buffer is the
// array own storage release; neither has an effect here. The original loop that zeroes slots below index 0 runs only for a
// negative count, which the stack never has. The base MenuFX destructor runs implicitly after this body.
MultiMenuManager::~MultiMenuManager() {
    for (int i = 0; i < 4; ++i) {
        if (m_menuFX[i] != nullptr) {
            delete m_menuFX[i];
            MenuFlash2DCamera* camera = m_cameras[i];
            m_menuFX[i] = nullptr;
            if (camera != nullptr) {
                delete camera;
                m_cameras[i] = nullptr;
            }
        }
    }
    m_menuFXStack.m_size = 0;
}

// 0x4380a4 _ZN16MultiMenuManagerD0Ev (deleting destructor)
// Compiler-generated: runs the complete-object destructor (0x437f94) and then CustomFree(this). The delete expression
// emits it, so no body is written here.

// 0x438278 _ZN16MultiMenuManager8PushMenuEP8MenuBase
// Pushes the page `menu`. Its state is looked up in its movie (menu->m_menu). The last-open id and the multiplayer and
// back-key globals are set from the page name. The current top state of the top movie is hidden when that movie has
// one. The page's movie is then appended to m_menuFXStack and the state to the movie's State stack, and the state is
// shown.
void MultiMenuManager::PushMenu(MenuBase* menu) {
    MenuFX::State* state = menu->m_menu->GetState(menu->m_name);
    if (state == nullptr) {
        return;
    }
    const char* name = state->m_name;
    _DEBUG_OUT("\n\n Last PushMenu:: %s \n\n", name);
    if (std::strcmp(name, "menu_MultiLogin") == 0) {
        // The original calls ALicenseCheck_ValidateLicense(0) here when USE_NATIVE_DRM_GAME is set; that build flag is off in the port.
        _DEBUG_OUT("\n\n ***************************Last menu_MultiLogin::  \n\n");
        Is_In_Multiplayer_Mode = true;
        Is_In_Multiplayer_IGM = true;
    }
    if (std::strcmp(name, "menu_MultiplayerConnectivity") == 0) {
        _DEBUG_OUT("\n\n ***************************Last menu_MultiplayerConnectivity::  \n\n");
        Is_In_Multiplayer_Mode = true;
        Is_In_Multiplayer_IGM = true;
    }
    if (std::strcmp(name, "menu_MainMenu") == 0) {
        _DEBUG_OUT("\n\n ***************************Last menu_MainMenu::  \n\n");
        Is_In_Multiplayer_Mode = true;
        Is_In_Multiplayer_IGM = false;
    }
    if (std::strcmp(name, "menu_VerificationLoading") == 0) {
        Back_key_Glive = true;
    } else if (std::strcmp(name, "menu_MainMenu") == 0) {
        isInGameMenu = false;
        lastOpenMenuID = 1;
    } else if (std::strcmp(name, "menu_StartGame") == 0) {
        lastOpenMenuID = 2;
    } else if (std::strcmp(name, "menu_Options") == 0) {
        lastOpenMenuID = 3;
    } else if (std::strcmp(name, "menu_info") == 0) {
        lastOpenMenuID = 4;
    } else if (std::strcmp(name, "menu_HelpButtons") == 0) {
        lastOpenMenuID = isInGameMenu ? 5 : 6;
    } else if (std::strcmp(name, "menu_hud_confirm") == 0) {
        lastOpenMenuID = 7;
    } else if (std::strcmp(name, "menu_Loading") == 0) {
        lastOpenMenuID = 8;
    } else if (std::strcmp(name, "menu_FadeFromBlackScreen") == 0) {
        lastOpenMenuID = 9;
    } else if (std::strcmp(name, "menu_Ingame") == 0) {
        isInGameMenu = true;
        lastOpenMenuID = 10;
    } else if (std::strcmp(name, "menu_splash") == 0) {
        lastOpenMenuID = 11;
    } else if (std::strcmp(name, "menu_confirm") == 0) {
        lastOpenMenuID = 19;
        _DEBUG_OUT("\n\n from pop MENU_CONFIRM+++++++++++++++++++++++++++++++++++++++ = menu_confirm \n\n");
    } else if (std::strcmp(name, "menu_confirm2") == 0) {
        lastOpenMenuID = 19;
        _DEBUG_OUT("\n\n from pop MENU_CONFIRM+++++++++++++++++++++++++++++++++++++++ = menu_confirm2 \n\n");
    } else if (std::strcmp(name, "menu_playlist") == 0) {
        lastOpenMenuID = 18;
        _DEBUG_OUT("\n\n from pop lastOpenMenuID+++++++++++++++++++++++++++++++++++++++ = %d \n\n", 18);
    } else if (std::strcmp(name, "menu_SelectClass") == 0) {
        lastOpenMenuID = 17;
    } else if (std::strcmp(name, "menu_EnterName") == 0) {
        lastOpenMenuID = 16;
    } else if (std::strcmp(name, "menu_About") == 0) {
        lastOpenMenuID = 15;
    } else if (std::strcmp(name, "menu_Help") == 0) {
        lastOpenMenuID = 14;
    } else if (MultiMenuManagerIsSheetMenu(name)) {
        lastOpenMenuID = 12;
    } else {
        lastOpenMenuID = 13;
    }
    isBackKeyPressed = false;

    const int32_t count = m_menuFXStack.m_size;
    MenuFX* topMovie = count > 0 ? m_menuFXStack.m_data[count - 1] : nullptr;
    MenuFX* movie = menu->m_menu;
    if (topMovie != nullptr && topMovie->m_stack.m_size > 0) {
        MenuFX::State* current = topMovie->GetCurrentState();
        current->LostFocus();                            // vtable +0x18
        topMovie->InvokeASCallback(current->m_name, "OnHide", nullptr, 0);
        if ((topMovie->m_flags & 0x40) == 0) {
            if (topMovie->PlayAnim(current->GetCharacter(), "focus_out", 0) != 0) {
                current->m_status = 4;                   // +0x58, focus out
            } else if (topMovie->PlayAnim(current->GetCharacter(), "hide", 0) != 0) {
                current->m_status = 2;                   // +0x58, hiding
            }
        }
        // PARTIAL (a) and (c): the saved focus of current (+0x50) is set by a weak_ptr assignment from the record
        // RenderFX::GetController(topMovie, 0) +0x10 (controller record and weak_ptr not declared). The flags bit 0x08
        // block of topMovie calls the character vtable +0x08 with 2 on the pushed state, then clears the flag byte +0xea
        // of current's character. Neither is made.
    }

    GrowGameswfArray(m_menuFXStack, count + 1);
    m_menuFXStack.m_data[count] = movie;
    m_menuFXStack.m_size = count + 1;

    const int32_t n = movie->m_stack.m_size;
    if (n + 1 > movie->m_stack.m_capacity) {
        reinterpret_cast< ::array<MenuFX::State*>&>(movie->m_stack).reserve((n + 1) + ((n + 1) >> 1));
    }
    movie->m_stack.m_data[n] = nullptr;
    movie->m_stack.m_size = n + 1;
    movie->m_stack.m_data[n] = state;

    state->GetCharacter()->m_visible = true;             // byte +0x9b
    if ((movie->m_flags & 0x08) != 0 && IsSprite(state->GetCharacter())) {
        SetSpriteEnabled(CharacterOf(state).get_ptr(), true);
    }
    movie->SetContext(state->GetCharacter());
    movie->InvokeASCallback(state->m_name, "OnShow", nullptr, 0);
    if ((movie->m_flags & 0x40) == 0) {
        movie->PlayAnim(state->GetCharacter(), "show", 0);
    }
    if ((movie->m_flags & 1) != 0) {
        movie->SetFocusDefault();                        // vtable +0x24
    }
    state->Show();                                       // vtable +0x0c
    state->GotFocus();                                   // vtable +0x14
    state->m_status = 1;                                 // +0x58, shown
}

// 0x438c14 _ZN16MultiMenuManager7PopMenuEb
// Pops the top page. First the last-open id is moved to the id of the page it returns to (MultiMenuManagerPopReturnId,
// after the in-game switch), unless the back key is pressed. Then the top page is popped (PopTopState). With `repeat`
// set, the pop goes on while the top movie still has a page.
void MultiMenuManager::PopMenu(bool repeat) {
    if (isInGameMenu) {
        if (lastOpenMenuID == 7) {
            lastOpenMenuID = 10;
        } else {
            const bool keepsInGame = lastOpenMenuID == 10 || lastOpenMenuID == 5;
            if (!keepsInGame && lastOpenMenuID != 14) {
                lastOpenMenuID = 9;
            }
        }
        _DEBUG_OUT("\n\n from pop lastOpenMenuID = %d \n\n", lastOpenMenuID);
    }
    if (!isBackKeyPressed) {
        lastOpenMenuID = MultiMenuManagerPopReturnId(lastOpenMenuID, isInGameMenu);
        _DEBUG_OUT("\n\n from pop22 lastOpenMenuID = %d \n\n", lastOpenMenuID);
    }
    isBackKeyPressed = false;

    int32_t count = m_menuFXStack.m_size;
    do {
        if (count == 0) {
            break;
        }
        MenuFX* top = m_menuFXStack.m_data[count - 1];
        if (top->m_stack.m_size <= 0) {
            break;
        }
        PopTopState(*this);
        if (!repeat) {
            break;
        }
        count = m_menuFXStack.m_size;
        if (count <= 0) {
            break;
        }
    } while (m_menuFXStack.m_data[count - 1]->m_stack.m_size > 0);
}

// 0x439270 _ZN16MultiMenuManager7PopMenuEPKcb
// flag false: pops the page `name` from wherever it is. The movies are searched from the top down, and each movie's
// pages from the top down. A matching page is hidden and removed from its movie's State stack, and that movie is
// removed from m_menuFXStack. The new top movie is then shown when it has a page, and the search goes on with the
// state index it had (the original's v43 is kept as it is, including when the movie list has shrunk under it).
// flag true: pops the top page while `name` is still on the stack and is not the top page itself (PopTopState).
void MultiMenuManager::PopMenu(const char* name, bool flag) {
    if (!flag) {
        MenuBase* target = MenuManager::GetInstance()->GetMenuByName(name);
        int32_t movieIndex = m_menuFXStack.m_size - 1;
        while (movieIndex >= 0) {
            int32_t stateIndex = m_menuFXStack.m_data[movieIndex]->m_stack.m_size - 1;
            while (stateIndex >= 0) {
                MenuFX* movie = m_menuFXStack.m_data[movieIndex];
                MenuFX::State* state = movie->m_stack.m_data[stateIndex];
                if (target == state) {
                    target->LostFocus();                 // vtable +0x18
                    state->Hide();                       // vtable +0x10
                    movie->InvokeASCallback(state->m_name, "OnHide", nullptr, 0);
                    if ((movie->m_flags & 0x40) == 0) {
                        movie->PlayAnim(state->GetCharacter(), "hide", 0);  // the result is not used
                    }
                    state->m_status = 2;                 // +0x58, hiding
                    if ((movie->m_flags & 0x08) != 0 && IsSprite(state->GetCharacter())) {
                        SetSpriteEnabled(state->GetCharacter(), false);
                    }
                    movie->SetContext(movie->GetFlashRoot());
                    MultiMenuManagerArrayRemove(movie->m_stack.m_data, movie->m_stack.m_size, stateIndex);
                    MultiMenuManagerArrayRemove(m_menuFXStack.m_data, m_menuFXStack.m_size, movieIndex);
                    if (m_menuFXStack.m_size > 0) {
                        MenuFX* newTop = m_menuFXStack.m_data[m_menuFXStack.m_size - 1];
                        if (newTop != nullptr && newTop->m_stack.m_size > 0) {
                            MenuFX::State* shown = newTop->m_stack.m_data[newTop->m_stack.m_size - 1];
                            shown->GetCharacter()->m_visible = true;  // byte +0x9b
                            if ((newTop->m_flags & 0x08) != 0 && m_stack.m_size > 0 &&
                                IsSprite(m_stack.m_data[m_stack.m_size - 1]->GetCharacter())) {  // the original reads this->m_stack
                                SetSpriteEnabled(shown->GetCharacter(), true);
                            }
                            newTop->SetContext(shown->GetCharacter());
                            // The show block runs only when the new top's count equals this state index (the original
                            // takes the goto LABEL_68 path otherwise).
                            if ((newTop->m_flags & 0x40) == 0 && stateIndex == newTop->m_stack.m_size) {
                                newTop->InvokeASCallback(shown->m_name, "OnShow", nullptr, 0);
                                if (newTop->PlayAnim(shown->GetCharacter(), "focus_in", 0) == 0) {
                                    newTop->PlayAnim(shown->GetCharacter(), "show", 0);
                                }
                            }
                            if ((newTop->m_flags & 0x01) != 0) {
                                RestoreSavedFocus(newTop, shown);
                            }
                            shown->GotFocus();           // vtable +0x14
                            shown->m_status = 3;         // +0x58, focus back
                        }
                    }
                }
                --stateIndex;
                // The original re-reads the movie (v41) at the top of each step, so the next comparison uses it.
            }
            --movieIndex;
        }
    } else {
        while (true) {
            MenuBase* named = MenuManager::GetInstance()->GetMenuByName(name);
            if (!IsStateInStack(named)) {                // vtable +0x40
                break;
            }
            if (m_menuFXStack.m_size <= 0) {
                break;
            }
            MenuFX* top = m_menuFXStack.m_data[m_menuFXStack.m_size - 1];
            if (top->m_stack.m_size <= 0) {
                break;
            }
            MenuFX::State* current = top->GetCurrentState();
            if (current == MenuManager::GetInstance()->GetMenuByName(name)) {
                break;
            }
            PopTopState(*this);
        }
    }
}
