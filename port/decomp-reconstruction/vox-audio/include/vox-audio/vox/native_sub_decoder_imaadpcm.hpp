// vox::VoxNativeSubDecoderIMAADPCM: the IMA ADPCM native sub-decoder. Its ADPCM block
// decoder is ImaAdpcmDecodeBlock (ima_adpcm.hpp); the class-level buffering and segment
// logic is declared here. VoxNativeSubDecoderIMAADPCM::DecodeBlock (0x887068) is ported in
// src/w9-native-subdecoder/ima_decode_block.cpp.
#pragma once

#include <cstdint>
#include "vox-audio/vox/allocator.hpp"
#include "vox-audio/vox/string_compare.hpp"

#include "vox-audio/vox/adpcm_state.hpp"
#include "vox-audio/vox/native_sub_decoder.hpp"

namespace vox {

class NativeSubDecoderIMAADPCMState;  // native_sub_decoder_state.hpp

// Three decoding-buffer slots, a 12-byte record at +0x174 of the original object.
struct DecodeBuffers {
    void* slot[3];  // +0x00, +0x04, +0x08: decoded block buffers
};

class VoxNativeSubDecoderIMAADPCM : public VoxNativeSubDecoder {
public:
    VoxNativeSubDecoderIMAADPCM() = default;
    // C1 0x886bfc and C2 0x886dbc: the base constructor, then the decode buffers, the pending
    // block and the ADPCM states (see the .cpp).
    VoxNativeSubDecoderIMAADPCM(StreamCursorInterface* stream, const NativeHeaderWords& header,
                                States* states, AudioSegments* segments,
                                vox::VoxVector<vox::VoxVector<int>>* loop_lists, TransitionRules* rules,
                                vox::VoxVector<vox::VoxVector<TransitionParams>>* transitions,
                                vox::VoxMap<vox::VoxString, int, vox::StringCompare>* names,
                                NativePlaylistsManager* playlists);
    ~VoxNativeSubDecoderIMAADPCM() override;  // D1 0x886a20 (D2 0x886b1c, D0 0x886b00)

    int Seek(unsigned int sample_offset);                       // 0x88635c: returns 0
    int Seek(int sample_offset, SegmentState* segment);         // 0x887464 (partial)
    int EmulateDecodeBlock(SegmentState* segment);              // 0x886364
    // 0x8863dc: IMA-only virtual slot +0x38 (the base class has no slot there).
    virtual int EmulateSetDecodingBufferToSegmentPosition(SegmentState* segment);
    unsigned int GetBytePositionFromSampleOffset(unsigned int sample_offset);  // 0x886434
    int GetDecodingBuffer();                                    // 0x886454
    void ReleaseDecodingBuffer(int buffer);                     // 0x8864a0
    void Reset();                                               // 0x8864cc (partial)
    void SetState(NativeSubDecoderIMAADPCMState* state);        // 0x8864f8 (partial)
    void GetState(NativeSubDecoderIMAADPCMState* state);        // 0x886554 (partial)
    int EmulateDecodeSegment(int sample_bytes, SegmentState* segment);  // 0x886580
    int EmulateDecodeCurrentSegmentWithOffset(int sample_bytes);  // 0x8867dc
    void SetDecodingBufferToSegmentPosition(SegmentState* segment);  // 0x887544 (partial)
    int DecodeSegment(void* dst, int bytes, SegmentState* segment);  // 0x8875b8 (partial)
    int DecodeCurrentSegmentWithOffset(void* dst, int bytes);   // 0x887860 (partial)

    // 0x887068: decodes one block of the segment into buffer (src/w9-native-subdecoder).
    int DecodeBlock(void* buffer, SegmentState* segment);

protected:
    int frames_per_block_ = 0;                  // +0x170 (the divisor of every block split)
    DecodeBuffers* decode_buffers_ = nullptr;   // +0x174
    int block_result_[3] = {};                  // +0x178: result of the last block per slot
    int frames_into_block_[3] = {};             // +0x184: frames already taken from the block
    int decoding_slot_used_[3] = {};            // +0x190: slot claimed by GetDecodingBuffer
    void* pending_ = nullptr;                   // +0x19c: freed by the destructor, use not visible
    AdpcmState adpcm_states_[8] = {};           // +0x1a0: four bytes per channel
};

}  // namespace vox
