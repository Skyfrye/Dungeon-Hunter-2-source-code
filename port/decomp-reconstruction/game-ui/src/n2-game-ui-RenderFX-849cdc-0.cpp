// Batch n2-game-ui-RenderFX-849cdc-0 (RenderFX, part 1 of 4): the menu renderer's accessors, the display and focus
// switches, the constructor and the search entry points.
// Calls into gameswf use the names of the binary's vtable slots (tools/decomp_vtable.py on gameswf::character and
// gameswf::render_handler): is(int) +0x08, goto_frame(int) +0x14c, set_play_state +0x94, get_current_frame +0x138,
// get_frame_count +0x13c, set_display_callback +0x154, render_handler::set_orientation +0xa8.
// class id 2 in is(2) is the value the original passes; it is kept as a literal.
#include "dh2/RenderFX.hpp"

#include <cstring>

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_text.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_log.h"
#include "vendor-gameswf/gameswf_root.hpp"

// 0x7a7c34 RenderFX::SetWireFrame(bool): render handler slot +0x40 (set_wire_frame).
void RenderFX::SetWireFrame(bool enabled) {
    gameswf::s_render_handler->set_wire_frame(enabled);
}

// 0x7a7c6c RenderFX::SetEventListener(RenderFX::EventListener*)
void RenderFX::SetEventListener(EventListener* listener) {
    m_eventListener = listener;
}

// 0x7a7c74 RenderFX::GetController(int): the controller record at 0x58 + 0x28 * index.
RenderFX::Controller* RenderFX::GetController(int index) {
    return &m_controllers[index];
}

// 0x7a7c88 RenderFX::SetControllerEnabled(int, bool): the enabled byte of the record (+0x24 of the record).
void RenderFX::SetControllerEnabled(int index, bool enabled) {
    m_controllers[index].m_enabled = enabled;
}

// 0x7a7c98 RenderFX::SetInputBehavior(int): stores the behavior in the word at +0xf8 (m_flags).
void RenderFX::SetInputBehavior(int behavior) {
    m_flags = static_cast<std::uint32_t>(behavior);
}

// 0x7a7ca0 RenderFX::GetFlashRoot() const: the movie character of the root (the root's m_movie, at root +0x10).
gameswf::character* RenderFX::GetFlashRoot() const {
    return m_root->m_movie.get_ptr();
}

// 0x7a7cac RenderFX::GetRoot() const: m_root (+0x3c).
gameswf::root* RenderFX::GetRoot() const {
    return m_root.get_ptr();
}

// 0x7a7cb4 RenderFX::SetTextBufferingEnabled(bool)
// Binary: LDR R3,[R0,#0x3C]; STRB R1,[R3,#0x85]. The root byte at +0x85 has no name that matches text buffering in
// gameswf_root.hpp (m_shift_key_state is the only name there), so the store is written at its offset.
void RenderFX::SetTextBufferingEnabled(bool enabled) {
    // Typed store: the byte at 32-bit offset +0x85 is gameswf::root::m_shift_key_state in the host layout (a raw +0x85 on the
    // 64-bit host object would hit another member).
    m_root->m_shift_key_state = enabled;
}

// 0x7a7cc0 RenderFX::SetAutoLoadGlyphsEnabled(bool): stores the byte at root +0x87 (gameswf::root::unk_87, which has no
// reader in the header).
void RenderFX::SetAutoLoadGlyphsEnabled(bool enabled) {
    m_root->unk_87 = enabled;
}

// 0x7a7ccc RenderFX::SetRenderCachingEnabled(bool): the player's byte +0x98 (gameswf::player::unk_98).
void RenderFX::SetRenderCachingEnabled(bool enabled) {
    m_player->unk_98 = enabled;
}

