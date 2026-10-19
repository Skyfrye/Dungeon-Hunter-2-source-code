// Batch n2-game-ui-RenderFX-849cdc-2 (RenderFX, part 3 of 4): initialization, the per-frame display calls, the viewport,
// the color and position setters, the glyph preload and the font and texture helpers.
// Most bodies use gameswf internals that the tree does not declare with the needed signatures (the player and root
// display calls, the filter array, the texture loader callbacks, the glyph providers, the cxform and matrix setters with
// their float handling). Those are PARTIAL, with the missing piece named. The named forms that only forward to a
// character are reconstructed.
#include "dh2/RenderFX.hpp"

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_text.h"
#include "gameswf/gameswf_sprite.h"
#include "vendor-gameswf/filter_engine.hpp"
#include "vendor-gameswf/effect.hpp"
#include <cstring>
#include <string>

#include "base/tu_file.h"
#include "core-platform/w7_global_03.hpp"  // message_log
#include "gameswf/gameswf.h"
#include "vendor-gameswf/gameswf_dh2_runtime.hpp"
#include "vendor-gameswf/render_handler_glitch.hpp"
#include "vendor-gameswf/player_context.hpp"
#include "vendor-gameswf/bitmap_glyph_provider.hpp"
#include "vendor-gameswf/glyph_provider.hpp"
#include "vendor-gameswf/texture_cache.hpp"

namespace gameswf {
void standard_method_map_init();  // 0x76f5c0
render_handler* create_render_handler_irrlicht(void* driver);  // 0x7d6658
}  // namespace gameswf

extern const char* RES_PATH;  // the data directory the platform layer sets (core-platform app_entry)

namespace {
// 0x7a9954 file_opener(char const*): a tu_file opened for reading on the gameswf heap.
// The binary opens through the game file system (fs_open_func), which prefixes RES_PATH to a relative name; the vendored tu_file calls fopen,
// so on Android (where the working directory is not the data directory) the prefix is applied here.
::tu_file* file_opener(const char* name) {
    std::string path;
#if defined(__ANDROID__) || defined(DH2_HOST_RUNNER)
    if (name != nullptr && name[0] != '/' && RES_PATH != nullptr) path = std::string(RES_PATH) + name;
    else
#endif
        path = name != nullptr ? name : "";
    void* memory = ::operator new(sizeof(::tu_file), swf::MEM_UNRECOVERED);
    return new (memory) ::tu_file(path.c_str(), "rb");
}

// 0x7a846c log_callback(bool, char const*): the message goes to the log; an error also goes to stderr.
void log_callback(bool error, const char* message) {
    message_log(message);
    if (error) {
        std::fputs(message, stderr);
        std::fflush(stderr);
    }
}

// 0x7ad81c fscommand_callback_handler(gameswf::character*, char const*, char const*): hands the command to the RenderFX that
// loaded the character's player.
void fscommand_callback_handler(gameswf::character* character, const char* command, const char* args) {
    gameswf::player* player = character->m_player.get_ptr();
    static_cast<RenderFX*>(player->m_render_fx)->FSCommand(command, args);
}
}  // namespace

// 0x7a9814 RenderFX::Initialize(RenderFX::InitializationParameters&): static. Once only (while there is no default context):
// registers the file opener, the log callback (verbose parse only) and the fscommand handler, creates the render handler
// (open, set_antialiased(true)), registers the texture loader, fills the standard method map and creates the
// default context. When a default context exists the original returns its r0 unchanged (the parameters address); the default
// context is returned here.
gameswf::player_context* RenderFX::Initialize(InitializationParameters& parameters) {
    if (s_default_context == nullptr) {
        gameswf::register_file_opener_callback(file_opener);
        if (gameswf::get_verbose_parse()) {
            gameswf::register_log_callback(log_callback);
        }
        gameswf::register_fscommand_callback(fscommand_callback_handler);
        gameswf::render_handler* handler = gameswf::create_render_handler_irrlicht(parameters.videoDriver);
        gameswf::s_render_handler = handler;
        handler->open();                         // vtable slot +0xa0
        handler->set_antialiased(true);         // vtable slot +0x84
        if (parameters.textureLoader != nullptr) {
            gameswf::register_texture_loader_callback(parameters.textureLoader);
        }
        gameswf::standard_method_map_init();
        s_default_context = CreateContext(parameters);
    }
    return s_default_context;
}

