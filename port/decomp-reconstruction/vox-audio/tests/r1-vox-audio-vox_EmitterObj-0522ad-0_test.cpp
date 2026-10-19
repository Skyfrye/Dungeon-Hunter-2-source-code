// EmitterObj batch r1 (redo): the cursor constructor's play rate and length, LoadAsync's chunk
// sizing and cursor hand-off, GetDebugInfo's param0 override and Update's mono 3D push, gain fade
// and play request. Driven by fake sources, decoder cursors, decoders and streams.
#include <cmath>
#include <cstdint>
#include <cstdio>
#include <vector>

#include "vox-audio/vox/data_obj.hpp"
#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/emitter_obj.hpp"
#include "vox-audio/vox/stream.hpp"

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

// Source: a switchable buffer-reference answer, a gain and pitch record, and the 3D pushes.
class FakeSource : public vox::DriverSourceInterface {
public:
    bool allow_ref = false;
    int state = 0;
    float gain = 0.0f;
    float pitch = 1.0f;
    int gain_sets = 0;
    float last_gain_set = -1.0f;
    int update_calls = 0;
    int play_calls = 0;
    std::vector<int> pushes;

    int AllowBufferReference() override { return allow_ref ? 1 : 0; }
    int GetBufferCount() const override { return 2; }
    int GetState() override { return state; }
    float GetGain() override { return gain; }
    void SetGain(float value) override {
        ++gain_sets;
        last_gain_set = value;
        gain = value;
    }
    float GetPitch() override { return pitch; }
    void SetPitch(float value) override { pitch = value; }
    void Play() override { ++play_calls; }
    void Set3DParameter(int which, const void* value) override {
        (void)value;
        pushes.push_back(which);
    }
    void Update(float dt) override {
        (void)dt;
        ++update_calls;
    }
};

// Decoder cursor with a track block (channels, sample rate, bits, length) and a buffer-reference answer.
class FakeCursor : public vox::DecoderCursorInterface {
public:
    FakeCursor(int channels, int rate, int bits, int length, bool allow_ref = false) : allow_ref_(allow_ref) {
        params_.channels = channels;
        params_.sample_rate = rate;
        params_.bits_per_sample = bits;
        params_.length_frames = length;
    }
    int reset_calls = 0;
    unsigned int last_seek = 0;

    int Decode(void* dst, int count) override {
        (void)dst;
        return count;
    }
    bool HasData() override { return true; }
    void Reset() override { ++reset_calls; }
    int Seek(unsigned int frame) override {
        last_seek = frame;
        return 0;
    }
    bool AllowBufferReference() override { return allow_ref_; }

private:
    bool allow_ref_;
};

class FakeStreamCursor : public vox::StreamCursorInterface {
public:
    int Seek(int offset, int whence) override {
        (void)offset;
        (void)whence;
        return 0;
    }
    bool EndOfStream() override { return false; }
    int Tell() override { return 0; }
    int Read(std::uint8_t* dst, int size) override {
        (void)dst;
        return size;
    }
    bool IsSeekable() const override { return false; }
};

class FakeStream : public vox::StreamInterface {
public:
    int created = 0;
    int destroyed = 0;
    int GetType() const override { return 2; }
    vox::StreamCursorInterface* CreateNewCursor() override {
        ++created;
        return new FakeStreamCursor();
    }
    void DestroyCursor(vox::StreamCursorInterface* cursor) override {
        ++destroyed;
        delete cursor;
    }
};

// Decoder whose cursors carry the track words given here, and whose GetParam is null (as MSWav and MPC8).
class FakeDecoder : public vox::DecoderInterface {
public:
    FakeDecoder(int channels, int rate, int bits, int length, bool cursor_allow_ref)
        : channels_(channels), rate_(rate), bits_(bits), length_(length), cursor_allow_ref_(cursor_allow_ref) {}
    int created = 0;
    int destroyed = 0;

    vox::DecoderCursorInterface* CreateNewCursor(vox::StreamCursorInterface* stream) override {
        (void)stream;
        ++created;
        return new FakeCursor(channels_, rate_, bits_, length_, cursor_allow_ref_);
    }
    void DestroyCursor(vox::DecoderCursorInterface* cursor) override {
        ++destroyed;
        delete cursor;
    }
    int GetType() const override { return 1; }
    std::int32_t* GetParam() override { return nullptr; }

private:
    int channels_;
    int rate_;
    int bits_;
    int length_;
    bool cursor_allow_ref_;
};

