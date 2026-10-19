// GameSWFUtils bodies, batch g1-game-ui-GameSWFUtils-e60dd5-0 (18 functions, 0x4163c8 to 0x41724c).
// Rebuilt from the Hex-Rays pseudocode of libDungeonHunter2.so and checked against the ARM assembly
// (tools/decomp_asm.py) where the pseudocode mistypes an argument. Offsets in comments are the original
// 32-bit ARM offsets.
//
// Calling convention: every GameSWFUtils function is static. IDA adds an implicit `this` to the demangled
// symbol, so the pseudocode calls the first explicit argument `this` and shifts the others (a2 is the second
// explicit argument, a3 the third). The assembly shows the static form: r0 is the first explicit argument
// (the character, the root or the MenuFX), r1 the second, r2 the third. Where the pseudocode types a register
// as a pointer but the code uses it as a number, the code's use is what is rebuilt.
//
// Virtual calls on gameswf::character use the binary's own vtable (tools/decomp_vtable.py,
// _ZTVN7gameswf9characterE): +0x008 is(int), +0x020 get_member, +0x094 set_play_state, +0x13c get_frame_count,
// +0x14c goto_frame. The class id 2 passed to is() is AS_SPRITE in the upstream enum. The id 32 used by the text
// setters and PreloadGlyph is not named in this build (upstream r1714 calls it AS_TEXTFORMAT).

#include <array>

#include "core-platform/debug_out.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/MenuFX.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_value.h"
#include "gameswf/gameswf_text.h"
#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_movie_def.h"
#include "vendor-gameswf/effect.hpp"
#include "vendor-gameswf/gameswf_root.hpp"
#include "dh2/Application.hpp"
#include "dh2/Singleton.hpp"
#include "glitch-core-io/os/device.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/global/MenuManagerGlobals.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

#include <cstdio>
#include <cstring>

namespace {

// Class id the original passes to character::is() in SetTextHeight, SetLineSpacing and PreloadGlyph.
constexpr int kTextClassId = 32;

}  // namespace

const char* const GameSWFUtils::CACHE_CHARS_NUMBERS = "0123456789 :/%()!.,_-+[]";
const char* const GameSWFUtils::CACHE_CHARS_A_TO_Z = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
const char* const GameSWFUtils::CACHE_CHARS_a_TO_z = "abcdefghijklmnopqrstuvwxyz";

// 0x4163c8 _ZN12GameSWFUtils13SetTextHeightEPN7gameswf9characterEi
// An edit text (class id 32) gets the text height (m_text_height, +0x174) of height * 20 twips. Returns 1, or 0 for any other character.
int GameSWFUtils::SetTextHeight(gameswf::character* character, int height) {
    if (!character->is(kTextClassId)) {
        return 0;
    }
    static_cast<gameswf::edit_text_character*>(character)->m_text_height = static_cast<float>(height) * 20.0f;   // +0x174
    return 1;
}

// 0x41640c _ZN12GameSWFUtils14SetLineSpacingEPN7gameswf9characterEi
// An edit text (class id 32) gets spacing * 20 stored at +0x160 (the member the header calls m_y; the assembly stores the
// line spacing there). Returns 1, or 0 for any other character.
int GameSWFUtils::SetLineSpacing(gameswf::character* character, int spacing) {
    if (!character->is(kTextClassId)) {
        return 0;
    }
    static_cast<gameswf::edit_text_character*>(character)->m_y = static_cast<float>(spacing) * 20.0f;   // +0x160
    return 1;
}

// 0x416450 _ZN12GameSWFUtils9GotoFrameEPN7gameswf9characterEi
// Sprite check, then get_frame_count (+0x13c, the result is not used), goto_frame(frame) (+0x14c) and
// set_play_state(1) (+0x94). Play state 1 is STOP in the upstream enum (PLAY = 0, STOP = 1), so the frame is shown
// and stopped, as gotoAndStop does.
int GameSWFUtils::GotoFrame(gameswf::character* character, int frame) {
    if (!character || !character->is(gameswf::AS_SPRITE)) {
        return 0;
    }
    character->get_frame_count();
    character->goto_frame(frame);
    character->set_play_state(gameswf::character::STOP);
    return 1;
}

// 0x4164c0 _ZN12GameSWFUtils14GetPixelScaleXEPN7gameswf4rootE
// The display width of the root over the frame width of its movie in pixels ((x_max - x_min) / 20).
float GameSWFUtils::GetPixelScaleX(gameswf::root* root) {
    const gameswf::rect& frame = root->m_def->m_frame_size;   // movie +0xb4 .. +0xc0
    return static_cast<float>(root->m_display_width) / ((frame.m_x_max - frame.m_x_min) / 20.0f);
}

