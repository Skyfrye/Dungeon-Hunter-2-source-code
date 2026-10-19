// glitch::video::spatialGridClustering (0x5a5860) and kdTreeClustering (0x5a6568), and the k-nearest search they use
// (CKdTree::findKNearest 0x5a5030 / findKNearestElemsInternal 0x5a4e24, kd_tree_ops.hpp).
#include <cstdio>
#include <map>
#include <string>
#include <vector>

#include "glitch-core-io/core/kd_tree_ops.hpp"
#include "glitch-video/batch_driver.hpp"

namespace {
int failures = 0;
#define CHECK(c)                                                     \
    do {                                                             \
        if (!(c)) {                                                  \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);  \
            ++failures;                                              \
        }                                                            \
    } while (0)

using Box = std::pair<unsigned int, glitch::core::aabbox3d<float>>;
using Boxes = std::vector<Box, glitch::core::SAllocator<Box>>;

Box makeBox(unsigned int id, float cx, float cy, float cz) {
    Box b;
    b.first = id;
    b.second.MinEdge.X = cx - 0.5f;
    b.second.MinEdge.Y = cy - 0.5f;
    b.second.MinEdge.Z = cz - 0.5f;
    b.second.MaxEdge.X = cx + 0.5f;
    b.second.MaxEdge.Y = cy + 0.5f;
    b.second.MaxEdge.Z = cz + 0.5f;
    return b;
}

// The key of the original: h ^= (signed char)c + 0x9e3779b9 + (h << 6) + (h >> 2) over the decimal text.
unsigned int keyOf(const std::string& text) {
    unsigned int h = 0;
    for (char c : text) {
        h ^= static_cast<unsigned int>(static_cast<int>(c)) + 0x9e3779b9u + (h << 6) + (h >> 2);
    }
    return h;
}
}  // namespace

int main() {
    using glitch::video::kdTreeClustering;
    using glitch::video::spatialGridClustering;

    // ---- spatialGridClustering: cells of 10 units; the text of a cell is its three truncated indices, no separator.
    {
        Boxes boxes;
        boxes.push_back(makeBox(0, 5.f, 5.f, 5.f));     // cell (0,0,0)  -> "000"
        boxes.push_back(makeBox(1, 6.f, 4.f, 7.f));     // cell (0,0,0)
        boxes.push_back(makeBox(2, 25.f, 5.f, 5.f));    // cell (2,0,0)  -> "200"
        boxes.push_back(makeBox(3, -15.f, 5.f, 35.f));  // cell (-1,0,3) -> "-103"
        glitch::core::vector3d<float> cell;
        cell.X = cell.Y = cell.Z = 10.0f;
        std::map<unsigned int, std::vector<unsigned int>> clusters;
        spatialGridClustering(clusters, boxes, cell);
        CHECK(clusters.size() == 3u);
        CHECK(clusters[keyOf("000")] == (std::vector<unsigned int>{0u, 1u}));
        CHECK(clusters[keyOf("200")] == (std::vector<unsigned int>{2u}));
        CHECK(clusters[keyOf("-103")] == (std::vector<unsigned int>{3u}));
    }

    // ---- kdTreeClustering: eight boxes in two well separated groups of four, four per cluster.
    {
        Boxes boxes;
        for (unsigned int i = 0; i < 4; ++i) boxes.push_back(makeBox(i, 1.0f + static_cast<float>(i), 0.f, 0.f));
        for (unsigned int i = 0; i < 4; ++i) boxes.push_back(makeBox(4 + i, 101.0f + static_cast<float>(i), 0.f, 0.f));
        glitch::core::aabbox3d<float> bounds;
        bounds.MinEdge.X = -1.f; bounds.MinEdge.Y = -1.f; bounds.MinEdge.Z = -1.f;
        bounds.MaxEdge.X = 110.f; bounds.MaxEdge.Y = 1.f; bounds.MaxEdge.Z = 1.f;
        std::map<unsigned int, std::vector<unsigned int>> clusters;
        kdTreeClustering(clusters, boxes, 4, bounds);
        // Every box lands in exactly one cluster.
        std::vector<int> seen(8, 0);
        unsigned int total = 0;
        for (const auto& kv : clusters) {
            for (unsigned int id : kv.second) {
                CHECK(id < 8u);
                if (id < 8u) ++seen[id];
                ++total;
            }
        }
        CHECK(total == 8u);
        for (int s : seen) CHECK(s == 1);
        // Cluster 0 starts with the box farthest from the query box (the bounds centre x = 54.5): ids 0 (x = 1) and
        // 7 (x = 104) are 53.5 and 49.5 away, so the seed is id 0, followed by its three-or-so nearest neighbours.
        CHECK(!clusters[0].empty() && clusters[0].front() == 0u);
        // The seed's neighbours are all from the same group.
        for (unsigned int id : clusters[0]) CHECK(id < 4u);
    }

    // ---- findKNearest: the heap is drained from the top, so the result is farthest first.
    {
        using namespace glitch::core::detail;
        KdTree tree;
        const glitch::core::aabbox3d<float> world{{-100.f, -1.f, -1.f}, {100.f, 1.f, 1.f}};
        tree.root.axis = 0;
        tree.root.plane = 0.0f;
        for (unsigned int i = 0; i < 6; ++i) {
            glitch::KdElement e = makeBox(i, static_cast<float>(i) * 10.0f, 0.f, 0.f);
            addElemInternal(tree, e, &tree.root, 2, world);
            ++tree.elementCount;
        }
        glitch::KdElement query = makeBox(99, 0.f, 0.f, 0.f);
        std::vector<glitch::KdElement> out;
        findKNearest(tree, 3, query, out);
        CHECK(out.size() == 3u);
        if (out.size() == 3u) {
            CHECK(out[0].first == 2u);  // x = 20, the farthest of the three
            CHECK(out[1].first == 1u);
            CHECK(out[2].first == 0u);
        }
    }

    if (failures == 0) std::printf("batch_clustering_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
