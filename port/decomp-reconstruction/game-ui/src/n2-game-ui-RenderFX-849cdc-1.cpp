// Batch n2-game-ui-RenderFX-849cdc-1 (RenderFX, part 2 of 4): the character search, the named forms of the character
// accessors (a name is looked up with Find first), the text setters and the glyph and context helpers.
// Most bodies here wait on layouts that are not recovered yet (the gameswf::array of found characters, the texture
// caches, the edit-text character, the player context and the s_default_context and s_stringBuffer statics). Those are
// PARTIAL with the missing piece named. The named forms that only forward to a character form are reconstructed.
#include "dh2/RenderFX.hpp"

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_text.h"
#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_movie_def.h"
#include "vendor-gameswf/glyph_provider.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/texture_cache.hpp"
#include "vendor-gameswf/player_context.hpp"
#include "vendor-gameswf/render_handler_glitch.hpp"

#include <cstdarg>
#include <cstdio>
#include <cstring>

namespace gameswf {
// Library teardown helpers called by Finalize (gameswf_impl.cpp, gameswf_action.cpp and gameswf_disasm.cpp).
void clears_tag_loaders();           // upstream gameswf_movie_def.cpp
void clear_shared_libs();            // upstream gameswf_impl.cpp
void clear_standard_fnames();        // 0x7bb3e0
void clear_standard_method_map();
void clear_standard_property_map();
void clear_disasm();                 // upstream gameswf_disasm.cpp
}  // namespace gameswf

namespace {
char s_stringBuffer[8192];  // 0xa2cb9c, the shared text buffer of the Format* functions
}  // namespace

gameswf::player_context* RenderFX::s_default_context = nullptr;  // 0xa2eb9c

// 0x7a8acc RenderFX::CollectCharacters(gameswf::character*, char const*, int)
// flags: 1 skip invisible characters, 2 skip disabled movie clips, 4 skip characters with an empty name.
// The characters whose name contains `name` (every character when null) are appended to m_foundCharacters; the walk recurses
// into the children of movie clips. Returns the last is(2) result like the original.
int RenderFX::CollectCharacters(gameswf::character* character, const char* name, int flags) {
    bool visible = true;
    if ((flags & 1) != 0) {
        visible = character->get_visible();                              // +0x9b
    }
    int result = character->is(2);
    if ((!result || (flags & 2) == 0 || static_cast<gameswf::sprite_instance*>(character)->m_enabled) && visible) {  // +0xea
        if (name == nullptr || std::strstr(character->get_name().c_str(), name) != nullptr) {
            if ((flags & 4) == 0 || character->get_name().length() != 0) {
                reinterpret_cast<::array<gameswf::character*>&>(m_foundCharacters).push_back<gameswf::character*>(character);
            }
        }
        result = character->is(2);
        if (result) {
            gameswf::sprite_instance* sprite = static_cast<gameswf::sprite_instance*>(character);
            for (int i = 0; i < sprite->m_display_list.size(); ++i) {
                result = CollectCharacters(sprite->m_display_list.get_character(i), name, flags);
            }
        }
    }
    return result;
}

// 0x7a8c08 RenderFX::FindCharacters(gameswf::character*, char const*, int): empties the found list, collects below context
// and returns the list.
RenderFX::CharacterArray* RenderFX::FindCharacters(gameswf::character* context, const char* prefix, int index) {
    m_foundCharacters.count = 0;
    CollectCharacters(context, prefix, index);
    return &m_foundCharacters;
}

// 0x7a8cdc RenderFX::UnloadTextures(gameswf::player_context*): static (r0 is the context). Every bitmap of every player of the
// context (the default context when null) is unlaid (bitmap_info slot +0x0c).
void RenderFX::UnloadTextures(gameswf::player_context* context) {
    if (context == nullptr) {
        context = s_default_context;
    }
    for (int i = 0; i < context->m_players.size(); ++i) {
        gameswf::root* root = context->m_players[i]->get_root();
        gameswf::movie_def_impl* definition = root->m_def.get_ptr();
        for (int j = 0; j < definition->m_bitmap_list.size(); ++j) {
            definition->m_bitmap_list[j]->unlayout();
        }
    }
}

