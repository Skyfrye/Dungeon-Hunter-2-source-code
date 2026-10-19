// Native playlist containers: element reset, playlist accessors and the manager's
// Init, count and flag. The element vector holds PlaylistElement* as the original does.
// The manager calls that walk groups are checked in native_playlist_state_test.
#include <cstdio>
#include <cstdlib>
#include <vector>

#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {
struct PlaylistElementTestAccess {
    static std::int32_t Field(const PlaylistElement& e, int index) {
        switch (index) {
            case 0: return e.field_00_;
            case 1: return e.field_04_;
            case 2: return e.field_08_;
            case 3: return e.field_0c_;
            default: return e.field_10_;
        }
    }
    static void SetId(PlaylistElement& e, std::int32_t id) { e.field_00_ = id; }
};
struct NativePlaylistTestAccess {
    static void Set(NativePlaylist& p, bool valid, int current,
                    const std::vector<PlaylistElement*>& elements) {
        p.valid_ = valid;
        p.current_ = current;
        p.elements_ = elements;
    }
    // The elements in these tests live on the stack, so the playlist must drop them
    // before its destructor runs (the destructor frees element blocks).
    static void ClearElements(NativePlaylist& p) { p.elements_.clear(); }
    static void SetFlag(NativePlaylist& p, int flag) { p.field_14_ = flag; }
};
struct NativePlaylistsManagerTestAccess {
    static NativePlaylist** Playlists(NativePlaylistsManager& m) { return m.playlists_; }
    static void SetCount(NativePlaylistsManager& m, int count) { m.count_ = count; }
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
    // PlaylistElement: the constructor and Reset set the same five words.
    vox::PlaylistElement element;
    CHECK(vox::PlaylistElementTestAccess::Field(element, 0) == -1);
    CHECK(vox::PlaylistElementTestAccess::Field(element, 4) == 1);
    element.Reset();
    CHECK(vox::PlaylistElementTestAccess::Field(element, 0) == -1);
    CHECK(vox::PlaylistElementTestAccess::Field(element, 1) == 0);

    // NativePlaylist accessors. Elements are identified by their field_00 word.
    vox::PlaylistElement e7, e8, e9;
    vox::PlaylistElementTestAccess::SetId(e7, 7);
    vox::PlaylistElementTestAccess::SetId(e8, 8);
    vox::PlaylistElementTestAccess::SetId(e9, 9);
    std::vector<vox::PlaylistElement*> elements = {&e7, &e8, &e9};
    vox::NativePlaylist playlist;
    vox::NativePlaylistTestAccess::Set(playlist, true, 2, elements);
    CHECK(playlist.GetCurrentElement() == &e9);
    CHECK(playlist.GetCurrentPosition() == 2);
    CHECK(playlist.IsValid());
    vox::NativePlaylistTestAccess::Set(playlist, false, 0, elements);
    CHECK(!playlist.IsValid());
    CHECK(playlist.GetCurrentElement() == &e7);

    // GetPlaylistElement(int) needs the int flag at +0x14 and an index inside [0, count).
    vox::NativePlaylistTestAccess::SetFlag(playlist, 0);
    CHECK(playlist.GetPlaylistElement(1) == nullptr);
    vox::NativePlaylistTestAccess::SetFlag(playlist, 1);
    CHECK(playlist.GetPlaylistElement(1) == &e8);
    CHECK(playlist.GetPlaylistElement(3) == nullptr);
    CHECK(playlist.GetPlaylistElement(-1) == nullptr);
    vox::NativePlaylistTestAccess::ClearElements(playlist);

    // Manager: starts valid with no playlists; Init allocates the pointer array and
    // leaves the count alone.
    vox::NativePlaylistsManager manager;
    CHECK(manager.IsValid());
    CHECK(manager.GetNbPlaylists() == 0);
    manager.Init(4);
    CHECK(manager.IsValid());
    CHECK(vox::NativePlaylistsManagerTestAccess::Playlists(manager) != nullptr);
    CHECK(manager.GetNbPlaylists() == 0);
    vox::NativePlaylistsManagerTestAccess::SetCount(manager, 4);
    CHECK(manager.GetNbPlaylists() == 4);
    // The manager destructor frees the pointer array; count 0 keeps it from touching the
    // uninitialised entries.
    vox::NativePlaylistsManagerTestAccess::SetCount(manager, 0);

    std::printf("native_playlist_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
