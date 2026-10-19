// Batch g1-game-app-global-f216b6-21 (<global>), GetLocalPosition. Kept in its own translation unit: the function calls into
// the vendored gameswf library. Its undefined references (nm -u) are gameswf::matrix::matrix, matrix::set_inverse and
// matrix::concatenate (the last one used by the inline character::get_world_matrix), plus some as_value members. The matrix
// constructor and set_inverse are defined in vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_types.cpp, which dh2_game
// does not build yet (gameswf is headers-only). In the main unit, the batch test would otherwise pull those references into its link.

#include "dh2/global/GetLocalPosition.hpp"
#include "gameswf/gameswf_character.h"  // gameswf::character (complete type; the DH2 get_world_matrix returns a pointer)

// 0x7aa2e0 GetLocalPosition(gameswf::character*, float, float)
// Asm: the result is zeroed first. X = 20.0f * x and Y = 20.0f * y (20.0f is 0x41a00000). The world matrix is the value
// that gameswf::character::get_world_matrix returns; its six words are copied. The inverse is built by set_inverse
// on the identity 2x3 matrix (m00 = 1, m01 = 0, m02 = 0, m10 = 0, m11 = 1, m12 = 0). The result is then
//   result.x = (i0 * X + i1 * Y) + i2
//   result.y = (i3 * X + i4 * Y) + i5
// with inv = [i0 i1 i2 / i3 i4 i5] (the inverse's m_[0][0..2] and m_[1][0..2]), evaluated left to right as the asm does.
gameswf::point GetLocalPosition(gameswf::character* ch, float x, float y) {
    gameswf::point result(0.0f, 0.0f);

    const float scaledX = 20.0f * x;
    const float scaledY = 20.0f * y;

    const gameswf::matrix world = *ch->get_world_matrix();

    gameswf::matrix inverse;
    inverse.m_[0][0] = 1.0f;
    inverse.m_[0][1] = 0.0f;
    inverse.m_[0][2] = 0.0f;
    inverse.m_[1][0] = 0.0f;
    inverse.m_[1][1] = 1.0f;
    inverse.m_[1][2] = 0.0f;
    inverse.set_inverse(world);

    const float xScaledI0 = scaledX * inverse.m_[0][0];
    const float yScaledI1 = scaledY * inverse.m_[0][1];
    const float xSum = xScaledI0 + yScaledI1;
    result.m_x = xSum + inverse.m_[0][2];

    const float xScaledI3 = scaledX * inverse.m_[1][0];
    const float yScaledI4 = scaledY * inverse.m_[1][1];
    const float ySum = xScaledI3 + yScaledI4;
    result.m_y = ySum + inverse.m_[1][2];

    return result;
}
