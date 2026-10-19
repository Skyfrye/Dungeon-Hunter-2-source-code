// vox::EmitterObj: one playing instance of a data source. It is a Handlable, so the
// mutex (+0x18) and reference count (+0x10) are the base class members. The 3D
// parameter block is indexed by parameter id: 0 int, 1..7 floats, 8 position,
// 9 velocity, 10 direction. Offsets from the original are kept as comments.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "vox-audio/vox/gain_fade.hpp"
#include "vox-audio/vox/handlable.hpp"
#include "vox-audio/vox/voxengine_types.hpp"

namespace vox {

class DriverSourceInterface;
class DataObj;
class DecoderCursorInterface;

// Opaque user-data record as the original passes it: only the first word is stored
// (EmitterObj +0x134). The record's full size is not confirmed.
struct EmitterHandleUserData {
    std::uintptr_t word = 0;
};

// One emitter as EmitterObj::GetDebugInfo reports it (0x74 bytes in the original). The
// offsets are the original's chunk offsets.
struct DebugChunk_emitter {
    std::int64_t emitter_id = 0;     // +0x00 (EmitterObj id)
    std::int64_t data_id = 0;        // +0x08 (DataObj id, 0 without a data object)
    VoxVector3f position;            // +0x10..+0x18 (parameter 8)
    std::int32_t state = 0;          // +0x1c (state_set_)
    float source_gain = 1.0f;        // +0x20 (EmitterObj source_gain_, +0x38)
    float gain = 0.0f;               // +0x24 (gain modifier * resume fade target * gain fade target)
    float source_pitch = 1.0f;       // +0x28 (EmitterObj source_pitch_, +0x70)
    float pitch = 0.0f;              // +0x2c (pitch_)
    std::int32_t loop = 0;           // +0x30 (loop_read_)
    std::int32_t ref_count = 0;      // +0x34 (Handlable ref_count)
    std::int32_t group = 0;          // +0x38 (group_)
    VoxVector3f velocity;            // +0x3c..+0x44 (parameter 9)
    VoxVector3f direction;           // +0x48..+0x50 (parameter 10)
    std::int32_t param0 = 0;         // +0x54 (parameter 0; set to -1 when the cursor has more than one channel)
    float params[7] = {};            // +0x58..+0x70 (parameters 1..7)
};

class EmitterObj : public Handlable {
public:
    EmitterObj() = default;
    // 0x866380 (C1) and 0x8665cc (C2, same body): an emitter with no decoder cursor yet.
    // The data object supplies the play rate and length. Reconstructed; the one deviation is that a
    // null or not-ready data object would make the listing call GetType through a null pointer, and
    // the port stores decoder type 0 instead (see the .cpp).
    EmitterObj(std::int64_t id, int priority, int bank, DriverSourceInterface* source, DataObj* data);
    // 0x86c5ec (C1) and 0x86ce1c (C2, same body): an emitter fed by a decoder cursor. Builds the
    // buffer ring (see BuildBufferRing). Reconstructed; the same null GetType deviation as C1.
    EmitterObj(std::int64_t id, int priority, int bank, int chunk_bytes, DriverSourceInterface* source,
               DecoderCursorInterface* cursor, DataObj* data);
    ~EmitterObj() override;  // D1 0x8699c0 and D2 0x869a38 (same body); D0 0x869a1c is the deleting variant

    void SetGainModifier(float gain);       // 0x863528: stores +0x44, no lock
    bool IsReady();                         // 0x863530: returns (byte +0x1c) ^ 1, no lock

    void SetUserData(const std::uintptr_t& first_word);  // 0x8653c0: stores the record's first word at +0x134
    void Reset();                           // 0x8655e0: sets the byte at +0x99 to 1
    void SetLoop(bool loop);                // 0x865608: writes the byte at +0x8d
    bool GetLoop();                         // 0x865630: reads the byte at +0x8c (see NOTES.md)
    void SetState(int state);               // 0x865658: writes +0x94
    int GetState();                         // 0x865680: reads +0x90 (see NOTES.md)
    bool IsGroup(std::uint32_t groups);     // 0x8656f8: (groups & (1 << group)) != 0
    void SetGroup(int group);               // 0x865734: stores +0x28
    int GetGroup();                         // 0x86575c: returns +0x28

    // 3D parameters. Ids: 0 int, 1..7 float, 8 position, 9 velocity, 10 direction.
    // Every setter marks the id dirty in dirty_[id].
    void Get3DParameterfv(int param, VoxVector3f& out);                 // 0x864e64
    void Get3DParameter3f(int param, float& x, float& y, float& z);     // 0x864f04
    void Get3DParameterf(int param, float& out);                        // 0x864fa0
    void Get3DParameteri(int param, int& out);                          // 0x865044
    void Set3DParameterfv(int param, const VoxVector3f& value);         // 0x865078
    void Set3DParameter3f(int param, float x, float y, float z);        // 0x865130
    void Set3DParameterf(int param, float value);                       // 0x8651c0
    void Set3DParameteri(int param, int value);                         // 0x865280
    void SetDefaultParameters();                                        // 0x8652b8

