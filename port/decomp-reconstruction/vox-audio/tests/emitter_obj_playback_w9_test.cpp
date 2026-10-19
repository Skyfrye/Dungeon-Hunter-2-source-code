// EmitterObj playback path (wave 9): PrintDebug, Update3D, GetPlayCursor and
// ProcessNonNativeData, tested through a fake driver source and a fake decoder cursor.
#include <cmath>
#include <cstdio>
#include <utility>
#include <vector>

#include "vox-audio/vox/decoder.hpp"
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

class FakeSource : public vox::DriverSourceInterface {
public:
    int need_data = 1;
    int byte_offset = 0;
    int print_calls = 0;
    int update_calls = 0;
    int dsp_calls = 0;
    int last_dsp_param = -1;
    void* last_dsp_value = nullptr;
    int upload_calls = 0;
    void* last_upload = nullptr;
    int last_upload_bytes = 0;
    std::vector<std::pair<int, const void*>> pushes;

    int NeedData() override { return need_data; }
    int GetByteOffset() override { return byte_offset; }
    void UploadData(const void* data, int size) override {
        ++upload_calls;
        last_upload = const_cast<void*>(data);
        last_upload_bytes = size;
    }
    void Set3DParameter(int which, const void* value) override { pushes.emplace_back(which, value); }
    void PrintDebug() override { ++print_calls; }
    void Update(float dt) override {
        (void)dt;
        ++update_calls;
    }
    void SetDSPParameter(int param, void* value) override {
        ++dsp_calls;
        last_dsp_param = param;
        last_dsp_value = value;
    }
};

class FakeCursor : public vox::DecoderCursorInterface {
public:
    bool has_data = true;
    bool allow_ref = true;
    int decode_calls = 0;
    char storage[4][16] = {};

    int Decode(void* dst, int count) override {
        (void)dst;
        return count;
    }
    int DecodeRef(void*& dst, int count) override {
        dst = storage[decode_calls % 4];
        ++decode_calls;
        return count;
    }
    bool HasData() override { return has_data; }
    int Seek(unsigned int frame) override {
        (void)frame;
        return 0;
    }
    bool AllowBufferReference() override { return allow_ref; }
};
}  // namespace

int main() {
    // PrintDebug forwards to the source (slot +0x50) and tolerates no source.
    {
        vox::EmitterObj e;
        FakeSource s;
        e.dsp_source_ = &s;
        e.PrintDebug();
        CHECK(s.print_calls == 1);
        e.dsp_source_ = nullptr;
        e.PrintDebug();
        CHECK(s.print_calls == 1);
    }

    // Update3D pushes the dirty ids 0, 1, 8 in order with their value blocks and clears them.
    // Id 7 is never pushed and keeps its flag.
    {
        vox::EmitterObj e;
        FakeSource s;
        e.dsp_source_ = &s;
        e.dirty_[0] = 1;
        e.dirty_[1] = 1;
        e.dirty_[7] = 1;
        e.dirty_[8] = 1;
        e.Update3D();
        CHECK(s.pushes.size() == 3);
        if (s.pushes.size() == 3) {
            CHECK(s.pushes[0].first == 0);
            CHECK(s.pushes[0].second == &e.param0_);
            CHECK(s.pushes[1].first == 1);
            CHECK(s.pushes[1].second == &e.float_params_[0]);
            CHECK(s.pushes[2].first == 8);
            CHECK(s.pushes[2].second == &e.position_);
        }
        CHECK(e.dirty_[0] == 0 && e.dirty_[1] == 0 && e.dirty_[8] == 0);
        CHECK(e.dirty_[7] == 1);
        // Without a source the flags stay set for a later push.
        e.dsp_source_ = nullptr;
        e.dirty_[9] = 1;
        e.Update3D();
        CHECK(e.dirty_[9] == 1);
    }

    // GetPlayCursor: (byte offset modulo length) / rate. A zero length returns 0 and releases the
    // mutex, so a second call works.
    {
        vox::EmitterObj e;
        FakeSource s;
        e.dsp_source_ = &s;
        e.play_length_ = 100;
        e.play_rate_ = 50;
        s.byte_offset = 130;
        CHECK(std::fabs(e.GetPlayCursor() - 0.6f) < 1e-5f);
        s.byte_offset = 260;
        CHECK(std::fabs(e.GetPlayCursor() - 1.2f) < 1e-5f);
        e.play_length_ = 0;
        CHECK(e.GetPlayCursor() == 0.0f);
        CHECK(e.GetPlayCursor() == 0.0f);
    }

    // ProcessNonNativeData: with a two-slot ring, each call fills the read slot, uploads the
    // decoded block and advances the read index modulo 2.
    {
        vox::EmitterObj e;
        FakeSource s;
        FakeCursor c;
        e.dsp_source_ = &s;
        e.decoder_cursor_ = &c;
        e.buffer_count_ = 2;
        e.buffer_chunk_bytes_ = 16;
        e.buffer_ring_.assign(2, nullptr);

        CHECK(e.ProcessNonNativeData(0.1f) == 0);
        CHECK(c.decode_calls == 1);
        CHECK(s.upload_calls == 1);
        CHECK(s.last_upload_bytes == 16);
        CHECK(s.last_upload == c.storage[0]);
        CHECK(e.buffer_read_index_ == 1);

        CHECK(e.ProcessNonNativeData(0.1f) == 1);
        CHECK(s.upload_calls == 2);
        CHECK(e.buffer_read_index_ == 0);

        // A refused buffer reference on an empty slot sets state_set_ to -1 and decodes nothing.
        e.buffer_ring_[0] = nullptr;
        c.allow_ref = false;
        const int calls_before = c.decode_calls;
        CHECK(e.ProcessNonNativeData(0.1f) == 0);
        CHECK(c.decode_calls == calls_before);
        CHECK(e.state_set_ == -1);
        c.allow_ref = true;

        // The source asks for no data, or the cursor has none: nothing is decoded.
        e.state_set_ = 0;
        s.need_data = 0;
        CHECK(e.ProcessNonNativeData(0.1f) == 0);
        s.need_data = 1;
        c.has_data = false;
        CHECK(e.ProcessNonNativeData(0.1f) == 0);
        CHECK(c.decode_calls == calls_before);
        CHECK(e.state_set_ == 0);
        // The ring array is owned by the emitter and freed by its destructor.
    }

    // UpdateDSP: a pending name goes to SetDSPParameter(0, name) and returns before the source
    // Update; the next call, with nothing pending, runs Update.
    {
        vox::EmitterObj e;
        FakeSource s;
        e.dsp_source_ = &s;
        char name[] = "reverb";
        e.SetDSPParameter(0, name);
        e.UpdateDSP(0.1f);
        CHECK(s.dsp_calls == 1);
        CHECK(s.last_dsp_param == 0);
        CHECK(s.last_dsp_value == e.dsp_buffer_);
        CHECK(s.update_calls == 0);
        e.UpdateDSP(0.1f);
        CHECK(s.update_calls == 1);
        CHECK(s.dsp_calls == 1);
        e.CleanUp();
    }

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("emitter_obj_playback_w9: all checks passed\n");
    return 0;
}
