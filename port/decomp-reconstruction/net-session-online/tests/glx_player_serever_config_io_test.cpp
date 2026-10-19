#include "net-session-online/glx_player_serever_config.hpp"
#include "net-session-online/glx_player_observer.hpp"

#include <cstdio>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

class RecordingObserver : public GLXPlayerObserver {
public:
    void OnRequestFailure(std::int32_t code, std::int32_t detail) override {
        lastCode = code;
        lastDetail = detail;
    }
    std::int32_t lastCode = -1;
    std::int32_t lastDetail = -1;
};

}  // namespace

int main() {
    // Response "101|key|value|configured|1" with an error code of 1: the pairs go into the
    // config map and the observer receives (1, 101).
    static const char kResponse[] = "101|alpha|beta";
    GLXPlayerSereverConfig config("1.0");
    RecordingObserver observer;
    config.RegisterObserver(&observer);
    config.StartResponseParser(kResponse, 0);

    CHECK(config.OnUpdateFailure(1));
    CHECK(observer.lastCode == 1);
    CHECK(observer.lastDetail == 101);
    CHECK(std::string(config.GetValue("alpha")) == "beta");

    return failures == 0 ? 0 : 1;
}
