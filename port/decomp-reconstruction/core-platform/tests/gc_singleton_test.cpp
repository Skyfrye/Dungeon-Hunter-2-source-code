#include "core-platform/deps/game_center.hpp"
#include "core-platform/gc_singleton.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// The stand-in's constructor has no side effects.
GameCenter::GameCenter() {}

int main() {
    // The first call takes a block and constructs the instance; later calls return it.
    GameCenter* first = GCSingleton<GameCenter>::GetInstance();
    CHECK(first != nullptr);
    GameCenter* second = GCSingleton<GameCenter>::GetInstance();
    CHECK(first == second);

    std::printf("%s\n", failures ? "gc_singleton: FAILED" : "gc_singleton: ok");
    return failures != 0;
}
