#include "core-platform/w7_global_01.hpp"

#include <cstdint>
#include <cstdio>
#include <cstdlib>

#include "core-platform/memory.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace {

// Irrlicht-style assertion path shared by the glitch helpers. Level 2 aborts (the
// original writes to address 0), level 1 prints the message to stderr.
void ReportAssert(const char* expr, const char* file, int line) {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n", expr, file, line);
    }
}

constexpr const char kIrrutilsFile[] =
    "..\\..\\project_vs2005\\Game/..\\..\\sources\\Data\\Collada\\irrutils.cpp";

}  // namespace

// 0x50e3d8 _Z14RecursiveCountPN6glitch5scene10ISceneNodeE
// Verified against the listing: the node's child ring (the SChildList at +0xf0, its sentinel at
// +0xf4, each child carrying its own SListLink base at +0x04) is walked; a childless node counts 1,
// otherwise the count starts at 1 and every child is added through a recursive call. The listing
// loads the link, advances it (LDR R4,[R4]) and only then recurses, so the iterator is advanced
// before the recursive call here too. The zero-link test the listing makes before subtracting 4
// cannot fire inside the ring (SListLink is never null there) and is not reproduced.
int RecursiveCount(glitch::scene::ISceneNode* node) {
    const glitch::scene::SChildList& children = node->getChildren();
    glitch::scene::SChildList::iterator link = children.begin();
    const glitch::scene::SChildList::iterator head = children.end();
    if (link == head) {
        return 1;
    }
    int count = 1;
    do {
        glitch::scene::ISceneNode* child = *link;
        ++link;
        count += RecursiveCount(child);
    } while (link != head);
    return count;
}

// 0x50e46c _Z19setOnAnimateEnabledPN6glitch5scene10ISceneNodeEb
// Verified against the listing: the word at ISceneNode +0x11c (flags, the place the constructor
// stores 0x60f) is loaded once, ORed with 0x200 when enabling and ANDed with ~0x200 when disabling,
// and stored back. The header names that bit ESNF_ANIMATE. The listing leaves the node argument in
// r0 (the decompiler reads that as the return value); nothing reloads it, so it is register residue
// and the declaration stays void.
void setOnAnimateEnabled(glitch::scene::ISceneNode* node, bool enable) {
    if (enable) {
        node->flags |= glitch::scene::ESNF_ANIMATE;
    } else {
        node->flags &= ~static_cast<std::uint32_t>(glitch::scene::ESNF_ANIMATE);
    }
}

// 0x50e484 _Z22RecursiveSetBoolOnNodePN6glitch5scene10ISceneNodeEbPFvS2_bE
// Verified against the listing: a null node returns at once; otherwise the callback runs once with
// (node, enable) - the listing still holds r0 = node and r1 = enable when it executes BLX R2, the
// decompiler simply drops the two arguments - and then every child is visited through a recursive
// call. As in RecursiveCount the listing advances the link before the recursion, so the iterator is
// advanced first here too. The null-link test before the subtraction is not reproducible and not
// reproduced (a link in the ring is never null).
void RecursiveSetBoolOnNode(glitch::scene::ISceneNode* node, bool enable,
                            void (*callback)(glitch::scene::ISceneNode*, bool)) {
    if (node == nullptr) {
        return;
    }
    callback(node, enable);
    const glitch::scene::SChildList& children = node->getChildren();
    glitch::scene::SChildList::iterator link = children.begin();
    const glitch::scene::SChildList::iterator head = children.end();
    while (link != head) {
        glitch::scene::ISceneNode* child = *link;
        ++link;
        RecursiveSetBoolOnNode(child, enable, callback);
    }
}

// 0x50e4d0 _Z21NodeRemoveAllChildrenPN6glitch5scene10ISceneNodeE
// Verified against the listing: the child ring at +0xf4 is walked and, for each child, the node's
// virtual at vptr+0x60 is called. The canonical ISceneNode slot table puts removeChild at K 0x60
// (the older note read +0x60 in tools/decomp_vtable.py's numbering, which is K + 0x0c for this
// class, so it named getUID), so the call is node->removeChild(child). The listing advances the link
// AFTER the call (LDR R4,[R4] follows BLX R3) and removeChild (0x597004) clears the child's own
// link words (it stores 0 into the child's +0x04 and +0x08), so the original's second iteration
// removes a null child and dereferences address 0xEC. That is reproduced as written rather than
// guarded: the function is exported but has no caller inside the library (its only xref is the LOAD
// relocation), so nothing in the tree can reach the fault. Like setOnAnimateEnabled's, the declared
// void return keeps the callee's r0 as register residue.
void NodeRemoveAllChildren(glitch::scene::ISceneNode* node) {
    const glitch::scene::SChildList& children = node->getChildren();
    glitch::scene::SChildList::iterator link = children.begin();
    const glitch::scene::SChildList::iterator head = children.end();
    while (link != head) {
        node->removeChild(*link);
        ++link;  // the listing reads the child's link word after removeChild cleared it
    }
}

// 0x50eb90 _Z15ChangeMaterialsPN6glitch5scene10ISceneNodeENS_5video15E_MATERIAL_TYPEE
// The listing contains only the ASSERT(false) path at irrutils.cpp:838. The
// symbol size (503) is larger than the function IDA delimits, so the material
// swap body is not present in this function.
void ChangeMaterials(glitch::scene::ISceneNode* /*node*/, glitch::video::E_MATERIAL_TYPE /*type*/) {
    ReportAssert("false", kIrrutilsFile, 838);
}

// 0x50ec18 _Z15ChangeMaterialsPN6glitch5scene10ISceneNodeENS_5video15E_MATERIAL_TYPEES4_
// Same as the one-material overload: the listing contains only the ASSERT(false)
// path, at irrutils.cpp:805.
void ChangeMaterials(glitch::scene::ISceneNode* /*node*/, glitch::video::E_MATERIAL_TYPE /*from*/,
                     glitch::video::E_MATERIAL_TYPE /*to*/) {
    ReportAssert("false", kIrrutilsFile, 805);
}

// 0x50eca0 _Z25DBG_TraverseAllGlitchNodePN6glitch5scene10ISceneNodeEPFvS2_EPFbS2_E
// Verified against the listing: a null visit callback takes the irrutils.cpp:656 assertion path
// first (level 2 writes 0 to address 0 - aborted here, the accepted host deviation; level 1 prints
// the message); a null node then returns; the node is visited when the filter is absent or returns
// non-zero; and every child of the ring at +0xf4 is traversed recursively with the same callbacks.
// As in RecursiveCount the listing advances the link before the recursive call.
void DBG_TraverseAllGlitchNode(glitch::scene::ISceneNode* node,
                               void (*visit)(glitch::scene::ISceneNode*),
                               bool (*filter)(glitch::scene::ISceneNode*)) {
    if (visit == nullptr) {
        ReportAssert("callbackFunctor != 0", kIrrutilsFile, 656);
    }
    if (node == nullptr) {
        return;
    }
    if (filter == nullptr || filter(node) != false) {
        visit(node);
    }
    const glitch::scene::SChildList& children = node->getChildren();
    glitch::scene::SChildList::iterator link = children.begin();
    const glitch::scene::SChildList::iterator head = children.end();
    while (link != head) {
        glitch::scene::ISceneNode* child = *link;
        ++link;
        DBG_TraverseAllGlitchNode(child, visit, filter);
    }
}
