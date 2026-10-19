// vox::DriverCallbackInterface (the listener and mixing base) and
// vox::DriverCallbackSourceInterface (a driver source fed by a callback). The engine
// mixes into a ring of DriverBuffer records, guarded by the Mutex at +0x08.
// Member comments give the 32-bit offsets of the original; the port uses natural
// 64-bit layout, so no code does arithmetic on those offsets.
#pragma once

#include <cstddef>
#include <cstdint>

#include "vox-audio/vox/driver.hpp"
#include "vox-audio/vox/mutex.hpp"

namespace vox {

class DriverCallbackSourceInterface;

// One ring entry, 0x18 bytes in the original.
struct DriverBuffer {
    void* data_ = nullptr;             // +0x00: audio data pointer, set by UploadData
    std::int32_t size_ = 0;            // +0x04: bytes of audio in the buffer
    std::int32_t total_bytes_ = 0;     // +0x08: block-aligned capacity (Init) or the upload size
    std::int32_t fraction_ = 0;        // +0x0c: Q14 fraction of the read position
    std::int32_t field_10_ = 0;        // +0x10: whole blocks consumed from the start
    std::uint8_t ready_ = 0;           // +0x14: nonzero when the buffer is free for upload
    std::uint8_t pad_[3] = {};
};

// Listener state that _Set3DParameter collects, +0x18..+0x53 in the original (15 words).
struct DriverListener3D {
    float doppler_factor = 0.0f;       // +0x18 (parameter 0)
    float speed_of_sound = 0.0f;       // +0x1c (parameter 1)
    std::int32_t distance_model = 0;   // +0x20 (parameter 2)
    float position[3] = {};            // +0x24 (parameter 3)
    float velocity[3] = {};            // +0x30 (parameter 4)
    float orientation[6] = {};         // +0x3c (parameter 5): front xyz, then up xyz
};

// Per-process scratch buffer used by the mixers: a size word and a data pointer.
struct DriverScratchBuffer {
    std::int32_t count = 0;            // size (bytes for the work buffer, samples for the mix)
    void* data = nullptr;
};

// Node of the list of sources a DriverCallbackInterface mixes. The list head is embedded
// in the interface (+0x10 in the original).
struct DriverCallbackNode {
    DriverCallbackNode* next = nullptr;  // +0x00
    DriverCallbackNode* prev = nullptr;  // +0x04
    DriverCallbackSourceInterface* source = nullptr;  // +0x08
};

// vox::DriverCallbackInterface: the listener state and the mix of every attached source. It derives from
// DriverInterface (its vtable fills +0x08 Init, +0x24 Set3DParameter and +0x4c FillBuffer; Shutdown, Suspend, Resume,
// PrintDebug and DestroyDriverSource stay pure, so it is abstract, as in the binary) and the Android driver derives from it.
class DriverCallbackInterface : public DriverInterface {
public:
    // 0x8912b0 (C1) and 0x891334 (C2).
    DriverCallbackInterface();
    // D1 0x891028 and D2 0x891120 (both bodies are identical); D0 0x891104 is the deleting form.
    ~DriverCallbackInterface() override;

    // 0x8902a8: clears the two static scratch buffer records (the originals are not freed).
    void Init(void* context) override;
    // 0x89039c: default listener (doppler 1, speed of sound 343.3, distance model 2, front -z, up +y).
    void SetDefaultParameter();
    // 0x8906e4: locks, then _Set3DParameter.
    void Set3DParameter(int which, const void* value) override;
    // 0x8906a0: mixes into a 16-bit output when the object is active.
    void FillBuffer(std::int16_t* out, int count) override;
    // 0x8904e8: returns the work scratch buffer, growing it to at least size bytes.
    static DriverScratchBuffer& GetWorkBuffer(int size);

protected:
    // 0x8902e4: copies one listener parameter (0..5) from value; other indices are ignored.
    void _Set3DParameter(int which, const void* value);
    // 0x890548: sets the 3D state, clears and fills the mix buffer, converts to 16 bits.
    void _FillBuffer(std::int16_t* out, int count);

