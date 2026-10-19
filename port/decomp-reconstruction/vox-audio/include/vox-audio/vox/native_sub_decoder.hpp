// vox::VoxNativeSubDecoder and its PCM variant. The base class holds the native segment
// state: the chunk table, three segment records, the playlist elements that the segment
// code reads, and the counters that the state copies in SetState and GetState carry.
// Offsets are the 32-bit ARM offsets from the pseudocode, kept as comments. Several virtual
// slots are not named yet, so the methods that dispatch through them are partial.
#pragma once

#include <cstdint>
#include "vox-audio/vox/allocator.hpp"
#include "vox-audio/vox/string_compare.hpp"
#include <vector>

#include <map>
#include <string>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/native_containers.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {

class NativeSubDecoderPCMState;  // native_sub_decoder_state.hpp
class NativeSubDecoderState;     // native_sub_decoder_state.hpp

// vox::SegmentState: playback position of one segment (0x44 bytes). Field names come from
// how the recovered code uses each word; their exact meaning is not confirmed.
struct SegmentState {
    std::int32_t chunk_index = 0;     // +0x00: index into the chunk table
    std::int32_t play_mode = 0;       // +0x04: compared with 1 and 3 by the decoders
    std::int32_t byte_offset = 0;     // +0x08: byte position inside the chunk
    std::int32_t sample_position = 0; // +0x0c: frame position inside the chunk
    std::int32_t loop_start = 0;      // +0x10: loop start frame (second entry of the loop list)
    std::int32_t end_frame = 0;       // +0x14: frame where the current loop entry ends
    std::int32_t entry_count = 0;     // +0x18: length of the loop list of the chunk
    std::int32_t entries_left = 0;    // +0x1c: countdown to the next loop-list entry
    std::int32_t restart_at_end = 0;  // +0x20: 1 means the list restarts at its last entry
    std::int32_t state = 0;           // +0x24: 3 and 4 are tested by the decoders
    std::int32_t remaining_frames = 0;  // +0x28: frames left to mix (segment code)
    std::int32_t field_2c = 0;        // +0x2c
    std::int32_t ramp_frames = 0;     // +0x30: frames left in the gain ramp
    std::int32_t ramp_step = 0;       // +0x34: gain change per frame
    std::int32_t gain = 0;            // +0x38: Q15 gain
    std::int32_t decoding_slot = 0;   // +0x3c: decoding-buffer slot (IMA ADPCM)
    bool reset_pending = false;       // +0x40: set when the state is 3 (IMA ADPCM)

    // The record StopSegment leaves and the state constructor starts from: index -1,
    // state 2, the flags at 1, the rest 0, decoding slot -1.
    void SetStopped();
};

// Virtual slot map (offsets from the vptr, as the decompiled calls index them; the vtable
// symbol address is 8 bytes before, see NOTES.md Layouts). Named from the vtable words of
// _ZTVN3vox19VoxNativeSubDecoderE (pure slots are zero words) and the PCM and IMA ADPCM
// overrides, and checked against the indirect calls in the segment code:
//   +0x00 D1, +0x04 D0, +0x08 HasData, +0x0c Seek(unsigned), +0x10 Reset,
//   +0x14 DecodeCurrentSegmentWithOffset, +0x18 DecodeSegment, +0x1c GetBytePositionFromSampleOffset,
//   +0x20 GetDecodingBuffer, +0x24 ReleaseDecodingBuffer, +0x28 Seek(int, SegmentState*),
//   +0x2c SetDecodingBufferToSegmentPosition, +0x30 EmulateDecodeCurrentSegmentWithOffset,
//   +0x34 EmulateDecodeSegment. The IMA ADPCM class adds +0x38 EmulateSetDecodingBufferToSegmentPosition.
class VoxNativeSubDecoder {
public:
    VoxNativeSubDecoder() = default;
    // C1 0x885d44 and C2 0x885f10 (the same body). Argument order follows the mangled name:
    // the stream, the VoxN header words, the state ids, the segment table, the loop lists,
    // the transition rules, the transition parameters, the state-name table and the playlists.
    VoxNativeSubDecoder(StreamCursorInterface* stream, const NativeHeaderWords& header,
                        States* states, AudioSegments* segments,
                        vox::VoxVector<vox::VoxVector<int>>* loop_lists, TransitionRules* rules,
                        vox::VoxVector<vox::VoxVector<TransitionParams>>* transitions,
                        vox::VoxMap<vox::VoxString, int, vox::StringCompare>* names, NativePlaylistsManager* playlists);
    virtual ~VoxNativeSubDecoder();  // D1 0x8841f8 (empty); D0 0x8847d4 is the deleting variant
    virtual bool HasData();          // +0x08, 0x884468: returns the flag at +0x16c
    virtual int Seek(unsigned int sample_offset) = 0;                           // +0x0c
    virtual void Reset();                                                       // +0x10, 0x88519c
    virtual int DecodeCurrentSegmentWithOffset(void* dst, int bytes) = 0;       // +0x14
    virtual int DecodeSegment(void* dst, int bytes, SegmentState* segment) = 0; // +0x18
    virtual unsigned int GetBytePositionFromSampleOffset(unsigned int sample_offset) = 0;  // +0x1c
    virtual int GetDecodingBuffer() = 0;                                        // +0x20
    virtual void ReleaseDecodingBuffer(int buffer) = 0;                         // +0x24
    virtual int Seek(int sample_offset, SegmentState* segment) = 0;             // +0x28
    virtual void SetDecodingBufferToSegmentPosition(SegmentState* segment) = 0; // +0x2c
    virtual int EmulateDecodeCurrentSegmentWithOffset(int sample_bytes) = 0;    // +0x30
    virtual int EmulateDecodeSegment(int sample_bytes, SegmentState* segment) = 0;  // +0x34

