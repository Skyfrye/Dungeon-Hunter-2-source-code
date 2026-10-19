// vox::DataNode::DropNodes (0x870e38).
#include "vox-audio/vox/wave_chunk.hpp"

#include "vox-audio/vox/memory.hpp"

namespace vox {

// 0x870e38 _ZN3vox8DataNode9DropNodesEv
// The original unrolls a walk of up to nine links and recurses on the ninth. The frees it makes
// are the same as a plain walk: every node after this one is freed, this node is not. The
// walk reads each link before its node is freed.
void DataNode::DropNodes() {
    DataNode* node = next;
    while (node != nullptr) {
        DataNode* following = node->next;
        VoxFree(node);
        node = following;
    }
    next = nullptr;
}

}  // namespace vox
