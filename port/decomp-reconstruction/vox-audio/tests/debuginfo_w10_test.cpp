// EmitterObj::GetDebugInfo field copies and the DebugInfo defaults.
#include <cstdio>

#include "vox-audio/vox/emitter_obj.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)
}  // namespace

int main() {
    // Emitter record: the copied fields and the gain product.
    {
        vox::EmitterObj e;
        e.id = 0x1234567890LL;
        e.SetGroup(3);
        e.SetState(1);
        e.SetLoop(true);
        e.loop_read_ = 1;
        e.SetGainModifier(0.5f);
        e.resume_fade_.target = 1.0f;
        e.gain_fade_.target = 0.5f;
        e.Set3DParameteri(0, 7);
        e.Set3DParameterf(1, 0.25f);
        e.Set3DParameter3f(8, 1.0f, 2.0f, 3.0f);
        e.Set3DParameter3f(9, 4.0f, 5.0f, 6.0f);
        e.Set3DParameter3f(10, 0.0f, 0.0f, 1.0f);
        e.ref_count = 2;

        vox::DebugChunk_emitter chunk;
        e.GetDebugInfo(chunk);
        CHECK(chunk.emitter_id == 0x1234567890LL);
        CHECK(chunk.data_id == 0);  // no data object
        CHECK(chunk.position.x == 1.0f && chunk.position.y == 2.0f && chunk.position.z == 3.0f);
        CHECK(chunk.state == 1);
        CHECK(chunk.gain == 0.25f);  // 0.5 * 1.0 * 0.5
        CHECK(chunk.loop == 1);
        CHECK(chunk.ref_count == 2);
        CHECK(chunk.group == 3);
        CHECK(chunk.velocity.x == 4.0f && chunk.velocity.z == 6.0f);
        CHECK(chunk.direction.z == 1.0f);
        CHECK(chunk.param0 == 7);
        CHECK(chunk.params[0] == 0.25f);
        CHECK(chunk.params[6] == 0.0f);
        CHECK(chunk.source_gain == 1.0f && chunk.source_pitch == 1.0f);
    }

    // DebugInfo defaults: the end marker is -1. VoxEngineInternal::GetDebugInfo is not linked
    // here, because its vtable pulls in methods that are not defined yet.
    {
        vox::DebugInfo info;
        CHECK(info.end_marker == -1);
        CHECK(info.data_count == 0 && info.emitter_count == 0 && info.playing_count == 0);
    }

    if (g_failures == 0) {
        std::printf("debuginfo_w10_test: all checks passed\n");
        return 0;
    }
    std::printf("debuginfo_w10_test: %d failures\n", g_failures);
    return 1;
}
