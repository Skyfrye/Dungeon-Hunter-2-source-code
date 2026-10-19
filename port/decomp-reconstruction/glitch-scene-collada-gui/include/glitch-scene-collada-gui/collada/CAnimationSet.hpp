// glitch::collada::CAnimationSet, IAnimationSetTemplate and CAnimationSetTransformationTemplate: the set of animations (one
// channel + animation track per animated property, over one or more COLLADA databases) that CSceneNodeAnimatorSet plays, and the
// template that adds the scene-node transformation channels. Canonical header of the engine unification wave (u1-scene). It
// replaces animation_set.hpp (accessors over a stand-in struct without a vtable or the reference count), the
// CAnimationSetTransformationTemplate / SAnimationTemplate stand-ins of collada_misc.hpp and the recon_22::IAnimationSetTemplate
// stand-in of recon/slice_22.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; tools/decomp_vtable.py glitch::collada::CAnimationSet, 68 bytes, no virtual
// base; destructor 0x65f2ac, compile 0x660710):
//   CAnimationSet derives from glitch::IReferenceCounted (vptr +0x00, count +0x04). Slots: +0x00 / +0x04 destructors (D1 0x65f2ac;
//   D0 0x65f348 skipped), +0x08 onDelete (IReferenceCounted), +0x0c addAnimation (0x6601fc), +0x10 remAnimation (0x65f004, returns
//   0), +0x14 / +0x18 getChannel (0x65f00c, 0x65f018), +0x1c setMismatchBehavior (0x62db98), +0x20 getAnimationTrack (0x65f024, a
//   tail call to the getChannel slot +0x18), +0x24 getAnimationTrackEx (0x65f038), +0x28 / +0x2c addAnimationLibrary (0x6600fc,
//   0x6601d4), +0x30 / +0x34 remAnimationLibrary (0x65f0d0, 0x65f0d4: empty), +0x38 compile (0x660710).
//   Members (the std::vectors are 12 bytes each: begin, end, capacity):
//     +0x08 the mismatch behaviour, +0x0c vector<const SChannel*> channels, +0x18 vector<CAnimationTrackEx*> tracks (parallel to the
//     channels), +0x24 vector<CColladaDatabase> databases (8-byte elements), +0x30 vector<SBinding> bindings (12-byte elements:
//     one per (database, channel)), +0x3c the number of animated channels (compile), +0x40 / +0x4c / +0x58 vector<int> starts, ends
//     and lengths of the animation of every database, +0x64 the IAnimationSetTemplate (owned; the destructor releases it through
//     its destructor slot).
//   IAnimationSetTemplate (vtable 24 bytes, object 0x10 bytes): vptr +0x00 and the vector<STarget*> at +0x04; slots +0x08
//   isAnimationExist(const SChannel*) and +0x0c getDefaultValue(const SChannel*, void**) const are pure; the destructor (0x667588)
//   frees the record of every target.
//   CAnimationSetTransformationTemplate (object 0x10 bytes): fills the target list with three targets (kinds 1, 5, 10: translation,
//   rotation, scale) for every scene node.
// Port notes: pointers are host width. CColladaDatabase keeps plain pointers (see collada/CColladaDatabase.hpp), so the database
// vector copies take the use through copyDatabase and the destructor drops it through dropDatabase.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-core-io/core/allocator.hpp"  // core::svector (STLPORT-DECISION.md section 6)

#include "glitch-core-io/core/reference_counted.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/SAnimation.hpp"

namespace glitch::collada {

class CAnimationTrackEx;
class CSceneNode;

// One target of an animation-set template: a 16-byte record in the original.
struct STemplateRecord {
    std::uint32_t reserved00 = 0;  // +0x00 not written by addChannels
    const char* uid = nullptr;     // +0x04 the node's UID (virtual slot +0x54 of the target's node)
    std::uint32_t kind08 = 0;      // +0x08 copied from STemplateTarget::kind
    std::uint32_t reserved0c = 0;  // +0x0c not written by addChannels
};

struct STemplateTarget {
    std::uint8_t added = 0;               // +0x00 flag: 0 = not added, 1 = added (setUnAdded clears it; isAnimationExist sets it)
    std::uint32_t kind = 0;               // +0x04 target kind: 1, 5 or 10 (the switch selector in addChannels)
    CSceneNode* node = nullptr;           // +0x08 scene node the target was built from (never stored for the SNode overload)
    STemplateRecord* record = nullptr;    // +0x0c record created by addChannels; setUnAdded clears it
};

class IAnimationSetTemplate {
public:
    IAnimationSetTemplate() = default;
    // vptr+0x00 / +0x04: 0x667588 (D1; the D2 at 0x66762c is the same body, D0 0x667610 skipped). Frees the record of every target.
    virtual ~IAnimationSetTemplate();

    virtual int isAnimationExist(const SChannel* channel) = 0;                  // +0x08
    virtual int getDefaultValue(const SChannel* channel, void** out) const = 0;  // +0x0c

    // 0x667320: clears the added flag and the record pointer of every target. Returns this.
    IAnimationSetTemplate& setUnAdded();
    // 0x667384: allocates the record of every target that was not added yet.
    void addChannels(core::svector<const SChannel*>* channels, core::svector<const CAnimationTrackEx*>* tracks);

