// NativePlaylist construction from PlaylistInfos, GetState, the scalar copy, and the
// manager's AddPlaylist and count. The partial walk, group and copy paths are not called.
#include <cstdio>

#include "vox-audio/vox/native_playlist.hpp"

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
    info.words_[0] = 5;
    info.words_[1] = 3;

    // PlaylistInfos constructor: valid, repeats loaded from word 1, indices zero.
    vox::NativePlaylist playlist(&info);
    CHECK(playlist.IsValid());
    CHECK(playlist.GetCurrentPosition() == 0);

    // GetState copies the indices and the repeat words; the group pointer is the vector.
    vox::PlaylistState state;
    state.element_index = 99;
    playlist.GetState(&state);
    CHECK(state.group_index == 0);
    CHECK(state.element_index == 0);
    CHECK(state.remaining_repeats == 3);
    CHECK(state.previous_group == 0);
    CHECK(state.previous_element == 0);
    CHECK(state.saved_repeats == 3);
    CHECK(state.groups != nullptr);
    CHECK(state.groups->empty());

    // Scalar copy keeps the state words (groups are not copied yet).
    vox::NativePlaylist copy(playlist);
    vox::PlaylistState copy_state;
    copy.GetState(&copy_state);
    CHECK(copy.IsValid());
    CHECK(copy_state.remaining_repeats == 3);
    CHECK(copy_state.saved_repeats == 3);

    // Manager: AddPlaylist builds each playlist into the array and counts it.
    vox::NativePlaylistsManager manager;
    manager.Init(2);
    CHECK(manager.IsValid());
    CHECK(manager.GetNbPlaylists() == 0);
    manager.AddPlaylist(0, &info);
    CHECK(manager.GetNbPlaylists() == 1);
    CHECK(manager.IsValid());
    manager.AddPlaylist(1, &info);
    CHECK(manager.GetNbPlaylists() == 2);
    CHECK(manager.IsValid());

    std::printf("native_playlist_state_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