// 0x7a98f8 RenderFX::Initialize(glitch::video::IVideoDriver*): deprecated; logs, then initializes with the driver, flag 1 and scale 1.0.
gameswf::player_context* RenderFX::Initialize(glitch::video::IVideoDriver* videoDriver) {
    gameswf::log_msg("RenderFX::Initialize(gameswf::video_driver* videoDriver) deprecated. Use RenderFX::Initialize(InitializationParameters& parameters) instead.\n");
    InitializationParameters parameters;
    std::memset(&parameters, 0, sizeof(parameters));
    parameters.videoDriver = videoDriver;
    parameters.glyphFlag = true;
    parameters.glyphScale = 1.0f;
    return Initialize(parameters);
}

// 0x7a9a94 RenderFX::Render(): displays the root with a reference held on it.
void RenderFX::Render() {
    ::smart_ptr<gameswf::root> root(m_player->get_root());
    root->display();
}

// 0x7a9ac8 RenderFX::EndDisplay(): root end_display with a reference held on it.
void RenderFX::EndDisplay() {
    ::smart_ptr<gameswf::root> root(m_player->get_root());
    root->end_display();
}

// 0x7a9afc RenderFX::BeginDisplay(): root begin_display with a reference held on it.
void RenderFX::BeginDisplay() {
    ::smart_ptr<gameswf::root> root(m_player->get_root());
    root->begin_display();
}

// 0x7a9b30 RenderFX::SetBounds(int, int, int, int, gameswf::scale_mode): the root's display bounds.
void RenderFX::SetBounds(int x, int y, int width, int height, gameswf::scale_mode mode) {
    ::smart_ptr<gameswf::root> root(m_player->get_root());
    root->set_display_bounds(x, y, width, height, mode);
}

// 0x7a9bac RenderFX::SetViewport(int, int, int, int): the root's display viewport.
void RenderFX::SetViewport(int x, int y, int width, int height) {
    ::smart_ptr<gameswf::root> root(m_player->get_root());
    root->set_display_viewport(x, y, width, height);
}

// 0x7a9c1c RenderFX::PreRender(): runs the filter engine over the root when one is installed.
void RenderFX::PreRender() {
    ::smart_ptr<gameswf::root> root(m_player->get_root());
    if (gameswf::filter_engine::s_instance != nullptr) {
        gameswf::filter_engine::s_instance->run(root.get_ptr());
    }
}

// 0x7a9c80 RenderFX::SetColorFilter(gameswf::character*, int, unsigned int): copies the character's effect, sets the colour of
// filter `index` when it is a drop shadow (0) or glow (2), and gives the copy back to the character.
void RenderFX::SetColorFilter(gameswf::character* character, int index, unsigned int color) {
    if (character == nullptr || index < 0) {
        return;
    }
    const gameswf::effect* source = &character->get_effect();   // +0x50
    if (index < source->m_filters.size()) {
        gameswf::effect copy;
        copy.m_blend_mode = source->m_blend_mode;
        copy.m_filters.resize(source->m_filters.size());
        for (int i = 0; i < copy.m_filters.size(); ++i) {
            copy.m_filters[i] = source->m_filters[i];
        }
        gameswf::filter& filter = copy.m_filters[index];
        if (filter.type == 0 || filter.type == 2) {
            std::memcpy(filter.color, &color, 4);               // +0x04
        }
        character->set_effect(copy);
        copy.m_filters.resize(0);
        copy.m_filters.reserve(0);
    }
}

// 0x7a9da4 RenderFX::SetColorFilter(char const*, int, unsigned int): SetColorFilter of the named character.
void RenderFX::SetColorFilter(const char* name, int index, unsigned int color) {
    SetColorFilter(static_cast<gameswf::character*>(Find(name)), index, color);
}

