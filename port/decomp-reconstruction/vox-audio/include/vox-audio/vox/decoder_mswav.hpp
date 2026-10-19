// vox::DecoderMSWav: decoder for Microsoft WAV sources. It owns the parsed WAV block that
// its cursors read (the original embeds it at +0x04) and a flag that says the block still
// has to be parsed (+0x40).
#pragma once

#include <cstdint>

#include "vox-audio/vox/decoder.hpp"
#include "vox-audio/vox/wave_chunk.hpp"

namespace vox {

class DecoderMSWavCursor;

class DecoderMSWav : public DecoderInterface {
public:
    // C1 0x870548, C2 0x870514: the vtable, the WAV block (empty) and the parse-pending flag.
    DecoderMSWav();
    // D1 0x870ffc, D2 0x870f7c: the data list is dropped (DataNode::DropNodes) and its head freed.
    ~DecoderMSWav() override;

    int GetType() const override;                       // 0x870504: returns 1
    std::int32_t* GetParam() override;                  // 0x87050c: returns null
    DecoderCursorInterface* CreateNewCursor(StreamCursorInterface* stream) override;  // 0x870c68
    void DestroyCursor(DecoderCursorInterface* cursor) override;  // 0x870a9c

private:
    friend class DecoderMSWavCursor;
    WaveChunk wave_chunk_;             // +0x04 (the original's block ends at +0x3c with the list head)
    bool parse_pending_ = true;        // +0x40, set until a cursor has parsed the block
};

// 0x8709b8 _ZN3vox19DecoderMSWavFactoryEPv: allocates a decoder and returns it (as void*).
void* DecoderMSWavFactory(void* params);

}  // namespace vox
