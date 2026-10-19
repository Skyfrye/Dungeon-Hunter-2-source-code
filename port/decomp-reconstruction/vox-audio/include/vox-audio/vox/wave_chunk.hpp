// The WAV block the MSWav sub-decoders read. DecoderMSWavCursor::ParseFile (0x870610) fills
// it from the stream; DecoderMSWav owns one per decoder. The comments give the original
// 32-bit offsets, which the parser writes to.
#pragma once

#include <cstdint>

namespace vox {

// One data chunk of the WAV file, in the list that starts at WaveChunk::data_list.
struct DataNode {
    std::uint32_t offset = 0;      // +0x00, position of the chunk header in the stream
    std::uint32_t size = 0;        // +0x04, size of the chunk data in bytes
    DataNode* next = nullptr;      // +0x08

    // 0x870e38 _ZN3vox8DataNode9DropNodesEv: frees every node after this one (this node is
    // not freed; the caller owns it). The original leaves the link as it was; here it is cleared.
    void DropNodes();
};

// The parsed format and data of a WAV file.
struct WaveChunk {
    char riff_tag[4] = {};               // +0x00, "RIFF"
    std::uint32_t riff_size = 0;         // +0x04
    char wave_tag[4] = {};               // +0x08, "WAVE"
    char fmt_tag[4] = {};                // +0x0c, "fmt "
    std::uint32_t fmt_size = 0;          // +0x10
    std::uint16_t format_tag = 0;        // +0x14 (1 = PCM, 17 = IMA ADPCM)
    std::uint16_t channels = 0;          // +0x16
    std::uint32_t sample_rate = 0;       // +0x18
    std::uint32_t avg_bytes_per_sec = 0; // +0x1c (uint32)
    std::uint16_t block_align = 0;       // +0x20, bytes per frame
    std::uint16_t bits_per_sample = 0;   // +0x22
    char data_tag[4] = {};               // +0x24, "data"
    std::uint32_t current_data_size = 0; // +0x28, size of the data node the cursor is in
                                         //       (written by VoxMSWavSubDecoder::GoToNextDataChunk
                                         //       and by the parser)
    char fact_tag[4] = {};               // +0x2c, "fact"
    std::uint32_t fact_size = 0;         // +0x30
    std::uint32_t fact_value = 0;        // +0x34, sample count from the fact chunk
    DataNode* data_list = nullptr;       // +0x38, first data chunk
};

}  // namespace vox
