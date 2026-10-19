// updateJob_thread: a job object that runs on its own thread. Reconstructed from
// libDungeonHunter2.so pseudocode. The worker entry points threadfun2 (0x317fbc, Savegame::UpdateJobs)
// and threadfun3 (0x317f90, SavegameManager::saveSettings) are defined in update_job_thread.cpp;
// Start and Start2 run them on a detached thread (the original never stores or joins the pthread_t).
//
// Original layout (32-bit offsets):
//   +0x00 vptr
//   +0x04 thread handle (pthread_t, here std::thread)
//   +0x08 flag, set to 1 by the constructor
//   +0x0c argument passed to the constructor
#pragma once

#include <atomic>
#include <thread>

class updateJob_thread {
public:
    explicit updateJob_thread(int argument);          // 0x317e44 _ZN16updateJob_threadC1Ei, 0x317e14 C2Ei
    virtual ~updateJob_thread();                      // 0x317e78 _ZN16updateJob_threadD1Ev, 0x317e74 D2Ev
    updateJob_thread(const updateJob_thread&) = delete;
    updateJob_thread& operator=(const updateJob_thread&) = delete;

    virtual int Prepare();                            // +0x08, 0x317e88 _ZN16updateJob_thread7PrepareEv
    virtual int Kernel();                             // +0x0c, 0x317e80 _ZN16updateJob_thread6KernelEv
    virtual int Finish();                             // +0x10, 0x317f74 _ZN16updateJob_thread6FinishEv
    void Run();                                       // 0x317e7c _ZN16updateJob_thread3RunEv
    bool IsCurrectThreadRunning();              // 0x317e90 _ZN16updateJob_thread22IsCurrectThreadRunningEv
    int Start();                                      // 0x317ef8 _ZN16updateJob_thread5StartEv
    int Start2();                                     // 0x317e98 _ZN16updateJob_thread6Start2Ev
    int Stop();                                       // 0x317f58 _ZN16updateJob_thread4StopEv

public:  // decision 9: Application::_Update reads flag_ (+0x08)
    std::thread thread_;                              // +0x04
    bool flag_ = false;                               // +0x08
    int argument_ = 0;                                // +0x0c
    std::atomic<bool> startBusy_{false};              // port only: a Start() worker is still running
};
