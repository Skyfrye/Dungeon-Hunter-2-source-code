#include "net-transport/net_network_emulation.hpp"

#include <chrono>
#include <cstdlib>
#include <new>

namespace {

// POSIX drand48/lrand48 with the default seed, so the random sequence matches
// the original Android build without depending on the C library's lrand48.
std::uint64_t g_rand_state = (0x1234ULL << 32) | 0xABCD330EULL;

std::int32_t Lrand48() {
    g_rand_state = (g_rand_state * 0x5DEECE66DULL + 0xBULL) & ((1ULL << 48) - 1);
    return static_cast<std::int32_t>(g_rand_state >> 17);
}

// The original reads the current time from the online service object (GetOnline()
// vtable slot 0, in milliseconds). That service is not reconstructed here, so a
// steady clock stands in for it.
std::uint32_t NowMs() {
    auto now = std::chrono::steady_clock::now().time_since_epoch();
    return static_cast<std::uint32_t>(std::chrono::duration_cast<std::chrono::milliseconds>(now).count());
}

CNetworkEmulation* s_network_emulation = nullptr;   // _ZN17CNetworkEmulation18s_networkEmulationE

}  // namespace

// 0x826d54 _ZN17CNetworkEmulationC1Ev
// 0x826df8 _ZN17CNetworkEmulationC2Ev
// The original first writes peak defaults (30, 10, 3) that SetPeakInfo overwrites
// right after; only the final values are kept here.
CNetworkEmulation::CNetworkEmulation() {
    SetNetConditionPreset(0, 2);
    SetNetConditionPreset(1, 3);
    SetPeakInfo(45, 15, 3);
    initialized_ = true;
}

// 0x826e9c _ZN17CNetworkEmulationD1Ev
// 0x826ee0 _ZN17CNetworkEmulationD2Ev
CNetworkEmulation::~CNetworkEmulation() {
    initialized_ = false;
    for (auto& set : sets_) {
        set = NetConditionSet{};
    }
}

// 0x826a84 _ZN17CNetworkEmulation11GetInstanceEv
CNetworkEmulation* CNetworkEmulation::GetInstance() {
    return s_network_emulation;
}

// 0x826aa8 _ZN17CNetworkEmulation13IsInitializedEv
bool CNetworkEmulation::IsInitialized() {
    return s_network_emulation != nullptr && s_network_emulation->initialized_;
}

// 0x826ad0 _ZN17CNetworkEmulation9TerminateEv
void CNetworkEmulation::Terminate() {
    if (s_network_emulation != nullptr) {
        delete s_network_emulation;
        s_network_emulation = nullptr;
    }
}

// 0x826b14 _ZN17CNetworkEmulation14SetPacketDelayE18tNET_EMULATION_SETii
void CNetworkEmulation::SetPacketDelay(int set, int delay_ms, int jitter_ms) {
    sets_[set].delay_ms = delay_ms;
    sets_[set].delay_jitter_ms = jitter_ms;
}

// 0x826b28 _ZN17CNetworkEmulation13SetPacketLossE18tNET_EMULATION_SETff
void CNetworkEmulation::SetPacketLoss(int set, float rate, float param) {
    sets_[set].loss_rate = rate;
    sets_[set].loss_param = param;
}

// 0x826b3c _ZN17CNetworkEmulation20SetPacketDuplicationE18tNET_EMULATION_SETf
void CNetworkEmulation::SetPacketDuplication(int set, float rate) {
    sets_[set].duplicate_rate = rate;
}

// 0x826b4c _ZN17CNetworkEmulation19SetPacketReorderingE18tNET_EMULATION_SETffii
void CNetworkEmulation::SetPacketReordering(int set, float rate, float param_c, int param_a, int param_b) {
    sets_[set].reorder_rate = rate;
    sets_[set].reorder_param_c = param_c;
    sets_[set].reorder_param_a = param_a;
    sets_[set].reorder_param_b = param_b;
}

// 0x826b70 _ZN17CNetworkEmulation11SetPeakInfoEiii
void CNetworkEmulation::SetPeakInfo(int base_ms, int jitter_ms, int period_s) {
    peak_period_s_ = period_s;
    peak_active_ = false;
    peak_base_ms_ = base_ms;
    peak_jitter_ms_ = jitter_ms;
    peak_next_ms_ = 0;
}

// 0x826b8c _ZN17CNetworkEmulation21SetNetConditionPresetE18tNET_EMULATION_SET21tNET_CONDITION_PRESET
// Preset 0 (and anything not 1..3) zeroes the set. Hex-Rays shows the explicit zero
// arguments for that branch, so the body matches the pseudocode.
void CNetworkEmulation::SetNetConditionPreset(int set, int preset) {
    if (preset == 2) {
        SetPacketDelay(set, 90, 15);
        SetPacketLoss(set, 2.f, 10.f);
        SetPacketDuplication(set, 1.f);
        SetPacketReordering(set, 1.f, 15.f, 50, 25);
    } else if (preset == 3) {
        SetPacketDelay(set, 300, 50);
        SetPacketLoss(set, 15.f, 25.f);
        SetPacketDuplication(set, 5.f);
        SetPacketReordering(set, 5.f, 25.f, 50, 50);
    } else if (preset == 1) {
        SetPacketDelay(set, 50, 10);
        SetPacketLoss(set, 0.5f, 5.f);
        SetPacketDuplication(set, 0.5f);
        SetPacketReordering(set, 0.5f, 5.f, 50, 25);
    } else {
        SetPacketDelay(set, 0, 0);
        SetPacketLoss(set, 0.f, 0.f);
        SetPacketDuplication(set, 0.f);
        SetPacketReordering(set, 0.f, 0.f, 0, 0);
    }
}

