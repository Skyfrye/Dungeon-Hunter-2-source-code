// Batch g1-game-world-RootSceneNode-e402f1-1 (part 2 of 2): the two RootSceneNode constructors, 0x35d824 (C1, complete
// object) and 0x35d910 (C2, base object). The declaration comes from dh2/RootSceneNode.hpp.
//
// One C++ definition covers both symbols, as elsewhere in game-world. The binary forms differ in how the virtual base
// (glitch::IReferenceCounted at +0x20c, count at +0x210) is built; the compiler reproduces that from the C++ class. The engine
// base glitch::collada::CRootSceneNode is constructed with the database, as in the original. The two std::string members are
// default constructed, which is the original empty state (a 16-byte buffer with a zero first byte).

#include "dh2/RootSceneNode.hpp"

// 0x35d824 _ZN13RootSceneNodeC1ERKN6glitch7collada16CColladaDatabaseE
// Complete-object constructor. The vptrs (including the one of the virtual base at +0x20c) are set by the compiler.
RootSceneNode::RootSceneNode(const glitch::collada::CColladaDatabase& database) : glitch::collada::CRootSceneNode(database) {

    // +0x210: the count of the IReferenceCounted virtual base starts at 1 (IReferenceCounted::referenceCounter).

    // m_fileName (+0x1bc) and m_name (+0x1d4): empty, as default constructed.
    // +0x1ec: scene displacement is off until _EnableDisplacement runs.
    m_displacementEnabled = false;
    // +0x1f0 and +0x1f4: animation roots are found on demand by GetAnimRoot.
    m_animRoot = nullptr;
    m_animRootAlt = nullptr;
    // +0x1f8: the displacement node is created by _EnableDisplacement.
    m_displacementNode = nullptr;
    // +0x1fc: no animation time has been passed to onAnimate yet.
    m_lastAnimTime = 0;
    // +0x200: IsVisibleFastTest reads this as a gate before the game object culling test.
    m_cullBeforeUpdate = true;
    // +0x204: no game object yet.
    m_object = nullptr;
    // +0x208: onAnimate applies the pending update once, then clears it.
    unk_208 = true;
    // +0x209: no visibility change requested.
    m_visibleRequested = false;
    // +0x20a: onAnimate has not skipped an animation yet.
    unk_20a = false;
}

// 0x35d910 _ZN13RootSceneNodeC2ERKN6glitch7collada16CColladaDatabaseE
// Base-object constructor: the same C++ definition as C1 (the compiler emits this symbol from it; its VTT argument only selects
// the construction vptrs of the virtual base).
