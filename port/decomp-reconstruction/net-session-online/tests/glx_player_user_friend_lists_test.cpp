#include "net-session-online/glx_player_user_friend.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    GLXPlayerUserFriend friends;

    // Field 1 is the count, entries start at field 3. Entry fields are separated by '^':
    // 0 user number, 1 name, 2 country, 3 "reputation,bad,good", 4 total trophy, 5 state,
    // 6 current game, 7 trophy, 8 language, 9 avatar key, 10 avatar last update.
    friends.processFriendsList("h|1|x|7^Alice^5^2.5,1,3^100^4^9^250^en^k^t");
    CHECK(friends.GetFriendsCount() == 1);
    CHECK(friends.GetName(0) != nullptr && std::string(friends.GetName(0)) == "Alice");
    CHECK(friends.GetReputation(0) == 2.5);
    CHECK(friends.GetBadReputationCount(0) == 1);
    CHECK(friends.GetGoodReputationCount(0) == 3);
    CHECK(friends.GetTotalTrophyScore(0) == 100);
    CHECK(friends.GetState(0) == 4);
    CHECK(friends.GetTrophy(0) == 250);

    friends.clearFriendsList();
    CHECK(friends.GetFriendsCount() == 0);
    CHECK(friends.GetName(0) == nullptr);

    // An empty list leaves the count at zero.
    friends.processFriendsList("h|0|x");
    CHECK(friends.GetFriendsCount() == 0);

    return failures == 0 ? 0 : 1;
}
