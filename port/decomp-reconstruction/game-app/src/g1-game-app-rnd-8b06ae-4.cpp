// Batch g1-game-app-rnd-8b06ae-4 (owner rnd, part 5 of 8): RootRule::NewImpl, the destructors of Rule::Impl and of its
// derived nodes (RootRule, Path, EndPath, ForceBlock), and the complete and base-object destructors of the derived rules
// (RootRule, Path, EndPath, ForceBlock). Rule::~Rule is written by batch -5 (see the note before Path::~Path).
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so.
//
// Header edit made for this batch (dh2/rnd/Rule.hpp, in place, same offset and size): Rule::Impl +0x10 pad_10[0x18]
// became Impl* m_children[6]. The Rule::Impl destructor reads the child slots by index, so they need a type. Six is the
// number of slots before m_depth (+0x28). The original does not check the count, so six is the layout's bound, not a
// recovered limit.
//
// Destructors. Each class has a complete-object destructor (D1), a base-object destructor (D2) where the binary emits
// one, and a scalar deleting destructor (D0). The C++ compiler writes the vtable store and the base-class destructor call,
// so a D1 or D2 body here holds only what the original runs itself. The D0 variants come from the delete expression and
// have no body in this file (ledger status skipped). D1 and D2 with the same body share one definition.
//
// Sizes: the original CustomAlloc(0x48) for RootRule::Impl is written with sizeof, because the build is 64-bit.
//
// Allocator: the original frees the std::vector and std::string members with the node allocator (blocks of 0x80 bytes or
// less) or CustomFree. Those members are destroyed here by their own destructors, and the allocator path is not modelled.
#include <new>

#include "core-platform/memory.hpp"
#include "dh2/rnd/EndPath.hpp"
#include "dh2/rnd/ForceBlock.hpp"
#include "dh2/rnd/Path.hpp"
#include "dh2/rnd/RootRule.hpp"
#include "dh2/rnd/Rule.hpp"

namespace rnd {

// 0x48d17c rnd::RootRule::NewImpl(rnd::Rule::Impl*) const
// Allocates the node with CustomAlloc and builds a RootRule::Impl for this rule. The parent argument is not used: the
// RootRule::Impl constructor takes only the root, as in the original.
Rule::Impl* RootRule::NewImpl(Rule::Impl* /*parent*/) const {
    void* memory = CustomAlloc(static_cast<unsigned int>(sizeof(RootRule::Impl)));
    return new (memory) RootRule::Impl(*this);
}

// 0x48d1a0 _ZN3rnd4Rule4ImplD1Ev (rnd::Rule::Impl::~Impl(void), complete-object destructor)
// 0x48d2c4 _ZN3rnd4Rule4ImplD2Ev (base-object destructor; the same body, one definition here)
// Takes this node out of its parent's child slots. The first of the parent's m_childCount slots that holds this node is
// overwritten by the last slot, and the parent's count drops by one. Then this node's children are deleted from the last
// slot back to the first, each through its virtual deleting destructor. m_childCount is set to the index being deleted
// before each delete, as the original does, so the parent's search in a child's destructor never sees the child's slot.
// The m_names vector (+0x30) is released after this body.
Rule::Impl::~Impl() {
    if (m_parent != nullptr) {
        const int32_t count = m_parent->m_childCount;
        for (int32_t i = 0; i < count; ++i) {
            if (m_parent->m_children[i] == this) {
                m_parent->m_children[i] = m_parent->m_children[count - 1];
                m_parent->m_childCount = count - 1;
                break;
            }
        }
    }
    while (m_childCount > 0) {
        --m_childCount;
        Impl* child = m_children[m_childCount];
        if (child != nullptr) {
            delete child;
        }
    }
}

// 0x48d3cc rnd::RootRule::Impl::~Impl(void) (complete-object destructor)
// Empty body: the vtable store and the Rule::Impl destructor run around it, as in the original.
RootRule::Impl::~Impl() {}

// 0x48d400 rnd::Path::Impl::~Impl(void) (complete-object destructor)
// Empty body: the vtable store and the Rule::Impl destructor run around it, as in the original.
Path::Impl::~Impl() {}

// 0x48d434 rnd::ForceBlock::Impl::~Impl(void) (complete-object destructor)
// Empty body: the vtable store and the Rule::Impl destructor run around it, as in the original.
ForceBlock::Impl::~Impl() {}

// 0x48d468 rnd::EndPath::Impl::~Impl(void) (complete-object destructor)
// Empty body: the vtable store and the Rule::Impl destructor run around it, as in the original.
EndPath::Impl::~Impl() {}

// 0x48d58c _ZN3rnd4RuleD2Ev (rnd::Rule::~Rule(void), base-object destructor) is not defined in this file. Rule has one C++
// destructor definition, and batch g1-game-app-rnd-8b06ae-5 writes it (the complete-object variant at 0x48d7e8, whose body
// is the same: Rule::Unload, then the members in reverse declaration order). This batch's derived destructors call it.

// 0x48d604 rnd::Path::~Path(void) (complete-object destructor)
// Empty body: the vtable store and the Rule destructor run around it, as in the original.
Path::~Path() {}

// 0x48d638 rnd::ForceBlock::~ForceBlock(void) (complete-object destructor)
// Empty body: the vtable store and the Rule destructor run around it, as in the original.
ForceBlock::~ForceBlock() {}

// 0x48d66c rnd::EndPath::~EndPath(void) (complete-object destructor)
// Empty body: the vtable store and the Rule destructor run around it, as in the original.
EndPath::~EndPath() {}

// 0x48d6a0 rnd::RootRule::~RootRule(void) (complete-object destructor)
// 0x48d6f8 rnd::RootRule::~RootRule(void) (base-object destructor; the same body, one definition here)
// Calls RootRule::Unload, which is empty in the binary, then the Rule destructor runs. Qualified, as in the original.
RootRule::~RootRule() {
    RootRule::Unload();
}

}  // namespace rnd
