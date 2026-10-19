// vox::DecoderMSWavCursor forwards Decode, Seek, HasData and SetLoop to its sub-decoder.
#include <cstdio>
#include <cstdlib>
#include <new>

#include "vox-audio/vox/decoder_mswav_cursor.hpp"

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

class FakeSub : public vox::VoxMSWavSubDecoder {
public:
    int Decode(void*, int count) override { decoded += count; return count; }
    int Seek(unsigned int frame) override { last_seek = frame; return 0; }
    bool HasData() override { return has_data; }
    int decoded = 0;
    unsigned int last_seek = 0;
    bool has_data = true;
};
}  // namespace

int main() {
    // No sub-decoder: the cursor reports the defaults.
    vox::DecoderMSWavCursor empty(nullptr);
    CHECK(empty.Decode(nullptr, 16) == 0);
    CHECK(empty.Seek(5) == -1);
    CHECK(!empty.HasData());
    empty.SetLoop(true);  // no sub-decoder: nothing to write

    // With a sub-decoder every call is forwarded. The cursor owns the sub-decoder and
    // releases it with VoxFree in its destructor, so the sub-decoder is placed in
    // malloc storage.
    void* storage = std::malloc(sizeof(FakeSub));
    FakeSub* sub = new (storage) FakeSub();
    {
        vox::DecoderMSWavCursor cursor(sub);
        CHECK(cursor.Decode(nullptr, 8) == 8);
        CHECK(sub->decoded == 8);
        CHECK(cursor.Seek(42) == 0);
        CHECK(sub->last_seek == 42);
        CHECK(cursor.HasData());
        sub->has_data = false;
        CHECK(!cursor.HasData());
        cursor.SetLoop(true);
        CHECK(sub->loop_);
        cursor.SetLoop(false);
        CHECK(!sub->loop_);
    }  // the cursor destroys and frees the sub-decoder here

    std::printf("decoder_mswav_cursor_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