// 0x7aa02c RenderFX::SetColorTransform(char const*, unsigned int, unsigned int): SetColorTransform of the named character.
int RenderFX::SetColorTransform(const char* name, unsigned int first, unsigned int second) {
    return SetColorTransform(static_cast<gameswf::character*>(Find(name)), first, second);
}

// 0x7aa058 RenderFX::SetAlpha(char const*, float): the alpha multiplier of the found character's colour transform.
void RenderFX::SetAlpha(const char* name, float alpha) {
    gameswf::as_object* object = Find(name);
    if (object != nullptr) {
        gameswf::cxform transform = gameswf::cxform::identity;
        transform.m_[3][0] = (alpha < -3.4028e38f || alpha > 3.4028e38f) ? 0.0f : alpha;
        static_cast<gameswf::character*>(object)->set_cxform(transform);
    }
}

// 0x7aa0ec RenderFX::ForceTexturesToVRAM(bool, gameswf::player_context*): static. Lays out the glyph caches' textures, then lays
// out every bitmap of every player of the context; with `flag` each bitmap is also drawn once (an identity matrix, empty
// rectangles, white) inside the player's begin_display and end_display so the driver uploads it. The original returns whatever the
// last call left in r0; 0 is returned.
int RenderFX::ForceTexturesToVRAM(bool flag, gameswf::player_context* context) {
    gameswf::matrix identity;
    gameswf::rect screen;
    screen.m_x_min = 0.0f;
    screen.m_x_max = 1.0f;
    screen.m_y_min = 0.0f;
    screen.m_y_max = 1.0f;
    gameswf::rect coordinates;
    coordinates.m_x_min = coordinates.m_x_max = coordinates.m_y_min = coordinates.m_y_max = 0.0f;
    gameswf::rgba white;
    white.m_r = white.m_g = white.m_b = white.m_a = 0xff;
    if (context == nullptr) {
        context = s_default_context;
    }
    if (context->m_glyph_provider->m_texture_cache != nullptr) {
        context->m_glyph_provider->m_texture_cache->m_texture->layout();
    }
    if (context->m_bitmap_glyph_provider->m_texture_cache != nullptr) {
        context->m_bitmap_glyph_provider->m_texture_cache->m_texture->layout();
    }
    for (int i = 0; i < context->m_players.size(); ++i) {
        gameswf::player* player = context->m_players[i];
        if (flag) {
            player->get_root()->begin_display();
        }
        gameswf::movie_def_impl* definition = player->get_root()->m_def.get_ptr();
        for (int j = 0; j < definition->m_bitmap_list.size(); ++j) {
            gameswf::bitmap_info* bitmap = definition->m_bitmap_list[j].get_ptr();
            bitmap->layout();
            if (flag) {
                gameswf::s_render_handler->draw_bitmap(identity, bitmap, coordinates, screen, white);
            }
        }
        if (flag) {
            player->get_root()->end_display();
        }
    }
    return 0;
}

// 0x7aa5e0 RenderFX::SetPosition(char const*, int, int): SetPosition of the named character.
void RenderFX::SetPosition(const char* name, int x, int y) {
    SetPosition(static_cast<gameswf::character*>(Find(name)), x, y);
}

// 0x7aac54 RenderFX::ClearFonts(gameswf::player_context*): static. Empties the text of every edit text of every player of the
// context (the default one when null), then clears the face table and the bitmap font table and resets both texture caches.
void RenderFX::ClearFonts(gameswf::player_context* context) {
    if (context == nullptr) {
        context = s_default_context;
    }
    ::tu_string empty;
    for (int i = 0; i < context->m_players.size(); ++i) {
        RenderFX* owner = static_cast<RenderFX*>(context->m_players[i]->m_render_fx);   // player +0x94
        CharacterArray* found = owner->FindCharacters(owner->m_root->m_movie.get_ptr(), nullptr, 0);
        for (int j = 0; j < found->count; ++j) {
            if (found->data[j]->is(32)) {
                static_cast<gameswf::edit_text_character*>(found->data[j])->set_text_value(empty, false);
            }
        }
    }
    if (context->m_glyph_provider != nullptr) {
        context->m_glyph_provider->m_faces.clear();
        if (context->m_glyph_provider->m_texture_cache != nullptr) {
            context->m_glyph_provider->m_texture_cache->reset();
        }
    }
    if (context->m_bitmap_glyph_provider != nullptr) {
        context->m_bitmap_glyph_provider->m_font_entities.clear();
        if (context->m_bitmap_glyph_provider->m_texture_cache != nullptr) {
            context->m_bitmap_glyph_provider->m_texture_cache->reset();
        }
    }
}

