// vox::DecoderMSWavCursor: the Microsoft WAV cursor. It holds a WAV sub-decoder
// (+0x24) and forwards Decode, Seek and HasData to it through the sub-decoder's
// virtual slots (+0x08, +0x0c, +0x10). Its own info block (+0x04..+0x10) copies the
// sub-decoder's channels, sample rate, bits and frame count.
#pragma once

#include <cstdint>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/stream.hpp"
#include "vox-audio/vox/wave_chunk.hpp"

namespace vox {

class DecoderMSWav;
class DecoderMSWavCursor;

// Interface of the WAV sub-decoder (Decode +0x08, Seek +0x0c, HasData +0x10). The fields
// below are shared by the PCM and IMA ADPCM sub-decoders and are set by their constructors
// (the original constructors write them inline, so there is no base constructor).
class VoxMSWavSubDecoder {
public:
    virtual ~VoxMSWavSubDecoder() = default;  // 0x875414: empty body in the original
    virtual int Decode(void* dst, int count) = 0;
    virtual int Seek(unsigned int frame) = 0;
    virtual bool HasData() = 0;

protected:
    friend class DecoderMSWavCursor;

    // 0x896068 _ZN3vox18VoxMSWavSubDecoder17GoToNextDataChunkEv
    // Moves to the next data chunk of the WAV block (the first one when no chunk is current):
    // seeks the stream to its data, sets the chunk's current size and clears the byte position.
    // Without a chunk or a stream it does nothing. Past the last chunk it clears the current
    // chunk and its size.
    void GoToNextDataChunk();

    StreamCursorInterface* stream_ = nullptr;  // +0x04
    WaveChunk* chunk_ = nullptr;               // +0x08
    DataNode* node_ = nullptr;                 // +0x0c, current data chunk
    int channels_ = 0;                         // +0x10
    int sample_rate_ = 0;                      // +0x14
    int bits_per_sample_ = 0;                  // +0x18
    std::uint32_t total_frames_ = 0;           // +0x1c, all frames of the file's data
    std::uint32_t node_pos_ = 0;               // +0x20, bytes read from the current chunk
    std::uint32_t frame_pos_ = 0;              // +0x24, frames decoded so far

public:
    bool loop_ = false;  // +0x28
};

class DecoderMSWavCursor : public DecoderCursorInterface {
public:
    // Port-only constructor for a cursor that already has a sub-decoder.
    explicit DecoderMSWavCursor(VoxMSWavSubDecoder* sub_decoder) : sub_decoder_(sub_decoder) {}
    // C1 0x870ac8, C2 0x870c98: parses the decoder's WAV block when it is still pending, then
    // creates the PCM (format 1) or IMA ADPCM (format 17) sub-decoder for a WAVE file.
    DecoderMSWavCursor(DecoderMSWav* decoder, StreamCursorInterface* stream);
    // D1 0x8709d8 and D2 0x870a48 share this body; D0 0x870a2c is the deleting variant.
    ~DecoderMSWavCursor() override;

    int Decode(void* dst, int count) override;       // 0x87057c: sub-decoder, else 0
    int Seek(unsigned int frame) override;           // 0x8705a8: sub-decoder, else -1
    void SetLoop(bool on) override;                  // 0x8705d4: writes the sub-decoder loop flag
    bool HasData() override;                         // 0x8705e4: sub-decoder, else false

private:
    // 0x870610 _ZN3vox18DecoderMSWavCursor9ParseFileEv: walks the RIFF chunks of the stream,
    // fills the WAV block and appends a DataNode for each data chunk. Returns false only
    // without a stream.
    bool ParseFile();

    // The parameter block (channels +0x04, sample rate +0x08, bits +0x0c, frames +0x10) is the
    // inherited DecoderCursorInterface::params_; the constructor copies it from the sub-decoder,
    // as the original does (asm 0x870b5c).
    WaveChunk* chunk_ = nullptr;                     // +0x20, the decoder's WAV block
    VoxMSWavSubDecoder* sub_decoder_ = nullptr;      // +0x24
};

}  // namespace vox
