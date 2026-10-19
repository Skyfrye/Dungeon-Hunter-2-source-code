// TimerUtil: countdown timer that Update() ticks down by the frame delta.
#pragma once

class TimerUtil {
public:
    TimerUtil();                 // 0x317a8c / 0x317aa0: paused, zero remaining
    void Start(unsigned int ms); // 0x317ab4: arm with ms and run
    void Pause();                // 0x317ac4
    void Unpause();              // 0x317ad0
    unsigned int GetRemainingTime() const;  // 0x317adc
    void Update();               // 0x317ae4: subtract Application::GetDt() while running

private:
    unsigned int remaining_ = 0;  // +0x00
    bool paused_ = true;          // +0x04 (set to 1 by the constructor and by Pause)
};
