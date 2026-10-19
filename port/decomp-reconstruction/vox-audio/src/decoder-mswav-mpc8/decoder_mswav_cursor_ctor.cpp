// vox::DecoderMSWavCursor constructor (0x870ac8, 0x870c98) and ParseFile (0x870610).
#include <cstring>
#include <new>

#include "vox-audio/vox/decoder_mswav.hpp"
#include "vox-audio/vox/decoder_mswav_cursor.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/mswav_sub_decoder_imaadpcm.hpp"
#include "vox-audio/vox/mswav_sub_decoder_pcm.hpp"

namespace vox {

namespace {

// The WAV file is little-endian whatever the host is.
std::uint16_t ReadLe16(const std::uint8_t* p) {
    return static_cast<std::uint16_t>(p[0] | (p[1] << 8));
}

std::uint32_t ReadLe32(const std::uint8_t* p) {
    return static_cast<std::uint32_t>(p[0]) | (static_cast<std::uint32_t>(p[1]) << 8) |
           (static_cast<std::uint32_t>(p[2]) << 16) | (static_cast<std::uint32_t>(p[3]) << 24);
}

}  // namespace

// 0x870610 _ZN3vox18DecoderMSWavCursor9ParseFileEv
// Walks the chunks from the start of the stream and restores the stream position at the end.
// A RIFF chunk fills the header; a fmt chunk fills the format (extra bytes past 16 are
// skipped); a fact chunk keeps its sample count; each data chunk is recorded as a DataNode
// (offset of its header, size) and skipped. Chunks before the RIFF header end the walk.
bool DecoderMSWavCursor::ParseFile() {
    if (stream_ == nullptr) {
        return false;
    }
    const int start = stream_->Tell();
    stream_->Seek(0, 0);

    bool seen_riff = false;
    while (!stream_->EndOfStream()) {
        if ((stream_->Tell() & 1) != 0) {
            stream_->Seek(1, 1);  // chunks are word aligned
        }
        std::uint8_t header[8];
        if (stream_->Read(header, 8) != 8) {
            break;
        }
        const std::uint32_t size = ReadLe32(header + 4);

        if (std::memcmp(header, "RIFF", 4) == 0) {
            std::memcpy(chunk_->riff_tag, header, 4);
            seen_riff = true;
            chunk_->riff_size = size;
            stream_->Read(reinterpret_cast<std::uint8_t*>(chunk_->wave_tag), 4);
            continue;
        }

        if (std::memcmp(header, "fmt ", 4) == 0) {
            std::memcpy(chunk_->fmt_tag, header, 4);
            chunk_->fmt_size = size;
            std::uint8_t format[16];
            stream_->Read(format, 16);
            chunk_->format_tag = ReadLe16(format + 0);
            chunk_->channels = ReadLe16(format + 2);
            chunk_->sample_rate = static_cast<int>(ReadLe32(format + 4));
            chunk_->avg_bytes_per_sec = ReadLe32(format + 8);
            chunk_->block_align = ReadLe16(format + 12);
            chunk_->bits_per_sample = ReadLe16(format + 14);
            if (static_cast<std::uint32_t>(chunk_->fmt_size + 8u) > 0x18u) {
                stream_->Seek(static_cast<int>(chunk_->fmt_size - 16u), 1);
            }
        } else if (std::memcmp(header, "fact", 4) == 0) {
            std::memcpy(chunk_->fact_tag, header, 4);
            chunk_->fact_size = size;
            std::uint8_t value[4];
            stream_->Read(value, 4);
            chunk_->fact_value = ReadLe32(value);
        } else if (std::memcmp(header, "data", 4) == 0) {
            std::memcpy(chunk_->data_tag, header, 4);
            chunk_->current_data_size = size;

            // The node's offset is the chunk header, which is the 8 bytes before the data.
            const int node_offset = stream_->Tell() - 8;
            auto* node = new (VoxAlloc(sizeof(DataNode))) DataNode();
            node->offset = static_cast<std::uint32_t>(node_offset);
            node->size = chunk_->current_data_size;
            node->next = nullptr;
            if (chunk_->data_list == nullptr) {
                chunk_->data_list = node;
            } else {
                DataNode* tail = chunk_->data_list;
                while (tail->next != nullptr) {
                    tail = tail->next;
                }
                tail->next = node;
            }
            stream_->Seek(static_cast<int>(chunk_->current_data_size), 1);
        } else {
            stream_->Seek(static_cast<int>(size), 1);  // unknown chunk: skip its body
        }

        if (!seen_riff) {
            break;
        }
    }

    stream_->Seek(start, 0);
    return true;
}

// 0x870ac8 _ZN3vox18DecoderMSWavCursorC1EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
// 0x870c98 _ZN3vox18DecoderMSWavCursorC2EPNS_16DecoderInterfaceEPNS_21StreamCursorInterfaceE
// The original takes the decoder as DecoderInterface*; the port takes the concrete decoder,
// which is where the WAV block and the parse flag live.
DecoderMSWavCursor::DecoderMSWavCursor(DecoderMSWav* decoder, StreamCursorInterface* stream) {
    decoder_ = decoder;
    stream_ = stream;
    loop_ = false;
    chunk_ = &decoder->wave_chunk_;
    sub_decoder_ = nullptr;

    if (decoder->parse_pending_) {
        if (!ParseFile()) {
            params_ = TrackParams{};
            return;
        }
        decoder->parse_pending_ = false;
    }

    // The sub-decoder is chosen by the format tag of a WAVE file: 1 is PCM, 17 is IMA ADPCM.
    const bool is_wave = std::memcmp(chunk_->riff_tag, "RIFF", 4) == 0 &&
                         std::memcmp(chunk_->wave_tag, "WAVE", 4) == 0;
    VoxMSWavSubDecoder* sub = nullptr;
    if (is_wave && chunk_->format_tag == 1) {
        void* storage = VoxAlloc(sizeof(VoxMSWavSubDecoderPCM));
        if (storage != nullptr) {
            sub = new (storage) VoxMSWavSubDecoderPCM(stream_, chunk_);
        }
    } else if (is_wave && chunk_->format_tag == 17) {
        void* storage = VoxAlloc(sizeof(VoxMSWavSubDecoderIMAADPCM));
        if (storage != nullptr) {
            sub = new (storage) VoxMSWavSubDecoderIMAADPCM(stream_, chunk_);
        }
    }
    sub_decoder_ = sub;

    // The original copies the sub-decoder's +0x10/+0x14/+0x18/+0x1c words into the cursor's
    // parameter block at +0x04/+0x08/+0x0c/+0x10 (asm 0x870b5c-0x870b78). The widths differ
    // (its frames word is a 32-bit count), so each field is copied at its own type.
    if (sub != nullptr) {
        params_.channels = sub->channels_;
        params_.sample_rate = sub->sample_rate_;
        params_.bits_per_sample = sub->bits_per_sample_;
        params_.length_frames = static_cast<std::int32_t>(sub->total_frames_);
    } else {
        params_ = TrackParams{};
    }
}

}  // namespace vox