// 0x826d20 _ZN17CNetworkEmulation5ClearEv
void CNetworkEmulation::Clear() {
    for (auto& set : sets_) {
        set = NetConditionSet{};
    }
    peak_next_ms_ = 0;
    peak_active_ = false;
    peak_base_ms_ = 0;
    peak_jitter_ms_ = 0;
    peak_period_s_ = 0;
}

// 0x826f24 _ZN17CNetworkEmulation14CalcPercentageEfff
// Hex-Rays: roll = (|lrand48| % 10000) / 100 in [0, 100); the result is
// (100 - param) / 100 * roll + prev * param / 100. The rate argument is not used.
float CNetworkEmulation::CalcPercentage(float, float param, float prev) {
    std::int32_t r = Lrand48();
    std::int32_t magnitude = r < 0 ? -r : r;
    float roll = static_cast<float>(magnitude % 10000) / 100.0f;
    return (100.0f - param) / 100.0f * roll + (prev * param) / 100.0f;
}

// 0x826fbc _ZN17CNetworkEmulation9CalcDelayEii
// Returns base plus a random offset in [-jitter, jitter). The original takes
// no state from this, so it is static here.
int CNetworkEmulation::CalcDelay(int base_ms, int jitter_ms) {
    if (jitter_ms == 0) {
        return base_ms;
    }
    std::int32_t r = Lrand48();
    if (r < 0) {
        r = -r;
    }
    return (r % (jitter_ms * 2)) - jitter_ms + base_ms;
}

// 0x826fec _ZN17CNetworkEmulation22GetCurrentConditionSetEv
// Verified against Hex-Rays and ARM 0x826fec: the uninitialized path calls SetNetConditionPreset(0, 0)
// and returns this + 0x1C (sets_[0]); otherwise the clock is GetOnline()'s virtual slot 0, peak_base_ms_
// (+0x10) zero keeps the stored peak_active_ (+0x0C), and the non-zero path compares peak_next_ms_
// (+0x08) + 1000 * peak_period_s_ (+0x18) against the clock with the same unsigned BCC, recomputes
// peak_next_ms_ = CalcDelay(peak_base_ms_, peak_jitter_ms_) * 1000 + clock, and stores
// peak_active_ = (now > next), returning sets_[1] when set. All matches.
// Deviation: the clock is NowMs() (steady_clock in ms) instead of GetOnline() vtable slot 0 - the same
// host clock substitution as CConnectionManager::KeepAliveConnections (0x7fc1d8) and the
// CConnectionManager/PacketManager time sources, which the port records as a deviation and not a gap;
// the original's clock is not modelled in the port.
CNetworkEmulation::NetConditionSet* CNetworkEmulation::GetCurrentConditionSet() {
    if (!initialized_) {
        SetNetConditionPreset(0, 0);
        return &sets_[0];
    }
    std::uint32_t now = NowMs();
    bool active;
    if (peak_base_ms_ == 0) {
        active = peak_active_;
    } else {
        std::uint32_t next = peak_next_ms_;
        if (static_cast<std::uint32_t>(peak_period_s_ * 1000) + next < now) {
            int delay = CalcDelay(peak_base_ms_, peak_jitter_ms_);
            next = static_cast<std::uint32_t>(delay * 1000) + now;
            peak_next_ms_ = next;
        }
        active = next < now;
        peak_active_ = active;
    }
    return active ? &sets_[1] : &sets_[0];
}

// 0x827084 _ZN17CNetworkEmulation15GetReorderDelayEv
// Returns a delay when the reorder roll falls below the reorder rate (delay drawn
// from reorder_param_a +/- reorder_param_b), otherwise 0. The roll is kept in a
// function-local static, as in the original.
int CNetworkEmulation::GetReorderDelay() {
    static float reorder_perc = 0.f;
    NetConditionSet* set = GetCurrentConditionSet();
    reorder_perc = CalcPercentage(set->reorder_rate, set->reorder_param_c, reorder_perc);
    if (reorder_perc < set->reorder_rate) {
        return CalcDelay(set->reorder_param_a, set->reorder_param_b);
    }
    return 0;
}

// 0x8270e0 _ZN17CNetworkEmulation18IsPacketDuplicatedEv
bool CNetworkEmulation::IsPacketDuplicated() {
    NetConditionSet* set = GetCurrentConditionSet();
    float roll = CalcPercentage(set->duplicate_rate, 0.f, 0.f);
    return roll < set->duplicate_rate;
}

// 0x827120 _ZN17CNetworkEmulation14GetPacketDelayEv
int CNetworkEmulation::GetPacketDelay() {
    NetConditionSet* set = GetCurrentConditionSet();
    return CalcDelay(set->delay_ms, set->delay_jitter_ms);
}

// 0x827140 _ZN17CNetworkEmulation12IsPacketLostEv
bool CNetworkEmulation::IsPacketLost() {
    static float loss_value = 0.f;
    NetConditionSet* set = GetCurrentConditionSet();
    loss_value = CalcPercentage(set->loss_rate, set->loss_param, loss_value);
    return loss_value < set->loss_rate;
}

// 0x827190 _ZN17CNetworkEmulation10InitializeEv
int CNetworkEmulation::Initialize() {
    if (s_network_emulation == nullptr) {
        CNetworkEmulation* instance = new (std::nothrow) CNetworkEmulation();
        s_network_emulation = instance;
        if (instance == nullptr) {
            return -1;
        }
    }
    return 0;
}
