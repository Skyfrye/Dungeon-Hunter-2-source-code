// Reconstruction slice global_03. Functions are rebuilt from Hex-Rays output and
// checked against the ARM listing where the pseudocode was ambiguous.
#include "core-platform/w7_global_03.hpp"

#include <cfloat>
#include <cmath>
#include <cstdio>
#include <new>

#include "base/tu_file.h"  // tu_file (global in the vendored gameswf, gameswf::tu_file in the binary)
#include "core-platform/deps/swf_types.hpp"
#include "core-platform/memory.hpp"

namespace gameswf {
int get_verbose_parse();
}  // namespace gameswf

using w7g3::ClipVertex;
using w7g3::Vec2;

namespace {

// b2Vec2::Normalize (0x7e5524), stand-in for the Box2D method. The listing compares the length
// with 0x34000000 (2^-23, FLT_EPSILON) using __aeabi_fcmplt and returns 0 when it is below that,
// leaving v unchanged. Otherwise it scales v by 1/length and returns the length. A NaN length is
// not below the constant, so it is scaled, as in the original.
float NormalizeVec(Vec2& v) {
    const float len = std::sqrt(v.x * v.x + v.y * v.y);
    if (len < FLT_EPSILON) {
        return 0.0f;
    }
    const float inv = 1.0f / len;
    v.x = v.x * inv;
    v.y = v.y * inv;
    return len;
}

}  // namespace

// 0x7a7c30 _ZL11fs_callbackPN7gameswf9characterEPKcS3_
void fs_callback(gameswf::character* a1, const char* a2, const char* a3) {
    (void)a1;
    (void)a2;
    (void)a3;
}

// 0x7a8420 _ZL11message_logPKc
// The stream is stdout: the listing addresses it as (FILE*)&__sF + 1, which is
// __sF[1] in the bionic FILE array (stdin, stdout, stderr). log_callback uses
// __sF + 2 for stderr, the same array. get_verbose_parse() is the vendored
// gameswf bool, and the argument the pseudocode passes it is register residue.
// The listing returns get_verbose_parse's result on the false path.
int message_log(const char* msg) {
    int verbose = gameswf::get_verbose_parse();
    if (verbose) {
        fputs(msg, stdout);
        return fflush(stdout);
    }
    return verbose;
}

// 0x7a846c _ZL12log_callbackbPKc
// Reconstructed: the listing passes __sF + 0xA8 to fputs and fflush. message_log uses
// __sF + 0x54 for stdout, so the bionic FILE stride is 0x54 and 0xA8 is __sF[2], stderr.
int log_callback(bool to_stderr, const char* msg) {
    if (!to_stderr) {
        return message_log(msg);
    }
    message_log(msg);
    fputs(msg, stderr);
    return fflush(stderr);
}

// 0x7a9954 _ZL11file_openerPKc
// Reconstructed against the ARM listing: MOV R0,#0x28 / MOV R1,#0 / BL operator new(uint,
// swf::MemHint), then MOV R2,"rb" and BL tu_file::tu_file(char const*, char const*) on the block,
// and the block is returned. 0x28 is the 32-bit size of the object, which the binary's own
// constructor confirms field by field (0x7b68c8: m_data +0x00, m_open +0x04, the seven callbacks
// +0x08..+0x20, int m_error +0x24 = 0x28 bytes); on the host the same class is wider, so the block
// is sizeof(tu_file). Deviations, both named: the binary's class is gameswf::tu_file while the
// class this tree declares is the vendored gameswf r1714 base/tu_file.h tu_file, which sits at
// global scope (the tree's standing convention, recorded in
// vendor-gameswf/include/vendor-gameswf/tu_file_callbacks.hpp and in link-missing.csv for
// 0x7b68c8), so the call resolves to that class's constructor instead of to the exact binary
// symbol; and that callee row (0x7b68c8, vendor-gameswf) is ledgered upstream although the binary
// opens through fs_open_func where the vendored body still calls fopen. Hint 0 is
// MEM_UNRECOVERED, which SwfAlloc ignores, exactly as the binary's malloc_internal replaces it
// with 0.
tu_file* file_opener(const char* name) {
    void* mem = ::operator new(sizeof(tu_file), swf::MEM_UNRECOVERED);
    return new (mem) tu_file(name, "rb");
}