// 0x7a8d74 RenderFX::InitializeGlyphTextureCache(int, int): only logs that the call is deprecated.
void RenderFX::InitializeGlyphTextureCache(int width, int height) {
    gameswf::log_msg("RenderFX::InitializeGlyphTextureCache(int width, int height) deprecated. Use RenderFX::Initialize(InitializationParameters& parameters) instead.\n", width, height);
}

// 0x7a8d84 RenderFX::TraceHierarchy(gameswf::character*, int, int)
// flags: 1 skip invisible characters (and fully transparent ones), 8 skip characters with the +0x9d flag clear
// (character::m_need_advance). A null character starts at the root movie.
void RenderFX::TraceHierarchy(gameswf::character* character, int flags, int depth) {
    if (character == nullptr) {
        character = m_root->m_movie.get_ptr();
    }
    if (depth == 0) {
        gameswf::log_msg("Hierarchy:\n");
    }
    if (((flags & 1) == 0 || (character->get_visible() && character->get_world_cxform()->m_[3][0] != 0.0f)) &&   // +0x9b; cxform +0x18 (alpha multiplier)
        ((flags & 8) == 0 || character->m_need_advance)) {                                                 // +0x9d
        char indent[256];
        std::memset(indent, 0, sizeof(indent));
        for (int i = 0; i < depth; ++i) {
            std::strcpy(&indent[std::strlen(indent)], "   ");
        }
        if (character->is(32)) {
            gameswf::edit_text_character* edit = static_cast<gameswf::edit_text_character*>(character);
            gameswf::log_msg("%s edit: '%s' text='%s' @ 0x%x\n", indent, character->get_name().c_str(), edit->m_text.c_str(), character);
        } else if (character->is(2)) {
            gameswf::sprite_instance* sprite = static_cast<gameswf::sprite_instance*>(character);
            const int frame = sprite->get_current_frame();
            const char* state = sprite->get_play_state() != 0 ? "STOP" : "PLAY";
            gameswf::log_msg("%s sprite: '%s' f=%d %s @ 0x%x\n", indent, character->get_name().c_str(), frame, state, character);
            for (int i = 0; i < sprite->m_display_list.size(); ++i) {
                TraceHierarchy(sprite->m_display_list.get_character(i), flags, depth + 1);
            }
        } else {
            gameswf::log_msg("%s ch: '%s' @ 0x%x\n", indent, character->get_name().c_str(), character);
        }
    }
}

// 0x7a9008 RenderFX::DBG_TraceContextInformation(gameswf::character*): prints the name of every character below the context.
void RenderFX::DBG_TraceContextInformation(gameswf::character* character) {
    CharacterArray* found = FindCharacters(character, nullptr, 0);
    for (int i = 0; i < found->count; ++i) {
        std::printf("Found child named %s\n", found->data[i]->get_name().c_str());
        if (found->data[i]->is(2)) {
            std::puts("child is a sprite ...");
        }
    }
}

// 0x7a9160 RenderFX::Find(char const*): the named object, searched below the context, then below the root movie, then by
// ActionScript target path from the root movie (accepted only when it is an as_object, class id 1).
gameswf::as_object* RenderFX::Find(const char* name) {
    gameswf::character* found = Find(name, m_context);
    if (found == nullptr) {
        found = Find(name, m_root->m_movie.get_ptr());
        if (found == nullptr) {
            gameswf::as_object* target = m_root->get_root_movie()->find_target(name);
            if (target != nullptr) {
                return target->is(1) ? target : nullptr;
            }
        }
    }
    return found;
}

// 0x7a91d8 RenderFX::RegisterDisplayCallback(char const*, void (*)(gameswf::render_state&, void*), void*)
int RenderFX::RegisterDisplayCallback(const char* name, void (*callback)(gameswf::render_state&, void*), void* userData) {
    return RegisterDisplayCallback(static_cast<gameswf::character*>(Find(name)), callback, userData);
}

