// glitch::video::spatialGridClustering (0x5a5860) and glitch::video::kdTreeClustering (0x5a6568): the two ways
// CBatchDriver::thisAppendBatch (0x5a6fe0) splits the primitives of one batch into clusters. Both fill
// map<cluster key, primitive indices> from the per-primitive boxes (id = primitive index, box = its bounds).
#include <cstdint>
#include <map>
#include <sstream>
#include <string>
#include <utility>
#include <vector>

#include "glitch-core-io/core/kd_tree_ops.hpp"
#include "glitch-video/batch_driver.hpp"

namespace glitch::video {

namespace {
using ClusterBox = std::pair<unsigned int, core::aabbox3d<float>>;
}  // namespace

// 0x5a5860 _ZN6glitch5video21spatialGridClusteringERSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS4_EEERKS2_IS7_IjNS_4core
// 8aabbox3dIfEEENSD_10SAllocatorISG_LNS_6memory13E_MEMORY_HINTE0EEEERKNSD_8vector3dIfEE
// For every box: the centre ((min + max) * 0.5 per axis) is divided component-wise by the cell size, the three results
// are truncated to int (__aeabi_f2iz) and written to one ostringstream in decimal with no separator (three
// __put_num<long> calls on a stream that str("") reset first); the key is the hash of the text
// h ^= (signed char)c + 0x9e3779b9 + (h << 6) + (h >> 2), starting from 0. The primitive index goes into map[key].
void spatialGridClustering(std::map<unsigned int, std::vector<unsigned int>>& clusters,
                           const std::vector<ClusterBox, core::SAllocator<ClusterBox>>& boxes,
                           const core::vector3d<float>& cellSize) {
    std::ostringstream text;
    for (unsigned int index = 0; index < boxes.size(); ++index) {
        const ClusterBox& box = boxes[index];
        const core::aabbox3d<float>& b = box.second;
        core::vector3d<float> centre;
        centre.X = (b.MinEdge.X + b.MaxEdge.X) * 0.5f;  // v23[0]: floats 1 and 4 of the 28-byte record
        centre.Y = (b.MinEdge.Y + b.MaxEdge.Y) * 0.5f;  // v23[1]: floats 2 and 5
        centre.Z = (b.MinEdge.Z + b.MaxEdge.Z) * 0.5f;  // v23[2]: floats 3 and 6
        centre /= cellSize;
        text.str(std::string());
        text << static_cast<long>(static_cast<int>(centre.X)) << static_cast<long>(static_cast<int>(centre.Y))
             << static_cast<long>(static_cast<int>(centre.Z));
        const std::string digits = text.str();
        unsigned int hash = 0;
        for (const char c : digits) {
            hash ^= static_cast<unsigned int>(static_cast<int>(c) + static_cast<int>(0x9e3779b9u)) + (hash << 6) +
                    (hash >> 2);
        }
        clusters[hash].push_back(index);
    }
}

// 0x5a6568 _ZN6glitch5video16kdTreeClusteringERSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS4_EEERKS2_IS7_IjNS_4core8aabbox3dIfEE
// ENSD_10SAllocatorISG_LNS_6memory13E_MEMORY_HINTE0EEEEjRKSF_
// A k-d tree over the boxes is built with depth floor(log2(count / perCluster)) + 1 (0 + 1 when the quotient is 0,
// the loop starting at -1) inside `bounds`. Then, until the tree is empty: the element farthest from `bounds` (the
// tree's query box) is taken and removed, its perCluster / 3 nearest neighbours are found, removed and appended,
// and the lot goes into map[n] (n counts the clusters from 0): the seed's id first, then the neighbours' ids.
void kdTreeClustering(std::map<unsigned int, std::vector<unsigned int>>& clusters,
                      const std::vector<ClusterBox, core::SAllocator<ClusterBox>>& boxes, unsigned int perCluster,
                      const core::aabbox3d<float>& bounds) {
    unsigned int quotient = static_cast<unsigned int>(boxes.size()) / perCluster;
    int log2 = -1;
    while (quotient != 0) {
        quotient >>= 1;
        ++log2;
    }
    const unsigned int depth = static_cast<unsigned int>(log2 + 1);

    core::detail::KdTree tree;
    tree.root.plane = (bounds.MinEdge.X + bounds.MaxEdge.X) * 0.5f;  // v40
    tree.root.axis = 0;
    tree.queryBox = bounds;  // +0x38
    tree.elementCount = 0;   // +0x50
    for (const ClusterBox& element : boxes) {
        core::detail::addElemInternal(tree, element, &tree.root, depth, bounds);
        ++tree.elementCount;
    }

    std::vector<ClusterBox, core::SAllocator<ClusterBox>> nearest;
    unsigned int clusterKey = 0;
    while (tree.elementCount != 0) {
        nearest.clear();
        float bestDistance = -1.0f;  // 0xbf800000
        const ClusterBox* farthest = nullptr;
        core::detail::findFarthestElemInternal(tree, farthest, bestDistance, &tree.root);
        const ClusterBox seed = *farthest;
        core::detail::removeElemInternal(tree, seed, &tree.root);
        core::detail::findKNearest(tree, perCluster / 3, seed, nearest);
        std::vector<unsigned int>& members = clusters[clusterKey++];
        members.push_back(seed.first);
        for (const ClusterBox& element : nearest) {
            core::detail::removeElemInternal(tree, element, &tree.root);
            members.push_back(element.first);
        }
    }
}

}  // namespace glitch::video
