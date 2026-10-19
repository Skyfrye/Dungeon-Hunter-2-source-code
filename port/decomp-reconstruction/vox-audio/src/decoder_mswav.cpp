// vox::DecoderMSWav: accessors, the constructor, the destructor and DestroyCursor.
// CreateNewCursor and the factory are in decoder-mswav-mpc8/decoder_mswav_factory.cpp.
#include "vox-audio/vox/decoder_mswav.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x870548 _ZN3vox12DecoderMSWavC1Ev (C2 0x870514 is the same body)
DecoderMSWav::DecoderMSWav() = default;

// 0x870ffc _ZN3vox12DecoderMSWavD1Ev (D2 0x870f7c has the same body; the deleting variant
// 0x87107c is emitted by the compiler from this destructor).
// The original calls DataNode::DropNodes (0x870e38) on the node after the list head, frees
// that node, then frees the head. DropNodes frees every node after its receiver, so the set of
// blocks freed is the same as calling it on the head and freeing the head; the free order
// differs and is not observable.
DecoderMSWav::~DecoderMSWav() {
    parse_pending_ = true;
    if (wave_chunk_.data_list != nullptr) {
        wave_chunk_.data_list->DropNodes();
        VoxFree(wave_chunk_.data_list);
    }
    wave_chunk_.data_list = nullptr;
}

// 0x870504 _ZN3vox12DecoderMSWav7GetTypeEv
int DecoderMSWav::GetType() const {
    return 1;
}

// 0x87050c _ZN3vox12DecoderMSWav8GetParamEv
std::int32_t* DecoderMSWav::GetParam() {
    return nullptr;
}

// 0x870a9c _ZN3vox12DecoderMSWav13DestroyCursorEPNS_22DecoderCursorInterfaceE
void DecoderMSWav::DestroyCursor(DecoderCursorInterface* cursor) {
    if (cursor == nullptr) {
        return;
    }
    cursor->~DecoderCursorInterface();
    VoxFree(cursor);
}

}  // namespace vox
