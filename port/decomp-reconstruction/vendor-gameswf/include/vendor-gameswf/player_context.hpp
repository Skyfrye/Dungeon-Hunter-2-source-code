// gameswf::player_context as the DH2 binary has it (Gameloft; upstream GameSWF r1714 has no such class).
//
// The context holds the glyph provider, the bitmap glyph provider, the list of players that were built on it and the
// video driver. RenderFX::CreateContext (0x7a9708) allocates 0x2c bytes, builds the glyph provider and the bitmap
// glyph provider, and stores the video driver from the first word of RenderFX::InitializationParameters at +0x28.
// The layout is confirmed by the constructor (0x76ce38, 0x76ce90), the destructor (0x76cee8, 0x76d4cc), player::player
// (which appends `this` to the player array) and ~player (which removes it).
//
// Layout, 32-bit offsets (host pointers are 8 bytes, so the offsets are comments only):
//   +0x00 vptr and ref_counted base (DH2 ref_counted.hpp, 12 bytes)
//   +0x0c glyph_provider* m_glyph_provider                 owned: the destructor runs ~glyph_provider and frees it
//   +0x10 bitmap_glyph_provider* m_bitmap_glyph_provider   owned: the destructor runs destruct<bitmap_glyph_provider>
//   +0x14 array<player*> m_players                         16 bytes (buffer, size, capacity, borrowed flag at +0x20)
//   +0x24 int32_t unk_24                                   cleared by the constructor; nothing reads it
//   +0x28 glitch::video::IVideoDriver* m_video_driver      first member of RenderFX::InitializationParameters;
//                                                          scene_node reaches the camera and the render target through it
//
// Virtual slots (vptr offsets): +0x00 D1 and +0x04 D0. Only the destructor is virtual.
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack6-a8bd9d-0.cpp

#pragma once

#include <cstdint>

#include "base/container.h"   // array<T> (upstream; the template is global in base/)
#include "gameswf/gameswf.h"  // player; glyph_provider and bitmap_glyph_provider are forward-declared below
#include "vendor-gameswf/ref_counted.hpp"  // DH2 ref_counted (12 bytes, vptr +0x00)

namespace glitch::video {
class IVideoDriver;
}  // namespace glitch::video

namespace gameswf {

struct glyph_provider;         // vendor-gameswf/glyph_provider.hpp (DH2)
struct bitmap_glyph_provider;  // vendor-gameswf/bitmap_glyph_provider.hpp (DH2)

struct player_context : public ref_counted {
    player_context();                 // 0x76ce38 (C1), 0x76ce90 (C2)
    ~player_context() override;       // 0x76cee8 (D2), 0x76d4cc (D1); D0 0x76d578 is compiler-generated

    glyph_provider* m_glyph_provider = nullptr;                 // +0x0c
    bitmap_glyph_provider* m_bitmap_glyph_provider = nullptr;   // +0x10
    array<player*> m_players;                                   // +0x14 players built on this context (player::player appends)
    std::int32_t unk_24 = 0;                                    // +0x24
    glitch::video::IVideoDriver* m_video_driver = nullptr;      // +0x28
};

// 0x76c9ac void gameswf::destruct<gameswf::bitmap_glyph_provider>(gameswf::bitmap_glyph_provider const*)
// Null check, the complete-object destructor through vtable slot 0, free_internal. Defined in pack6 with the
// player_context destructor that is its only caller in this batch.
template <>
void destruct<bitmap_glyph_provider>(const bitmap_glyph_provider* object);

}  // namespace gameswf
