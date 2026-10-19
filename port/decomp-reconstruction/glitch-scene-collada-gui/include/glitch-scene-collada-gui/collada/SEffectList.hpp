// glitch::collada::SEffectList: the effects one renderer is built from (the effect of the material plus the ones the factory adds through
// getAdditionalEffects). Canonical header, residue pass ob.
//
// Evidence (SEffectList ctor 0x6319d8, clear 0x631a7c): the original is a circular doubly linked list of 20-byte nodes allocated from the
// process buffer: next (+0x00), prev (+0x04), the database handle (record +0x08, factory +0x0c) and the effect record (+0x10). The
// constructor makes the list with one node: a copy of the database handle (a use on its file record) and the effect.
#pragma once

#include <list>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

namespace glitch::collada {

struct SEffectList {
    struct SEntry {
        CColladaDatabase database;  // +0x08 / +0x0c the handle the effect belongs to (the node holds a use on its record)
        SEffect* effect = nullptr;  // +0x10
    };

    // 0x6319d8 (C1): the list holding one entry, a copy of `db` and `effect`.
    SEffectList(const CColladaDatabase& db, SEffect* effect);
    // 0x631a7c clear(): drops the use every entry holds.
    ~SEffectList();
    SEffectList(const SEffectList&) = delete;
    SEffectList& operator=(const SEffectList&) = delete;

    // Appends an entry (what getAdditionalEffects overrides do): a copy of `db` and `effect`.
    void add(const CColladaDatabase& db, SEffect* effect);

    std::list<SEntry> entries;
};

}  // namespace glitch::collada
