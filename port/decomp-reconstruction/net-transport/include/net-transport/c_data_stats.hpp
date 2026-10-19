// CDataStats<T>: timestamped samples of one statistic, with a read/write lock and a cap on
// the number of samples. Reconstructed from libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets, kept as comments):
//   +0x00 vtable
//   +0x04 lock_           CReadWriteLock (its operations are empty in the original)
//   +0x08 samples_        red-black tree of (clock() tick, value); key at node +0x10,
//                         value at node +0x14. The tree header is at +0x08, root +0x0c,
//                         leftmost +0x10, rightmost +0x14, count +0x18.
//   +0x20 max_samples_    cap on the count, 500 (set by the constructor). 0 = no cap.
// The object is 36 bytes in the original.
#pragma once

#include <ctime>
#include <cstddef>
#include <map>

#include "net-transport/sync.hpp"

template <typename T>
class CDataStats {
public:
    CDataStats() = default;
    // 0x816150 _ZN10CDataStatsIiED1Ev (the deleting variant 0x8161b8 is skipped).
    // The tree and the lock are destroyed by their own destructors.
    virtual ~CDataStats() = default;

    // 0x825d9c _ZN10CDataStatsIiE7AddDataEi
    // Stores the sample with the current clock tick. When the count passes the cap, the
    // oldest samples are removed until the count is back at the cap.
    void AddData(T value) {
        lock_.LockWrite();
        samples_.emplace(std::clock(), value);
        if (max_samples_ != 0) {
            while (samples_.size() > max_samples_) {
                samples_.erase(samples_.begin());
            }
        }
        lock_.UnlockWrite();
    }

    // 0x825be8 CDataStats<int>::GetSum(float) [clone]
    // The compiler specialised the window to 1000000 ticks, so the clone takes no argument. The
    // walk is the predecessor step from the header (red is 0; the header test is color == red &&
    // node->parent->parent == node). It visits the newest sample first and ends at the leftmost.
    // It stops at the first sample older than the window (now - key > 1000000), and sums the rest.
    T GetSum() const {
        lock_.LockRead();
        const std::clock_t now = std::clock();
        T sum{};
        for (auto it = samples_.rbegin(); it != samples_.rend(); ++it) {
            if (now - it->first > kTicksPerSecond) {
                break;
            }
            sum += it->second;
        }
        lock_.UnlockRead();
        return sum;
    }

    // 0x825388 _ZN10CDataStatsIiE10GetAverageEf
    // The same predecessor walk as GetSum, from the newest sample down to the leftmost. The window
    // is 1000000 ticks per unit (the float is truncated to int, as the original does). A window of
    // 0 includes every sample; otherwise the walk stops at the first sample older than the window.
    // The average is the sum divided by the count (integer division), and 0 when there are none.
    T GetAverage(float window) const {
        lock_.LockRead();
        const std::clock_t now = std::clock();
        const std::clock_t window_ticks = static_cast<std::clock_t>(static_cast<int>(window)) * kTicksPerSecond;
        T sum{};
        std::size_t count = 0;
        for (auto it = samples_.rbegin(); it != samples_.rend(); ++it) {
            if (window_ticks != 0 && window_ticks < now - it->first) {
                break;
            }
            sum += it->second;
            ++count;
        }
        lock_.UnlockRead();
        return count != 0 ? static_cast<T>(sum / static_cast<T>(count)) : T{};
    }

private:
    static constexpr std::clock_t kTicksPerSecond = 1000000;  // as the original's window scale

    mutable CReadWriteLock lock_;                  // +0x04
    std::multimap<std::clock_t, T> samples_;       // +0x08
    std::size_t max_samples_ = 500;                // +0x20
};