// 0x4164fc _ZN12GameSWFUtils14GetPixelScaleYEPN7gameswf4rootE
// The display height of the root over the frame height of its movie in pixels ((y_max - y_min) / 20).
float GameSWFUtils::GetPixelScaleY(gameswf::root* root) {
    const gameswf::rect& frame = root->m_def->m_frame_size;
    return static_cast<float>(root->m_display_height) / ((frame.m_y_max - frame.m_y_min) / 20.0f);
}

// 0x416538 _ZN12GameSWFUtils17GetInvPixelScaleXEPN7gameswf4rootE
// The reciprocal of GetPixelScaleX.
float GameSWFUtils::GetInvPixelScaleX(gameswf::root* root) {
    const gameswf::rect& frame = root->m_def->m_frame_size;
    return ((frame.m_x_max - frame.m_x_min) / 20.0f) / static_cast<float>(root->m_display_width);
}

// 0x416578 _ZN12GameSWFUtils17GetInvPixelScaleYEPN7gameswf4rootE
// The reciprocal of GetPixelScaleY.
float GameSWFUtils::GetInvPixelScaleY(gameswf::root* root) {
    const gameswf::rect& frame = root->m_def->m_frame_size;
    return ((frame.m_y_max - frame.m_y_min) / 20.0f) / static_cast<float>(root->m_display_height);
}

// 0x41684c _ZN12GameSWFUtils10MoveBtnPosEPN7gameswf9characterEff
// Moves the character so that its world position becomes (x, y) in the space of its parent: the inverse of the parent world matrix
// is multiplied with the character world matrix whose translation is (x * 20, y * 20), and the resulting translation (in
// pixels) is given to RenderFX::SetPosition (which does not use its object, so the original passes null).
int GameSWFUtils::MoveBtnPos(gameswf::character* character, float x, float y) {
    if (!character) {
        return 0;
    }
    gameswf::matrix inverse;   // identity
    gameswf::character* parent = character->get_parent();
    if (parent != nullptr) {
        inverse.set_inverse(*parent->get_world_matrix());
    }
    const gameswf::matrix* world = character->get_world_matrix();
    gameswf::matrix placed;
    placed.m_[0][0] = world->m_[0][0];
    placed.m_[0][1] = world->m_[0][1];
    placed.m_[1][0] = world->m_[1][0];
    placed.m_[1][1] = world->m_[1][1];
    float translateX = x * 20.0f;
    if (translateX < -3.4028e38f || translateX > 3.4028e38f) {
        translateX = 0.0f;
    }
    placed.m_[0][2] = translateX;
    float translateY = y * 20.0f;
    if (translateY < -3.4028e38f || translateY > 3.4028e38f) {
        translateY = 0.0f;
    }
    placed.m_[1][2] = translateY;
    inverse.concatenate(placed);
    RenderFX::SetPosition(character, static_cast<int>(inverse.m_[0][2] / 20.0f), static_cast<int>(inverse.m_[1][2] / 20.0f));
    return 1;
}

// 0x4169e8 _ZN12GameSWFUtils19GetAbsolutePositionEPN7gameswf9characterE
// The sum of the local translations (matrix +0x08 and +0x14) of the character and all its parents. A null character gives (0, 0)
// (the original walks a null pointer).
std::array<float, 2> GameSWFUtils::GetAbsolutePosition(gameswf::character* character) {
    std::array<float, 2> position = {0.0f, 0.0f};
    if (character == nullptr) {
        return position;
    }
    position[0] = character->m_local_matrix->m_[0][2] + 0.0f;
    position[1] = character->m_local_matrix->m_[1][2] + 0.0f;
    for (gameswf::character* parent = character->get_parent(); parent != nullptr; parent = parent->get_parent()) {
        position[0] = position[0] + parent->m_local_matrix->m_[0][2];
        position[1] = position[1] + parent->m_local_matrix->m_[1][2];
    }
    return position;
}