// 0x7aafac RenderFX::PreloadGlyphs(unsigned short const*, int, char const*, int, bool, bool, gameswf::filter const*)
// A temporary font (bold and italic flags, the given name) preloads the UTF-16 codes through the player's context.
unsigned int RenderFX::PreloadGlyphs(const unsigned short* text, int length, const char* font, int size, bool bold, bool italic,
                                     const gameswf::filter* filter) {
    gameswf::font* fontObject = new gameswf::font(m_player.get_ptr());
    ::smart_ptr<gameswf::font> holder(fontObject);
    fontObject->set_bold(bold);       // +0x4d
    fontObject->set_italic(italic);   // +0x4c
    fontObject->set_name(::tu_string(font));
    return gameswf::preload_glyph_codes(m_player->m_context, const_cast<unsigned short*>(text), length, fontObject, size, filter);
}

// 0x7ab0b8 RenderFX::PreloadGlyphs(char const*, char const*, int, bool, bool, gameswf::filter const*)
// Decodes the UTF-8 text into UTF-16 codes and preloads them with the font.
unsigned int RenderFX::PreloadGlyphs(const char* text, const char* font, int size, bool bold, bool italic,
                                     const gameswf::filter* filter) {
    const char* cursor = text;
    ::array<unsigned short> codes;
    unsigned int result = 0;
    while ((result = utf8::decode_next_unicode_character(&cursor)) != 0) {
        codes.push_back<unsigned short>(static_cast<unsigned short>(result));
    }
    if (codes.size() > 0) {
        result = PreloadGlyphs(&codes[0], codes.size(), font, size, bold, italic, filter);
    }
    codes.clear();
    codes.reserve(0);
    return result;
}

// 0x7ab3d8 RenderFX::SetLocalVariable(char const*, char const*, gameswf::as_value&)
// A local variable of the movie clip found under `name` (by search, then by ActionScript path).
void RenderFX::SetLocalVariable(const char* name, const char* variable, gameswf::as_value& value) {
    ::tu_string variableName(variable);
    gameswf::as_object* target = Find(name);
    if (target == nullptr) {
        target = m_root->get_root_movie()->find_target(name);
        if (target == nullptr) {
            return;
        }
    }
    if (!target->is(2)) {
        return;
    }
    target->get_environment()->set_local(variableName, value);
}

// 0x7ab4cc RenderFX::ReplaceTexture(char const*, glitch::video::ITexture*)
// The bitmap exported under `name` by the root movie's definition gets the new texture.
void RenderFX::ReplaceTexture(const char* name, glitch::video::ITexture* texture) {
    gameswf::character_def* definition = m_root->m_movie->get_character_def();   // slot +0x130
    if (definition != nullptr && definition->is(8)) {
        ::tu_string symbol(name);
        gameswf::character_def* resource = static_cast<gameswf::movie_definition_sub*>(definition)->get_exported_resource(symbol);   // slot +0x58
        if (resource != nullptr && resource->is(33)) {
            static_cast<gameswf::bitmap_character_def*>(resource)->get_bitmap_info()->set_texture(texture);   // +0x2c, then +0x20
        }
    }
}

