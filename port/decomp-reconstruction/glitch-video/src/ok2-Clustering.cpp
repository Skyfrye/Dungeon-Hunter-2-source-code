// Owner K2: the k-means clustering of CBatchDriver::thisAppendBatch and its mean seeding.
#include <cstdint>
#include <map>
#include <utility>
#include <vector>

#include "glitch-video/batch_driver.hpp"

extern "C" long lrand48(void);  // libc (Android); the Windows host build does not link this file's callers

namespace glitch::video {

namespace {
using ClusterBox = std::pair<unsigned int, core::aabbox3d<float>>;
using MeanVector = std::vector<core::vector3d<float>, core::SAllocator<core::vector3d<float>>>;

constexpr float kFloatMax = 3.4028235e38f;     // 2139095039 (0x7f7fffff) in the listing
constexpr float kRandomScale = 4.6566129e-10f; // 0x30000000, 2^-31

// The smallest power of two that is not below `value` (1 for 0 and 1), as the loops `for (k = 1; k < value; k *= 2)`.
unsigned int roundUpPowerOfTwo(unsigned int value) {
    unsigned int result = 1;
    if (value > 1) {
        for (; result < value; result *= 2) {
        }
    }
    return result;
}

// floor(log2(value)) for a power of two, from the loop `n = -1; do { value >>= 1; ++n; } while (value)`.
int log2Of(unsigned int value) {
    int n = -1;
    do {
        value >>= 1;
        ++n;
    } while (value != 0);
    return n;
}
}  // namespace

// 0x5a33a8 _ZN6glitch5video15distributeMeansEjRKNS_4core8aabbox3dIfEERSt6vectorINS1_8vector3dIfEENS1_10SAllocatorIS8_LNS_6memory13E_MEMORY_HINTE0EEEEjRj
// With depth levels left the box is cut in two at its centre along `axis` and both halves are visited with the next axis
// (axis + 1) % 3. At depth 0 one random point inside the box is appended to the means (each component is
// min + random * (max - min), random = lrand48() * 2^-31 in float) and `remaining` goes down by one. Nothing is done once
// `remaining` is zero.
void distributeMeans(unsigned int depth, const core::aabbox3d<float>& box, MeanVector& means, unsigned int axis,
                     unsigned int& remaining) {
    if (depth != 0) {
        if (remaining == 0) return;
        core::aabbox3d<float> lower = box;   // v41..v46
        core::aabbox3d<float> upper = box;   // v40[0..5]
        const float centre[3] = {(box.MinEdge.X + box.MaxEdge.X) * 0.5f, (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f,
                                 (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f};
        float* lowerMax = &lower.MaxEdge.X;
        float* upperMin = &upper.MinEdge.X;
        lowerMax[axis] = centre[axis];
        upperMin[axis] = centre[axis];
        const unsigned int next = (axis + 1) % 3u;
        distributeMeans(depth - 1, lower, means, next, remaining);
        distributeMeans(depth - 1, upper, means, next, remaining);
    } else if (remaining != 0) {
        const float rx = static_cast<float>(lrand48()) * kRandomScale;
        const float ry = static_cast<float>(lrand48()) * kRandomScale;
        const float rz = static_cast<float>(lrand48()) * kRandomScale;
        core::vector3d<float> point;
        point.X = box.MinEdge.X + rx * (box.MaxEdge.X - box.MinEdge.X);
        point.Y = box.MinEdge.Y + ry * (box.MaxEdge.Y - box.MinEdge.Y);
        point.Z = box.MinEdge.Z + rz * (box.MaxEdge.Z - box.MinEdge.Z);
        means.push_back(point);
        --remaining;
    }
}

// 0x5a5bd4 _ZN6glitch5video16kMeansClusteringERSt3mapIjSt6vectorIjSaIjEESt4lessIjESaISt4pairIKjS4_EEERKS2_IS7_IjNS_4core8aabbox3dIfEEENSD_10SAllocatorISG_LNS_6memory13E_MEMORY_HINTE0EEEEjRKSF_
// The number of means i is the cluster count rounded up to a power of two. The initial means are i random points spread over
// `bounds` (distributeMeans to depth log2(i)). Up to five rounds (a round that moves the means by more than 0.01 in total
// is repeated first, with the sum checked after each mean): every box goes to the nearest mean (squared distance of box
// centre to mean, the first of equal distances wins), each mean's box is grown over its members, the means become the
// averages of the member centres (a mean with no members becomes not-a-number: the original divides by zero), and the means
// are rebuilt for the next round: every old mean's box gets count / (boxes / i) new random points, the missing ones are
// spread over `bounds`. Finally clusters[mean index] lists the indices of its boxes in order.
void kMeansClustering(std::map<unsigned int, std::vector<unsigned int>>& clusters,
                      const std::vector<ClusterBox, core::SAllocator<ClusterBox>>& boxes, unsigned int clusterCount,
                      const core::aabbox3d<float>& bounds) {
    const unsigned int i = roundUpPowerOfTwo(clusterCount);
    const int depth = log2Of(i);
    const unsigned int boxCount = static_cast<unsigned int>(boxes.size());  // 28 bytes each
    const unsigned int perMean = boxCount / i;                               // v92

    unsigned int remaining = static_cast<unsigned int>(-1);  // v103
    MeanVector means;                                          // v98
    distributeMeans(static_cast<unsigned int>(depth), bounds, means, 0, remaining);
    MeanVector previous(means);                                 // p
    std::vector<unsigned int> assignment(boxCount);             // __p
    int round = 0;                                              // v90
    std::vector<ClusterBox> accumulators(i);                    // v94

    do {
        bool again;
        do {
            again = false;
            for (unsigned int m = 0; m < i; ++m) {
                ClusterBox& accumulator = accumulators[m];
                accumulator.first = 0;
                accumulator.second.MinEdge.X = kFloatMax;  // v9[1..3]
                accumulator.second.MinEdge.Y = kFloatMax;
                accumulator.second.MinEdge.Z = kFloatMax;
                accumulator.second.MaxEdge.X = -kFloatMax;  // v9[4..6]
                accumulator.second.MaxEdge.Y = -kFloatMax;
                accumulator.second.MaxEdge.Z = -kFloatMax;
            }
            for (unsigned int index = 0; index < boxCount; ++index) {
                const core::aabbox3d<float>& box = boxes[index].second;
                const float cx = (box.MinEdge.X + box.MaxEdge.X) * 0.5f;
                const float cy = (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f;
                const float cz = (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f;
                float best = kFloatMax;
                unsigned int bestIndex = 0;
                for (unsigned int m = 0; m < i; ++m) {
                    const float dx = cx - means[m].X;
                    const float dy = cy - means[m].Y;
                    const float dz = cz - means[m].Z;
                    const float distance = (dx * dx + dy * dy) + dz * dz;
                    if (best > distance) {
                        bestIndex = m;
                        best = distance;
                    }
                }
                assignment[index] = bestIndex;
                ClusterBox& accumulator = accumulators[bestIndex];
                ++accumulator.first;
                accumulator.second.addInternalBox(box);
            }
            for (unsigned int m = 0; m < i; ++m) {
                means[m].X = 0.0f;
                means[m].Y = 0.0f;
                means[m].Z = 0.0f;
            }
            for (unsigned int index = 0; index < boxCount; ++index) {
                const core::aabbox3d<float>& box = boxes[index].second;
                core::vector3d<float>& mean = means[assignment[index]];
                mean.X = mean.X + (box.MinEdge.X + box.MaxEdge.X) * 0.5f;
                mean.Y = mean.Y + (box.MinEdge.Y + box.MaxEdge.Y) * 0.5f;
                mean.Z = mean.Z + (box.MinEdge.Z + box.MaxEdge.Z) * 0.5f;
            }
            for (unsigned int m = 0; m < i; ++m) {
                const float inverse = 1.0f / static_cast<float>(accumulators[m].first);
                means[m].X = means[m].X * inverse;
                means[m].Y = means[m].Y * inverse;
                means[m].Z = means[m].Z * inverse;
            }
            double moved = 0.0;
            for (unsigned int m = 0; m < i; ++m) {
                const float dx = means[m].X - previous[m].X;
                const float dy = means[m].Y - previous[m].Y;
                const float dz = means[m].Z - previous[m].Z;
                moved = moved + static_cast<double>((dx * dx + dy * dy) + dz * dz);
                if (moved > 0.01) {
                    previous = means;
                    again = true;
                    break;
                }
            }
        } while (again);
        previous = means;
        ++round;
        means.clear();
        for (unsigned int m = 0; m < i; ++m) {
            unsigned int wanted = perMean != 0 ? accumulators[m].first / perMean : 0u;  // v102
            if (wanted != 0) {
                const unsigned int cells = roundUpPowerOfTwo(wanted);
                distributeMeans(static_cast<unsigned int>(log2Of(cells)), accumulators[m].second, means, 0, wanted);
            }
        }
        unsigned int missing = i - static_cast<unsigned int>(means.size());  // v101
        if (i != means.size()) {
            unsigned int cells = 1;
            if (missing != 1) {
                do {
                    cells *= 2;
                } while (missing > cells);
            }
            distributeMeans(static_cast<unsigned int>(log2Of(cells)), bounds, means, 0, missing);
        }
        previous = means;
    } while (round != 5);

    for (unsigned int index = 0; index < boxCount; ++index) {
        clusters[assignment[index]].push_back(index);
    }
}

}  // namespace glitch::video
