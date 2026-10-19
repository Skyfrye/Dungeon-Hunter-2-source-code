// PerfCounters: named float counters sampled by Update while the
// EnablePerfCounters debug switch is on. Member offsets follow the original.
#pragma once

#include <list>
#include <string>
#include <vector>

class PerfCounters {
public:
    class CounterEntry {
    public:
        CounterEntry() = default;
        CounterEntry(const CounterEntry& other);  // 0x311730

        std::string name_;            // +0x10 (string object in the original)
        float value_ = 0.0f;          // +0x18, the first value set by SetCounterValue
        float extra1_ = 0.0f;         // +0x1c, the second value (meaning not visible)
        float extra2_ = 0.0f;         // +0x20, the third value (meaning not visible)
        std::vector<float> history_;  // +0x24, one sample per Update
    };

    PerfCounters();   // 0x3110c4 / 0x311118
    ~PerfCounters();  // 0x3115c4 / 0x311620

    CounterEntry* GetEntry(const std::string& name);  // 0x312584
    void SetCounterValue(const std::string& name, float value, float extra1, float extra2);  // 0x312734
    void Update(float dt);  // 0x31177c
    void Draw();            // 0x311914

    // Not in the original: counters are created by code outside this unit. This hook
    // adds an entry so the rest of the class can be exercised by the tests.
    CounterEntry& AddEntry(const std::string& name);

private:
    float time_ = 0.0f;                // +0x0, advanced by Update
    // +0x4: int, the number of Update calls while enabled. Not stored separately here: it
    // always equals history_.size().
    std::vector<float> history_;       // +0x8 (begin, finish, end of storage)
    std::list<CounterEntry> entries_;  // +0x14 (list sentinel in the original)
    void* buffer_ = nullptr;           // +0x1c, the 0x3e84-byte block from the constructor
};