// 0x7a7cd8 RenderFX::GetAlpha(gameswf::character*)
// Binary: if character is null return 0, else load the pointer at character +0x48 and return the int at its +0x18.
// The pointer and the object behind it are not typed in the gameswf headers, so they are read at their offsets.
int RenderFX::GetAlpha(gameswf::character* character) {
    if (character == nullptr) {
        return 0;
    }
    // character +0x48 is m_local_cxform; the word at +0x18 of the cxform is m_[3][0], the alpha multiplier (returned as its bit
    // pattern, the soft-float register value). Typed access: the raw 32-bit offsets are wrong on the 64-bit host objects.
    const float alpha = character->m_local_cxform->m_[3][0];
    int bits;
    std::memcpy(&bits, &alpha, sizeof bits);
    return bits;
}

// 0x7a7cec RenderFX::GetText(gameswf::character*)
// Binary: null returns null; a character whose is(32) is false returns null; otherwise the inline text at +0x139 when
// the byte at +0x138 is not 0xff, else the pointer at +0x144.
char* RenderFX::GetText(gameswf::character* character) {
    if (character == nullptr) {
        return nullptr;
    }
    if (character->is(32) == 0) {
        return nullptr;
    }
    // edit_text_character::m_text (tu_string at +0x138 on the 32-bit layout): the inline buffer at +0x139 or, when the marker byte
    // is 0xff, the heap pointer at +0x144; tu_string::c_str() selects between the two. Typed: raw offsets are wrong on the host.
    return const_cast<char*>(static_cast<gameswf::edit_text_character*>(character)->m_text.c_str());
}

// 0x7a7d34 RenderFX::GotoFrame(gameswf::character*, int, bool): a character of class id 2 moves to the frame and gets
// the play state (play when flag is set; the original stores flag ^ 1, and PLAY is 0).
void RenderFX::GotoFrame(gameswf::character* character, int frame, bool flag) {
    if (character != nullptr && character->is(2)) {
        character->goto_frame(frame);
        character->set_play_state(flag ? gameswf::character::PLAY : gameswf::character::STOP);
    }
}

// 0x7a7d90 RenderFX::GetFrameCount(gameswf::character*): the frame count of a class id 2 character, else 0.
int RenderFX::GetFrameCount(gameswf::character* character) {
    if (character != nullptr && character->is(2)) {
        return character->get_frame_count();
    }
    return 0;
}

// 0x7a7dd4 RenderFX::IsAnimOver(gameswf::character*): the current frame is the last one (frame count - 1 or later).
// The original calls the current frame and the frame count once before reading them again; the first two results are
// discarded and are kept here.
bool RenderFX::IsAnimOver(gameswf::character* character) {
    if (character == nullptr || !character->is(2)) {
        return false;
    }
    character->get_current_frame();
    character->get_frame_count();
    const int current = character->get_current_frame();
    return current >= character->get_frame_count() - 1;
}

// 0x7a7e5c RenderFX::FSCommand(char const*, char const*): forwards to the event listener's OnFSCommand (slot +0x04).
void RenderFX::FSCommand(const char* command, const char* args) {
    if (m_eventListener != nullptr) {
        m_eventListener->OnFSCommand(command, args);
    }
}

// 0x7a7e80 RenderFX::RegisterDisplayCallback(gameswf::character*, void (*)(gameswf::render_state&, void*), void*):
// returns 1 when the callback was registered on the character, 0 for a null character.
int RenderFX::RegisterDisplayCallback(gameswf::character* character,
                                      void (*callback)(gameswf::render_state&, void*), void* userData) {
    if (character == nullptr) {
        return 0;
    }
    character->set_display_callback(callback, userData);
    return 1;
}

// 0x7a7eb4 RenderFX::SetOrientation(gameswf::orientation_mode): the render handler's set_orientation (slot +0xa8). The mode
// is passed through in r1, as the asm shows.
void RenderFX::SetOrientation(gameswf::orientation_mode mode) {
    gameswf::s_render_handler->set_orientation(mode);
}