    // The derived driver (DriverAndroid) locks the one mutex at +0x04, tests the active byte at +0x08 and links its sources
    // into the list at +0x10; the members are protected for it.
    Mutex mutex_;                          // +0x04
    bool active_ = false;                  // +0x08: FillBuffer mixes only when set
    std::int32_t field_0c_ = 1;            // +0x0c: set to 1 by the constructor; counts the sources created
    DriverCallbackNode list_head_;         // +0x10: sentinel of the source list
    DriverListener3D listener_;            // +0x18..+0x53

private:
    static DriverScratchBuffer s_work_;    // m_sWorkBuffer (size) and dword_A33EA0 (data)
    static DriverScratchBuffer s_mixing_;  // m_sMixingBuffer (count) and dword_A33EA8 (data)
};

// vox::DriverCallbackSourceInterface: a driver source fed by a callback.
class DriverCallbackSourceInterface : public DriverSourceInterface {
public:
    // 0x8913b8 (C1) and 0x8914bc (C2). format holds channels, sample rate, bits per sample and
    // one more word; buffer_count is the number of ring entries (3 when null); flags go to +0x54.
    DriverCallbackSourceInterface(const std::int32_t* format, const std::int32_t* buffer_count,
                                  std::uint32_t flags);
    // D1 0x8911fc and D2 0x891264 (identical bodies); D0 0x891248 is the deleting form.
    ~DriverCallbackSourceInterface() override;

    // 0x88ed68: returns 1.
    int AllowBufferReference() override;
    // 0x88ed70: returns the buffer count (+0x44).
    int GetBufferCount() const;
    // 0x88fce4: the +0x04 word moves an eighth of the way to dt * 16384.
    void Update(float dt) override;
    // 0x890148: every buffer is marked ready and the read and write indices reset.
    void FreeAllBuffer();
    // 0x890fd0: state 1 (playing), unless the state is -1.
    void Play();
    // 0x890f48: state 1 moves to 2 (paused) and the two counters clear.
    void Pause();
    // 0x890f84: a state other than -1 becomes 3; FreeAllBuffer runs and the counters clear.
    void Stop();
    // 0x890ee8: when buffers exist, state 0, FreeAllBuffer, byte offset 0.
    void Reset();
    // 0x890e8c: state 1 becomes 3 while the write buffer is ready; otherwise the state.
    int GetState();
    // 0x890e0c: ready flag of the read buffer, or 0 when there is no buffer or state -1.
    int NeedData();
    // 0x88fd14 (partial): samples available from the write buffer onward (see the .cpp).
    int GetNbAvailableSamples(int samples);
    // 0x890ccc: stores the gain word at +0x28 in Q14 fixed point.
    void SetGain(float gain);
    // 0x890b28: stores the byte offset (+0x58) under the lock.
    void SetByteOffset(int offset);
    // 0x890b50: reads the byte offset under the lock.
    int GetByteOffset();
    // 0x890af8: the buffer list end is reset to the begin pointer.
    void Cleanup();
    // 0x890288: stores the static driver sample rate.
    static void SetDriverSampleRate(int rate);

    // 0x890b78: the pitch word at +0x34 converted to float.
    float GetPitch();
    // 0x890bb0: the gain word at +0x28 converted to float.
    float GetGain();

    // 0x893108: resets the gains and 3D fields, and grows the ring to the buffer count.
    int Init();
    // 0x8909e8: copies one emitter 3D parameter (0..10) when the 3D flag is set.
    void Set3DParameter(int which, const void* value);
    // 0x890be8: sets the pitch in Q14 and the per-period step.
    void SetPitch(float pitch);
    // 0x890d40: stores a block of data in the write buffer when it is free.
    void UploadData(const void* data, int size);
    // 0x89071c: frees disposable data from the ring and reports the counts.
    int FreeDisposableData(int id, int& first, int& second) override;
    // 0x8915c0: copies up to bytes of mixed data into out; returns the bytes copied.
    std::size_t GetWorkData(std::uint8_t* out, int bytes, int step);
    // 0x892f68: mixes count frames into out (two ints per frame) through the active path.
    virtual void FillBuffer(int* out, int count);

    // 0x891b80: stereo pan. Writes the left and right Q14 gains; returns the right one.
    int GetStereoPanning(int* left, int* right);
    // 0x891ed0: Doppler pitch in Q14.
    int GetDopplerPitch();
    // 0x892114: distance attenuation in Q14.
    int GetDistanceGain();
    // 0x892460: directional (cone) gain in Q14.
    int GetDirectionalGain();

