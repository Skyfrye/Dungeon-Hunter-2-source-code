#include "net-session-online/live_feed.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // The destructor frees both buffers and clears the pointers. The sanitizer build of the
    // test would catch a double free or a leak; the plain build checks the pointers only.
    char* first = new char[8];
    char* second = new char[4];
    {
        _LiveFeed feed(first, second);
        CHECK(feed.FirstForTest() == first);
        CHECK(feed.SecondForTest() == second);
    }

    // Null buffers are allowed, as delete[] accepts a null pointer.
    {
        _LiveFeed empty(nullptr, nullptr);
        CHECK(empty.FirstForTest() == nullptr);
    }

    std::printf("%s\n", failures ? "live_feed: FAILED" : "live_feed: ok");
    return failures != 0;
}