    core::svector<STemplateTarget*> targets;  // +0x04 / +0x08 / +0x0c (owned: the template does not delete the targets, as the original)
};

class CAnimationSetTransformationTemplate : public IAnimationSetTemplate {
public:
    // 0x6e21c0 (C2) and 0x6e21f4 (C1): the name argument is not stored in the original.
    explicit CAnimationSetTransformationTemplate(const char* name);
    // 0x6e264c (C2) and 0x6e2690 (C1): targets for the node and its children.
    explicit CAnimationSetTransformationTemplate(CSceneNode* node);
    // 0x6e2830 (C2) and 0x6e28f0 (C1): targets for every root node of every visual scene of the database.
    explicit CAnimationSetTransformationTemplate(CColladaDatabase* database);
    // 0x6e2248 (D1), 0x6e2298 (D2); D0 0x6e227c skipped.
    ~CAnimationSetTransformationTemplate() override;

    // vptr+0x08, 0x6e22cc. PARTIAL: see the source (the node's UID getter is not available on the collada::CSceneNode stand-in).
    int isAnimationExist(const SChannel* channel) override;
    // vptr+0x0c, 0x6e23d0. PARTIAL: the per-node database lookup is not available on the collada::CSceneNode stand-in.
    int getDefaultValue(const SChannel* channel, void** out) const override;

    // 0x6e24e8: three targets for the node, then the same for every child. PARTIAL: the child walk needs the node's child list.
    void addTransformationTargets(CSceneNode* node);
    // 0x6e26d4: three targets (node left null) for the SNode, then the same for every child (count +0x38, base +0x3c, stride 0x50).
    void addTransformationTargets(SNode& node);
};

class CAnimationSet : public glitch::IReferenceCounted {
public:
    // The enumerators are not named in the binary evidence read so far; compile() prunes unmatched channels only for 0.
    enum E_MISMATCH_BEHAVIOR : std::uint32_t {};

    // One entry per (database, channel): kind 1 = a default value, kind 2 = an animation of the channel in that database.
    struct SBinding {
        std::uint32_t kind = 0;                      // +0x00
        const void* defaultValue = nullptr;          // +0x04 the default value (kind 1; also filled for kind 2 when the database has one)
        const SAnimation* animation = nullptr;       // +0x08 the animation (kind 2)
    };

    CAnimationSet() = default;
    // vptr+0x00 / +0x04: 0x65f2ac (D1; D2 0x62e0fc is the same body; D0 0x65f348 skipped). Releases the template and drops the database handles.
    ~CAnimationSet() override;

    // vptr+0x0c, 0x6601fc: adds the animation's channel and track unless a compatible channel of the same name exists (then its
    // index is returned); -1 when the animation has no track (CColladaDatabase::getAnimationTrackEx).
    virtual int addAnimation(const SAnimation* animation);
    // vptr+0x10, 0x65f004: returns 0.
    virtual int remAnimation(const SAnimation* animation);
    // vptr+0x14 / +0x18, 0x65f00c / 0x65f018.
    virtual const SChannel* getChannel(unsigned index);
    virtual const SChannel* getChannel(unsigned index) const;
    // vptr+0x1c, 0x62db98: returns this.
    virtual CAnimationSet& setMismatchBehavior(E_MISMATCH_BEHAVIOR behavior);
    // vptr+0x20, 0x65f024: a tail call to the const getChannel slot.
    virtual const SChannel* getAnimationTrack(int index) const;
    // vptr+0x24, 0x65f038.
    virtual const CAnimationTrackEx* getAnimationTrackEx(int index);
    // vptr+0x28, 0x6600fc: loads the file through the manager and adds it as a library; prints an error and answers the last index when it does not load.
    virtual int addAnimationLibrary(const char* url);
    // vptr+0x2c, 0x6601d4: appends the database handle; returns its index.
    virtual int addAnimationLibrary(const CColladaDatabase& database);
    // vptr+0x30 / +0x34, 0x65f0d0 / 0x65f0d4: empty.
    virtual void remAnimationLibrary(CColladaDatabase& database);
    virtual void remAnimationLibrary(int index);
    // vptr+0x38, 0x660710: collects the animations of every database (through the template when there is one), prunes the channels
    // no database can drive, and builds the bindings and the per-database start / end / length.
    virtual void compile();

    // 0x65f044 / 0x65f058 / 0x65f060 / 0x65f07c / 0x65f098: out-of-range indices of the range vectors give 0.
    std::uint32_t getAnimationCount() const;
    std::uint32_t getAnimatedTrackCount() const;
    std::uint32_t getAnimationLength(unsigned index) const;
    std::uint32_t getAnimationStart(unsigned index) const;
    std::uint32_t getAnimationEnd(unsigned index) const;
    // 0x65f0b4 / 0x65f0c0: unchecked, as in the original.
    CColladaDatabase* getDatabase(int index);
    const SBinding* getBinding(int index) const;
    // 0x65f0d8: deletes the template (destructor slot).
    void remAnimationTemplate();
    // 0x6600a4 / 0x6600d0: installs a CAnimationSetTransformationTemplate over the database or the scene node.
    void addAnimationTemplate(CColladaDatabase* database);
    void addAnimationTemplate(CSceneNode* node);
    // 0x6605ac: sizes the start / end / length vectors to the databases and fills them from the animation range of each database.
    void CompileInternal();

    E_MISMATCH_BEHAVIOR mismatchBehavior = E_MISMATCH_BEHAVIOR(0);  // +0x08
    core::svector<const SChannel*> channels;              // +0x0c
    core::svector<const CAnimationTrackEx*> tracks;       // +0x18
    core::svector<CColladaDatabase> databases;            // +0x24
    core::svector<SBinding> bindings;                     // +0x30
    std::uint32_t animatedTrackCount = 0;               // +0x3c
    core::svector<std::int32_t> starts;                   // +0x40
    core::svector<std::int32_t> ends;                     // +0x4c
    core::svector<std::int32_t> lengths;                  // +0x58
    IAnimationSetTemplate* animationTemplate = nullptr; // +0x64 owned
};

}  // namespace glitch::collada