    // 0x890198: stores the listener and returns the altered speed of sound (see the .cpp).
    static float Set3DParameters(const DriverListener3D& listener);
    // 0x890254: stores the callback period (seconds to Q14) and returns it.
    static int SetDriverCallbackPeriod(float period);

private:
    friend struct DriverCallbackSourceInterfaceTestAccess;

    void FillBufferStereo16NoInter(int* out, int count);  // 0x88fdd4
    void FillBufferMono16NoInter(int* out, int count);    // 0x89278c
    void FillBufferStereo16(int* out, int count);         // 0x891860
    void FillBufferMono16(int* out, int count);           // 0x892bd0

    // Ring of buffers: capacity growth in Init and UploadData.
    Mutex mutex_;                              // +0x08..+0x0b (pthread_mutex_t in the original)
    std::int32_t period_ = 540;                // +0x04
    std::int32_t rate_ratio_ = 0;              // +0x0c: (sample rate << 14) / driver sample rate
    std::int32_t channels_ = 0;                // +0x10
    std::int32_t sample_rate_ = 0;             // +0x14
    std::int32_t bits_per_sample_ = 0;         // +0x18
    std::int32_t field_1c_ = 0;                // +0x1c: format word 3, not identified
    std::int32_t ramp_samples_ = 0;            // +0x20: 3 ms of samples
    bool ramp_started_ = false;                // +0x24: the gain ramp has begun
    std::int32_t field_28_ = 0;                // +0x28: gain word (Q14)
    std::int32_t field_2c_ = 0;                // +0x2c: left ramp value (cleared by Pause and Stop)
    std::int32_t field_30_ = 0;                // +0x30: right ramp value (cleared by Pause and Stop)
    std::int32_t field_34_ = 0;                // +0x34: pitch word (Q14)
    std::int32_t target_pitch_ = 0;            // +0x38
    std::int32_t pitch_step_ = 0;              // +0x3c: pitch change per period
    std::int32_t scale_ = 0;                   // +0x40: playback step (Q14)
    std::int32_t buffer_count_ = 0;            // +0x44
    std::int32_t read_index_ = 0;              // +0x48: upload cursor (UploadData, NeedData)
    std::int32_t write_index_ = 0;             // +0x4c: mixer cursor (GetWorkData, FillBuffer)
    std::int32_t state_ = 0;                   // +0x50: -1 none, 0 idle, 1 playing, 2 paused, 3 stopping
    std::uint32_t flags_ = 0;                  // +0x54: nonzero enables the 3D state and the ring init
    std::int32_t byte_offset_ = 0;             // +0x58
    std::int32_t buffer_bytes_ = 0;            // +0x5c: channels times bytes per sample
    DriverBuffer* buffers_begin_ = nullptr;    // +0x60
    DriverBuffer* buffers_end_ = nullptr;      // +0x64
    DriverBuffer* buffers_capacity_ = nullptr; // +0x68
    float position_[3] = {};                   // +0x6c
    float velocity_[3] = {};                   // +0x78
    float direction_[3] = {};                  // +0x84
    std::int32_t is_relative_ = 0;             // +0x90
    float distance_max_ = 0.0f;                // +0x94
    float distance_ref_ = 0.0f;                // +0x98
    float rolloff_ = 0.0f;                     // +0x9c
    float cone_inner_ = 0.0f;                  // +0xa0 (degrees)
    float cone_outer_ = 0.0f;                  // +0xa4 (degrees)
    float cone_outer_gain_ = 0.0f;             // +0xa8
    float field_ac_ = 0.0f;                    // +0xac: not identified (FLT_MAX after Init)
    std::int32_t doppler_pitch_ = 0;           // +0xb0 (Q14)

    static std::int32_t s_driverSampleRate_;   // _ZN3vox29DriverCallbackSourceInterface18s_driverSampleRateE
    static std::int32_t s_driverCallbackPeriod_;
    static float s_dopplerFactor_;
    static float s_alteredSpeedOfSound_;
    static std::int32_t s_distanceModel_;
    static float s_listenerPosition_[3];
    static float s_listenerVelocity_[3];
    static float s_listenerFront_[3];
    static float s_listenerUp_[3];
};

}  // namespace vox