    // 0x884438: the track parameters {channels, +0x0c word, bits per sample, 0}.
    TrackParams GetTrackParams();
    // 0x884f04: frees the shared mixing buffer. The original leaves the pointer set.
    static void Clean();
    // 0x885258 (partial): returns the frame count, the byte count divided by the frame
    // size (the mixing body is not ported). The pseudocode signature is void; the ARM
    // tail-calls __aeabi_idiv, so the quotient is returned.
    int MixMultipleSegments(std::int16_t* dst, int bytes);
    // 0x8841fc (partial): frame count for the byte count, as MixMultipleSegments.
    int EmulateMixSegmentInBuffer(int bytes, SegmentState* segment);
    // 0x8847e8: the old segment is copied from the current one, then the rule's frames and
    // the gain ramp are set (the loop-list lookups use the chunk's list in loop_lists_).
    void UpdateOldSegmentState(TransitionRule* rule);
    // 0x884ab4: see the source comment.
    void UpdateDyingSegmentState(TransitionRule* rule);

    // 0x8842e8 (partial): the two decode calls through virtual slots 0x30 and 0x34 are
    // not named, so their frame counts are taken as 0.
    int EmulateMixMultipleSegments(int bytes);
    // 0x8843b8: which life state the next dying segment has (1 or 2).
    int GetNextDyingSegmentLifeState();
    // 0x884470: whether an extra segment is needed for the rule (nullptr for none).
    bool IsExtraSegmentNeeded(TransitionRule* rule);
    // 0x8844e8 (partial): updates the frame counters and the gain of the segment. The
    // sample mixing loops and the return value are not reproduced.
    int MixSegmentInBuffer(std::int16_t* src, int bytes, SegmentState* segment);
    // 0x884734 (partial): the call through virtual slot 0x24 for mode 17 is not made.
    void StopSegment(SegmentState* segment);
    // 0x884bc4: the element branch (chunk_index from the element, loop_start/end_frame/
    // entries_left from its loop list, state 3, the mode 17 decoding-buffer hook) and the rule
    // branch (field_2c, remaining_frames by rule type, the ramp words) match the listing. The
    // return value is unobserved, so every path returns 0.
    int UpdateCurrentSegmentState(TransitionRule* rule, bool extra);
    // 0x884f3c (partial): copies every field except the playlist manager, whose SetState
    // is not ported.
    void SetState(NativeSubDecoderState* state);
    // 0x88506c (partial): the reverse of SetState, with the same missing manager call.
    void GetState(NativeSubDecoderState* state);
    // 0x885538: swaps the second and third segment records and sets their kinds.
    void SwapOldAndCurrentSegments();
    // 0x8855e8 (partial): element lookup through NativePlaylistsManager is not called here;
    // the current element is cleared.
    void ApplyTransitionRule(TransitionRule* rule);
    // 0x885740: the element lookup, rule branch, segment updates, next_event_ peek and
    // history shift all match the listing; the loop-list words are read without a length
    // test, exactly as the original does. Returns the current element index.
    int UpdateSegmentsStates();
    // 0x885984: the rule type test, the playlist peek and next_event_ are verified. The return
    // type stays void: the listing's R0 mixes UpdateSegmentsStates' int, a chunk index and a
    // PlaylistElement pointer and no caller observes it.
    void InterpretTransitionRule(int index);
    // 0x885a3c: field_3c_, the transitions_[field_38_][index] lookup into field_90_ and the byte
    // at +0x4c, the states_[index] store into field_48_ and the dispatch all match the listing.
    void SetState(int index);
    // 0x885ac0 (partial): the stop, mode 17 and counter logic is reproduced; the decode
    // call through slot 0x34 is not.
    int EmulateDecode(int bytes);
    // 0x885c1c (partial): the stop logic and the mix for two or more segments are
    // reproduced; the single-segment decode through slot 0x18 is not.
    int Decode(void* dst, int bytes);

