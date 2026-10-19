// vox::VoxMSWavSubDecoder: the chunk walk that the PCM and IMA ADPCM sub-decoders share.
#include "vox-audio/vox/decoder_mswav_cursor.hpp"

namespace vox {

// 0x896068 _ZN3vox18VoxMSWavSubDecoder17GoToNextDataChunkEv
// With a chunk and a stream: the first data node is taken when none is current, else the
// node after the current one. When there is no next node, the current node and the chunk's
// size are cleared. Otherwise the stream is positioned at the node's data (its offset plus the
// 8-byte chunk header, from the start of the stream), the chunk's current size is set to the
// node's size and the byte position is reset.
//
// Port: when no node is current and the chunk has no data list, the original dereferences a
// null head; the port treats that as the end of the list.
void VoxMSWavSubDecoder::GoToNextDataChunk() {
    if (chunk_ == nullptr || stream_ == nullptr) {
        return;
    }
    DataNode* next = nullptr;
    if (node_ != nullptr) {
        next = node_->next;
        if (next == nullptr) {
            node_ = nullptr;
            chunk_->current_data_size = 0;
            return;
        }
    } else {
        next = chunk_->data_list;
        if (next == nullptr) {
            node_ = nullptr;
            chunk_->current_data_size = 0;
            return;
        }
    }
    node_ = next;
    stream_->Seek(static_cast<int>(node_->offset + 8), 0);
    chunk_->current_data_size = node_->size;
    node_pos_ = 0;
}

}  // namespace vox
