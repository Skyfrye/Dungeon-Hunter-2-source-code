// glitch::os::Timer: virtual game time built on wall-clock milliseconds.
#include "glitch-core-io/os/logging.hpp"

#include <chrono>

namespace glitch::os {

std::uint32_t Timer::StaticTime = 0;
std::uint32_t Timer::StartRealTime = 0;
std::uint32_t Timer::LastVirtualTime = 0;
std::uint32_t Timer::TickCount = 0;

// Host runner seam (host-runner/, not in the original): when set, the wall clock is replaced by this clock so a runner can drive a fixed timestep.
std::int64_t (*g_dh2HostMicrosecondsOverride)() = nullptr;

// 0x60b0cc _ZN6glitch2os5Timer11getRealTimeEv
// gettimeofday split into seconds and microseconds, then tv_sec * 1000 + tv_usec / 1000.
// Not in the queue: a helper used by the functions below.
std::uint32_t Timer::getRealTime() {
    const std::int64_t micros = getMicroSeconds();
    const std::int64_t seconds = micros / 1000000;
    const std::int64_t microPart = micros % 1000000;
    return static_cast<std::uint32_t>(seconds * 1000 + microPart / 1000);
}

// 0x60b094 _ZN6glitch2os5Timer15getMicroSecondsEv
// The original is gettimeofday(); the same wall-clock value comes from system_clock.
std::int64_t Timer::getMicroSeconds() {
    if (g_dh2HostMicrosecondsOverride != nullptr) return g_dh2HostMicrosecondsOverride();
    using namespace std::chrono;
    return duration_cast<microseconds>(system_clock::now().time_since_epoch()).count();
}

// 0x60aee4 _ZN6glitch2os5Timer7getTimeEv
// While running: last virtual time plus the scaled real time since the start.
std::uint32_t Timer::getTime() {
    if (isStopped()) return LastVirtualTime;
    const float elapsed = static_cast<float>(StaticTime - StartRealTime);
    const float scaled = elapsed * VirtualTimerSpeed;
    return static_cast<std::uint32_t>(scaled) + LastVirtualTime;  // __aeabi_f2uiz
}

// 0x60af68 _ZN6glitch2os5Timer9stopTimerEv
void Timer::stopTimer() {
    if (!isStopped()) LastVirtualTime = getTime();
    --VirtualTimerStopCounter;
}

// 0x60b10c _ZN6glitch2os5Timer16initVirtualTimerEv
void Timer::initVirtualTimer() {
    StaticTime = getRealTime();
    StartRealTime = StaticTime;
}

// 0x60b144 _ZN6glitch2os5Timer9initTimerEv (a branch to initVirtualTimer)
void Timer::initTimer() { initVirtualTimer(); }

// 0x60b148 _ZN6glitch2os5Timer7setTimeEj
void Timer::setTime(std::uint32_t time) {
    StaticTime = getRealTime();
    StartRealTime = StaticTime;
    LastVirtualTime = time;
}

// 0x60b194 _ZN6glitch2os5Timer8setSpeedEf
// Freezes the virtual time at the current value, stores the new speed, and clamps a
// negative speed to zero.
void Timer::setSpeed(float speed) {
    setTime(getTime());
    VirtualTimerSpeed = speed;
    if (speed < 0.f) VirtualTimerSpeed = 0.f;
}

// 0x60b1dc _ZN6glitch2os5Timer10startTimerEv
void Timer::startTimer() {
    ++VirtualTimerStopCounter;
    if (isStopped()) return;
    setTime(LastVirtualTime);
}

// 0x60b22c _ZN6glitch2os5Timer4tickEv
void Timer::tick() {
    StaticTime = getRealTime();
    ++TickCount;
}

}  // namespace glitch::os
