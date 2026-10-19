// Frame-time profiler of the Track B port (no counterpart in the original binary). Always on, Android only: a few clock reads
// per frame and per timed scope. appUpdate calls frameBegin/frameEnd; a frame (or a frame-to-frame gap) over 50 ms is logged
// to logcat under the tag DH2PROF with the per-category time of that frame and the stack samples of a watchdog thread that
// interrupts the game thread while the frame is late. See frame_profiler.cpp.
#pragma once

#include <atomic>
#include <cstdint>

namespace dh2prof {

enum Cat { kIoOpen, kIoRead, kGlCompile, kGlLink, kTexUpload, kTexDecode, kLog, kBatch, kOther, kCatCount };

#if defined(__ANDROID__)
void frameBegin();
void frameEnd();
std::uint64_t nowNs();
extern std::atomic<std::uint64_t> g_catNs[kCatCount];
extern std::atomic<std::uint32_t> g_catCount[kCatCount];

class Scope {
public:
    explicit Scope(Cat c) : m_cat(c), m_t0(nowNs()) {}
    ~Scope() {
        g_catNs[m_cat].fetch_add(nowNs() - m_t0, std::memory_order_relaxed);
        g_catCount[m_cat].fetch_add(1, std::memory_order_relaxed);
    }
    Scope(const Scope&) = delete;
    Scope& operator=(const Scope&) = delete;

private:
    Cat m_cat;
    std::uint64_t m_t0;
};
#else
inline void frameBegin() {}
inline void frameEnd() {}
class Scope {
public:
    explicit Scope(Cat) {}
};
#endif

}  // namespace dh2prof
