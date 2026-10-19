// glitch::CTimer forwards every member to glitch::os::Timer; the test checks the forwarding.
#include <cstdio>

#include "glitch-core-io/os/ctimer.hpp"
#include "glitch-core-io/os/logging.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    glitch::os::Timer::initVirtualTimer();
    glitch::CTimer timer;

    // setSpeed and getSpeed go to the same static speed; a negative speed is stored as zero.
    timer.setSpeed(0.25f);
    CHECK(timer.getSpeed() == 0.25f);
    CHECK(glitch::os::Timer::getSpeed() == 0.25f);
    timer.setSpeed(-1.f);
    CHECK(timer.getSpeed() == 0.f);
    timer.setSpeed(1.f);

    // stop and start change the stop counter that isStopped reports.
    glitch::os::Timer::VirtualTimerStopCounter = 0;
    timer.stop();
    CHECK(timer.isStopped());
    timer.start();
    CHECK(!timer.isStopped());

    // setTime freezes the base time that getTime returns while stopped.
    timer.setTime(777);
    glitch::os::Timer::VirtualTimerStopCounter = 1;
    CHECK(timer.getTime() == 777);
    glitch::os::Timer::VirtualTimerStopCounter = 0;

    const std::uint32_t ticks = glitch::os::Timer::TickCount;
    timer.tick();
    CHECK(glitch::os::Timer::TickCount == ticks + 1);
    CHECK(timer.getRealTime() > 0);

    std::printf("%s\n", failures ? "ctimer: FAILED" : "ctimer: ok");
    return failures != 0;
}
