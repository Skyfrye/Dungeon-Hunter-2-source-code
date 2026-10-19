// global_00 slice: reconstructed functions. Rows without a body here are
// recorded in the ledger as skipped or partial with the reason.
// 0x30ef50 ObjToStr(vector3d<float>&) is not repeated here: it is already defined
// in core-platform/src/obj_str.cpp with the same "%f,%f,%f" body.

#include "core-platform/w7_global_00.hpp"

#include <istream>
#include <vector>

#include "core-platform/deps/game_types.hpp"
#include "core-platform/memory.hpp"
#include "core-platform/stlport_alloc.hpp"  // std::__node_alloc (0x31bb44), the subtitle node's allocator

namespace {
// The original node holds 0x80 bytes of 4-byte pointers, i.e. 32 slots, and the release at 0x339798 passes
// the whole 0x80 bytes as the size.
constexpr int kSubtitleNodeSlots = 32;
constexpr unsigned int kSubtitleNodeSize = 0x80;
}  // namespace

// Storage for the subtitle queue. Only the ClearSubtitles side is recovered here.
SubtitleDeque g_SubtitlesQueue{};
SubtitleEntry* g_CurrentSubtitle = nullptr;

// 0x310750 _ZdvRK8Vector3Df
// Divides each component by the scalar and returns the result by value.
Vector3D operator/(const Vector3D& v, float divisor) {
    return Vector3D{v.X / divisor, v.Y / divisor, v.Z / divisor};
}

// 0x313498 _ZrsRSiRSt6vectorI7Point3DIfESaIS2_EE
// Each pass sets the outer separator `sep` to 'a' and zeroes one Point3D. The
// element is read as operator>> <float> (0x313444) does: X, one separator, Y, one
// separator, Z. The two inner separators go into the element reader's own char
// (its stack byte at [sp+7]), so they never touch the outer `sep`. The element is
// appended, then one more separator is read into the outer `sep`, and the loop
// continues while that char is ';' or ' ' (listing compares 59 and 32). The outer
// `sep` keeps its 'a' value when that final read fails at end of input or on a
// failed stream, which ends the loop.
//
// _M_formatted_get(char&) (0x3101BC) passes its bool through a sentry clone
// (0x30F970) that ignores the bool and tests the stream's skipws flag. The
// register the caller leaves in r2 is therefore not used, and `is >> c` gives the
// same read.
std::istream& operator>>(std::istream& is, std::vector<Point3D<float>>& points) {
    char sep = 0;
    do {
        sep = 'a';
        Point3D<float> p{0.0f, 0.0f, 0.0f};
        {
            // Element reader 0x313444 (operator>><float>(istream&, Point3D<float>&)).
            // Its two separators go to a local char, not to the loop's `sep`.
            char element_sep = 0;
            is >> p.X;
            is >> element_sep;
            is >> p.Y;
            is >> element_sep;
            is >> p.Z;
        }
        points.push_back(p);
        is >> sep;
    } while (sep == ';' || sep == ' ');
    return is;
}

// 0x33971c ClearSubtitles
// Reconstructed from the listing. The queue is a deque of SubtitleEntry* in 32-slot nodes. Each entry frees its
// text buffer (+0x8) and then itself, both with CustomFree (0x339748..0x339760); the exhausted node's buffer is
// released at 0x339794..0x3397a4 with __node_alloc::_M_deallocate(node, 0x80), the listing's own argument
// (0x339798 loads R1 = 0x80), and the deque then steps to the next map slot (0x3397a8..0x3397c8: node += 4,
// cur = *node, last = cur + 0x80, first = cur). That node allocator is reconstructed in
// core-platform/stlport_alloc.hpp / src/stlport_alloc.cpp (0x31bb44 -> 0x8b625c -> 0x8b6224), so the call is
// written rather than stood in for. The tail (0x3397d0..0x33981c) runs the same two CustomFree steps for
// g_CurrentSubtitle.
// The `cur == last - 1` test is the original's element for element: the listing steps cur by 4 bytes, compares
// against last - 4 (0x33978c) and sets last = first + 0x80 (0x3397bc), i.e. a 32-slot node whose last slot is
// last - 1 element, which is what this models with 32 SubtitleEntry* slots. The only host deviation is that the
// node occupies 0x100 bytes for those 32 slots instead of 0x80 (TRACK-B decision 2, in-memory pointers are host
// width); the 0x80 handed to _M_deallocate is still the listing's argument, so the block lands in the same pool
// bucket (0x8b6224 computes (0x80 - 1) / 8 = 15) and the pool, not malloc, keeps it - the original's free-list
// behaviour. Unrecovered elsewhere, not in this function: the push side (LoadSubtitles 0x339830) is still
// skipped, so nothing in the tree builds a multi-node queue yet; that does not change what this frees.
void ClearSubtitles() {
    SubtitleDeque& q = g_SubtitlesQueue;
    while (q.cur != q.finish) {
        SubtitleEntry* entry = *q.cur;
        if (q.cur == q.last - 1) {
            if (q.first != nullptr) {
                std::__node_alloc::_M_deallocate(q.first, kSubtitleNodeSize);
            }
            ++q.node;
            q.cur = *q.node;
            q.first = q.cur;
            q.last = q.cur + kSubtitleNodeSlots;
        } else {
            ++q.cur;
        }

        if (entry->text_08 != nullptr) {
            CustomFree(entry->text_08);
            entry->text_08 = nullptr;
        }
        CustomFree(entry);
    }

    if (g_CurrentSubtitle != nullptr) {
        if (g_CurrentSubtitle->text_08 != nullptr) {
            CustomFree(g_CurrentSubtitle->text_08);
            g_CurrentSubtitle->text_08 = nullptr;
        }
        CustomFree(g_CurrentSubtitle);
        g_CurrentSubtitle = nullptr;
    }
}
