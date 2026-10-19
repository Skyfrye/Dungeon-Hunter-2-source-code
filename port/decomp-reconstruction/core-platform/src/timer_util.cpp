#include "core-platform/timer_util.hpp"

#include "core-platform/deps/application.hpp"

// 0x317a8c / 0x317aa0 TimerUtil::TimerUtil()
TimerUtil::TimerUtil() : remaining_(0), paused_(true) {}

// 0x317ab4 TimerUtil::Start(unsigned int)
void TimerUtil::Start(unsigned int ms) {
    paused_ = false;
    remaining_ = ms;
}

// 0x317ac4 TimerUtil::Pause()
void TimerUtil::Pause() { paused_ = true; }

// 0x317ad0 TimerUtil::Unpause()
void TimerUtil::Unpause() { paused_ = false; }

// 0x317adc TimerUtil::GetRemainingTime() const
unsigned int TimerUtil::GetRemainingTime() const { return remaining_; }

// 0x317ae4 TimerUtil::Update()
// Subtracts the frame delta; a result that wraps below zero clamps to zero.
void TimerUtil::Update() {
    if (!paused_) {
        unsigned int r = remaining_ - static_cast<unsigned int>(ApplicationGetDt());
        remaining_ = (static_cast<int>(r) < 0) ? 0u : r;
    }
}
