// glitch::collada::SEffectList (canonical header collada/SEffectList.hpp).
#include "glitch-scene-collada-gui/collada/SEffectList.hpp"

namespace glitch::collada {

// 0x6319d8 _ZN6glitch7collada11SEffectListC1ERKNS0_16CColladaDatabaseEPNS0_7SEffectE
// The sentinel links to itself; a temporary copy of the handle takes a use, the new node takes another, and the temporary is destroyed (it
// gives its use back): the node keeps one.
SEffectList::SEffectList(const CColladaDatabase& db, SEffect* effect) {
    CColladaDatabase temporary;
    copyDatabase(temporary, db);
    entries.emplace_back();
    copyDatabase(entries.back().database, temporary);
    entries.back().effect = effect;
    dropDatabase(temporary);
}

// 0x631a7c _ZNSt4priv10_List_baseIN6glitch7collada11SEffectList6SEntryENS1_4core23SProcessBufferAllocatorIS4_EEE5clearEv
// Every node is destroyed with its handle (which gives its use back) and freed.
SEffectList::~SEffectList() {
    for (SEntry& entry : entries) {
        dropDatabase(entry.database);
    }
    entries.clear();
}

void SEffectList::add(const CColladaDatabase& db, SEffect* effect) {
    entries.emplace_back();
    copyDatabase(entries.back().database, db);
    entries.back().effect = effect;
}

}  // namespace glitch::collada