// 0x7a7ee8 RenderFX::SetContext(gameswf::character*): m_context (+0x40).
void RenderFX::SetContext(gameswf::character* context) {
    m_context = context;
}

// 0x7a7ef0 RenderFX::GetContext(): m_context (+0x40).
gameswf::character* RenderFX::GetContext() {
    return m_context;
}

// 0x7a7fe4 RenderFX::DestroyContext(gameswf::player_context*): destruct when the pointer is not null.
void RenderFX::DestroyContext(gameswf::player_context* context) {
    if (context != nullptr) {
        gameswf::destruct(context);
    }
}

// 0x7a850c RenderFX::RenderFX() (C1), 0x7a85f8 (C2): the same body. Every field starts at zero. The four controllers
// clear their 36 bytes, set their enabled byte to 1 and reset their smart pointers. The name string at +0x44 is empty.
RenderFX::RenderFX() {
    m_foundCharacters = CharacterArray{nullptr, 0, 0, false};   // +0x04
    m_context = nullptr;                                        // +0x40
    for (Controller& controller : m_controllers) {
        controller.m_cursor = Cursor{};
        controller.m_enabled = true;
        controller.Reset();
    }
    m_flags = 0;
    m_eventListener = nullptr;
}

// 0x7a87fc RenderFX::DepthSearch(int)
// Breadth-first walk of the work list left by DepthSearchData::Init. Each level (m_levels[depth] .. m_levels[depth + 1] or the end
// of the list) is scanned: an entry whose character name equals the first dotted segment of its path either ends the search (no
// more segments) or lets the remaining path go down; a movie clip entry queues all its children with the remaining path. The
// scan stops with null when a level queued nothing.
gameswf::character* RenderFX::DepthSearch(int depth) {
    ::array<int>& levels = m_depthSearch.m_levels;
    ::array<DepthSearchEntry>& entries = m_depthSearch.m_entries;
    for (;; ++depth) {
        const int begin = levels[depth];
        const int end = (depth + 1 < levels.size()) ? levels[depth + 1] : entries.size();
        levels.push_back<int>(entries.size());
        if (end > begin) {
            const char* previousPath = nullptr;
            const char* segmentEnd = nullptr;
            int index = begin;
            while (true) {
                const char* path = entries[index].path;
                if (path == nullptr) {
                    return nullptr;
                }
                const char* end_ = nullptr;
                if (path == previousPath) {
                    end_ = segmentEnd;
                } else {
                    const char* dot = std::strchr(path, '.');
                    end_ = dot != nullptr ? dot : path + std::strlen(path);
                    segmentEnd = end_;
                }
                gameswf::character* character = entries[index].character;
                const std::size_t segmentLength = static_cast<std::size_t>(end_ - path);
                const ::tu_string& name = character->get_name();
                const char* childPath = path;
                if (segmentLength == static_cast<std::size_t>(name.length()) && std::strncmp(name.c_str(), path, segmentLength) == 0) {
                    if (*end_ == '\0') {
                        return character;
                    }
                    childPath = end_ + 1;
                }
                if (character->is(2)) {
                    gameswf::sprite_instance* sprite = static_cast<gameswf::sprite_instance*>(character);
                    for (int i = 0; i < sprite->m_display_list.size(); ++i) {
                        DepthSearchEntry entry{sprite->m_display_list.get_character(i), childPath};
                        entries.push_back<DepthSearchEntry>(entry);
                    }
                }
                if (++index == end) {
                    break;
                }
                previousPath = path;
            }
        }
        if (levels[levels.size() - 1] == entries.size()) {
            return nullptr;
        }
    }
}

// 0x7a8a84 RenderFX::Find(char const*, gameswf::character*): a search from context for name, at depth 0. Null when the
// name or the context is null.
gameswf::character* RenderFX::Find(const char* name, gameswf::character* context) {
    if (name == nullptr || context == nullptr) {
        return nullptr;
    }
    m_depthSearch.Init(context, name);
    return DepthSearch(0);
}