// 0x7dcb6c _ZL8LongAxisPd
// Reconstructed: the Hex-Rays bit-key compares are |x| comparisons. Differs only for NaN,
// where the original compares bit patterns.
int LongAxis(double* a) {
    int v7 = std::fabs(a[1]) > std::fabs(a[0]) ? 1 : 0;
    if (std::fabs(a[2]) > std::fabs(a[v7])) {
        return 2;
    }
    return v7;
}

// 0x7f5038 _ZL17ClipSegmentToLineP10ClipVertexS0_RK6b2Vec2f
// Reconstructed: vertex copies, the crossing point, and its id (v1.id when d0 <= 0, else v0.id).
// The id select is checked against the listing: in[0] is at R4 (+8 for id) and in[1] at R4+0xC
// (+8 for id), and the LDRNE/LDREQ pair picks in[0] when d0 > 0. Uses the w7g3::ClipVertex and
// w7g3::Vec2 stand-ins for ClipVertex and b2Vec2.
int ClipSegmentToLine(ClipVertex* out, ClipVertex* in, const Vec2& normal, float offset) {
    const ClipVertex& v0 = in[0];
    const ClipVertex& v1 = in[1];
    float d0 = (normal.x * v0.v.x + normal.y * v0.v.y) - offset;
    float d1 = (normal.x * v1.v.x + normal.y * v1.v.y) - offset;
    int n = 0;
    if (d0 <= 0.0f) {
        out[n++] = v0;
    }
    if (d1 <= 0.0f) {
        out[n++] = v1;
    }
    if (d0 * d1 < 0.0f) {
        float t = d0 / (d0 - d1);
        out[n].v.x = v0.v.x + t * (v1.v.x - v0.v.x);
        out[n].v.y = v0.v.y + t * (v1.v.y - v0.v.y);
        out[n].id = (d0 <= 0.0f) ? v1.id : v0.id;
        ++n;
    }
    return n;
}

// 0x7f881c _ZL8InPointsRK6b2Vec2PS0_i
// Reconstructed: the sign-flip tricks are fabs; the tolerance uses the same
// float(double) rounding as the listing.
int InPoints(const Vec2& p, const Vec2* pts, int count) {
    if (count <= 0) {
        return 0;
    }
    for (int i = 0; i < count; ++i) {
        float dx = std::fabs(p.x - pts[i].x);
        float dy = std::fabs(p.y - pts[i].y);
        float mx = std::fmax(std::fabs(p.x), std::fabs(pts[i].x));
        float my = std::fmax(std::fabs(p.y), std::fabs(pts[i].y));
        float tx = static_cast<float>(static_cast<float>(mx + 1.0) * 0.000011921);
        float ty = static_cast<float>(static_cast<float>(my + 1.0) * 0.000011921);
        if (tx > dx && ty > dy) {
            return 1;
        }
    }
    return 0;
}

// 0x7f89e0 _ZL10ProcessTwoP6b2Vec2S0_S0_S0_S0_
// Reconstructed from Hex-Rays and the listing. NormalizeVec is the stand-in for b2Vec2::Normalize
// (0x7e5524). Both the Normalize threshold and the copy test use FLT_EPSILON (0x34000000, 2^-23):
// the copy branch is taken when the projection is not positive, or when the returned length is
// below FLT_EPSILON (Normalize returns 0 in that case). Uses the w7g3::Vec2 stand-in for b2Vec2.
int ProcessTwo(Vec2* a1, Vec2* a2, Vec2* a3, Vec2* a4, Vec2* a5) {
    Vec2 d{a5[0].x - a5[1].x, a5[0].y - a5[1].y};
    float len = NormalizeVec(d);
    float v13 = (-a5[1].x) * d.x + (-a5[1].y) * d.y;
    if (v13 <= 0.0f || len < FLT_EPSILON) {
        a1[0] = a3[1];
        a2[0] = a4[1];
        a3[0] = a3[1];
        a4[0] = a4[1];
        a5[0] = a5[1];
        return 1;
    }
    float t = v13 / len;
    a1->x = a3[1].x + t * (a3[0].x - a3[1].x);
    a1->y = a3[1].y + t * (a3[0].y - a3[1].y);
    a2->x = a4[1].x + t * (a4[0].x - a4[1].x);
    a2->y = a4[1].y + t * (a4[0].y - a4[1].y);
    return 2;
}