// 0x7a9204 RenderFX::IsAnimOver(char const*): IsAnimOver of the named character, false when the name is not found.
bool RenderFX::IsAnimOver(const char* name) {
    gameswf::as_object* target = Find(name);
    if (target != nullptr) {
        return IsAnimOver(static_cast<gameswf::character*>(target));
    }
    return false;
}

// 0x7a9228 RenderFX::GetFrameCount(char const*): the frame count of the named character, 0 when it is not found.
int RenderFX::GetFrameCount(const char* name) {
    gameswf::as_object* target = Find(name);
    if (target != nullptr) {
        return GetFrameCount(static_cast<gameswf::character*>(target));
    }
    return 0;
}

// 0x7a924c RenderFX::GotoFrame(char const*, int, bool): GotoFrame of the named character when it is found.
void RenderFX::GotoFrame(const char* name, int frame, bool flag) {
    gameswf::as_object* target = Find(name);
    if (target != nullptr) {
        GotoFrame(static_cast<gameswf::character*>(target), frame, flag);
    }
}

// 0x7a9280 RenderFX::GetText(char const*): the text of the named character (null when it is not found).
char* RenderFX::GetText(const char* name) {
    return GetText(static_cast<gameswf::character*>(Find(name)));
}

// 0x7a929c RenderFX::SetVisible(char const*, bool): the visible byte (+0x9b) of the found object.
void RenderFX::SetVisible(const char* name, bool visible) {
    gameswf::as_object* object = Find(name);
    if (object != nullptr) {
        static_cast<gameswf::character*>(object)->m_visible = visible;
    }
}

// 0x7a92b4 RenderFX::SetCursor(char const*, int): the cursor character (slot 2 of the controller record) of the controller.
void RenderFX::SetCursor(const char* name, int cursor) {
    gameswf::as_object* object = Find(name);
    m_controllers[cursor].m_characters[2] = static_cast<gameswf::character*>(object);
}

// 0x7a92e0 RenderFX::SetText(gameswf::character*, char const*, bool): an edit text character (class id 32) gets the text.
void RenderFX::SetText(gameswf::character* character, const char* text, bool html) {
    if (character != nullptr && character->is(32)) {
        ::tu_string value(text);
        static_cast<gameswf::edit_text_character*>(character)->set_text_value(value, html);
    }
}

// 0x7a9390 RenderFX::SetText(char const*, char const*, bool): SetText of the named character.
void RenderFX::SetText(const char* name, const char* text, bool flag) {
    SetText(static_cast<gameswf::character*>(Find(name)), text, flag);
}

// 0x7a941c RenderFX::FormatText(const char*, char const*, ...): vsprintf into the shared text buffer, then the text is set (HTML flag).
void RenderFX::FormatText(const char* target, const char* format, ...) {
    va_list arguments;
    va_start(arguments, format);
    std::vsprintf(s_stringBuffer, format, arguments);
    va_end(arguments);
    SetText(target, s_stringBuffer, 0);
}

// 0x7a953c RenderFX::ClearGlyphTextureCaches(gameswf::player_context*): static; resets both providers' texture caches.
void RenderFX::ClearGlyphTextureCaches(gameswf::player_context* context) {
    if (context == nullptr) {
        context = s_default_context;
    }
    if (context->m_glyph_provider != nullptr && context->m_glyph_provider->m_texture_cache != nullptr) {
        context->m_glyph_provider->m_texture_cache->reset();
    }
    if (context->m_bitmap_glyph_provider != nullptr && context->m_bitmap_glyph_provider->m_texture_cache != nullptr) {
        context->m_bitmap_glyph_provider->m_texture_cache->reset();
    }
}

