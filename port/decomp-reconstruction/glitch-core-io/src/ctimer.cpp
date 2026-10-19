// glitch::CTimer forwarding members. Each original body is a single branch, so each port
// function calls the glitch::os::Timer function it branches to.
#include "glitch-core-io/os/ctimer.hpp"

#include "glitch-core-io/os/logging.hpp"

namespace glitch {

// 0x671868 _ZN6glitch6CTimer4tickEv
void CTimer::tick() { os::Timer::tick(); }

// 0x67186c _ZNK6glitch6CTimer9isStoppedEv
bool CTimer::isStopped() const { return os::Timer::isStopped(); }

// 0x671870 _ZNK6glitch6CTimer8getSpeedEv
float CTimer::getSpeed() const { return os::Timer::getSpeed(); }

// 0x671874 _ZN6glitch6CTimer8setSpeedEf
void CTimer::setSpeed(float speed) { os::Timer::setSpeed(speed); }

// 0x67187c _ZN6glitch6CTimer5startEv
void CTimer::start() { os::Timer::startTimer(); }

// 0x671880 _ZN6glitch6CTimer4stopEv
void CTimer::stop() { os::Timer::stopTimer(); }

// 0x671884 _ZN6glitch6CTimer7setTimeEj
void CTimer::setTime(std::uint32_t time) { os::Timer::setTime(time); }

// 0x67188c _ZNK6glitch6CTimer7getTimeEv
std::uint32_t CTimer::getTime() const { return os::Timer::getTime(); }

// 0x671890 _ZNK6glitch6CTimer11getRealTimeEv
std::uint32_t CTimer::getRealTime() const { return os::Timer::getRealTime(); }

}  // namespace glitch