// A data object that plays through the fake stream and decoder.
void WireData(vox::DataObj& data, FakeStream& stream, FakeDecoder& decoder) {
    data.state_ = 0;
    data.stream_ = &stream;
    data.decoder_ = &decoder;
}
}  // namespace

// ProcessNativeData (0x866b30) is a skipped row with no body in the port, and Update calls it only
// on the native branch (decoder type 4), which this test never takes. A weak definition lets the
// test link against the library without changing it. The Update checks need GCC or MinGW for this.
#if defined(__GNUC__)
#define VOX_TEST_HAS_UPDATE 1
namespace vox {
__attribute__((weak)) int EmitterObj::ProcessNativeData(float dt) {
    (void)dt;
    return 0;
}
}  // namespace vox
#else
#define VOX_TEST_HAS_UPDATE 0
#endif

int main() {
    // Cursor constructor (0x86c5ec): play length = channels * length * bytes = 2 * 1000 * 2 and play
    // rate = bytes * channels * rate = 2 * 2 * 44100. The data object's words (1 channel, 8 kHz,
    // 8 bits, 5 frames) are not used. Without buffer references the ring is one slot of 16 bytes.
    {
        vox::DataObj data;
        data.channels_ = 1;
        data.sample_rate_ = 8000;
        data.bits_per_sample_ = 8;
        data.length_ = 5;
        FakeSource source;
        FakeCursor cursor(2, 44100, 16, 1000);
        vox::EmitterObj e(3, 0, 0, 16, &source, &cursor, &data);
        CHECK(e.play_length_ == 4000);
        CHECK(e.play_rate_ == 176400);
        CHECK(!e.need_to_die_);
        CHECK(e.buffer_count_ == 1);
        CHECK(e.buffer_chunk_bytes_ == 16);
        CHECK(e.decoder_cursor_ == &cursor);
        CHECK(e.ready_flag_ == 0);
        e.CleanUp();  // frees the one ring slot (the cursor does not allow buffer references)
    }

    // LoadAsync, neither the source nor the cursor allows buffer references: the chunk is about
    // 150 ms of frames. Frame bytes = 2 * 16 / 8 = 4, bytes per chunk = 4 * 150 * 44100 / 1000 = 26460,
    // a whole number of frames. One ring slot, returned as ready.
    {
        vox::DataObj data;
        FakeStream stream;
        FakeDecoder decoder(2, 44100, 16, 44100, false);
        WireData(data, stream, decoder);
        FakeSource source;
        vox::EmitterObj e(4, 0, 0, &source, &data);
        CHECK(e.decoder_type_ == 1);
        CHECK(e.LoadAsync() == 1);
        CHECK(e.buffer_chunk_bytes_ == 26460);
        CHECK(e.buffer_count_ == 1);
        CHECK(e.decoder_cursor_ != nullptr);
        CHECK(!e.need_to_die_);
        CHECK(e.state_ == 0);
        CHECK(stream.created == 1 && stream.destroyed == 0);
        CHECK(decoder.created == 1 && decoder.destroyed == 0);
        e.CleanUp();
    }

    // LoadAsync with buffer references on both sides: the chunk is bits * length / 8 from the cursor
    // (16 * 44100 / 8 = 88200), and the ring is one null slot the cursor fills.
    {
        vox::DataObj data;
        FakeStream stream;
        FakeDecoder decoder(2, 44100, 16, 44100, true);
        WireData(data, stream, decoder);
        FakeSource source;
        source.allow_ref = true;
        vox::EmitterObj e(5, 0, 0, &source, &data);
        CHECK(e.LoadAsync() == 1);
        CHECK(e.buffer_chunk_bytes_ == 88200);
        CHECK(e.buffer_count_ == 1);
        CHECK(e.buffer_ring_.size() == 1 && e.buffer_ring_[0] == nullptr);
    }

    // LoadAsync with a zero sample rate and no buffer references: the 150 ms chunk is zero, so the
    // cursor is destroyed, the emitter is marked for death and the state is -1.
    {
        vox::DataObj data;
        FakeStream stream;
        FakeDecoder decoder(2, 0, 16, 44100, false);
        WireData(data, stream, decoder);
        FakeSource source;
        vox::EmitterObj e(6, 0, 0, &source, &data);
        CHECK(e.LoadAsync() == 0);
        CHECK(e.decoder_cursor_ == nullptr);
        CHECK(e.need_to_die_);
        CHECK(e.state_ == -1);
        CHECK(decoder.destroyed == 1);
        CHECK(stream.destroyed == 1);
    }

    // GetDebugInfo: param0 is -1 when the cursor has more than one channel; a mono cursor keeps param0,
    // and an emitter with no cursor keeps it too.
    {
        vox::EmitterObj e;
        e.param0_ = 7;
        vox::DebugChunk_emitter chunk;
        FakeCursor stereo(2, 44100, 16, 10);
        e.decoder_cursor_ = &stereo;
        e.GetDebugInfo(chunk);
        CHECK(chunk.param0 == -1);
        FakeCursor mono(1, 44100, 16, 10);
        e.decoder_cursor_ = &mono;
        e.GetDebugInfo(chunk);
        CHECK(chunk.param0 == 7);
        e.decoder_cursor_ = nullptr;
        e.GetDebugInfo(chunk);
        CHECK(chunk.param0 == 7);
    }

#if VOX_TEST_HAS_UPDATE
    // Update, mono cursor: the 3D block is pushed (dirty id 0) and the gain fade is at 0.125 after a
    // quarter of a 1-second fade from 0 to 0.5. The source gets the new gain, its DSP update runs,
    // and the frame returns the Mutex::Unlock int.
    {
        FakeSource source;
        FakeCursor mono(1, 44100, 16, 10);
        vox::EmitterObj e;
        e.dsp_source_ = &source;
        e.decoder_cursor_ = &mono;
        e.dirty_[0] = 1;
        e.gain_fade_.current = 0.0f;
        e.gain_fade_.target = 0.5f;
        e.gain_fade_.elapsed = 0.0f;
        e.gain_fade_.duration = 1.0f;
        e.gain_fade_.flag = false;
        e.resume_fade_.target = 1.0f;  // resume fade with no duration: target 1.0
        e.resume_fade_.flag = true;
        e.pitch_fade_.target = 1.0f;
        e.pitch_fade_.flag = true;
        const int result = e.Update(0.25f);
        CHECK(result == 0);
        CHECK(source.pushes.size() == 1 && source.pushes[0] == 0);
        CHECK(e.dirty_[0] == 0);
        CHECK(source.update_calls == 1);
        CHECK(source.gain_sets == 1);
        CHECK(std::fabs(source.last_gain_set - 0.125f) < 1e-6f);
        CHECK(std::fabs(e.gain_ - 0.125f) < 1e-6f);
        CHECK(!e.gain_fade_.flag);
    }

    // Update, stereo cursor: no 3D push, the dirty flag stays set.
    {
        FakeSource source;
        FakeCursor stereo(2, 44100, 16, 10);
        vox::EmitterObj e;
        e.dsp_source_ = &source;
        e.decoder_cursor_ = &stereo;
        e.dirty_[0] = 1;
        e.resume_fade_.target = 1.0f;
        e.resume_fade_.flag = true;
        e.pitch_fade_.target = 1.0f;
        e.pitch_fade_.flag = true;
        e.Update(0.25f);
        CHECK(source.pushes.empty());
        CHECK(e.dirty_[0] == 1);
    }

    // Update with a requested Play (state_set_ 1 while the source is at state 0): the source is
    // played once, the emitter's flag 145 clears, and the state stays 0 so no callback is queued.
    {
        FakeSource source;
        FakeCursor stereo(2, 44100, 16, 10);
        vox::EmitterObj e;
        e.dsp_source_ = &source;
        e.decoder_cursor_ = &stereo;
        e.state_set_ = 1;
        e.flag_145_ = 1;
        e.resume_fade_.target = 1.0f;
        e.resume_fade_.flag = true;
        e.pitch_fade_.target = 1.0f;
        e.pitch_fade_.flag = true;
        e.Update(0.25f);
        CHECK(source.play_calls == 1);
        CHECK(e.flag_145_ == 0);
        CHECK(e.state_ == 0);
        CHECK(!e.callback_pending_);
    }
#endif  // VOX_TEST_HAS_UPDATE

    if (g_failures == 0) {
        std::printf("r1-vox-audio-vox_EmitterObj-0522ad-0 test: all checks passed\n");
        return 0;
    }
    std::printf("r1-vox-audio-vox_EmitterObj-0522ad-0 test: %d failures\n", g_failures);
    return 1;
}
