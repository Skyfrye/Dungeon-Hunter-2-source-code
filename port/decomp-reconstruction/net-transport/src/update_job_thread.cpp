#include "net-transport/update_job_thread.hpp"

#include "dh2/Application.hpp"      // ApplicationGetInstance().m_savegameManager (dword_99F778)
#include "dh2/Savegame.hpp"         // Savegame::UpdateJobs
#include "dh2/SavegameManager.hpp"  // SavegameManager::saveSettings

// 0x317e44 _ZN16updateJob_threadC1Ei
// 0x317e14 _ZN16updateJob_threadC2Ei
updateJob_thread::updateJob_thread(int argument) : flag_(true), argument_(argument) {}

// 0x317e78 _ZN16updateJob_threadD1Ev
// 0x317e74 _ZN16updateJob_threadD2Ev
// The original does nothing here and never joins a worker (Start and Start2 detach in this port).
updateJob_thread::~updateJob_thread() {}

// 0x317e88 _ZN16updateJob_thread7PrepareEv
int updateJob_thread::Prepare() {
    return 1;
}

// 0x317e80 _ZN16updateJob_thread6KernelEv
int updateJob_thread::Kernel() {
    return 1;
}

// 0x317f74 _ZN16updateJob_thread6FinishEv
// Verified: the original prints the "\n\n updateJob_thread::Finish() \n\n" debug trace and returns 1;
// the trace is dropped (logging only), the return matches.
int updateJob_thread::Finish() {
    return 1;
}

// 0x317e7c _ZN16updateJob_thread3RunEv
void updateJob_thread::Run() {}

// 0x317e90 _ZN16updateJob_thread22IsCurrectThreadRunningEv
bool updateJob_thread::IsCurrectThreadRunning() {
    return true;
}

// 0x317fbc _Z10threadfun2Pv: the worker of Start. Runs one Savegame::UpdateJobs step and returns 0.
int threadfun2(void* /*argument*/) {
    Savegame::UpdateJobs();
    return 0;
}

// 0x317f90 _Z10threadfun3Pv: the worker of Start2. Saves the settings of the application savegame manager
// (dword_99F778, Application +0x4c) and returns 0.
int threadfun3(void* /*argument*/) {
    ApplicationGetInstance().m_savegameManager->saveSettings();
    return 0;
}

// 0x317e98 _ZN16updateJob_thread6Start2Ev
// The listing is `pthread_create(&scratch_tid, nullptr, threadfun3, this)`; it returns -1 (after the "Not Created2222"
// trace) when the thread cannot be created and 0 otherwise. The thread id lives in a stack scratch word in the original,
// the std::thread member here. A second start while a worker is still held is a misuse (the original would start another
// thread and lose the first id); the port does the same: each call starts a new worker, and the worker is detached because
// the original keeps the pthread_t only in a stack word and never joins or stores it (thread_ at +0x04 is not written).
int updateJob_thread::Start2() {
    try {
        std::thread([this] { threadfun3(this); }).detach();
    } catch (...) {
        return -1;
    }
    return 0;
}

// 0x317ef8 _ZN16updateJob_thread5StartEv
// The listing is pthread_create(threadfun2, this) and returns -1 (after the "Not Created" trace) when the thread cannot be
// created, 0 otherwise. Detached workers, no second-start refusal, as in Start2.
//
// Deviation (decisions 2/6), evidence GT3 (reports/decomp-reconstruction/GROUND-TRUTH-BOSS.md): Application::_Update calls
// Start() every frame (flag_ is never cleared) and the original's pthreads are joinable and never joined, so at 60 fps it leaks
// ~60 threads/s with a 1 MB stack each (32-bit address space exhaustion on the emulator, thread handles and virtual space on
// 64-bit). Detached threads remove the leak. In addition at most one Start() worker runs at a time: a frame that finds the
// previous UpdateJobs step still running starts nothing, so Savegame::UpdateJobs never runs concurrently with itself
// (the original raced on s_currentJob). Otherwise the per-frame cadence is kept: one UpdateJobs step per frame.
int updateJob_thread::Start() {
    if (startBusy_.exchange(true)) {
        return 0;
    }
    try {
        std::thread([this] {
            threadfun2(this);
            startBusy_.store(false);
        }).detach();
    } catch (...) {
        startBusy_.store(false);
        return -1;
    }
    return 0;
}

// 0x317f58 _ZN16updateJob_thread4StopEv
// Verified: the original prints the "\n\n updateJob_thread::Stop() \n\n" debug trace and returns 1;
// the trace is dropped (logging only), the return matches.
int updateJob_thread::Stop() {
    return 1;
}
