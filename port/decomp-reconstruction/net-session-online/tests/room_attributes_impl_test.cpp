#include "net-session-online/c_matching_gl_live.hpp"
#include "room_test_helpers.hpp"

#include <cstdio>

#include "net-session-online/glx_player_mp_lobby.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
struct NullObserver : GLXPlayerMPBaseObserver {};
}  // namespace

int main() {
    CMatchingGLLive m;

    // GetRoomAttributes: the same key returns the same entry, and a new entry starts inactive.
    CRoomAttributes* first = m.GetRoomAttributes();
    CHECK(first != nullptr);
    CHECK(m.GetRoomAttributes() == first);
    CHECK(!RoomIntActive(*first, 2));
    first->SetAttributeInt(RoomInt(2), 9);

    // A different room key is a different entry, and the first entry is kept.
    m.SetRoomKeyForTest(5);
    CRoomAttributes* other = m.GetRoomAttributes();
    CHECK(other != first);
    CHECK(!RoomIntActive(*other, 2));
    m.SetRoomKeyForTest(0);
    CHECK(m.GetRoomAttributes() == first);
    CHECK(RoomGetInt(*m.GetRoomAttributes(), 2) == 9);

    // SearchRoomInternal: the filter is copied, the lobby request is sent, the state becomes 7.
    NullObserver obs;
    GLXPlayerMPLobby lobby(&obs, nullptr);
    lobby.AttachConnectionForTest();
    lobby.SetStateForTest(2);
    CMatchingGLLive::s_GLXPlayerMPLobby = &lobby;

    CRoomSearchFilter filter;
    filter.m_intFilters.push_back({3, kOpEqual, 42});
    const std::int32_t result = m.SearchRoomInternal(filter, false, 1);
    CHECK(result == 0);
    CHECK(m.RoomOpForTest() == 7);
    CRoomSearchFilter stored = m.SearchFilterForTest();
    CHECK(stored.m_intFilters.size() == 1);
    CHECK(stored.m_intFilters[0].value == 42);
    CHECK(lobby.PendingKindForTest() == 19);
    CHECK(lobby.LastResultForTest() == -1);

    CMatchingGLLive::s_GLXPlayerMPLobby = nullptr;
    if (failures == 0) std::printf("room_attributes_impl_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
