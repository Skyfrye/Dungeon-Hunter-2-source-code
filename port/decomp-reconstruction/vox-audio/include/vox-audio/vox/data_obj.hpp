// vox::DataObj: a loaded data source (a Handlable). Layout from the Hex-Rays
// pseudocode and the ARM listings of the constructor, Update, GetDebugInfo and
// ShouldDie. Offsets are the 32-bit ones; the port keeps them in comments only.
//   +0x00 vtable (Handlable), +0x08 id (64-bit), +0x10 reference count,
//   +0x18 Handlable mutex, +0x14 stamp slot, +0x1c group index,
//   +0x20 priority bank id, +0x24 uid,
//   +0x28 channels, +0x2c sample rate, +0x30 bits per sample, +0x34 length (frames),
//   +0x38 stream, +0x3c decoder, +0x40 emitter list (sentinel in the original),
//   +0x48 user data word, +0x4c queued flag, +0x4d need-to-die flag,
//   +0x50 state word, +0x54 source loading flags, +0x58 state mutex.
#pragma once

#include <cstdint>
#include <list>

#include "vox-audio/vox/handlable.hpp"
#include "vox-audio/vox/mutex.hpp"

namespace vox {

class StreamInterface;
class DecoderInterface;

// Opaque user-data record as the original passes it: only the first word is used.
struct DataHandleUserData {
    std::uintptr_t word = 0;
};

// Record that DataObj::GetDebugInfo fills in (the caller's DebugChunk_dataSource).
// Offsets are those of the original record, written by GetDebugInfo in this order.
struct DebugChunk_dataSource {
    std::int64_t id = 0;               // +0x00
    int stream_type = 0;               // +0x08 (stream vtable GetType)
    int decoder_type = 0;              // +0x0c (decoder vtable GetType)
    int priority_bank_id = 0;          // +0x10
    int sample_rate = 0;               // +0x14
    int channels = 0;                  // +0x18
    int bits_per_sample = 0;           // +0x1c
    float duration = 0.0f;             // +0x20 (the GetDuration result bits)
    int group = 0;                     // +0x24
    int ref_count = 0;                 // +0x28
};

class DataObj : public Handlable {
public:
    DataObj() = default;
    ~DataObj() override;  // 0x863c24 (D1); D0 0x863cac is compiler-generated

    std::uintptr_t GetUserData();                                 // 0x865878
    void SetUserData(const DataHandleUserData& user_data);        // 0x8658a0
    bool IsReady();                                               // 0x8658cc: state == 0
    std::uint32_t GetDuration();                                  // 0x8658fc: float bits of length / sample rate
    void GetDebugInfo(DebugChunk_dataSource& chunk);              // 0x865954
    void PrintDebug();                                            // 0x8659ec (no output in the binary)
    bool IsGroup(std::uint32_t groups);                           // 0x865a0c
    int GetGroup();                                               // 0x865a48
    bool ShouldDie();                                             // 0x865a70
    void NeedToDie();                                             // 0x865aec
    void UnregisterEmitter(std::int64_t emitter_id);              // 0x865b30
    void RegisterEmitter(std::int64_t emitter_id);                // 0x865ba8
    void Update();                                                // 0x866dec (partial, see the .cpp)

    int slot_ = 0;                        // +0x14: stamp slot in VoxEngineInternal::data_stamps_
    int group_ = 0;                       // +0x1c
    int priority_bank_id_ = 0;            // +0x20 (set by VoxEngineInternal::SetPriorityBankId)
    int uid_ = 0;                         // +0x24 (returned by VoxEngineInternal::GetUid)
    std::int32_t channels_ = 0;           // +0x28 (LoadDataSource params[0])
    std::int32_t sample_rate_ = 0;        // +0x2c (params[1]; the duration divisor)
    std::int32_t bits_per_sample_ = 0;    // +0x30 (params[2]; byte width is this >> 3)
    std::int32_t length_ = 0;             // +0x34 (params[3]; frames, the duration dividend)
    StreamInterface* stream_ = nullptr;   // +0x38
    DecoderInterface* decoder_ = nullptr; // +0x3c
    std::uintptr_t user_data_ = 0;        // +0x48
    bool queued_ = false;                 // +0x4c: already on the engine data queue
    bool need_to_die_ = false;            // +0x4d
    int state_ = 0;                       // +0x50 (0 ready, 1..4 loading and dying states)
    std::uint16_t source_flags_ = 0;      // +0x54: VoxSourceLoadingFlags of an async load
    Mutex state_mutex_;                   // +0x58
    // +0x40 emitter list. Each node holds the emitter id only (a 16-byte node in the
    // original: two links and the 64-bit id), so the list stores ids.
    std::list<std::int64_t> emitters_;
};

}  // namespace vox
