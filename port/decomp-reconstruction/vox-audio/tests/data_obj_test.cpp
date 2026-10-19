// DataObj state, group mask, user data and emitter registration.
#include <cstdio>

#include "vox-audio/vox/data_obj.hpp"

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
    vox::DataObj d;
    d.group_ = 3;
    CHECK(d.IsGroup(1u << 3));
    CHECK(!d.IsGroup(1u << 2));
    CHECK(d.GetGroup() == 3);

    CHECK(d.IsReady());  // state 0
    d.NeedToDie();
    CHECK(!d.IsReady());
    CHECK(d.ShouldDie());  // need_to_die_ set: the binary returns 1 (0x865a70)
    CHECK(d.need_to_die_);

    vox::DataHandleUserData ud;
    ud.word = 0xabc;
    d.SetUserData(ud);
    CHECK(d.GetUserData() == 0xabc);

    d.RegisterEmitter(42);
    d.RegisterEmitter(43);
    CHECK(d.emitters_.size() == 2);
    d.UnregisterEmitter(42);
    CHECK(d.emitters_.size() == 1);
    CHECK(d.emitters_.front() == 43);

    if (g_failures == 0) {
        std::printf("data_obj_test: all checks passed\n");
        return 0;
    }
    std::printf("data_obj_test: %d failures\n", g_failures);
    return 1;
}
