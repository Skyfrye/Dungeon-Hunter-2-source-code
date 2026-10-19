// vox::DriverCallbackInterface: listener parameters, the shared scratch buffers and the
// mix of every attached source into the 16-bit output.
#include <cstdint>
#include <cstdlib>
#include <cstring>

#include "vox-audio/vox/driver_callback.hpp"
#include "vox-audio/vox/memory.hpp"

namespace vox {

DriverScratchBuffer DriverCallbackInterface::s_work_;
DriverScratchBuffer DriverCallbackInterface::s_mixing_;

namespace {

// Float bit patterns the defaults use (SetDefaultParameter stores them as words).
constexpr std::uint32_t kOneBits = 0x3f800000u;        // 1.0f
constexpr std::uint32_t kSpeedOfSoundBits = 0x43aba666u;  // 343.3f
constexpr std::uint32_t kNegOneBits = 0xbf800000u;     // -1.0f

}  // namespace

// 0x8912b0 _ZN3vox23DriverCallbackInterfaceC1Ev and 0x891334 _ZN3vox23DriverCallbackInterfaceC2Ev
DriverCallbackInterface::DriverCallbackInterface() {
    list_head_.next = &list_head_;
    list_head_.prev = &list_head_;
    active_ = false;
    field_0c_ = 1;
    listener_ = DriverListener3D{};
}

// D1 0x891028 and D2 0x891120 (identical bodies). D0 0x891104 is the deleting form.
DriverCallbackInterface::~DriverCallbackInterface() {
    mutex_.Lock();
    s_work_.count = 0;
    if (s_work_.data != nullptr) {
        VoxFree(s_work_.data);
    }
    s_work_.data = nullptr;
    s_mixing_.count = 0;
    if (s_mixing_.data != nullptr) {
        VoxFree(s_mixing_.data);
    }
    s_mixing_.data = nullptr;
    mutex_.Unlock();

    DriverCallbackNode* node = list_head_.next;
    while (node != &list_head_) {
        DriverCallbackNode* next = node->next;
        VoxFree(node);
        node = next;
    }
    list_head_.next = &list_head_;
    list_head_.prev = &list_head_;
}

// 0x8902a8 _ZN3vox23DriverCallbackInterface4InitEPv
// The original only zeroes the four static records; their memory is not released here.
void DriverCallbackInterface::Init(void* context) {
    (void)context;
    s_mixing_.count = 0;
    s_mixing_.data = nullptr;
    s_work_.count = 0;
    s_work_.data = nullptr;
}

// 0x89039c _ZN3vox23DriverCallbackInterface19SetDefaultParameterEv
// The original returns the result of the last _Set3DParameter call, which is the object
// pointer; the port returns nothing.
void DriverCallbackInterface::SetDefaultParameter() {
    std::uint32_t word = kOneBits;
    _Set3DParameter(0, &word);
    word = kSpeedOfSoundBits;
    _Set3DParameter(1, &word);
    std::int32_t model = 2;
    _Set3DParameter(2, &model);
    const float zeros[3] = {0.0f, 0.0f, 0.0f};
    _Set3DParameter(3, zeros);
    _Set3DParameter(4, zeros);
    const std::uint32_t orientation[6] = {0u, 0u, kNegOneBits, 0u, kOneBits, 0u};
    _Set3DParameter(5, orientation);
}

// 0x8902e4 _ZN3vox23DriverCallbackInterface15_Set3DParameterEiPv
void DriverCallbackInterface::_Set3DParameter(int which, const void* value) {
    switch (which) {
        case 0:
            std::memcpy(&listener_.doppler_factor, value, sizeof(float));
            break;
        case 1:
            std::memcpy(&listener_.speed_of_sound, value, sizeof(float));
            break;
        case 2:
            std::memcpy(&listener_.distance_model, value, sizeof(std::int32_t));
            break;
        case 3:
            std::memcpy(listener_.position, value, sizeof(listener_.position));
            break;
        case 4:
            std::memcpy(listener_.velocity, value, sizeof(listener_.velocity));
            break;
        case 5:
            std::memcpy(listener_.orientation, value, sizeof(listener_.orientation));
            break;
        default:
            break;
    }
}

// 0x8906e4 _ZN3vox23DriverCallbackInterface14Set3DParameterEiPv
void DriverCallbackInterface::Set3DParameter(int which, const void* value) {
    mutex_.Lock();
    _Set3DParameter(which, value);
    mutex_.Unlock();
}

// 0x8906a0 _ZN3vox23DriverCallbackInterface10FillBufferEPsi
void DriverCallbackInterface::FillBuffer(std::int16_t* out, int count) {
    mutex_.Lock();
    if (active_) {
        _FillBuffer(out, count);
    }
    mutex_.Unlock();
}

// 0x8904e8 _ZN3vox23DriverCallbackInterface13GetWorkBufferEi
// Grows the work buffer when it is smaller than size. A failed allocation leaves count 0,
// which the mixers test for.
DriverScratchBuffer& DriverCallbackInterface::GetWorkBuffer(int size) {
    if (s_work_.count < size) {
        if (s_work_.data != nullptr) {
            VoxFree(s_work_.data);
        }
        void* data = VoxAlloc(static_cast<std::size_t>(size));
        s_work_.count = data != nullptr ? size : 0;
        s_work_.data = data;
    }
    return s_work_;
}

// 0x890548 _ZN3vox23DriverCallbackInterface11_FillBufferEPsi
// The mix buffer is 32-bit words, two per output sample (the listing allocates 8 * count bytes), and the
// clamp loop covers 2 * count words, as the port's loop does. Each mixed source is
// called through its FillBuffer slot (+0x60). The listing types the result as float, but the value in r0
// at the exits is a register leftover (the mix buffer pointer on the full path). FillBuffer (0x8906a0)
// does not read it, so the function is void here.
void DriverCallbackInterface::_FillBuffer(std::int16_t* out, int count) {
    DriverCallbackSourceInterface::Set3DParameters(listener_);

    if (count > s_mixing_.count) {
        if (s_mixing_.data != nullptr) {
            VoxFree(s_mixing_.data);
        }
        void* data = VoxAlloc(static_cast<std::size_t>(8) * static_cast<std::size_t>(count));
        s_mixing_.data = data;
        s_mixing_.count = data != nullptr ? count : 0;
        if (data == nullptr) {
            return;
        }
    }
    if (s_mixing_.count <= 0 || count <= 0) {
        return;
    }

    auto* mix = static_cast<std::int32_t*>(s_mixing_.data);
    std::memset(mix, 0, static_cast<std::size_t>(8) * static_cast<std::size_t>(count));
    for (DriverCallbackNode* node = list_head_.next; node != &list_head_; node = node->next) {
        node->source->FillBuffer(mix, count);
    }
    for (int i = 0; i < 2 * count; ++i) {
        const std::int32_t value = mix[i];
        if (value > 0x7fff) {
            out[i] = 0x7fff;
        } else if (value < -0x8000) {
            out[i] = static_cast<std::int16_t>(-0x8000);
        } else {
            out[i] = static_cast<std::int16_t>(value);
        }
    }
}

}  // namespace vox
