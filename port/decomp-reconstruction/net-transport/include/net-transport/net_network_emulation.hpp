// CNetworkEmulation: simulated network conditions (delay, loss, duplication,
// reordering, periodic peaks) for testing. Reconstructed from
// libDungeonHunter2.so pseudocode.
//
// Original layout (32-bit offsets):
//   +0x00 vtable (virtual destructor)
//   +0x04 initialized (bool)
//   +0x08 peak_next_ms (uint32)      next peak toggle time
//   +0x0C peak_active (bool)
//   +0x10 peak_base_ms (int)         +0x14 peak_jitter_ms (int)   +0x18 peak_period_s (int)
//   +0x1C sets_[0], +0x40 sets_[1]   each NetConditionSet, 0x24 bytes
#pragma once

#include <cstdint>

class CNetworkEmulation {
public:
    // One simulated condition set (fields at +0x1C.. in the original).
    struct NetConditionSet {
        int delay_ms = 0;            // +0x1C
        int delay_jitter_ms = 0;     // +0x20
        float loss_rate = 0.f;       // +0x24  (percent, 0..100)
        float loss_param = 0.f;      // +0x28
        float duplicate_rate = 0.f;  // +0x2C
        float reorder_rate = 0.f;    // +0x30
        int reorder_param_a = 0;     // +0x34
        int reorder_param_b = 0;     // +0x38
        float reorder_param_c = 0.f; // +0x3C
    };

    CNetworkEmulation();                                  // 0x826d54 / 0x826df8 (C1/C2)
    virtual ~CNetworkEmulation();                         // 0x826e9c / 0x826ee0 (D1/D2)
    CNetworkEmulation(const CNetworkEmulation&) = delete;
    CNetworkEmulation& operator=(const CNetworkEmulation&) = delete;

    static CNetworkEmulation* GetInstance();              // 0x826a84
    static bool IsInitialized();                          // 0x826aa8
    static int Initialize();                              // 0x827190, 0 on success, -1 on failure
    static void Terminate();                              // 0x826ad0

    void SetPacketDelay(int set, int delay_ms, int jitter_ms);        // 0x826b14
    void SetPacketLoss(int set, float rate, float param);             // 0x826b28
    void SetPacketDuplication(int set, float rate);                   // 0x826b3c
    void SetPacketReordering(int set, float rate, float param_c, int param_a, int param_b);  // 0x826b4c
    void SetPeakInfo(int base_ms, int jitter_ms, int period_s);       // 0x826b70
    void SetNetConditionPreset(int set, int preset);                  // 0x826b8c
    void Clear();                                                     // 0x826d20

    bool IsPacketLost();                                  // 0x827140
    bool IsPacketDuplicated();                            // 0x8270e0
    int GetReorderDelay();                                // 0x827084, delay or 0
    int GetPacketDelay();                                 // 0x827120

    const NetConditionSet& Set(int index) const { return sets_[index]; }

private:
    static float CalcPercentage(float, float, float);     // 0x826f24
    static int CalcDelay(int base_ms, int jitter_ms);     // 0x826fbc
    NetConditionSet* GetCurrentConditionSet();            // 0x826fec

    bool initialized_ = false;                            // +0x04
    std::uint32_t peak_next_ms_ = 0;                      // +0x08
    bool peak_active_ = false;                            // +0x0C
    int peak_base_ms_ = 0;                                // +0x10
    int peak_jitter_ms_ = 0;                              // +0x14
    int peak_period_s_ = 0;                               // +0x18
    NetConditionSet sets_[2];                             // +0x1C
};
