// Animation: one animation entry of an AnimationSet. It holds the file name of the collada animation file and the collada
// database built from it, and counts its users for the AnimationSet cache.
// Layout (original 32-bit offsets): +0x00 the file name (an STLport std::string, 24 bytes: 16-byte inline buffer, then the
// finish pointer at +0x10 and the start pointer, c_str(), at +0x14), +0x18 the CColladaDatabase (record and factory, 8 bytes),
// +0x20 .. +0x2c the four words below. 48 bytes in total: AnimationSet::s_invalidAnim is 48 bytes. No vtable.
// The destructor (0x364ad4) destroys the database, then releases the name. The copy constructor takes a use of the database record
// again (the original copies the record, factory and the use through the tree insert). The default state is the one the entries
// are built from before the load: the name "Invalid", the default factory, every counter -1 or 0 as AnimationSet::LoadAnimation
// (0x3659ec) sets it up.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x364ad4, LoadAnimation 0x3659ec, ReplaceAnimation 0x365d38).
#pragma once

#include <cstdint>
#include <string>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"

class Animation {
public:
    Animation();                                                             // no symbol of its own (inlined where an entry is built)
    Animation(const Animation& other);                                       // the tree insert copies the entry
    Animation& operator=(const Animation& other);
    ~Animation();                                                            // 0x364ad4

    std::string m_fileName;                                                  // +0x00 collada file name (AnimDict row); passed to the database constructor
    glitch::collada::CColladaDatabase m_database;                            // +0x18 database of the animation file, 8 bytes at 32-bit
    int32_t unk_20;                                                          // +0x20 index of the animation library in the engine set, -1 = none. AnimSetManager::GetClipId (0x47559c) returns it; AnimationSet::GetAnimationBySetIndex (0x364bf4) matches it. name: m_clipId
    int32_t m_useCount;                                                      // +0x24 use count; > 0 means in use (AnimationSet::_FindCacheCandidate 0x3649e0, UnloadAnimation 0x3650b4)
    uint32_t m_lastUseTime;                                                  // +0x28 glitch::os::Timer::getRealTime stamp on each hit (AnimationSet::GetAnimation 0x3660f4, GetAnimationBySetIndex 0x364bf4); LRU key in _FindCacheCandidate
    int32_t unk_2c;                                                          // +0x2c counter, compared by AnimationSet::_FindCacheCandidate (0x3649e0); incremented by setCurrentAnimation (not checked)
};
