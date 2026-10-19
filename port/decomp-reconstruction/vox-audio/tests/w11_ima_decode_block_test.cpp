// VoxNativeSubDecoderIMAADPCM::DecodeBlock: a stereo block read through a stream at a chunk
// offset decodes to the same PCM and states as ImaAdpcmDecodeBlock, and the segment position
// and the frame clamp follow the chunk.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <utility>
#include <vector>

#include "vox-audio/vox/adpcm_state.hpp"
#include "vox-audio/vox/ima_adpcm.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/native_sub_decoder_imaadpcm.hpp"

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

// Memory stream with the cursor interface the decoder uses.
class MemCursor : public vox::StreamCursorInterface {
public:
    explicit MemCursor(std::vector<std::uint8_t> data) : data_(std::move(data)) {}
    int Seek(int offset, int whence) override {
        if (whence != 0 || offset < 0 || offset > static_cast<int>(data_.size())) return -1;
        pos_ = static_cast<std::size_t>(offset);
        return 0;
    }
    bool EndOfStream() override { return pos_ >= data_.size(); }
    int Tell() override { return static_cast<int>(pos_); }
    int Read(std::uint8_t* dst, int size) override {
        std::size_t left = data_.size() - pos_;
        std::size_t n = static_cast<std::size_t>(size) < left ? static_cast<std::size_t>(size) : left;
        std::memcpy(dst, data_.data() + pos_, n);
        pos_ += n;
        return static_cast<int>(n);
    }
    bool IsSeekable() const override { return true; }

private:
    std::vector<std::uint8_t> data_;
    std::size_t pos_ = 0;
};

class TestIma : public vox::VoxNativeSubDecoderIMAADPCM {
public:
    void Setup(vox::StreamCursorInterface* stream, vox::NativeChunks* chunks, int block_bytes,
               std::int16_t channels, int base_offset) {
        stream_ = stream;
        chunks_ = chunks;
        bytes_per_sample_ = static_cast<std::int16_t>(block_bytes);
        channels_ = channels;
        base_offset_ = base_offset;
        pending_ = VoxAlloc(static_cast<std::size_t>(block_bytes));
    }
    AdpcmState State(int c) const { return adpcm_states_[c]; }
    void SetBlockFrames(int frames) { frames_per_block_ = frames; }
    void AllocSlots(std::size_t bytes) {
        decode_buffers_ = static_cast<vox::DecodeBuffers*>(VoxAlloc(sizeof(vox::DecodeBuffers)));
        for (void*& slot : decode_buffers_->slot) slot = VoxAlloc(bytes);
    }
    int FramesIntoBlock(int slot) const { return frames_into_block_[slot]; }
    int BlockResult(int slot) const { return block_result_[slot]; }
};

// Two channels, three groups: 8 header bytes and 24 data bytes.
std::vector<std::uint8_t> MakeStereoBlock() {
    std::vector<std::uint8_t> block(8 + 24);
    // Channel 0: predictor 1000, step index 10. Channel 1: predictor -500, step index 20.
    block[0] = 0xE8; block[1] = 0x03; block[2] = 10; block[3] = 0;
    block[4] = 0x0C; block[5] = 0xFE; block[6] = 20; block[7] = 0;
    std::uint32_t seed = 12345;
    for (std::size_t i = 8; i < block.size(); ++i) {
        seed = seed * 1103515245u + 12345u;
        block[i] = static_cast<std::uint8_t>(seed >> 16);
    }
    return block;
}
}  // namespace

