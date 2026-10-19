// Owner D: the CMatching vtable reorder (TRACK-B-HANDOVER.md, "THE CMatching VTABLE REORDER"). Every call here goes
// through a CMatching* so it proves the virtual dispatch the binary has, not the derived class's own method:
//   - IsInRoom() / IsInRoom(int) are the base's two pure slots (+0x64 / +0x68); CMatchingLocal implements both
//     (non-const), so a virtual IsInRoom(idx) reaches 0x805c1c, not a base stub that returns false;
//   - GenerateNewMemberId() is NON-const in both derived classes, so CMatchingGLLive's reaches 0x81bbf4 (-1) and
//     CMatchingLocal's 0x80675c (the counter walk);
//   - the room-control block (+0x38 .. +0x58) and SearchRoomInternal (+0x08) are base virtuals now, so
//     CMatching::LockRoom reaches CloseRoom and CMatching::SearchRoom reaches the derived search.
#include "connection_manager_for_tests.hpp"  // real CConnectionManager, initialized once
static const bool kConnectionManagerReady = (connection_manager_test::Initialize(), true);
#include "net-session-online/c_matching_gl_live.hpp"
#include "net-session-online/c_matching_local.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    connection_manager_test::Reset();

    // ---- CMatchingLocal through the base.
    CMatchingLocal local;
    CMatching* base = &local;
    CHECK(base->GenerateNewMemberId() == 1);   // 0x80675c, counter 0
    CHECK(base->GenerateNewMemberId() == 17);  // counter 1
    CHECK(!base->IsInRoom(99));
    connection_manager_test::ConnectPeer(4);
    CHECK(base->IsInRoom(4));                  // 0x805c1c through slot +0x68: the connected peer is in the room
    CHECK(base->IsInRoom() == local.IsInRoom());  // 0x805cc8 through slot +0x64

    // LockRoom(true) calls slot +0x48 = CloseRoom (0x806e4c), which records the hidden state, closes and hides
    // the room, and the base's closed byte (+0x0e) is set afterwards.
    // (The constructor leaves the room closed and hidden; OpenRoom is slot +0x44 and opens it.)
    base->OpenRoom(true);
    CHECK(!base->IsRoomClosed());
    CHECK(!base->IsRoomHidden());
    base->LockRoom(true);
    CHECK(base->IsRoomClosed());
    CHECK(base->IsRoomHidden());

    // SearchRoomInternal (+0x08) of CMatchingLocal answers -1 while the object is not initialized; the base
    // default would answer 0.
    CRoomSearchFilter filter;
    CHECK(base->SearchRoomInternal(filter, true, 0) == -1);

    // ---- CMatchingGLLive through the base.
    CMatchingGLLive gl;
    CMatching* glBase = &gl;
    CHECK(glBase->GenerateNewMemberId() == -1);  // 0x81bbf4; the old const version left the base's 0 in the slot
    CHECK(!glBase->IsInRoom(-1));
    CHECK(glBase->CloseRoom() == 0);
    CHECK(glBase->OpenRoom(true) == 0);
    CHECK(!glBase->IsRoomClosed());
    gl.SetRoomFlagsForTest(true, true);
    CHECK(glBase->IsRoomClosed());
    CHECK(glBase->IsRoomHidden());
    CHECK(glBase->GetRoomList().empty());        // slot +0x90, no lobby rooms yet

    std::printf("%s\n", failures ? "od_matching_dispatch: FAILED" : "od_matching_dispatch: ok");
    return failures != 0;
}