    bool IsDone();                          // 0x86556c: locks, then IsDoneUnlocked
    bool IsPlaying();                       // 0x86559c
    float GetPitch();                       // 0x8656a8: +0x74
    float GetGain();                        // 0x8656d0: +0x3c
    bool ShouldDie();                       // 0x865784
    bool IsAlive();                         // 0x8657f4: reconstructed; the listing re-locks the
                                            // non-recursive mutex in ShouldDie and blocks, so the
                                            // port uses ShouldDieUnlocked under the one lock
    void NeedToDie();                       // 0x865828: sets +0x11c
    void SetAutoKillAfterDone(bool on);     // 0x865850: writes +0x11d
    std::uintptr_t GetUserData();           // 0x865398: reads +0x134

    // Unlocked helpers used by the locked accessors above.
    bool IsDoneUnlocked();                  // 0x86353c (_IsDone): no lock
    bool ShouldDieUnlocked();               // body of 0x865784 without the lock

    // State-change callback slot (+0x138 callback, +0x13c user data, pending byte +0x98).
    void RegisterStateChangedCallback(EmitterStateCallback callback, void* user_data);  // 0x864ce0
    void UnregisterStateChangedCallback();  // 0x864cb4
    // Hands out a pending callback once; returns false when none is pending.
    bool NeedToSendStateChangedCallback(EmitterStateCallback& callback, void*& user_data,
                                        EmitterExternState& status);  // 0x864bec
    int GetStatus();                        // 0x864b5c (locks; codes 0, 2, 4, 0x11, 0x21)

    // Declared for the VoxEngineInternal forwarders. Bodies not reconstructed yet, except
    // SetGain and SetPitch, which restart the gain and pitch fades (partial, see the .cpp).
    int Play(float fade);                   // 0x86e304 (returns the Mutex::Unlock result)
    int Pause(float fade);                  // 0x86e428
    int Stop(float fade);                   // 0x86e868
    int Resume(float time);                 // 0x86c1d4
    int SetGain(float gain, float time);    // 0x86bb24
    int SetPitch(float pitch, float time);  // 0x86bc40
    int Update(float dt);                   // 0x86d5b8 (returns the Mutex::Unlock int; reconstructed,
                                            // deviation: the port returns early with no cursor or source)
    int LoadAsync();                        // 0x86d238 (reconstructed: reads the cursor's track block)
    int SetPlayCursor(float position);      // 0x8653ec (reconstructed; deviation: the port skips the
                                            // seek when the data state is not 0, where the listing faults)
    float GetPlayCursor();                  // 0x8654f8 (partial: the listing returns with the mutex
                                            // still locked when play_length_ is 0, see the .cpp)
    int SetDSPParameter(int param, void* value);   // 0x866acc (reconstructed; deviation: a null value)
    void CleanUp();                         // 0x863954 (reconstructed; deviation: the port nulls the
                                            // pointers it frees, the listing leaves them set)
    void SetInteractiveMusicStateChange(const char* state);  // 0x866abc
    void PrintDebug();                      // 0x864e28
    int GetDebugInfo(DebugChunk_emitter& out);   // 0x866818 (reconstructed; deviation: the port guards
                                                 // the null data object and cursor, the listing faults)
    // Wave 9 (src/w9-emitter-slots): the cursor-to-source pull and the 3D push.
    int ProcessNonNativeData(float dt);     // 0x863228: pulls one ring block from the cursor
    int ProcessNativeData(float dt);        // 0x866b30 (reconstructed; deviations: the void Rewind
                                            // call's undefined r0 and the zero-divisor division)
    void Update3D();                        // 0x863318: sends dirty 3D parameters to the source

    // Source and DSP buffer (+0xec, +0xf0, +0x110). UpdateDSP forwards to the source.
    void UpdateDSP(float dt);               // 0x8638e4

