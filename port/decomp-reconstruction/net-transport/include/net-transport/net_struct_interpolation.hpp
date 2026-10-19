// NetStructInterpolation<float> and NetStructInterpolatedRangedFloat<Bits, Min, Max>:
// replicated floats that smooth received values over time. AddValue keeps a ring of
// (time, value) samples and a running average, with the window eviction and the ring boundary
// words (43-45) as in the Hex-Rays body. The frame time is NetStructMember::GetFrameTime (COnline's elapsed word).
#pragma once

#include <cstdint>

#include "net-transport/net_struct.hpp"

// In the binary NetStructInterpolation<float> is not a NetStructMember: it is a separate polymorphic base
// (vtable _ZTV22NetStructInterpolationIfE, two destructor slots) that sits at +0x24 inside
// NetStructInterpolatedRangedFloat, after the NetStructMemberType<float> part (0x3a681c).
template <typename T>
class NetStructInterpolation {
public:
    virtual ~NetStructInterpolation() = default;    // 0x3a3578 _ZN22NetStructInterpolationIfED1Ev (float instance)

    // 0x3a3e64 _ZN22NetStructInterpolationIfE8AddValueEfj.
    // Adds a sample and returns 20, the constant the original returns on every path.
    int AddValue(T value, unsigned int time) {
        const unsigned int frame_time = GetFrameTime();
        unsigned int count = count_;
        int total = total_;
        // The window (+0xbc, 40 by default) limits the count: the oldest share is taken out of the
        // total until the count is below the window.
        if (count >= window_) {
            do {
                const int share = total / static_cast<int>(count--);
                total -= share;
            } while (window_ <= count);
            total_ = total;
            count_ = count;
        }
        // The sample's age: frame time minus its time stamp.
        const int age = static_cast<int>(frame_time - time);
        ++count;
        count_ = count;
        total_ = age + total;
        average_ = total_ / static_cast<int>(count);
        // The new sample goes into the ring at the head; the head then moves forward (20 slots).
        samples_[head_] = Sample{time, value};
        // Ring boundary (words 43-45, Hex-Rays). When the new head reaches the oldest index, the
        // oldest index moves on by one (mod 20) and both marks take it. Otherwise mark_b_ is set
        // to the oldest index when the head lands on it. The marks are not read by any recovered
        // code in this slice.
        const unsigned int new_head = (head_ + 1) % kSamples;
        unsigned int boundary = mark_b_;
        const bool full = oldest_ == new_head;
        if (full) {
            boundary = (new_head + 1) % kSamples;
        }
        head_ = new_head;
        if (full) {
            oldest_ = boundary;
            mark_a_ = boundary;
            mark_b_ = boundary;
        }
        if (new_head == boundary) {
            mark_b_ = oldest_;
        }
        return 20;
    }

protected:
    static constexpr unsigned kSamples = 20;   // ring length (40 words of (time, value) pairs)

    struct Sample {
        unsigned int time;                     // word 2k+1 of the ring
        T value;                               // word 2k+2 of the ring
    };

    // NetStructMember::GetFrameTime (0x8150a0): GetOnline()+0x1c. The original passes the object but the
    // function does not use it.
    unsigned int GetFrameTime() const { return static_cast<unsigned int>(NetStructMember::GetFrameTime()); }

    Sample samples_[kSamples] = {};            // +0x04..+0x9f (relative to the NetStructInterpolation base)
    unsigned int window_ = 40;                 // word 47 (set to 40 by the constructor)
    unsigned int count_ = 0;                   // word 49
    int total_ = 0;                            // word 48
    int average_ = 0;                          // word 50 (read by the interpolation getter, not in this slice)
    unsigned int head_ = 0;                    // word 46
    // Ring boundary words, not named in the original. oldest_ (word 43, +0xac) is taken to be the
    // index of the oldest sample; mark_a_ (word 44, +0xb0) and mark_b_ (word 45, +0xb4) are its
    // copies. The constructor of NetStructInterpolatedRangedFloat (0x3a681c) zeroes them (explicit
    // stores at +0xd0, +0xd4, +0xd8 of the object, which is word 43-45 of this base at +0x24).
    unsigned int oldest_ = 0;                  // word 43
    unsigned int mark_a_ = 0;                  // word 44
    unsigned int mark_b_ = 0;                  // word 45
};

template <unsigned Bits, int Min, int Max>
class NetStructInterpolatedRangedFloat : public NetStructRangedFloat<Bits, Min, Max>, public NetStructInterpolation<float> {
public:
    // 0x3a681c / 0x3a6920 _ZN32NetStructInterpolatedRangedFloat...C1Ef: sets the base fields (sizeBits =
    // Bits), stores the value with SetChanged when it differs from the stored one, then clears the ring.
    explicit NetStructInterpolatedRangedFloat(float value);
    ~NetStructInterpolatedRangedFloat() override = default;

    // 0x3a3f50 / 0x3a3f60 _ZN32NetStructInterpolatedRangedFloat...8PostLoadEj (vtable +0x0c): feeds the
    // current value to the interpolation with the given time. The pseudocode returns AddValue's result
    // (20), which is a leftover: the slot is called as void by NetStruct::Load, so the port returns void.
    void PostLoad(std::uint32_t time) override;
};

template <unsigned Bits, int Min, int Max>
NetStructInterpolatedRangedFloat<Bits, Min, Max>::NetStructInterpolatedRangedFloat(float value)
    : NetStructRangedFloat<Bits, Min, Max>() {
    // The original sets the value and calls SetChanged when it differs from the stored value
    // (the stored value starts at zero), then zeroes the sample ring and sets the window to 40
    // (the member initialisers of NetStructInterpolation).
    if (value != this->value_) {
        this->value_ = value;
        this->SetChanged();
    }
}

template <unsigned Bits, int Min, int Max>
void NetStructInterpolatedRangedFloat<Bits, Min, Max>::PostLoad(std::uint32_t time) {
    this->AddValue(this->value_, time);
}

// The two instantiations the binary uses. Their destructors are the empty virtual
// destructors at the addresses below (the deleting variants are compiler-generated).
//   0x3a2f24 _ZN32NetStructInterpolatedRangedFloatILj18ELin200000ELi200000EED1Ev
//   0x3a2f34 _ZN32NetStructInterpolatedRangedFloatILj16ELin50000ELi50000EED1Ev
using NetStructInterpolatedRangedFloat18 = NetStructInterpolatedRangedFloat<18, -200000, 200000>;
using NetStructInterpolatedRangedFloat16 = NetStructInterpolatedRangedFloat<16, -50000, 50000>;
