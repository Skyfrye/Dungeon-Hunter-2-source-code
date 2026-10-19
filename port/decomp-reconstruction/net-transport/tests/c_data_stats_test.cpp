#include "net-transport/c_data_stats.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    CDataStats<int> stats;
    CHECK(stats.GetSum() == 0);
    CHECK(stats.GetAverage(1.0f) == 0);

    stats.AddData(1);
    stats.AddData(2);
    stats.AddData(3);
    CHECK(stats.GetSum() == 6);
    CHECK(stats.GetAverage(5.0f) == 2);
    CHECK(stats.GetAverage(0.0f) == 2);

    // The cap is 500 samples: a 600-sample run keeps the newest 500, all within one second.
    CDataStats<int> capped;
    for (int i = 0; i < 600; ++i) {
        capped.AddData(1);
    }
    CHECK(capped.GetSum() == 500);

    if (failures == 0) {
        std::printf("c_data_stats_test: ok\n");
    }
    return failures == 0 ? 0 : 1;
}
