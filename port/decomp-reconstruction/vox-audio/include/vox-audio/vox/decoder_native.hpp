// vox::DecoderNative: decoder for the native sub-decoder format, and its cursor
// vox::DecoderNativeCursor. The 32-bit offsets from the pseudocode are kept as
// comments (+0x..). Sub-decoder calls that need slots the port does not declare
// are marked partial in the .cpp files.
#pragma once

#include <cstdint>
#include "vox-audio/vox/allocator.hpp"
#include "vox-audio/vox/string_compare.hpp"
#include <list>
#include <map>
#include <string>
#include <vector>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/mutex.hpp"
#include "vox-audio/vox/native_containers.hpp"
#include "vox-audio/vox/native_playlist.hpp"

namespace vox {

class VoxNativeSubDecoder;
class NativeSubDecoderState;
class DecoderNativeCursor;

class DecoderNative : public DecoderInterface {
public:
    // C1 0x872ad0, C2 0x872b98: zeroes the containers and the playlist manager and
    // sets the parse-needed flag.
    DecoderNative();
    // D1 0x872550, D2 0x872638 (partial: the playlist manager's pointer array is not freed).
    ~DecoderNative() override;

    int GetType() const override;                       // 0x871098: returns 4
    std::int32_t* GetParam() override;                  // 0x8710a0: returns null
    // 0x874648: VoxAlloc the cursor and construct it (the cursor constructor is partial).
    DecoderCursorInterface* CreateNewCursor(StreamCursorInterface* stream) override;
    void DestroyCursor(DecoderCursorInterface* cursor) override;  // 0x871a50

    // 0x87215c (partial): the 36-byte record layout is not ported.
    void* CreateTransitionRulesContainer(int count, int extra_bytes);
    // 0x872188: an array of count 32-bit state ids.
    void* CreateStatesContainer(int count);
    // 0x8721ac (partial): the 24-byte record layout is not ported.
    void* CreateSegmentsInfoContainers(int count, int extra_bytes);
    // 0x872a84: count empty transition lists.
    void CreateTransitionsContainer(unsigned int count);
    // 0x872ac8 (partial): forwards to the playlist manager's Init; the return value is
    // not ported.
    int CreatePlaylistsContainer(int count);

private:
    friend class DecoderNativeCursor;
    friend struct DecoderNativeTestAccess;

    // The VoxN header words read by ParseFile and by the cursor (the block at +0x04..+0x2f).
    // The format tag is the low half of format_word (+0x24): 17 selects IMA ADPCM, 1 PCM.
    NativeHeaderWords header_words_;                        // +0x18, +0x24, +0x28, +0x2c
    AudioSegments segments_;                                // +0x30, +0x34 (24-byte records)
    NativePlaylistsManager playlists_;                      // +0x38
    States states_;                                         // +0x48, +0x4c (32-bit state ids)
    TransitionRules rules_;                                 // +0x50, +0x54 (36-byte records)
    vox::VoxVector<vox::VoxVector<int>> segment_cues_;            // +0x58 (word 22)
    vox::VoxVector<vox::VoxVector<TransitionParams>> transitions_;  // +0x64 (word 25)
    vox::VoxMap<vox::VoxString, int, vox::StringCompare> interactive_states_;         // +0x70: the state-name table
    bool needs_parse_ = true;                               // +0x88 (byte 136)
};

// 0x872b78 _ZN3vox20DecoderNativeFactoryEPv. VoxAlloc a DecoderNative and construct it.
void* DecoderNativeFactory(void* params);

// vox::DecoderNativeCursor: reads one stream through the sub-decoder selected by the
// decoder. Its methods are partial where they call the sub-decoder (see the .cpp).
class DecoderNativeCursor final : public DecoderCursorInterface {
public:
    // C1 0x8742f4, C2 0x874678 (partial). Parses the file on the first cursor, copies the
    // playlist manager, creates the PCM or IMA ADPCM sub-decoder with two states, and takes
    // the track parameters. The header words come from ParseFile, which is not complete.
    DecoderNativeCursor(DecoderInterface* decoder, StreamCursorInterface* stream);
    // D1 0x872314, D2 0x872440 (partial: the playlist manager's array is not freed).
    ~DecoderNativeCursor() override;

    int Decode(void* dst, int count) override;   // 0x872218
    bool HasData() override;                     // 0x8710a8
    void Reset() override;                       // 0x8718cc
    int GetRewindLimit() override;               // 0x8710d4
    void Rewind(int frames) override;            // 0x8720b8
    int Seek(unsigned int frame) override;       // 0x8710fc
    void SetLoop(bool on) override;              // 0x871128 (empty in the original)
    // 0x872cf0 (partial): the segment cue table is not reproduced.
    void SetImplicitSegmentCues();
    // 0x873144: appends the state index of the named state to the pending list.
    void SetInteractiveMusicState(const char* name);

private:
    friend struct DecoderNativeCursorTestAccess;

    // 0x8738bc (partial): checks the VoxN magic and stops before the chunk loop.
    bool ParseFile();
    // 0x871954: pops the newest pending state index, or -1 when the list is empty.
    int GetStateIndex();
    // True when the decoder's format tag selects the IMA ADPCM sub-decoder (tag 17). The
    // original tests the same halfword (decoder +0x24) before each state copy and reset.
    bool IsImaAdpcm() const;

    // params_ (+0x04..+0x13) is inherited from DecoderCursorInterface, as are decoder_ (+0x14),
    // stream_ (+0x18) and loop_ (+0x1c).
    const vox::VoxMap<vox::VoxString, int, vox::StringCompare>* state_names_ = nullptr;  // +0x38 (word 14)
    NativePlaylistsManager* playlists_ = nullptr;          // +0x3c (word 15)
    // Pending state indices. The original is a ring whose sentinel is at +0x40 (next) and
    // +0x44 (prev); a list keeps the same order.
    std::list<std::int32_t> state_indices_;                // +0x40
    VoxNativeSubDecoder* sub_decoder_ = nullptr;           // +0x48 (word 18)
    std::int32_t decode_calls_ = 0;                        // +0x4c (word 19)
    NativeSubDecoderState* state_a_ = nullptr;             // +0x50 (word 20)
    NativeSubDecoderState* state_b_ = nullptr;             // +0x54 (word 21)
    std::int32_t frames_before_ = 0;                       // +0x58 (word 22)
    std::int32_t frames_current_ = 0;                      // +0x5c (word 23)
    std::int32_t frames_capacity_ = 0;                     // +0x60 (word 24)
    std::int32_t frames_mark_ = 0;                         // +0x64 (word 25)
    Mutex mutex_;                                          // +0x68
};

}  // namespace vox
