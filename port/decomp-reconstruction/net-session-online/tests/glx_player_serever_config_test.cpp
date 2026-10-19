#include "net-session-online/glx_player_serever_config.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    GLXPlayerSereverConfig config("1.2.3");
    CHECK(std::strcmp(GLXPlayerSereverConfig::GetGameVersion(), "1.2.3") == 0);

    // Keys map to their getters. An unknown key gives null.
    CHECK(std::string(config.GetValue("latest")).empty());
    config.SetValueForTest("latest", "1.2.4");
    config.SetValueForTest("ChatServer", "chat.example");
    CHECK(std::strcmp(config.GetGameLatestVersion(), "1.2.4") == 0);
    CHECK(std::strcmp(config.GetChatServer(), "chat.example") == 0);
    CHECK(std::string(config.GetChatDomain()).empty());
    CHECK(std::string(config.GetPhpVer()).empty());

    // A server date in an earlier year is out of date. The same year compares the day numbers.
    GameDate* server = new GameDate{2025, 100};
    GameDate* local = new GameDate{2026, 10};
    config.SetDatesForTest(server, local);
    CHECK(config.isOutOfDate(0) == true);
    config.SetDatesForTest(new GameDate{2026, 5}, new GameDate{2026, 10});
    CHECK(config.isOutOfDate(4) == true);   // 5 + 4 < 10
    config.SetDatesForTest(new GameDate{2026, 5}, new GameDate{2026, 10});
    CHECK(config.isOutOfDate(5) == false);  // 5 + 5 is not below 10
    config.SetDatesForTest(new GameDate{2027, 0}, new GameDate{2026, 10});
    CHECK(config.isOutOfDate(0) == false);

    GameDate now{0, 0};
    GLXPlayerSereverConfig::GetCurTimeDate(&now);
    CHECK(now.year >= 100);

    std::printf("%s\n", failures ? "glx_player_serever_config: FAILED" : "glx_player_serever_config: ok");
    return failures != 0;
}
