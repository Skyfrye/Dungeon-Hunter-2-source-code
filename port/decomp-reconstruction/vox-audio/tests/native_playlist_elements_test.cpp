// NativePlaylist element table: AddGroup and AddPlaylistElement build VoxAlloc'd element
// blocks in the PlaylistElement* vector, the copy constructor copies them, and the
// destructor frees them. The walk returns nullptr when there are no groups.
#include <cstdio>

#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {
struct NativePlaylistElementsTestAccess {
    static std::int32_t ElementId(const PlaylistElement* e) { return e->field_00_; }
    static std::size_t ElementCount(const NativePlaylist& p) { return p.elements_.size(); }
    static std::size_t GroupCount(const NativePlaylist& p) { return p.groups_.size(); }
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
}  // namespace

int main() {
    vox::PlaylistInfos info;
    info.words_[0] = 0;  // reset flag: the walk does not try every group
    info.words_[1] = 2;  // total repeats

    // Without groups the walk and the peek find nothing and change nothing.
    {
        vox::NativePlaylist empty(&info);
        CHECK(empty.GetPlaylistElement() == nullptr);
        CHECK(empty.PeekAtNextElement() == nullptr);
        CHECK(empty.GetCurrentPosition() == 0);
    }

    // One sequential group with one element. The element record takes its words from
    // words 3 to 6 of the element info.
    vox::GroupInfos group_info;
    group_info.select_mode_ = 0;
    vox::NativePlaylist playlist(&info);
    playlist.AddGroup(&group_info);
    CHECK(vox::NativePlaylistElementsTestAccess::GroupCount(playlist) == 1);

    vox::PlaylistElementInfos element_info;
    element_info.words_[1] = 42;  // group value
    element_info.words_[2] = 0;   // group index
    element_info.words_[3] = 11;  // element word 0
    element_info.words_[4] = 12;  // element word 2
    element_info.words_[5] = 13;  // element word 3
    element_info.words_[6] = 14;  // element word 4
    playlist.AddPlaylistElement(&element_info);
    CHECK(vox::NativePlaylistElementsTestAccess::ElementCount(playlist) == 1);

    // The element is reachable by index once the remaining repeats are nonzero.
    const vox::PlaylistElement* stored = playlist.GetPlaylistElement(0);
    CHECK(stored != nullptr);
    if (stored != nullptr) {
        CHECK(vox::NativePlaylistElementsTestAccess::ElementId(stored) == 11);
    }

    // The copy owns its own groups and element blocks.
    vox::NativePlaylist copy(playlist);
    CHECK(vox::NativePlaylistElementsTestAccess::GroupCount(copy) == 1);
    CHECK(vox::NativePlaylistElementsTestAccess::ElementCount(copy) == 1);
    const vox::PlaylistElement* copied = copy.GetPlaylistElement(0);
    CHECK(copied != nullptr);
    CHECK(copied != stored);
    if (copied != nullptr) {
        CHECK(vox::NativePlaylistElementsTestAccess::ElementId(copied) == 11);
    }

    // Reset saves the indices, restores the full repeat count and keeps the element table.
    playlist.Reset();
    CHECK(playlist.GetCurrentPosition() == 0);
    vox::PlaylistState state;
    playlist.GetState(&state);
    CHECK(state.remaining_repeats == 2);
    CHECK(state.saved_repeats == 2);

    std::printf("native_playlist_elements_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