    // Words and bytes the accessors above touch (original offsets in comments).
    std::uint8_t ready_flag_ = 0;           // +0x1c
    float gain_ = 0.0f;                     // +0x3c, returned by GetGain
    float requested_gain_ = 0.0f;           // +0x40, the raw gain last passed to SetGain (not clamped)
    VoxGainFade gain_fade_;                 // +0x48..+0x58: fade toward the SetGain target (target +0x4c)
    int group_ = 0;                         // +0x28
    int priority_ = 0;                      // +0x2c, compared by PriorityBankManager (writer not identified)
    int stamp_index_ = 0;                   // +0x14, emitter slot for the handle stamp table (VoxEngineInternal +0x550)
    DataObj* data_ = nullptr;               // +0x118, the data object this emitter plays (set by the constructor)
    int bank_ = 0;                          // +0x30, priority bank index (passed to PriorityBankManager)
    bool in_bank_ = false;                  // +0x34, emitter is registered with a priority bank
    float gain_modifier_ = 1.0f;            // +0x44
    float pitch_ = 0.0f;                    // +0x74, returned by GetPitch, written raw by SetPitch
    VoxGainFade pitch_fade_;                // +0x78..+0x88: fade toward the SetPitch target (target +0x7c)
    std::uint8_t loop_read_ = 0;            // +0x8c, read by GetLoop
    std::uint8_t loop_ = 0;                 // +0x8d, written by SetLoop
    bool callback_pending_ = false;         // +0x98, set when a state change needs a callback
    VoxGainFade resume_fade_;               // +0x5c..+0x6c: fade toward 1.0 restarted by Resume; its flag
                                            // (+0x6c) is tested by GetStatus while the state is 1
    bool interactive_state_set_ = false;    // +0x144, set by SetInteractiveMusicStateChange
    std::string interactive_state_;         // +0x146 in the original (a strcpy into an unbounded buffer)
    int state_ = 0;                         // +0x90, read by GetState
    int state_set_ = 0;                     // +0x94, written by SetState
    VoxVector3f position_;                  // +0x9c (parameter 8)
    VoxVector3f direction_;                 // +0xa8 (parameter 10)
    VoxVector3f velocity_;                  // +0xb4 (parameter 9)
    int param0_ = 0;                        // +0xc0 (parameter 0)
    float float_params_[7] = {};            // +0xc4..+0xdc (parameters 1..7)
    std::uint8_t dirty_[11] = {};           // +0xe0..+0xea, one byte per parameter id
    std::uint8_t reset_flag_ = 0;           // +0x99, set by Reset
    void* dsp_buffer_ = nullptr;            // +0xec, the DSP name in use; UpdateDSP frees it when dsp_pending_ is set
    void* dsp_pending_ = nullptr;           // +0xf0, DSP name copied by SetDSPParameter until UpdateDSP applies it
    EmitterStateCallback state_callback_ = nullptr;  // +0x138
    void* state_callback_user_ = nullptr;   // +0x13c
    DriverSourceInterface* dsp_source_ = nullptr;    // +0x110, the playing source (vtable +0x44 is Update)
    bool need_to_die_ = false;              // +0x11c, set by NeedToDie
    bool auto_kill_ = false;                // +0x11d, set by SetAutoKillAfterDone
    std::uintptr_t user_data_ = 0;          // +0x134
    // Wave 9 fields. Playback length and rate (+0x24, +0x20): written by the constructors,
    // which are not ported yet. GetPlayCursor reads them.
    int play_rate_ = 0;                     // +0x20
    int play_length_ = 0;                   // +0x24
    DecoderCursorInterface* decoder_cursor_ = nullptr;  // +0x114, the cursor that feeds dsp_source_
    // Buffer ring (+0xf4 base, owned, freed by the destructor and CleanUp). Each slot points at
    // a block the cursor returned (DecodeRef) or owns (Decode).
    std::vector<void*> buffer_ring_;        // +0xf4 (begin), +0xf8 (end), +0xfc (capacity): std::vector<unsigned char*>
    int buffer_read_index_ = 0;             // +0x100
    int buffer_count_ = 0;                  // +0x104, ring slot count
    int buffer_chunk_bytes_ = 0;            // +0x108, bytes requested per DecodeRef
    int buffer_fill_ = 0;                   // +0x10c, reset to 0 by ProcessNativeData
    int decoder_type_ = 0;                  // +0x140, the decoder GetType (0 when the data is not ready)
    // Read back from the source by Update (+0x38 gain, +0x70 pitch). The constructors set both to 1.0.
    float source_gain_ = 1.0f;              // +0x38
    float source_pitch_ = 1.0f;             // +0x70
    std::uint8_t flag_145_ = 0;             // +0x145: set by the constructors and by Update; role not identified
    // Words the constructors write. No reader was found in the EmitterObj listings (a scan of the
    // pseudocode for these offsets found writes only), so they are kept as named placeholders.
    std::uint32_t word_120_ = 0;            // +0x120, constructors store 0
    float word_124_ = 1.0f;                 // +0x124, constructors store 1.0
    std::uint32_t word_128_ = 0;            // +0x128, constructors store 0
    std::uint32_t word_12c_ = 0;            // +0x12c, constructors store 0
    std::uint8_t byte_130_ = 0;             // +0x130, constructors store 1
};

}  // namespace vox