// 0x7a9dd0 RenderFX::SetColorTransform(gameswf::character*, unsigned int, unsigned int): the first word holds the four
// multipliers (0xRRGGBBAA, divided by 255), the second the four additive terms (bytes). Each float is replaced by 0 when it is
// not finite.
int RenderFX::SetColorTransform(gameswf::character* character, unsigned int first, unsigned int second) {
    if (character == nullptr) {
        return 0;
    }
    auto sanitize = [](float v) { return (v < -3.4028e38f || v > 3.4028e38f) ? 0.0f : v; };
    gameswf::cxform transform;
    transform.m_[0][0] = sanitize(static_cast<float>((first >> 16) & 0xff) / 255.0f);
    transform.m_[1][0] = sanitize(static_cast<float>((first >> 8) & 0xff) / 255.0f);
    transform.m_[2][0] = sanitize(static_cast<float>(first & 0xff) / 255.0f);
    transform.m_[3][0] = sanitize(static_cast<float>(first >> 24) / 255.0f);
    transform.m_[0][1] = sanitize(static_cast<float>((second >> 16) & 0xff));
    transform.m_[1][1] = sanitize(static_cast<float>((second >> 8) & 0xff));
    transform.m_[2][1] = sanitize(static_cast<float>(second & 0xff));
    transform.m_[3][1] = sanitize(static_cast<float>(second >> 24));
    character->set_cxform(transform);
    return 0;
}

// 0x7aa3f0 RenderFX::SetPosition(gameswf::character*, int, int): moves the character to (x, y) in twips (x20) and keeps the
// scale (signed by the determinant) and rotation of its current local matrix.
void RenderFX::SetPosition(gameswf::character* character, int x, int y) {
    if (character == nullptr) {
        return;
    }
    const gameswf::matrix* current = character->m_local_matrix;   // +0x4c
    gameswf::matrix matrix;                                         // identity
    const float scaledX = static_cast<float>(x) * 20.0f;
    const float scaledY = static_cast<float>(y) * 20.0f;
    float translateX = (scaledX + scaledY * matrix.m_[1][0]) + 0.0f;
    if (translateX < -3.4028e38f || translateX > 3.4028e38f) {
        translateX = 0.0f;
    }
    matrix.m_[0][2] = translateX;
    float translateY = (scaledY + scaledX * matrix.m_[0][1]) + matrix.m_[1][2];
    if (translateY < -3.4028e38f || translateY > 3.4028e38f) {
        translateY = 0.0f;
    }
    matrix.m_[1][2] = translateY;
    float scaleX = std::sqrt(current->m_[0][0] * current->m_[0][0] + current->m_[0][1] * current->m_[0][1]);
    if (current->m_[1][1] * current->m_[0][0] - current->m_[1][0] * current->m_[0][1] < 0.0f) {
        scaleX = -scaleX;
    }
    const float scaleY = std::sqrt(current->m_[1][1] * current->m_[1][1] + current->m_[1][0] * current->m_[1][0]);
    const float rotation = current->get_rotation();
    matrix.set_scale_rotation(scaleX, scaleY, rotation);
    character->set_matrix(matrix);
}

// 0x7ab1cc RenderFX::~RenderFX() (D1, complete object), 0x7ab2e0 (D2, base object): the same body in the original.
// Unload (non-virtually), then the four controllers (reverse order), the name string, the root and the player are released by the
// members, the depth search data is emptied, the search index is cleared and the found array releases its buffer.
RenderFX::~RenderFX() {
    RenderFX::Unload();
    m_searchIndex.Clear();
    m_foundCharacters.count = 0;
    reinterpret_cast< ::array<gameswf::character*>&>(m_foundCharacters).reserve(0);
}

// 0x7ab2c4 RenderFX::~RenderFX() (D0, deleting destructor): compiler-generated (D1, then CustomFree).

// 0x7ab5d4 RenderFX::SetMember(char const*, char const*, gameswf::as_value&)
// Sets a member of the object found under `target` (by search, then by ActionScript path) through its set_member (slot +0x1c).
void RenderFX::SetMember(const char* target, const char* name, gameswf::as_value& value) {
    ::tu_string memberName(name);
    gameswf::as_object* object = Find(target);
    if (object == nullptr) {
        object = m_root->get_root_movie()->find_target(target);
    }
    if (object != nullptr) {
        object->set_member(::tu_stringi(memberName), value);
    }
}
