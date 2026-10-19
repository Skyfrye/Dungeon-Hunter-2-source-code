// RandomGroup selection sequence, exclusion window, state round-trip, and the copy
// constructors of SegmentGroup and SequentialGroup.
//
// Element blocks are owned by the group that holds them, and the original frees every block in
// the vector and on the removed list when a group dies. The two state setters (0x882f48 and
// 0x8834f0) copy block pointers without allocating, so a group that has taken a state from
// another group shares that group's blocks and must let go of them before it is destroyed
// (the original has the same hazard; NativePlaylistsManager::TransposePlaylistParameters 0x882c0c
// copies states between two live playlists that way). This test routes VoxAlloc and VoxFree
// through a tracker, so a double free, a free of a foreign pointer or a leaked block is
// counted here instead of depending on how the C runtime heap reacts (the Wine heap ignores
// a double free; the native MinGW heap aborts with 0xc0000374).
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <set>

#include "vox-audio/vox/groups.hpp"
#include "vox-audio/vox/memory.hpp"

namespace {
struct AllocTracker {
    std::set<void*> live;
    int allocations = 0;
    int bad_frees = 0;  // frees of a pointer that is not a live block (double free or foreign)
};
AllocTracker& Tracker() {
    static AllocTracker tracker;
    return tracker;
}
void* TrackedAlloc(std::size_t size) {
    void* block = std::malloc(size != 0 ? size : 1);
    if (block != nullptr) {
        Tracker().live.insert(block);
        ++Tracker().allocations;
    }
    return block;
}
}  // namespace

// The test supplies every symbol of src/vox_alloc.cpp, so that object file is not linked in.
namespace vox {
void SetOutOfMemoryHook(OutOfMemoryHook) {}
}  // namespace vox
void* VoxAlloc(std::size_t size) { return TrackedAlloc(size); }
void* VoxAlloc(std::size_t size, vox::VoxMemHint) { return TrackedAlloc(size); }
void* VoxAlloc(std::size_t size, const char*, const char*, int) { return TrackedAlloc(size); }
void* VoxAlloc(std::size_t size, vox::VoxMemHint, const char*, const char*, int) {
    return TrackedAlloc(size);
}
void VoxFree(void* ptr) {
    if (ptr == nullptr) {
        return;
    }
    if (Tracker().live.erase(ptr) == 0) {
        ++Tracker().bad_frees;  // not passed on to the C runtime
        return;
    }
    std::free(ptr);
}
extern "C" void VoxFree_c(void* ptr) { VoxFree(ptr); }

namespace vox {
struct RandomGroupTestAccess {
    static void SetCounts(RandomGroup& g, int count, int total) {
        g.element_count_ = count;
        g.total_weight_ = total;
    }
    static int Exclusion(const RandomGroup& g) { return g.exclusion_window_; }
    static void SetExclusion(RandomGroup& g, int window) { g.exclusion_window_ = window; }
    static std::size_t VectorSize(const RandomGroup& g) { return g.elements_.size(); }
    static int TotalWeight(const RandomGroup& g) { return g.total_weight_; }
    static RandomGroupElement* ElementAt(const RandomGroup& g, std::size_t i) { return g.elements_[i]; }
    static const RandomGroupNode* RemovedNodeAt(const RandomGroup& g, int index) {
        const RandomGroupNode* p = g.removed_.next;
        for (int i = 0; i < index; ++i) {
            p = p->next;
        }
        return p;
    }
    static int RemovedCount(const RandomGroup& g) {
        int n = 0;
        for (const RandomGroupNode* p = g.removed_.next; p != &g.removed_; p = p->next) {
            ++n;
        }
        return n;
    }
    // Lets a group let go of blocks it only shares with another group (see the file comment):
    // the vector is emptied and the removed-list nodes forget their elements, so the
    // destructor frees nothing but the nodes.
    static void ReleaseSharedBlocks(RandomGroup& g) {
        g.elements_.clear();
        for (RandomGroupNode* p = g.removed_.next; p != &g.removed_; p = p->next) {
            p->element = nullptr;
        }
    }
};
}  // namespace vox

