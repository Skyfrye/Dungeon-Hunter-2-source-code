// glitch::collada::CDynamicAnimationSet: the animation set that grows at run time (libraries and animations are added and removed
// while the game runs, and the set is recompiled when it is dirty). Canonical header of the engine unification wave (u1-scene). It
// replaces the CDynamicAnimationSet stand-in of collada_scene_accessors.hpp (a vector of words at +0x24, a pad and a channel pointer
// at +0x74, no base class).
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructor 0x3648c4, destructor 0x62e198; tools/decomp_vtable.py
// glitch::collada::CDynamicAnimationSet, 68 bytes):
//   CDynamicAnimationSet derives from CAnimationSet (collada/CAnimationSet.hpp, 0x68 bytes). Overridden slots: +0x00 / +0x04
//   destructors, +0x0c addAnimation (0x62f354), +0x10 remAnimation (0x62f0cc), +0x14 / +0x18 getChannel (0x62dba0, 0x62dbac), +0x2c
//   addAnimationLibrary(const CColladaDatabase&) (0x62e8a8), +0x30 remAnimationLibrary(CColladaDatabase&) (0x62fb6c) and +0x38
//   compile (0x62f61c). The others are CAnimationSet's.
//   Members: +0x68 the default animation library (a CColladaDatabase: the constructor stores the factory
//   CColladaDatabase::DefaultFactory and a null record), +0x70 a byte set to 1 by every change (the set needs a recompile),
//   +0x74 vector<SChannel> channels (16-byte elements; getChannel returns channels + index), size 0x80.
// Port notes: pointers are host width. The overrides that are not reconstructed (remAnimation, compile,
// remAnimationLibrary(CColladaDatabase&)) are not declared here, so the CAnimationSet bodies run for them; the helpers
// (addAnimationLibraryBindings, remAnimationLibraryBindings, overwriteAnimationLibraryBindings, setDefaultAnimationLibrary, ...)
// are declared in the header only where the earlier stand-in declared them.
#pragma once

#include <cstdint>
#include <vector>

#include "glitch-scene-collada-gui/collada/CAnimationSet.hpp"

namespace glitch::collada {

class CDynamicAnimationSet : public CAnimationSet {
public:
    // 0x3648c4: zeroes the members, stores the default factory (not modelled: the factory pointer stays null) and sets the dirty byte.
    CDynamicAnimationSet();
    // vptr+0x00 / +0x04: 0x62e198 (D1; D0 0x62e1e8 skipped). Frees the channels and drops the default library handle.
    ~CDynamicAnimationSet() override;

    // vptr+0x14 / +0x18, 0x62dba0 / 0x62dbac: channels + index (unchecked).
    const SChannel* getChannel(unsigned index) override;
    const SChannel* getChannel(unsigned index) const override;
    // vptr+0x2c, 0x62e8a8: the base append, then the dirty byte.
    int addAnimationLibrary(const CColladaDatabase& database) override;
    using CAnimationSet::addAnimationLibrary;

    // 0x62dbb8: the index of the database whose record is the same, or -1.
    int getDatabaseIndex(CColladaDatabase& database);
    // 0x62fc58: drops every database handle and marks the set dirty.
    void clearSet();
    // 0x62f54c: clears the channels, the tracks and the bindings and marks the set dirty.
    void clearTracks();
    // vptr+0x0c, 0x62f354: as CAnimationSet::addAnimation over the owned channels (the channel is copied by value).
    int addAnimation(const SAnimation* animation) override;
    // vptr+0x38, 0x62f61c: recompiles the set when the dirty byte is set: clearTracks, add every animation of every
    // database, prune the channels neither a blendable animation nor a default value covers, rebuild the bindings (kind
    // and the default value from the database, falling back to the default library), CompileInternal and clear the dirty
    // byte. Reconstructed against the listing; see src/collada/CAnimationSet.cpp.
    void compile() override;
    // 0x62ee9c, 0x62fc90, 0x62fcf8: declared only (not reconstructed).
    void addAnimationLibraryBindings(const CColladaDatabase& database);
    void setDefaultAnimationLibrary(const CColladaDatabase& database);
    void setDefaultAnimationLibrary(unsigned index);
    // 0x62e204 (database + library index) and 0x62e3f8 (database + database): rebind the set's animations to another library.
    // 0x62fa44 (by index) and 0x62fb10 (by database): unbind a library; 0x62fb2c: remove the library at `index`.
    void overwriteAnimationLibraryBindings(const CColladaDatabase& database, unsigned index);
    void overwriteAnimationLibraryBindings(const CColladaDatabase& database, CColladaDatabase& library);
    void remAnimationLibraryBindings(unsigned index);
    void remAnimationLibraryBindings(CColladaDatabase& library);
    void remAnimationLibrary(unsigned index);
    // vptr+0x30, 0x62fb6c: the same for the library with this record.
    void remAnimationLibrary(CColladaDatabase& library) override;
    // vptr+0x10, 0x62f0cc: removes the owned channel matching the animation's channel (and its track); its index, -1 when none.
    int remAnimation(const SAnimation* animation) override;
    using CAnimationSet::remAnimationLibrary;

    CColladaDatabase defaultLibrary;           // +0x68
    bool dirty = true;                         // +0x70
    std::vector<SChannel> ownedChannels;       // +0x74
};

}  // namespace glitch::collada
