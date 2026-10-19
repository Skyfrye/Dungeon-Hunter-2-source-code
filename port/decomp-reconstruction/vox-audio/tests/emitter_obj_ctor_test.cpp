// EmitterObj constructors (data-object and cursor overloads), GetDuration and the
// emitter-less paths of LoadAsync.
#include <cstdio>
#include <cstring>
#include <limits>

#include "vox-audio/vox/data_obj.hpp"
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

std::uint32_t FloatBits(float value) {
    std::uint32_t bits = 0;
    std::memcpy(&bits, &value, sizeof(bits));
    return bits;
}
}  // namespace

int main() {
    vox::DataObj data;  // state 0 (ready), no stream or decoder
    data.channels_ = 2;
    data.sample_rate_ = 44100;
    data.bits_per_sample_ = 16;
    data.length_ = 44100;

    // GetDuration: length / sample rate, as float bits. Not ready gives 0.
    CHECK(data.GetDuration() == FloatBits(44100.0f / 44100.0f));
    data.state_ = 4;
    CHECK(data.GetDuration() == 0);
    data.state_ = 0;

    // Data-object constructor (0x866380): priority, bank, rate and length from the data.
    vox::EmitterObj e(7, 3, 5, nullptr, &data);
    CHECK(e.id == 7);
    CHECK(e.priority_ == 3);
    CHECK(e.bank_ == 5);
    CHECK(!e.IsReady());                       // ready_flag_ = 1 until loaded
    CHECK(e.play_rate_ == 44100 * 4);          // rate * channels * bytes
    CHECK(e.play_length_ == 44100 * 4);        // length * frame bytes
    CHECK(e.decoder_type_ == 0);               // no decoder on the data object
    CHECK(e.GetPitch() == 1.0f);
    CHECK(e.float_params_[0] == std::numeric_limits<float>::max());
    CHECK(e.float_params_[1] == 100.0f);
    CHECK(e.user_data_ == ~std::uintptr_t{0});
    CHECK(e.gain_fade_.flag);
    CHECK(e.gain_fade_.target == 1.0f);

    vox::EmitterObj no_data(8, 0, 0, nullptr, nullptr);
    CHECK(no_data.play_rate_ == 1);
    CHECK(no_data.play_length_ == 0);

    // Cursor constructor (0x86c5ec) without a cursor or source: marked for death.
    vox::EmitterObj dead(9, 0, 0, 16, nullptr, nullptr, &data);
    CHECK(dead.need_to_die_);
    CHECK(dead.buffer_ring_.empty());
    CHECK(dead.ready_flag_ == 0);

    // LoadAsync without a data object or source fails and sets state -1 and need_to_die.
    vox::EmitterObj orphan(10, 0, 0, nullptr, nullptr);
    CHECK(orphan.LoadAsync() == 0);
    CHECK(orphan.need_to_die_);
    CHECK(orphan.state_ == -1);

    if (g_failures == 0) {
        std::printf("emitter_obj_ctor_test: all checks passed\n");
        return 0;
    }
    std::printf("emitter_obj_ctor_test: %d failures\n", g_failures);
    return 1;
}