// 0x7f8018 _ZL12ProcessThreeP6b2Vec2S0_S0_S0_S0_
// Reconstructed: control flow and expressions checked against Hex-Rays line by line. Return 1
// copies vertex 2 into every slot, return 3 is the barycentric point, and return 2 is the edge
// reduction (inner branch) or the reduction on the outer else branch. Uses the w7g3::Vec2
// stand-in for b2Vec2.
int ProcessThree(Vec2* a1, Vec2* a2, Vec2* a3, Vec2* a4, Vec2* a5) {
    const float x0 = a5[0].x, y0 = a5[0].y;
    const float x1 = a5[1].x, y1 = a5[1].y;
    const float x2 = a5[2].x, y2 = a5[2].y;
    const float e20x = x2 - x0;
    const float e20y = y2 - y0;
    const float dot2 = e20x * x2 + e20y * y2;
    const float dot12 = (x2 - x1) * x2 + (y2 - y1) * y2;

    if (dot2 <= 0.0f && dot12 <= 0.0f) {
        a1[0] = a3[2];
        a2[0] = a4[2];
        a3[0] = a3[2];
        a4[0] = a4[2];
        a5[0] = a5[2];
        return 1;
    }

    const float det = (x1 - x0) * e20y - (y1 - y0) * e20x;
    const float v40 = det * (x1 * y2 - y1 * x2);
    const float v33 = -((x2 - x1) * x1 + (y2 - y1) * y1);
    const float v39 = v33 + dot12;

    if (v40 > 0.0f || v33 < 0.0f || dot12 < 0.0f || v39 <= 0.0f) {
        const float v14 = det * (y0 * x2 - x0 * y2);
        const float v26 = -(x0 * e20x + y0 * e20y);
        const float v35 = v26 + dot2;
        if (v14 > 0.0f || v26 < 0.0f || dot2 < 0.0f || v35 <= 0.0f) {
            const float denom = (v40 + v14) + det * (x0 * y1 - y0 * x1);
            const float inv = 1.0f / denom;
            const float w0 = v40 * inv;
            const float w1 = v14 * inv;
            const float w2 = (1.0f - w0) - w1;
            a1->x = w0 * a3[0].x + w1 * a3[1].x + w2 * a3[2].x;
            a1->y = w0 * a3[0].y + w1 * a3[1].y + w2 * a3[2].y;
            a2->x = w0 * a4[0].x + w1 * a4[1].x + w2 * a4[2].x;
            a2->y = w0 * a4[0].y + w1 * a4[1].y + w2 * a4[2].y;
            return 3;
        }
        const float t = v26 / v35;
        a1->x = a3[0].x + t * (a3[2].x - a3[0].x);
        a1->y = a3[0].y + t * (a3[2].y - a3[0].y);
        a2->x = a4[0].x + t * (a4[2].x - a4[0].x);
        a2->y = a4[0].y + t * (a4[2].y - a4[0].y);
        a3[1] = a3[2];
        a4[1] = a4[2];
        a5[1] = a5[2];
        return 2;
    }

    const float t = v33 / v39;
    a1->x = a3[1].x + t * (a3[2].x - a3[1].x);
    a1->y = a3[1].y + t * (a3[2].y - a3[1].y);
    a2->x = a4[1].x + t * (a4[2].x - a4[1].x);
    a2->y = a4[1].y + t * (a4[2].y - a4[1].y);
    a3[0] = a3[2];
    a4[0] = a4[2];
    a5[0] = a5[2];
    return 2;
}
