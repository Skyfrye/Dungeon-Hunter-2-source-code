// gameswf::as_stage (Gameloft; upstream GameSWF r1714 has no such class).
//
// The Stage object: an as_object with no members of its own (0x38 bytes, the size of as_object; player::player
// allocates it with operator new(0x38) and keeps it in player::m_stage at +0x38). Its width and height read the root
// of the player through the inherited weak pointer as_object::m_player (+0x2c proxy, +0x30 cached player):
// player->get_root()->get_movie_width() and get_movie_height(). The constructor creates the two members "width" and
// "height" with the number 1.
//
// Virtual slots (vptr offsets): +0x00 D1, +0x04 D0, +0x08 is(int) const, +0x20 get_member(tu_stringi, as_value*).
// The rest is inherited from as_object (gameswf_object.h).
//
// Bodies: vendor-gameswf/src/v1-vendor-gameswf-pack6-a8bd9d-0.cpp

#pragma once

#include "gameswf/gameswf_object.h"  // as_object (upstream, with DH2 declarations)

namespace gameswf {

struct as_stage : public as_object {
    explicit as_stage(player* p);                  // 0x76f018
    ~as_stage() override;                          // 0x76ccbc (D1); 0x76d490 (D0) is compiler-generated

    bool is(int class_id) const override;          // 0x76c728
    bool get_member(const tu_stringi& name, as_value* val) override;  // 0x76d724
};

}  // namespace gameswf
