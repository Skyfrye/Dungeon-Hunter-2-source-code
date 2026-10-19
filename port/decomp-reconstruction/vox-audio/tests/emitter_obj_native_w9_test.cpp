// EmitterObj::ProcessNativeData (0x866b30, wave 9). It is driven through a fake driver source and
// a fake decoder cursor: the source reports which of its blocks it has finished with, the cursor
// reports the frames to rewind, and the next ring block is decoded and uploaded.
#include <cstdio>
#include <string>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/decoder_native.hpp"
#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/memory.hpp"

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

// The state name the direct DecoderNativeCursor::SetInteractiveMusicState call hands over.
std::string g_interactive_state;
int g_interactive_calls = 0;

class FakeSource : public vox::DriverSourceInterface {
public:
    int need_data = 1;
    int need_calls = 0;
    int reset_calls = 0;
    int free_calls = 0;
    int last_requested = -1;
    int out_first = 0;   // what FreeDisposableData reports as released blocks
    int out_second = 0;  // and as the second value (the frames the listing rewinds)
    int upload_calls = 0;
    int last_upload_bytes = 0;

    int NeedData() override {
        ++need_calls;
        return need_data;
    }
    void Reset() override { ++reset_calls; }
    void UploadData(const void* data, int size) override {
        (void)data;
        ++upload_calls;
        last_upload_bytes = size;
    }
    int FreeDisposableData(int id, int& first, int& second) override {
        ++free_calls;
        last_requested = id;
        first = out_first;
        second = out_second;
        return 0;
    }
};

class FakeCursor : public vox::DecoderCursorInterface {
public:
    int reset_calls = 0;
    int rewind_calls = 0;
    int last_rewind = -1;
    int decode_calls = 0;
    int decode_ref_calls = 0;
    bool has_data = true;
    int rewind_limit = 0;
    char storage[4][16] = {};

    void Reset() override { ++reset_calls; }
    int GetRewindLimit() override { return rewind_limit; }
    void Rewind(int frames) override {
        ++rewind_calls;
        last_rewind = frames;
    }
    bool HasData() override { return has_data; }
    int Decode(void* dst, int count) override {
        (void)dst;
        ++decode_calls;
        return count;
    }
    int DecodeRef(void*& dst, int count) override {
        dst = storage[decode_ref_calls % 4];
        ++decode_ref_calls;
        return count;
    }
    int Seek(unsigned int frame) override {
        (void)frame;
        return 0;
    }
};
}  // namespace

namespace vox {
// A deliberate spy. ProcessNativeData's interactive-state path makes a direct (devirtualised) call
// to DecoderNativeCursor::SetInteractiveMusicState, as the listing's BL does; a real native cursor
// needs a parsed DecoderNative, so the test records the hand-off instead of building one.
void DecoderNativeCursor::SetInteractiveMusicState(const char* name) {
    ++g_interactive_calls;
    g_interactive_state = name != nullptr ? name : "";
}
}  // namespace vox