// 0x416a7c _ZN12GameSWFUtils23GetAbsoluteBoundingRectEPN7gameswf9characterE
// The bounds of the character (get_bound, slot +0x12c) moved by the absolute position of its parent, in pixels: xmin, xmax,
// ymin, ymax. The original leaves the result unset for a null character; zeros here.
std::array<float, 4> GameSWFUtils::GetAbsoluteBoundingRect(gameswf::character* character) {
    std::array<float, 4> result = {0.0f, 0.0f, 0.0f, 0.0f};
    if (character != nullptr) {
        const std::array<float, 2> offset = GetAbsolutePosition(character->get_parent());
        gameswf::rect bounds;
        character->get_bound(&bounds);
        result[0] = (offset[0] + bounds.m_x_min) / 20.0f;
        result[1] = (offset[0] + bounds.m_x_max) / 20.0f;
        result[2] = (offset[1] + bounds.m_y_min) / 20.0f;
        result[3] = (offset[1] + bounds.m_y_max) / 20.0f;
    }
    return result;
}

// 0x416b3c _ZN12GameSWFUtils15GetLabeledFrameEPN7gameswf9characterEPKc
// The frame of a label: the clip jumps to the label, the frame it reached is read, and the clip goes back to its old frame.
// -1 when the label does not exist.
int GameSWFUtils::GetLabeledFrame(gameswf::character* character, const char* label) {
    const int oldFrame = character->get_current_frame();   // +0x138
    ::tu_stringi name(label);
    if (!character->goto_labeled_frame(name)) {            // +0x9c
        return -1;
    }
    const int frame = character->get_current_frame();
    character->goto_frame(oldFrame);                       // +0x14c
    return frame;
}

// 0x416c14 _ZN12GameSWFUtils16SwfTextureLoaderEPKcii
// The texture loader of the menu movies (width and height are not read). The splash and alliance images have one file per
// language; every other name loads from "data/<name>". The texture comes from the texture manager of the video driver and the
// reference taken here is dropped again, so the manager keeps the texture.
glitch::video::ITexture* GameSWFUtils::SwfTextureLoader(const char* path, int width, int height) {
    (void)width;
    (void)height;
    char name[256];
    if (std::strcmp(path, "menus/splash_final.tga") == 0) {
        const int language = dword_99F778->getLanguage();
        if (language == 4) {
            std::strcpy(name, "data/3d/textures/splash_final_jp.tga");
        } else if (language == 5) {
            std::strcpy(name, "data/3d/textures/splash_final_kor.tga");
        } else {
            std::strcpy(name, "data/3d/textures/splash_final.tga");
        }
    } else if (std::strcmp(path, "menus/splash_final_I9000.tga") == 0) {
        const int language = dword_99F778->getLanguage();
        if (language == 4) {
            std::strcpy(name, "data/3d/textures/splash_final_jp.tga");
        } else if (language == 5) {
            std::strcpy(name, "data/3d/textures/splash_final_kor.tga");
        } else {
            std::strcpy(name, "data/3d/textures/splash_final_I9000.tga");
        }
    } else if (std::strcmp(path, "menus/splash_final_droid.tga") == 0) {
        const int language = dword_99F778->getLanguage();
        if (language == 4) {
            std::strcpy(name, "data/3d/textures/splash_final_jp.tga");
        } else if (language == 5) {
            std::strcpy(name, "data/3d/textures/splash_final_kor.tga");
        } else {
            std::strcpy(name, "data/3d/textures/splash_final_droid.tga");
        }
    } else if (std::strcmp(path, "menus/dhalliance.tga") != 0) {
        std::sprintf(name, "data/%s", path);
    } else {
        switch (dword_99F778->getLanguage()) {
            case 1:
                std::strcpy(name, "data/3d/textures/dhalliance_fr.tga");
                break;
            case 2:
                std::strcpy(name, "data/3d/textures/dhalliance_de.tga");
                break;
            case 3:
                std::strcpy(name, "data/3d/textures/dhalliance_it.tga");
                break;
            case 5:
                std::strcpy(name, "data/3d/textures/dhalliance_ko.tga");
                break;
            case 6:
                std::strcpy(name, "data/3d/textures/dhalliance_sc.tga");
                break;
            case 7:
                std::strcpy(name, "data/3d/textures/dhalliance_sp.tga");
                break;
            default:
                std::strcpy(name, "data/3d/textures/dhalliance.tga");
                break;
        }
    }
    glitch::video::CTextureManager* textureManager = Singleton<Application>::s_inst.m_device->videoDriver->m_textureManager;   // device +0x10, driver +0xe0
    boost::intrusive_ptr<glitch::video::ITexture> texture = textureManager->getTexture(name, static_cast<const char*>(nullptr));
    return texture.get();
}

