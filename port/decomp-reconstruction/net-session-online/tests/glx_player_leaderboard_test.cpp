#include "net-session-online/glx_player_leaderboard.hpp"

#include <cstdio>
#include <string>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    GLXPlayerLeaderboard lb;
    CHECK(lb.getLeaderboardSize() == -1);          // no names held yet
    CHECK(lb.getLeaderboardEntryPlayerName(0) == nullptr);
    CHECK(lb.getLeaderboardEntryPlayerPosition(0) == -1);
    CHECK(lb.getLeaderboardEntryPlayerScore(0) == static_cast<std::int32_t>(0xfff5d3d6u));
    CHECK(lb.getLeaderboardEntryPlayerCountry(0) == nullptr);
    CHECK(lb.getLeaderboardEntryPlayerScoreData(0) == nullptr);

    lb.SetCountForTest(2);
    lb.SetEntryForTest(0, "alice", "44", 1, 900, {7});
    lb.SetEntryForTest(1, "bob", "33", 2, 500, {3});
    CHECK(lb.getLeaderboardSize() == 2);
    CHECK(std::string(lb.getLeaderboardEntryPlayerName(1)) == "bob");
    CHECK(std::string(lb.getLeaderboardEntryPlayerCountry(0)) == "44");
    CHECK(lb.getLeaderboardEntryPlayerPosition(1) == 2);
    CHECK(lb.getLeaderboardEntryPlayerScore(0) == 900);
    CHECK(lb.getLeaderboardEntryPlayerScoreData(1)[0] == 3);
    CHECK(lb.getLeaderboardEntryPlayerName(2) == nullptr);   // index at the count is out of range
    CHECK(lb.getLeaderboardEntryPlayerName(-1) == nullptr);
    CHECK(lb.getLeaderboardEntryPlayerScore(2) == static_cast<std::int32_t>(0xfff5d3d6u));

    lb.SetCurrentForTest(5, "61", 1234, {9});
    CHECK(lb.getCurrentPlayerLeaderboardPosition() == 5);
    CHECK(std::string(lb.getCurrentPlayerLeaderboardCountry()) == "61");
    CHECK(lb.getCurrentPlayerLeaderboardScore() == 1234);
    CHECK(lb.getCurrentPlayerLeaderboardScoreData()[0] == 9);

    // getLeaderboardEntry (0x8321cc): name, position, score, score data and its count.
    {
        char* name = nullptr;
        std::int32_t position = 0, score = 0, count = 0;
        std::int32_t* data = nullptr;
        CHECK(lb.getLeaderboardEntry(1, name, position, score, data, count) == 1);
        CHECK(std::string(name) == "bob");
        CHECK(position == 2 && score == 500);
        CHECK(count == 0);                          // scoreDataCount is not set in this test
        CHECK(lb.getLeaderboardEntry(2, name, position, score, data, count) == 0);
    }

    // clearLeaderboard (0x832a48): the sentinel values come back.
    {
        GLXPlayerLeaderboard cleared;
        cleared.SetCountForTest(1);
        cleared.SetEntryForTest(0, "x", nullptr, 1, 2, {});
        cleared.clearLeaderboard();
        CHECK(cleared.getLeaderboardSize() == -1);
        CHECK(cleared.getCurrentPlayerLeaderboardPosition() == -666666);
        CHECK(cleared.getCurrentPlayerLeaderboardCountry() == nullptr);
        CHECK(cleared.getCurrentPlayerLeaderboardScore() == -666666);
    }

    // processRanking (0x832594): "n" ranking with one score-data value per entry, and a
    // "y" ranking that also carries the current row.
    {
        GLXPlayerLeaderboard ranked;
        ranked.SetScoreDataCount(1);
        char text[] = "n|1|alice|900|7|2|bob|500|3";
        ranked.processRanking(text);
        CHECK(ranked.getLeaderboardSize() == 2);
        CHECK(std::string(ranked.getLeaderboardEntryPlayerName(0)) == "alice");
        CHECK(ranked.getLeaderboardEntryPlayerPosition(1) == 2);
        CHECK(ranked.getLeaderboardEntryPlayerScore(1) == 500);
        CHECK(ranked.getLeaderboardEntryPlayerScoreData(0)[0] == 7);
        CHECK(ranked.getLeaderboardEntryPlayerScoreData(1)[0] == 3);

        GLXPlayerLeaderboard current;
        current.SetScoreDataCount(1);
        char withRow[] = "y|5|x|1234|9|1|alice|900|7";
        current.processRanking(withRow);
        CHECK(current.getCurrentPlayerLeaderboardPosition() == 5);
        CHECK(current.getCurrentPlayerLeaderboardScore() == 1234);
        CHECK(current.getCurrentPlayerLeaderboardScoreData()[0] == 9);
        CHECK(current.getLeaderboardSize() == 1);
        CHECK(current.getLeaderboardEntryPlayerScore(0) == 900);

        GLXPlayerLeaderboard other;
        char bogus[] = "q|1|2";
        other.processRanking(bogus);                // neither "y" nor "n": nothing is parsed
        CHECK(other.getLeaderboardSize() == -1);
    }

    // processRankingAround (0x832308): entries without a flag.
    {
        GLXPlayerLeaderboard around;
        around.SetScoreDataCount(1);
        char text[] = "1|alice|900|7|2|bob|500|3|";
        around.processRankingAround(text);
        CHECK(around.getLeaderboardSize() == 2);
        CHECK(std::string(around.getLeaderboardEntryPlayerName(1)) == "bob");
        CHECK(around.getLeaderboardEntryPlayerScoreData(0)[0] == 7);
    }

    // addScoreEntry (0x832c2c): the score segment, then one segment per entry.
    {
        std::string text;
        const std::int32_t values[2] = {10, 20};
        const std::int32_t written = lb.addScoreEntry(text, 500, 3, 60, values, 2);
        CHECK(text == "l|3|t|60|sl|0|s|500|l|3|t|60|sl|1|s|10|l|3|t|60|sl|2|s|20|");
        CHECK(written == 19);                       // length of the last segment
        std::string bare;
        CHECK(lb.addScoreEntry(bare, 7, 1, 2, nullptr, 0) == 17);   // only the score segment
        CHECK(bare == "l|1|t|2|sl|0|s|7|");
    }

    std::printf("%s\n", failures ? "glx_player_leaderboard: FAILED" : "glx_player_leaderboard: ok");
    return failures != 0;
}