int main() {
    const std::vector<std::uint8_t> block = MakeStereoBlock();

    // Reference: the standard block decoder on the same bytes.
    AdpcmState ref_states[8];
    std::vector<std::int16_t> ref(64, 0);
    const int ref_frames =
        vox::ImaAdpcmDecodeBlock(block.data(), static_cast<int>(block.size()), 2, ref_states,
                                 ref.data(), 32);
    CHECK(ref_frames == 25);  // 1 + 8 * 3 groups

    // Block at stream offset 24: chunk offset 16 plus base offset 8.
    std::vector<std::uint8_t> stream_bytes(24, 0x5A);
    stream_bytes.insert(stream_bytes.end(), block.begin(), block.end());
    MemCursor stream(stream_bytes);
    vox::NativeChunks chunks(1);
    chunks[0].byte_offset = 16;
    chunks[0].byte_size = static_cast<std::int32_t>(block.size());
    chunks[0].frame_count = 100;

    TestIma ima;
    ima.Setup(&stream, &chunks, static_cast<int>(block.size()), 2, 8);
    vox::SegmentState seg;
    seg.chunk_index = 0;
    seg.byte_offset = 0;
    seg.sample_position = 0;

    std::vector<std::int16_t> out(64, 0);
    const int frames = ima.DecodeBlock(out.data(), &seg);
    CHECK(frames == 25);
    CHECK(seg.byte_offset == static_cast<std::int32_t>(block.size()));
    for (int i = 0; i < ref_frames * 2; ++i) {
        CHECK(out[static_cast<std::size_t>(i)] == ref[static_cast<std::size_t>(i)]);
    }
    for (int c = 0; c < 2; ++c) {
        CHECK(ima.State(c).predictor == ref_states[c].predictor);
        CHECK(ima.State(c).step_index == ref_states[c].step_index);
    }

    // Frame clamp: 10 frames in the chunk, 4 already played, so 6 are returned.
    chunks[0].frame_count = 10;
    seg.byte_offset = 0;
    seg.sample_position = 4;
    CHECK(ima.DecodeBlock(out.data(), &seg) == 6);
    chunks[0].frame_count = 100;

    // Seek(30) on two blocks of 25 frames: block 1, 5 frames into it. Seek sets the byte
    // position to 32 and the DecodeBlock it runs advances it by the 32 bytes it reads.
    std::vector<std::uint8_t> two_blocks = block;
    two_blocks.insert(two_blocks.end(), block.begin(), block.end());
    MemCursor stream2(two_blocks);
    vox::NativeChunks chunks2(1);
    chunks2[0].byte_offset = 0;
    chunks2[0].byte_size = static_cast<std::int32_t>(two_blocks.size());
    chunks2[0].frame_count = 100;
    TestIma seek_ima;
    seek_ima.Setup(&stream2, &chunks2, static_cast<int>(block.size()), 2, 0);
    seek_ima.SetBlockFrames(25);
    seek_ima.AllocSlots(128);
    vox::SegmentState seek_seg;
    seek_seg.chunk_index = 0;
    seek_seg.decoding_slot = 0;
    CHECK(seek_ima.Seek(30, &seek_seg) == 0);
    CHECK(seek_seg.byte_offset == 64);
    CHECK(seek_seg.sample_position == 30);
    CHECK(seek_ima.FramesIntoBlock(0) == 5);
    CHECK(seek_ima.BlockResult(0) == 25);
    CHECK(seek_ima.Seek(101, &seek_seg) == -1);  // past the chunk's frame count

    // SetDecodingBufferToSegmentPosition at frame 30 of 25-frame blocks: the block starts at 25,
    // the decoder stores 5 frames into the block and returns 25 frames for slot 1.
    vox::SegmentState set_seg;
    set_seg.chunk_index = 0;
    set_seg.decoding_slot = 1;
    set_seg.sample_position = 30;
    seek_ima.SetDecodingBufferToSegmentPosition(&set_seg);
    CHECK(set_seg.sample_position == 30);
    CHECK(set_seg.byte_offset == 64);  // block start byte 32, then the 32 bytes DecodeBlock reads
    CHECK(seek_ima.FramesIntoBlock(1) == 5);
    CHECK(seek_ima.BlockResult(1) == 25);

    std::printf("w11_ima_decode_block_test: %s\n", g_failures == 0 ? "ok" : "FAILED");
    return g_failures == 0 ? 0 : 1;
}
