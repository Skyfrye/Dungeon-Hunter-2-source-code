#include "net-session-online/glx_player_leaderboard.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// Captures the request text that the senders hand to SendByGet.
class CapturingBoard : public GLXPlayerLeaderboard {
public:
    std::int32_t SendByGet(char* request) override { last = request; return 1; }
    std::string last;
};

int main() {
    CapturingBoard board;
    board.SetGGI(5);
    board.SetUID("p9");

    board.sendHighScore(1200, -1, 33);
    CHECK(board.last == "f|110|i|5|u|p9|t|33|s|1200|");

    board.sendHighScore(1200, 2, 33);
    CHECK(board.last == "f|110|i|5|u|p9|l|2|t|33|s|1200|");

    board.sendRankGet(-1, 4, 10, 20, true);
    CHECK(board.last == "f|111|i|5|u|p9|p|10|t|20|x|4|c|1|");

    // The optional "l|first|" field goes at the end when first >= 0.
    board.sendRankGet(0, 4, 10, 20, false);
    CHECK(board.last == "f|111|i|5|u|p9|p|10|t|20|x|4|c|0|l|0|");

    board.sendRankGetAroundPlayer(-1, 7, 8);
    CHECK(board.last == "f|112|i|5|u|p9|p|7|t|8|");

    board.sendRankGetAroundPlayer(1, 7, 8);
    CHECK(board.last == "f|112|i|5|u|p9|p|7|t|8|l|1|");

    board.sendHighScore("9|8");
    CHECK(board.last == "f|110|i|5|u|p9|9|8");

    std::printf("%s\n", failures ? "glx_player_leaderboard_requests: FAILED" : "glx_player_leaderboard_requests: ok");
    return failures != 0;
}