// 0x416fc8 _ZN12GameSWFUtils14gameswf_loggerEbPKc
// PARTIAL: when the logger is disabled the original returns the result of _DEBUG_OUT("%s", message). The declared
// _DEBUG_OUT returns void, so that result is not available and 0 is returned. When enabled, the flag itself is
// returned (1 for true), as the original does.
int GameSWFUtils::gameswf_logger(bool enabled, const char* message) {
    if (!enabled) {
        _DEBUG_OUT("%s", message);
        return 0;  // PARTIAL: the original returns _DEBUG_OUT's result here (int in the binary).
    }
    return enabled;
}

// 0x416fe0 _ZN12GameSWFUtils8PlayAnimEP6MenuFXPN7gameswf9characterEPKc
// The menu's RenderFX::PlayAnim(character, anim, 0) is tried first. Otherwise the character's member named anim is
// read with get_member (+0x20), and the menu's AS callback of that name is invoked with no arguments. The value
// read by get_member is released on every path, which the as_value destructor does here.
int GameSWFUtils::PlayAnim(MenuFX* menu, gameswf::character* character, const char* anim) {
    if (!menu || !character) {
        return 0;
    }
    if (menu->PlayAnim(character, anim, 0)) {
        return 1;
    }
    tu_string name(anim);  // global tu_string in upstream base/container.h; converts to tu_stringi
    gameswf::as_value value;
    bool played = character->get_member(name, &value) &&
                  menu->InvokeASCallback(character, anim, nullptr, 0) != 0;
    return played ? 1 : 0;
}

// 0x417108 _ZN12GameSWFUtils8PlayAnimEP6MenuFXPKcS3_
// The target name is looked up with the menu's RenderFX::Find, and the character found is animated with the
// overload above. A null menu or target returns 0, and so does a null result from the lookup.
int GameSWFUtils::PlayAnim(MenuFX* menu, const char* target, const char* anim) {
    if (!menu || !target) {
        return 0;
    }
    gameswf::character* found = static_cast<gameswf::character*>(menu->Find(target));
    return PlayAnim(menu, found, anim);
}

// 0x417148 _ZN12GameSWFUtils18GetFrameIDFromNameEPN7gameswf9characterEPKc
// The frame number of a label of a movie clip; -1 for any other character or an unknown label.
int GameSWFUtils::GetFrameIDFromName(gameswf::character* character, const char* name) {
    if (!character || !character->is(gameswf::AS_SPRITE)) {
        return -1;
    }
    return static_cast<gameswf::sprite_instance*>(character)->get_frameid_from_label(::tu_stringi(name));
}

// 0x4171f8 _ZN12GameSWFUtils9GotoFrameEPN7gameswf9characterEPKc
// The sprite check, the label lookup (GetFrameIDFromName) and the frame jump (GotoFrame(character, int)) as in the original.
int GameSWFUtils::GotoFrame(gameswf::character* character, const char* label) {
    if (character && character->is(gameswf::AS_SPRITE)) {
        int frame = GetFrameIDFromName(character, label);
        if (frame != -1) {
            return GotoFrame(character, frame);
        }
    }
    return 0;
}

// 0x41724c _ZN12GameSWFUtils12PreloadGlyphEPKcPN7gameswf9characterEP6MenuFX
// Preloads the glyphs of an edit text (class id 32) through the menu: the text (the character own text when null) once per filter
// of its effect and once without a filter, with the font name, the text height in pixels, and the bold and italic flags of its
// font. Returns the sum of the results.
int GameSWFUtils::PreloadGlyph(const char* text, gameswf::character* character, MenuFX* menu) {
    if (!character || !character->is(kTextClassId)) {
        return 0;
    }
    gameswf::edit_text_character* edit = static_cast<gameswf::edit_text_character*>(character);
    if (text == nullptr) {
        text = edit->m_text.c_str();   // +0x138
    }
    const gameswf::effect& effect = edit->get_effect();   // +0x50
    int total = 0;
    for (int i = 0; i < effect.m_filters.size(); ++i) {
        gameswf::font* font = edit->m_font.get_ptr();     // +0x178
        total += menu->PreloadGlyphs(text, font->get_name().c_str(), static_cast<int>(edit->m_text_height / 20.0f), font->is_bold(),
                                     font->is_italic(), &effect.m_filters[i]);
    }
    gameswf::font* font = edit->m_font.get_ptr();
    return menu->PreloadGlyphs(text, font->get_name().c_str(), static_cast<int>(edit->m_text_height / 20.0f), font->is_bold(),
                               font->is_italic(), nullptr) + total;
}
