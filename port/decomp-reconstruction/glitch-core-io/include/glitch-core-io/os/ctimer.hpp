// glitch::CTimer: the engine-side timer facade. It has no state of its own: every member
// is a 4- or 8-byte branch to the glitch::os::Timer function of the same meaning, so the port
// forwards to those functions (see src/ctimer.cpp for the target addresses).
#pragma once

#include <cstdint>

namespace glitch {

class CTimer {
public:
    // Compiler-generated destructors (0x6714a4, 0x6715fc) are not reconstructed.
    virtual ~CTimer() = default;

    void tick();                             // 0x671868 -> os::Timer::tick (0x60b22c)
    bool isStopped() const;                  // 0x67186c -> os::Timer::isStopped (0x60aebc)
    float getSpeed() const;                  // 0x671870 -> os::Timer::getSpeed (0x60ae9c)
    void setSpeed(float speed);              // 0x671874 -> os::Timer::setSpeed (0x60b194)
    void start();                            // 0x67187c -> os::Timer::startTimer (0x60b1dc)
    void stop();                             // 0x671880 -> os::Timer::stopTimer (0x60af68)
    void setTime(std::uint32_t time);        // 0x671884 -> os::Timer::setTime (0x60b148)
    std::uint32_t getTime() const;           // 0x67188c -> os::Timer::getTime (0x60aee4)
    std::uint32_t getRealTime() const;       // 0x671890 -> os::Timer::getRealTime (0x60b0cc)
};

}  // namespace glitch
