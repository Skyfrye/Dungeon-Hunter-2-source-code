// VoxNativeSubDecoder base constructor (C1 0x885d44, C2 0x885f10, the same body) and the PCM
// constructor (C1 0x888514, C2 0x888580). The header words and the containers come from the
// cursor (see DecoderNativeCursor::DecoderNativeCursor).
#include <cstdint>

#include "vox-audio/vox/native_sub_decoder.hpp"

namespace vox {

namespace {

// The record the base constructor writes for each of the three segment slots. The original
// writes these words one by one; the values are the same. The play mode differs per slot
// (A 3, B 2, C 1), and every slot starts stopped: chunk -1, state 2, one loop-list entry
// with one left, decoding slot -1.
void InitStoppedSegment(SegmentState& segment, std::int32_t play_mode) {
    segment.chunk_index = -1;
    segment.play_mode = play_mode;
    segment.byte_offset = 0;
    segment.sample_position = 0;
    segment.loop_start = 0;
    segment.end_frame = 0;
    segment.entry_count = 1;
    segment.entries_left = 1;
    segment.restart_at_end = 0;
    segment.state = 2;
    segment.remaining_frames = 0;
    segment.field_2c = 0;
    segment.ramp_frames = 0;
    segment.ramp_step = 0;
    segment.gain = 0;
    segment.decoding_slot = -1;
    segment.reset_pending = false;
}

}  // namespace

// 0x885d44 (C1) and 0x885f10 (C2). The header words give the mode (low half of the format
// word), the channels (high half), field_0c_, the bytes per sample and the bits per sample
// (the two halves of the sample word) and the base offset. The containers and the playlist
// manager are stored as pointers. The scalar defaults are written as in the original.
VoxNativeSubDecoder::VoxNativeSubDecoder(StreamCursorInterface* stream,
                                         const NativeHeaderWords& header, States* states,
                                         AudioSegments* segments,
                                         vox::VoxVector<vox::VoxVector<int>>* loop_lists,
                                         TransitionRules* rules,
                                         vox::VoxVector<vox::VoxVector<TransitionParams>>* transitions,
                                         vox::VoxMap<vox::VoxString, int, vox::StringCompare>* names,
                                         NativePlaylistsManager* playlists) {
    const std::uint32_t format_word = static_cast<std::uint32_t>(header.format_word);
    const std::uint32_t sample_word = static_cast<std::uint32_t>(header.sample_word);

    stream_ = stream;                                   // +0x04
    mode_ = static_cast<std::uint16_t>(format_word);    // +0x08
    channels_ = static_cast<std::int16_t>(format_word >> 16);  // +0x0a
    field_0c_ = header.field_0c;                        // +0x0c
    bytes_per_sample_ = static_cast<std::int16_t>(sample_word);  // +0x10
    bits_ = static_cast<std::int16_t>(sample_word >> 16);        // +0x12
    base_offset_ = header.base_offset;                  // +0x14
    chunks_ = segments;                                 // +0x18
    transition_rules_ = rules;                          // +0x1c
    states_ = states;                                   // +0x20
    transitions_ = transitions;                         // +0x24
    state_names_ = names;                               // +0x28
    loop_lists_ = loop_lists;                           // +0x2c
    playlists_ = playlists;                             // +0x30
    // +0x34..+0x48: six words of -1 (the field_34_..field_48_ defaults).
    reset_pending_ = 1;                                 // +0x4c (byte 1)
    // +0x50, +0x64, +0x78: the three playlist elements (default constructed).
    // +0x8c, +0x90 are -1 and +0x94 is 0 (the header defaults).
    InitStoppedSegment(segments_[0], 3);                // +0x98 (A)
    InitStoppedSegment(segments_[1], 2);                // +0xdc (B)
    InitStoppedSegment(segments_[2], 1);                // +0x120 (C)
    has_data_ = true;                                   // +0x16c (byte 1)
}

// 0x888514 (C1) and 0x888580 (C2): the base constructor, then the PCM vtable.
VoxNativeSubDecoderPCM::VoxNativeSubDecoderPCM(StreamCursorInterface* stream,
                                               const NativeHeaderWords& header, States* states,
                                               AudioSegments* segments,
                                               vox::VoxVector<vox::VoxVector<int>>* loop_lists,
                                               TransitionRules* rules,
                                               vox::VoxVector<vox::VoxVector<TransitionParams>>* transitions,
                                               vox::VoxMap<vox::VoxString, int, vox::StringCompare>* names,
                                               NativePlaylistsManager* playlists)
    : VoxNativeSubDecoder(stream, header, states, segments, loop_lists, rules, transitions,
                          names, playlists) {}

}  // namespace vox