    static void* s_pMixingBuffer;    // _ZN3vox19VoxNativeSubDecoder15s_pMixingBufferE (32-bit mix sums)
    static int s_nbSamplesMixingBuffer;  // frames the mixing buffer holds

protected:
    StreamCursorInterface* stream_ = nullptr;  // +0x04
    std::uint16_t mode_ = 0;                   // +0x08: 17 selects the extra path in StopSegment
    std::int16_t channels_ = 0;                // +0x0a
    std::int32_t field_0c_ = 0;                // +0x0c (returned as the second track parameter)
    std::int16_t bytes_per_sample_ = 0;        // +0x10 (bytes per frame; the decoders multiply by it)
    std::int16_t bits_ = 0;                    // +0x12 (bits per sample; the byte width is bits >> 3)
    std::int32_t base_offset_ = 0;             // +0x14: added to chunk offsets to get the stream position
    AudioSegments* chunks_ = nullptr;          // +0x18 (the segment table, see native_containers.hpp)
    TransitionRules* transition_rules_ = nullptr;  // +0x1c
    States* states_ = nullptr;                 // +0x20
    vox::VoxVector<vox::VoxVector<TransitionParams>>* transitions_ = nullptr;  // +0x24
    vox::VoxMap<vox::VoxString, int, vox::StringCompare>* state_names_ = nullptr;  // +0x28
    vox::VoxVector<vox::VoxVector<std::int32_t>>* loop_lists_ = nullptr;  // +0x2c (12-byte elements)
    NativePlaylistsManager* playlists_ = nullptr;  // +0x30
    std::int32_t field_34_ = -1;               // +0x34
    std::int32_t field_38_ = -1;               // +0x38
    std::int32_t field_3c_ = -1;               // +0x3c
    std::int32_t field_40_ = -1;               // +0x40
    std::int32_t field_44_ = -1;               // +0x44
    std::int32_t field_48_ = -1;               // +0x48
    std::int32_t reset_pending_ = 0;           // +0x4c (a byte in the original; Reset sets 1)
    PlaylistElement prev_prev_element_;        // +0x50
    PlaylistElement prev_element_;             // +0x64
    PlaylistElement current_element_;          // +0x78
    std::int32_t field_8c_ = -1;               // +0x8c
    std::int32_t field_90_ = -1;               // +0x90
    std::int32_t active_segments_ = 0;         // +0x94: count of playing segments
    SegmentState segments_[3] = {};            // +0x98: segments_[0] (A), +0xdc (B), segments_[2] (+0x120, current)
    std::int32_t next_event_ = -1;             // +0x164
    std::int32_t pending_seek_ = 0;            // +0x168: frames to skip after a seek to the current segment
    bool has_data_ = false;                    // +0x16c
};

class VoxNativeSubDecoderPCM : public VoxNativeSubDecoder {
public:
    VoxNativeSubDecoderPCM() = default;
    // C1 0x888514 and C2 0x888580: the base constructor, then the PCM vtable.
    VoxNativeSubDecoderPCM(StreamCursorInterface* stream, const NativeHeaderWords& header,
                           States* states, AudioSegments* segments,
                           vox::VoxVector<vox::VoxVector<int>>* loop_lists, TransitionRules* rules,
                           vox::VoxVector<vox::VoxVector<TransitionParams>>* transitions,
                           vox::VoxMap<vox::VoxString, int, vox::StringCompare>* names, NativePlaylistsManager* playlists);
    ~VoxNativeSubDecoderPCM() override;  // D2 0x887b24 and D1 0x887b28 (both empty)

    int Seek(unsigned int sample_offset);                  // 0x887b0c: returns 0
    // 0x887b38: seeks the stream to a frame of the chunk named by the segment. A negative
    // offset means the segment's loop start. Returns the stream Seek result.
    int Seek(int sample_offset, SegmentState* segment);
    // 0x887bc4: emulates decoding of up to sample_bytes bytes of the segment (no output).
    int EmulateDecodeSegment(int sample_bytes, SegmentState* segment);
    // 0x887e1c: the same for the current segment (segments_[2]) from a byte offset.
    int EmulateDecodeCurrentSegmentWithOffset(int sample_bytes);
    // 0x888050 (partial): decodes into dst, advancing the segment as it goes.
    int DecodeSegment(void* dst, int bytes, SegmentState* segment);
    // 0x8882ac (partial): the same for the current segment, after a pending seek.
    int DecodeCurrentSegmentWithOffset(void* dst, int bytes);
    int GetDecodingBuffer();                               // 0x887b14: returns -1
    void ReleaseDecodingBuffer(int buffer);                // 0x887b1c (empty)
    void SetDecodingBufferToSegmentPosition(SegmentState* segment);  // 0x887b20 (empty)
    unsigned int GetBytePositionFromSampleOffset(unsigned int sample_offset);  // 0x887b2c
    // 0x887bb8, 0x887bbc, 0x887bc0: empty bodies (the ARM is a bare return).
    void Reset();
    void SetState(NativeSubDecoderPCMState* state);
    void GetState(NativeSubDecoderPCMState* state);

};

}  // namespace vox
