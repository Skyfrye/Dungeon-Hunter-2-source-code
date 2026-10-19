// VoxSoundPackXML event selection (modes 0 and 1), ResetEvent and the group mask, over
// event records filled directly (the XML loader is not ported).
#include <cstdint>
#include <cstdio>
#include <map>
#include <set>
#include <string>
#include <utility>
#include <vector>

#include "vox-audio/vox/random48.hpp"
#include "vox-audio/vox/sound_pack_xml.hpp"

namespace vox {
struct VoxSoundPackXMLTestAccess {
    static std::vector<EventRecordXML>& Events(VoxSoundPackXML& p) { return p.events_; }
    static vox::VoxMap<vox::VoxString, std::int32_t, StringComp>& GroupMasks(VoxSoundPackXML& p) {
        return p.group_masks_;
    }
};
}  // namespace vox

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

vox::EventRecordXML MakeEvent(int uid, const char* name, std::vector<std::int32_t> pool,
                              int mode, int max_used, int percent) {
    vox::EventRecordXML ev;
    ev.uid = uid;
    ev.name = name;
    ev.sound_uids = std::move(pool);
    ev.field_1c = static_cast<std::int16_t>(mode);
    ev.field_1e = static_cast<std::int16_t>(max_used);
    ev.field_20 = static_cast<std::int16_t>(percent);
    return ev;
}

void TestModeOneInOrder() {
    vox::VoxSoundPackXML pack;
    auto& events = vox::VoxSoundPackXMLTestAccess::Events(pack);
    events = {MakeEvent(0, "Ordered", {10, 20, 30}, 1, 0, 100)};

    const int expected[] = {10, 20, 30, 10, 20};
    for (int want : expected) {
        int uid = 0;
        CHECK(pack.GetEventSoundUid(0, uid) == 1);
        CHECK(uid == want);
    }
    // ResetEvent stores the event count (1 here) in the mode 1 index, so the next pick is
    // pool[1], not pool[0]. This is what the binary does.
    CHECK(pack.ResetEvent(0) == 1);
    CHECK(events[0].sequence_index == 1);
    int uid = 0;
    CHECK(pack.GetEventSoundUid("ordered", uid) == 1);
    CHECK(uid == 20);
}

void TestModeZeroWithoutRepeat() {
    vox::VoxSoundPackXML pack;
    auto& events = vox::VoxSoundPackXMLTestAccess::Events(pack);
    events = {MakeEvent(0, "Shuffle", {1, 2, 3, 4}, 0, 2, 100)};

    std::set<int> seen;
    for (int i = 0; i < 12; ++i) {
        int uid = 0;
        CHECK(pack.GetEventSoundUid(0, uid) == 1);
        CHECK(uid >= 1 && uid <= 4);
        seen.insert(uid);
        // The pool and the used list together hold every sound; the used list is capped.
        CHECK(events[0].sound_uids.size() + events[0].used_sound_uids.size() == 4);
        CHECK(events[0].used_sound_uids.size() <= 2);
    }
    CHECK(seen.size() == 4);

    CHECK(pack.ResetEvent(0) == 1);
    CHECK(events[0].used_sound_uids.empty());
    CHECK(events[0].sound_uids.size() == 4);
}

void TestPercentAndEmptyPool() {
    vox::VoxSoundPackXML pack;
    auto& events = vox::VoxSoundPackXMLTestAccess::Events(pack);
    events = {MakeEvent(0, "Silent", {5}, 1, 0, 0),
              MakeEvent(1, "Empty", {}, 1, 0, 100)};

    // A percent of 0 always gives the -1 uid (no sound) and still returns 1.
    int uid = 0;
    CHECK(pack.GetEventSoundUid(0, uid) == 1);
    CHECK(uid == -1);

    // An empty pool returns 0 and leaves the output alone.
    uid = 42;
    CHECK(pack.GetEventSoundUid(1, uid) == 0);
    CHECK(uid == 42);

    CHECK(pack.GetEventSoundUid(7, uid) == 0);  // out of range
    CHECK(pack.ResetEvent(-1) == 0);
    CHECK(pack.ResetEvent("missing") == 0);
}

void TestGroupMask() {
    vox::VoxSoundPackXML pack;
    auto& masks = vox::VoxSoundPackXMLTestAccess::GroupMasks(pack);
    masks["Music"] = 6;
    int mask = -1;
    pack.GetGroupMask("Music", mask);
    CHECK(mask == 6);
    pack.GetGroupMask("missing", mask);
    CHECK(mask == 0);
}

}  // namespace

int main() {
    vox::Srand48(1);
    TestModeOneInOrder();
    TestModeZeroWithoutRepeat();
    TestPercentAndEmptyPool();
    TestGroupMask();
    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("sound_pack_event_pick_test: ok\n");
    return 0;
}
