// os::Timer: stop/start counting, speed clamping, and the tick counter.
#include "glitch-core-io/os/logging.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::os;

int main() {
    Timer::initVirtualTimer();
    CHECK(Timer::StartRealTime == Timer::StaticTime);

    // Wall-clock microseconds are positive and the millisecond value tracks them.
    const std::int64_t us = Timer::getMicroSeconds();
    CHECK(us > 0);
    const std::uint32_t ms = Timer::getRealTime();
    CHECK(ms > 0);

    // A stop nests: the counter goes up on each stop and down on each start.
    Timer::VirtualTimerStopCounter = 0;
    Timer::stopTimer();
    CHECK(Timer::isStopped());
    Timer::startTimer();
    CHECK(!Timer::isStopped());

    // setTime freezes the base value; while stopped getTime returns it unchanged.
    Timer::setTime(1000);
    Timer::VirtualTimerStopCounter = 1;
    CHECK(Timer::getTime() == 1000);
    Timer::VirtualTimerStopCounter = 0;

    // A negative speed is stored as zero.
    Timer::setSpeed(-2.f);
    CHECK(Timer::VirtualTimerSpeed == 0.f);
    Timer::setSpeed(0.5f);
    CHECK(Timer::VirtualTimerSpeed == 0.5f);

    const std::uint32_t ticks = Timer::TickCount;
    Timer::tick();
    CHECK(Timer::TickCount == ticks + 1);

    std::printf("%s\n", failures ? "timer: FAILED" : "timer: ok");
    return failures != 0;
}