namespace {
int g_failures = 0;
#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

void RunChecks() {
    // SegmentGroup copy sets valid from a default (invalid) source and copies the select mode.
    vox::GroupInfos info;
    info.select_mode_ = 3;
    info.reset_value_ = 7;
    info.field_14_ = 9;
    vox::SegmentGroup empty;
    vox::SegmentGroup empty_copy(empty);
    CHECK(empty_copy.IsValid());
    vox::SegmentGroup seg(&info, 0);
    vox::SegmentGroup seg_copy(seg);
    CHECK(seg_copy.GetSelectMode() == 3);

    // SequentialGroup copy keeps the element order and the current index.
    vox::SequentialGroup seq(&info, 0);
    seq.AddElement(5);
    seq.AddElement(6);
    vox::SequentialGroup seq_copy(seq);
    CHECK(seq_copy.PeekAtNextGroupElement(vox::GroupPeekMode::kOther) == 5);

    // Weights {0, 0, 1}: the only selectable element is index 2 whatever the roll is.
    vox::GroupInfos rinfo;
    rinfo.select_mode_ = 0;
    rinfo.field_0c_ = -1;
    rinfo.reset_value_ = 2;
    rinfo.field_14_ = 2;
    vox::RandomGroup rg(&rinfo, 0);
    CHECK(rg.IsValid());
    // AddElement copies each record, so the test records can be locals.
    vox::RandomGroupElement e10{10, 0};
    vox::RandomGroupElement e20{20, 0};
    vox::RandomGroupElement e30{30, 1};
    rg.AddElement(&e10);
    rg.AddElement(&e20);
    rg.AddElement(&e30);
    // The raw window is -1, so each AddElement counts one for the exclusion window (asm 0x8836b0).
    CHECK(vox::RandomGroupTestAccess::Exclusion(rg) == 3);
    // The scenario below was written for an exclusion window of 0.
    vox::RandomGroupTestAccess::SetExclusion(rg, 0);
    vox::RandomGroupTestAccess::SetCounts(rg, 3, 1);
    CHECK(rg.GetActiveElementIndex() == 2);
    CHECK(rg.Reset(0) == 2);

    // Cycle of 3 with the state words at 2: 30, 30, then the cycle is used up.
    CHECK(rg.GetGroupElementPosition() == 30);
    CHECK(rg.GetGroupElementPosition() == 30);
    CHECK(rg.GetGroupElementPosition() == -1);

    // Previous state brings back the remaining count of the last step.
    rg.SetToPreviousState();
    CHECK(rg.GetGroupElementPosition() == 30);

    // State round-trip into another group keeps the scalar fields.
    vox::RandomGroupState st{};
    rg.GetState(&st);
    vox::RandomGroup other(&rinfo, 0);
    const int allocations_before_state = Tracker().allocations;
    other.SetState(&st);
    // The state setter copies pointers (asm 0x882f48): no block is allocated, and other now
    // shares the three blocks of rg.
    CHECK(Tracker().allocations == allocations_before_state);
    CHECK(vox::RandomGroupTestAccess::VectorSize(other) == 3);
    for (std::size_t i = 0; i < 3; ++i) {
        CHECK(vox::RandomGroupTestAccess::ElementAt(other, i) == vox::RandomGroupTestAccess::ElementAt(rg, i));
    }
    vox::RandomGroupState st2{};
    other.GetState(&st2);
    CHECK(st2.cycles == st.cycles);
    CHECK(st2.remaining == st.remaining);
    CHECK(st2.current == st.current);
    CHECK(st2.total_weight == st.total_weight);
    CHECK(st2.cycle_remaining == st.cycle_remaining);
    // rg owns the blocks. Without this release both groups would free all three of them
    // (RunSharedBlockHazard below counts that).
    vox::RandomGroupTestAccess::ReleaseSharedBlocks(other);

    // Copy constructor copies the element records and the total weight.
    vox::RandomGroup rg_copy(rg);
    CHECK(vox::RandomGroupTestAccess::VectorSize(rg_copy) == 3);
    CHECK(vox::RandomGroupTestAccess::TotalWeight(rg_copy) == 1);
    CHECK(vox::RandomGroupTestAccess::RemovedCount(rg_copy) == 0);
    // The copy holds blocks of its own.
    for (std::size_t i = 0; i < 3; ++i) {
        CHECK(vox::RandomGroupTestAccess::ElementAt(rg_copy, i) != vox::RandomGroupTestAccess::ElementAt(rg, i));
    }

    // Exclusion window 1 with equal weights: one element is held back at a time.
    vox::GroupInfos winfo;
    winfo.select_mode_ = 0;
    winfo.field_0c_ = 1;
    winfo.reset_value_ = 2;
    winfo.field_14_ = 2;
    vox::RandomGroup wg(&winfo, 0);
    vox::RandomGroupElement w10{10, 1};
    vox::RandomGroupElement w20{20, 1};
    wg.AddElement(&w10);
    wg.AddElement(&w20);
    vox::RandomGroupTestAccess::SetCounts(wg, 2, 2);
    wg.Reset(0);
    const int first = wg.GetGroupElementPosition();
    CHECK(first == 10 || first == 20);
    CHECK(vox::RandomGroupTestAccess::VectorSize(wg) == 1);
    CHECK(vox::RandomGroupTestAccess::RemovedCount(wg) == 1);
    CHECK(vox::RandomGroupTestAccess::TotalWeight(wg) == 1);

    // A state taken from a group with a held-back element: the vector pointers and the removed
    // list's element pointers are shared, the list nodes are new allocations (asm 0x882f48
    // allocates one 12-byte node per source node).
    vox::RandomGroupState wst{};
    wg.GetState(&wst);
    vox::RandomGroup wother(&winfo, 0);
    const int allocations_before_nodes = Tracker().allocations;
    wother.SetState(&wst);
    CHECK(Tracker().allocations == allocations_before_nodes + 1);
    CHECK(vox::RandomGroupTestAccess::VectorSize(wother) == 1);
    CHECK(vox::RandomGroupTestAccess::RemovedCount(wother) == 1);
    CHECK(vox::RandomGroupTestAccess::ElementAt(wother, 0) == vox::RandomGroupTestAccess::ElementAt(wg, 0));
    CHECK(vox::RandomGroupTestAccess::RemovedNodeAt(wother, 0) != vox::RandomGroupTestAccess::RemovedNodeAt(wg, 0));
    CHECK(vox::RandomGroupTestAccess::RemovedNodeAt(wother, 0)->element ==
          vox::RandomGroupTestAccess::RemovedNodeAt(wg, 0)->element);
    vox::RandomGroupTestAccess::ReleaseSharedBlocks(wother);

    const int second = wg.GetGroupElementPosition();
    CHECK(second == 10 || second == 20);
    CHECK(vox::RandomGroupTestAccess::VectorSize(wg) == 1);
    CHECK(vox::RandomGroupTestAccess::RemovedCount(wg) == 1);
    CHECK(vox::RandomGroupTestAccess::TotalWeight(wg) == 1);

    // SetState(RandomGroup&) (0x8834f0) also copies pointers: the destination keeps no block of
    // its own (the original loses them without freeing, so the test frees them) and shares the
    // source's blocks.
    vox::GroupInfos pinfo;
    pinfo.select_mode_ = 0;
    pinfo.field_0c_ = 0;
    pinfo.reset_value_ = 2;
    pinfo.field_14_ = 2;
    vox::RandomGroup source(&pinfo, 0);
    vox::RandomGroup destination(&pinfo, 0);
    vox::RandomGroupElement p1{1, 2};
    vox::RandomGroupElement p2{2, 3};
    source.AddElement(&p1);
    source.AddElement(&p2);
    destination.AddElement(&p2);
    destination.AddElement(&p1);
    vox::RandomGroupElement* own_blocks[2] = {vox::RandomGroupTestAccess::ElementAt(destination, 0),
                                              vox::RandomGroupTestAccess::ElementAt(destination, 1)};
    destination.SetState(source);
    CHECK(vox::RandomGroupTestAccess::VectorSize(destination) == 2);
    CHECK(vox::RandomGroupTestAccess::TotalWeight(destination) == 5);
    for (std::size_t i = 0; i < 2; ++i) {
        CHECK(vox::RandomGroupTestAccess::ElementAt(destination, i) == vox::RandomGroupTestAccess::ElementAt(source, i));
    }
    VoxFree(own_blocks[0]);
    VoxFree(own_blocks[1]);
    vox::RandomGroupTestAccess::ReleaseSharedBlocks(destination);
}

// Two groups that share blocks and are both destroyed free each shared block twice. The
// original does the same, so the tracker has to see exactly one bad free per shared block.
// Only the first free reaches the C runtime.
void RunSharedBlockHazard() {
    vox::GroupInfos info;
    info.select_mode_ = 0;
    info.field_0c_ = 0;
    info.reset_value_ = 2;
    info.field_14_ = 2;
    const int bad_before = Tracker().bad_frees;
    {
        vox::RandomGroup owner(&info, 0);
        vox::RandomGroupElement a{1, 1};
        vox::RandomGroupElement b{2, 1};
        owner.AddElement(&a);
        owner.AddElement(&b);
        vox::RandomGroupState state{};
        owner.GetState(&state);
        vox::RandomGroup sharer(&info, 0);
        sharer.SetState(&state);
        CHECK(vox::RandomGroupTestAccess::VectorSize(sharer) == 2);
    }
    CHECK(Tracker().bad_frees == bad_before + 2);
    Tracker().bad_frees = bad_before;  // expected, so it must not fail the final accounting
}
}  // namespace

int main() {
    RunChecks();
    RunSharedBlockHazard();
    // Every group is gone: each block was freed exactly once and none is left over.
    CHECK(Tracker().bad_frees == 0);
    CHECK(Tracker().live.empty());

    if (g_failures == 0) {
        std::printf("random_group_test: all checks passed\n");
        return 0;
    }
    std::printf("random_group_test: %d failures\n", g_failures);
    return 1;
}
