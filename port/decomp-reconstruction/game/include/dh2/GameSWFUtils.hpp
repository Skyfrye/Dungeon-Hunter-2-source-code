// GameSWFUtils: static helpers over gameswf characters and roots used by the HUD and menu code: text height
// and spacing, frame navigation, button placement, absolute position and bounds, and glyph preload.
// There are no instances. The class has no members, no constructor and no vtable, and every function is
// static: callers pass the character (or root, MenuFX) as the first argument.
// Reconstructed from libDungeonHunter2.so pseudocode (functions 0x4163c8 to 0x41724c).
// Return types are the decompiled ones; where they are only a register-level int or float they are kept as is.
#pragma once

#include <array>

class MenuFX;

namespace glitch {
class IReferenceCounted;
namespace video {
class ITexture;
}  // namespace video
}  // namespace glitch

namespace gameswf {
class character;
class root;
}  // namespace gameswf

class GameSWFUtils {
public:
    static int SetTextHeight(gameswf::character* character, int height);                        // 0x4163c8
    static int SetLineSpacing(gameswf::character* character, int spacing);                      // 0x41640c
    static int GotoFrame(gameswf::character* character, int frame);                             // 0x416450
    static float GetPixelScaleX(gameswf::root* root);                                           // 0x4164c0
    static float GetPixelScaleY(gameswf::root* root);                                           // 0x4164fc
    static float GetInvPixelScaleX(gameswf::root* root);                                        // 0x416538
    static float GetInvPixelScaleY(gameswf::root* root);                                        // 0x416578
    static int MoveBtnPos(gameswf::character* character, float x, float y);                     // 0x41684c
    // Returned through a hidden pointer in the original: the absolute x and y of the character's origin.
    static std::array<float, 2> GetAbsolutePosition(gameswf::character* character);             // 0x4169e8
    // Returned through a hidden pointer in the original: xmin, xmax, ymin, ymax of the absolute bounding rect.
    static std::array<float, 4> GetAbsoluteBoundingRect(gameswf::character* character);         // 0x416a7c
    static int GetLabeledFrame(gameswf::character* character, const char* label);               // 0x416b3c
    static glitch::video::ITexture* SwfTextureLoader(const char* path, int width, int height); // 0x416c14
    static int gameswf_logger(bool enabled, const char* message);                               // 0x416fc8
    static int PlayAnim(MenuFX* menu, gameswf::character* character, const char* anim);         // 0x416fe0
    static int PlayAnim(MenuFX* menu, const char* target, const char* anim);                    // 0x417108
    static int GetFrameIDFromName(gameswf::character* character, const char* name);             // 0x417148
    static int GotoFrame(gameswf::character* character, const char* label);                     // 0x4171f8
    static int PreloadGlyph(const char* text, gameswf::character* character, MenuFX* menu);     // 0x41724c

    // Character sets that MenuManager::Init preloads into the glyph cache (0x9997a8, 0x9997a4, 0x9997a0).
    static const char* const CACHE_CHARS_NUMBERS;  // "0123456789 :/%()!.,_-+[]"
    static const char* const CACHE_CHARS_A_TO_Z;   // "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    static const char* const CACHE_CHARS_a_TO_z;   // "abcdefghijklmnopqrstuvwxyz"
};
