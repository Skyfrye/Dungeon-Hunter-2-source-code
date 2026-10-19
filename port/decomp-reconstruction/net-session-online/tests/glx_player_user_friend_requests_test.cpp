#include "net-session-online/glx_player_user_friend.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Captures the request text that the senders hand to SendByGet.
class CapturingFriend : public GLXPlayerUserFriend {
public:
    std::int32_t SendByGet(char* request) override { last = request; return 1; }
    std::string last;
};

int main() {
    CapturingFriend f;
    f.SetGGI(3);
    f.SetUID("me");

    f.sendGetUserFriendsCount();
    CHECK(f.last == "f|73|i|3|u|me|");

    f.sendGetUserFriends(0, 20);
    CHECK(f.last == "f|61|i|3|u|me|a|0|c|20|");

    f.sendDelUserFriend("bob", false);
    CHECK(f.last == "f|60|i|3|u|me|n|bob|");
    f.sendDelUserFriend("bob", true);
    CHECK(f.last == "f|60|i|3|u|me|un|bob|");

    f.sendConfirmUserFriend("ann", 5, false);
    CHECK(f.last == "f|62|i|3|u|me|n|ann|c|1|");

    f.sendAddUserFriend("cy", "hi", false);
    CHECK(f.last == "f|59|i|3|u|me|n|cy|m|hi|");
    f.sendAddUserFriend("cy", nullptr, true);
    CHECK(f.last == "f|59|i|3|u|me|un|cy|");

    std::printf("%s\n", failures ? "glx_player_user_friend_requests: FAILED" : "glx_player_user_friend_requests: ok");
    return failures != 0;
}