// 0x7a95a8 RenderFX::PreloadGlyphs(gameswf::character*): preloads the glyphs of every edit text below the character (the root
// movie when null). Returns 1.
int RenderFX::PreloadGlyphs(gameswf::character* character) {
    if (character == nullptr) {
        character = m_root->m_movie.get_ptr();
    }
    CharacterArray* found = FindCharacters(character, nullptr, 0);
    for (int i = 0; i < found->count; ++i) {
        if (found->data[i]->is(32)) {
            static_cast<gameswf::edit_text_character*>(found->data[i])->preload_glyphs();
        }
    }
    return 1;
}

// 0x7a9708 RenderFX::CreateContext(RenderFX::InitializationParameters&): static. A player context with a glyph provider and a
// bitmap glyph provider built from the parameters; the video driver is the first parameter word.
gameswf::player_context* RenderFX::CreateContext(InitializationParameters& parameters) {
    gameswf::player_context* context = new gameswf::player_context();
    gameswf::glyph_provider* glyphs = new gameswf::glyph_provider(
        parameters.glyphTextureWidth, parameters.glyphTextureHeight, parameters.glyphFlag, parameters.glyphScale);
    context->m_glyph_provider = glyphs;                              // +0x0c
    gameswf::bitmap_glyph_provider* bitmapGlyphs = new gameswf::default_bitmap_glyph_provider(
        parameters.bitmapGlyphTextureWidth, parameters.bitmapGlyphTextureHeight, parameters.glyphFlag);
    context->m_bitmap_glyph_provider = bitmapGlyphs;                 // +0x10
    context->m_video_driver = parameters.videoDriver;                // +0x28
    return context;
}

// 0x7a90bc RenderFX::Unload(): resets the render handler (slot +0xa4 reset), the four controllers, drops the root and the player,
// empties the name at +0x44 and sets the context to null.
void RenderFX::Unload() {
    if (gameswf::s_render_handler != nullptr) {
        gameswf::s_render_handler->reset();
    }
    for (int i = 0; i != 4; ++i) {
        m_controllers[i].Reset();
    }
    m_root = nullptr;
    m_player = nullptr;
    m_name.resize(0);
    SetContext(nullptr);
}

// 0x7a93bc RenderFX::FormatHTML(const char*, char const*, ...): vsprintf into the shared text buffer, then the text is set (HTML flag).
void RenderFX::FormatHTML(const char* target, const char* format, ...) {
    va_list arguments;
    va_start(arguments, format);
    std::vsprintf(s_stringBuffer, format, arguments);
    va_end(arguments);
    SetText(target, s_stringBuffer, 1);
}

// 0x7a947c RenderFX::FormatHTML(gameswf::character*, char const*, ...): vsprintf into the shared text buffer, then the text is set (HTML flag 1).
void RenderFX::FormatHTML(gameswf::character* target, const char* format, ...) {
    va_list arguments;
    va_start(arguments, format);
    std::vsprintf(s_stringBuffer, format, arguments);
    va_end(arguments);
    SetText(target, s_stringBuffer, 1);
}

// 0x7a94dc RenderFX::FormatText(gameswf::character*, char const*, ...): vsprintf into the shared text buffer, then the text is set (HTML flag 0).
void RenderFX::FormatText(gameswf::character* target, const char* format, ...) {
    va_list arguments;
    va_start(arguments, format);
    std::vsprintf(s_stringBuffer, format, arguments);
    va_end(arguments);
    SetText(target, s_stringBuffer, 0);
}

// 0x7a97ac RenderFX::Finalize(): destroys the default context and the render handler and clears the gameswf global tables.
void RenderFX::Finalize() {
    DestroyContext(s_default_context);
    s_default_context = nullptr;
    if (gameswf::s_render_handler != nullptr) {
        gameswf::destruct<gameswf::render_handler>(gameswf::s_render_handler);
        gameswf::s_render_handler = nullptr;
    }
    gameswf::clears_tag_loaders();
    gameswf::clear_shared_libs();
    gameswf::clear_standard_fnames();
    gameswf::clear_standard_method_map();
    gameswf::clear_standard_property_map();
    gameswf::clear_disasm();
}
