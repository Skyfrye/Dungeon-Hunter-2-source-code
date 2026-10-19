#include "glitch-core-io/os/logging.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::os;

struct FakeLogger : ILogger {
    ELOG_LEVEL level = ELL_WARNING;
    int calls = 0;
    ELOG_LEVEL getLogLevel() const override { return level; }
    void setLogLevel(ELOG_LEVEL l) override { level = l; }
    void log(const char*, ELOG_LEVEL) override { ++calls; }
    void log(const char*, const char*, ELOG_LEVEL) override { calls += 10; }
    void log(const wchar_t*, ELOG_LEVEL) override { calls += 100; }
    void log(const wchar_t*, const wchar_t*, ELOG_LEVEL) override { calls += 1000; }
    void vlogf(ELOG_LEVEL, const char*, std::va_list) override { calls += 10000; }
};

int main() {
    // No logger installed: getLogLevel gives ELL_NONE and logging is a no-op.
    Printer::Logger = nullptr;
    CHECK(Printer::getLogLevel() == ELL_NONE);
    Printer::log("x", ELL_ERROR);
    Printer::setLogLevel(ELL_DEBUG);

    FakeLogger fake;
    Printer::Logger = &fake;
    CHECK(Printer::getLogLevel() == ELL_WARNING);
    Printer::setLogLevel(ELL_ERROR);
    CHECK(fake.level == ELL_ERROR);
    Printer::log("x", ELL_ERROR);
    Printer::log("x", "hint", ELL_ERROR);
    Printer::log(L"x", ELL_ERROR);
    CHECK(fake.calls == 111);
    // logf forwards through slot +0x24 (vlogf) with the level and the variadic area; ILogger::logf does the same.
    Printer::logf(ELL_WARNING, "n=%d", 3);
    CHECK(fake.calls == 10111);
    fake.logf(ELL_ERROR, "m=%d", 4);
    CHECK(fake.calls == 20111);
    Printer::Logger = nullptr;

    CHECK(!Timer::isStopped());
    Timer::VirtualTimerStopCounter = 2;
    CHECK(Timer::isStopped());
    Timer::VirtualTimerStopCounter = 0;
    Timer::VirtualTimerSpeed = 0.5f;
    CHECK(Timer::getSpeed() == 0.5f);

    std::printf("%s\n", failures ? "logging: FAILED" : "logging: ok");
    return failures != 0;
}
