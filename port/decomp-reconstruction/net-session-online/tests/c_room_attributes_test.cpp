// Checks of CRoomAttributes and CRoomSearchFilter as the matching layer uses them. Both classes have one definition,
// the game one (dh2/CRoomAttributes.hpp, dh2/CRoomSearchFilter.hpp); the net-session-online stand-ins this test used to
// exercise (inline int and vector members, IntActiveMask, CopyWithFlags) were removed at link time (link-1). The checks
// keep their intent against the NetStruct-based class: the active bits, the int and bin round trips, copy, clear, and the
// search filter's match rule.
#include "net-session-online/c_room_attributes.hpp"
#include "net-session-online/c_room_search_filter.hpp"

#include <cstdint>
#include <cstdio>

#include "room_test_helpers.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // Default construction: no attribute is active, every value is zero.
    CRoomAttributes empty;
    for (int i = 0; i < 8; ++i) {
        CHECK(!RoomIntActive(empty, i));
        CHECK(RoomGetInt(empty, i) == 0);
    }
    for (int i = 0; i < 5; ++i) {
        CHECK(!RoomBinActive(empty, i));
    }

    // Set and erase an int attribute: value and active bit move together.
    CRoomAttributes room;
    room.SetAttributeInt(RoomInt(3), 77);
    CHECK(RoomIntActive(room, 3));
    CHECK(RoomGetInt(room, 3) == 77);
    room.EraseAttributeInt(RoomInt(3));
    CHECK(!RoomIntActive(room, 3));
    CHECK(RoomGetInt(room, 3) == 0);

    // Bin attribute round trip: size is reported, bytes come back.
    const std::uint8_t name[] = {'a', 'b', 'c'};
    room.SetAttributeBin(RoomBin(1), name, 3);
    CHECK(RoomBinActive(room, 1));
    std::uint8_t out[8] = {};
    CHECK(room.GetAttributeBin(RoomBin(1), out, sizeof out) == 3);
    CHECK(out[0] == 'a' && out[1] == 'b' && out[2] == 'c');

    // Copy constructor and copy assignment keep every active attribute.
    CRoomAttributes copy(room);
    CHECK(RoomGetInt(copy, 3) == 0);
    CHECK(RoomBinActive(copy, 1));
    room.SetAttributeInt(RoomInt(5), 9);
    CRoomAttributes assigned;
    assigned = room;
    CHECK(RoomGetInt(assigned, 5) == 9);
    CHECK(RoomIntActive(assigned, 5));
    CHECK(RoomBinActive(assigned, 1));

    // Copy with flag 0 copies no int attributes (group flag 0x1 gates them) and no bin attributes 1 and 2 (flag 0x8).
    CRoomAttributes target;
    target.m_netRoomAttributes.Copy(room.m_netRoomAttributes, 0);
    CHECK(!RoomIntActive(target, 5));
    CHECK(!RoomBinActive(target, 1));

    // Clear empties everything.
    room.Clear();
    CHECK(!RoomIntActive(room, 5));
    CHECK(!RoomBinActive(room, 1));
    CHECK(RoomGetInt(room, 5) == 0);

    // Search filter: an empty filter matches every room.
    CRoomSearchFilter filter;
    CHECK(filter.TestRoomAttributes(empty));

    // Int filter needs an active attribute with a matching value.
    CRoomAttributes game;
    game.SetAttributeInt(RoomInt(2), 10);
    CRoomSearchFilter::tSearchFilterInt intFilter;
    intFilter.attribute = 2;
    intFilter.op = kOpGreaterEqual;
    intFilter.value = 10;
    filter.m_intFilters.push_back(intFilter);
    CHECK(filter.TestRoomAttributes(game));
    intFilter.value = 11;
    filter.m_intFilters.back() = intFilter;
    CHECK(!filter.TestRoomAttributes(game));
    CHECK(!filter.TestRoomAttributes(empty));  // inactive attribute fails the filter

    // Operator table from TestIntValues.
    CHECK(filter.TestIntValues(4, 4, kOpEqual));
    CHECK(!filter.TestIntValues(4, 5, kOpEqual));
    CHECK(filter.TestIntValues(4, 5, kOpLess));
    CHECK(!filter.TestIntValues(4, 5, static_cast<ROOM_SEARCH_OPERATOR>(42)));  // unknown operator never matches

    // Copy keeps the two vectors.
    CRoomSearchFilter copied(filter);
    CHECK(copied.m_intFilters.size() == 1);
    CHECK(copied.m_intFilters[0].value == 11);

    std::printf("%s\n", failures ? "c_room_attributes_test: FAILED" : "c_room_attributes_test: ok");
    return failures != 0;
}