int main() {
    // The fill query path: GetRewindLimit goes to FreeDisposableData, the read index moves back by
    // the released block count, the cursor rewinds by the second value, and the next ring block is
    // decoded and uploaded. The +0x144 flag is cleared on the way out.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 2;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(2, nullptr);
        e.buffer_ring_[0] = c.storage[0];
        e.buffer_read_index_ = 1;
        e.buffer_fill_ = 5;
        e.flag_145_ = 0;
        e.interactive_state_set_ = true;
        c.rewind_limit = 7;
        s.out_first = 1;
        s.out_second = 24;

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(s.free_calls == 1);
        CHECK(s.last_requested == 7);
        CHECK(c.rewind_calls == 1);
        CHECK(c.last_rewind == 24);
        CHECK(e.buffer_read_index_ == 1);  // (1 - 1) = 0, then next = 1, 1 % 2 = 1
        CHECK(c.decode_calls == 1);
        CHECK(s.upload_calls == 1);
        CHECK(s.last_upload_bytes == 16);
        CHECK(e.buffer_fill_ == 0);
        CHECK(!e.interactive_state_set_);
        CHECK(g_interactive_calls == 0);
    }

    // A zero second value skips the rewind and runs the shared 0x866be0 tail: HasData, DecodeRef,
    // UploadData and the read-index advance.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 2;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(2, nullptr);
        e.buffer_ring_[0] = c.storage[0];
        e.interactive_state_set_ = true;

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(s.free_calls == 1);
        CHECK(c.rewind_calls == 0);
        CHECK(c.decode_ref_calls == 1);
        CHECK(s.upload_calls == 1);
        CHECK(e.buffer_read_index_ == 1);
        CHECK(!e.interactive_state_set_);
    }

    // The empty read slot after the rewind marks the state -1 and decodes nothing (the listing
    // returns its leftover register there; the port returns 0).
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 2;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(2, nullptr);
        e.interactive_state_set_ = true;
        s.out_second = 5;
        c.rewind_limit = 1;

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(c.rewind_calls == 1);
        CHECK(c.decode_calls == 0);
        CHECK(s.upload_calls == 0);
        CHECK(!e.interactive_state_set_);
    }

    // The tail's own empty read slot sets state_set_ (-0x94 slot) to -1 and returns 0.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 2;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(2, nullptr);
        e.buffer_read_index_ = 1;
        e.state_set_ = 0;

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(e.state_set_ == -1);
        CHECK(c.decode_ref_calls == 0);
    }

    // The tail's HasData gate: no data, nothing decoded and no upload.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 1;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(1, static_cast<void*>(c.storage[0]));
        c.has_data = false;

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(c.decode_ref_calls == 0);
        CHECK(s.upload_calls == 0);
    }

    // NeedData returning 0 stops the frame before the tail.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 1;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(1, static_cast<void*>(c.storage[0]));
        s.need_data = 0;

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(s.need_calls == 1);
        CHECK(c.decode_ref_calls == 0);
    }

    // The +0x145 path: the interactive state name is handed to the native cursor, the cursor and
    // the source are reset, both buffer counters are cleared, and the shared tail then runs.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 2;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(2, nullptr);
        e.buffer_ring_[0] = c.storage[0];
        e.buffer_read_index_ = 3;
        e.buffer_fill_ = 9;
        e.interactive_state_set_ = true;
        e.flag_145_ = 1;
        e.interactive_state_ = "combat";

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(c.reset_calls == 1);
        CHECK(g_interactive_calls == 1);
        CHECK(g_interactive_state == "combat");
        CHECK(s.reset_calls == 1);
        CHECK(s.free_calls == 0);
        CHECK(e.buffer_fill_ == 0);
        CHECK(e.buffer_read_index_ == 1);  // cleared to 0, then next = 1, 1 % 2 = 1
        CHECK(!e.interactive_state_set_);
    }

    // No pending state and the +0x145 byte clear: NeedData and the tail only, no fill query.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 1;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(1, static_cast<void*>(c.storage[0]));

        // The tail returns the wrap count next / count, as ProcessNonNativeData does: one slot
        // wraps on the first block.
        CHECK(e.ProcessNativeData(0.1f) == 1);
        CHECK(s.free_calls == 0);
        CHECK(c.reset_calls == 0);
        CHECK(c.decode_ref_calls == 1);
        CHECK(s.upload_calls == 1);
    }

    // The zero-divisor guard: a zero ring count does not divide, the upload has already happened.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 0;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(1, static_cast<void*>(c.storage[0]));
        e.interactive_state_set_ = true;
        s.out_second = 3;

        CHECK(e.ProcessNativeData(0.1f) == 0);
        CHECK(c.decode_calls == 1);
        CHECK(s.upload_calls == 1);
        CHECK(!e.interactive_state_set_);
    }

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("emitter_obj_native_w9: all checks passed\n");
    return 0;
}
