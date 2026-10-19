// VisualFXManager: the game's animated effect manager. It loads the AnimatedEffectTable and EffectDict libraries,
// keeps one pool of AnimatedFX instances per EffectDict row (AnimatedFXInfo), and plays effects and effect sets
// on game objects. Update advances every active instance and drops the ones that have finished.
// Polymorphic: its only virtual is the destructor. Original 32-bit size not recorded (the singleton is not
// allocated through class-facts). The members below end at +0x34 in the recovered part of the layout.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x493260 / 0x4932c4, dtors 0x4950a4 / 0x495130 /
// 0x49514c, methods 0x493328 .. 0x496bd8, plus the nested AnimFXSetInfo and AnimatedFXInfo copy and dtor functions).
#pragma once

#include <cstdint>
#include <list>
#include <vector>

#include "core-platform/deps/game_types.hpp"  // Point3D<T>

#include "dh2/VectorSet.hpp"

class AnimatedFX;
class GameObject;

class VisualFXManager {
public:
    // One step of an effect set. 8 bytes: allocated with operator new(8) by _BuildAnimFXSets.
    struct AnimFXStep {
        bool isSet;                                                     // +0x00 1 when the step names an AnimFXSet row, 0 for an EffectDict row
        int32_t id;                                                     // +0x04 row id in the AnimatedEffectTable or EffectDict
    };

    struct AnimFXSetData;

    // Value returned by GetAnimFXData: the playback parameters for one step. 20 bytes in the original.
    struct AnimFXData {
        bool unk_00;                                                    // +0x00 SetAnimFX argument 1 (row +17)
        bool unk_01;                                                    // +0x01 SetAnimFX argument 2 (row +16)
        bool unk_02;                                                    // +0x02 SetAnimFX argument 3 (row +32)
        float m_speed;                                                  // +0x04 playback speed (row +36), SetAnimFX argument 4
        int32_t m_playTime;                                             // +0x08 play time: the row's +12 scaled by the set's time scale, -1 when unknown
        int32_t unk_0c;                                                 // +0x0c step record +20 (Structs::AnimFX::m_w5, a 32-bit word), copied by GetAnimFXData; no caller in game-world reads it yet
        AnimFXSetData* m_setData;                                       // +0x10 the set data this step belongs to, passed to the end-of-loop callback
    };

    // Playback state of one effect set, 48 bytes. GetAnimFXSetData builds it with operator new(48).
    struct AnimFXSetData {
        uint8_t unk_00;                                                 // +0x00 zeroed by GetAnimFXSetData
        uint8_t pad_01[3];                                              // +0x01 .. +0x03
        int32_t m_stepIndex;                                            // +0x04 index into the set's step list (PlayAnimFXStep reads it)
        int32_t m_setIndex;                                             // +0x08 index into VisualFXManager::m_animFXSets (PlayAnimFXStep reads it)
        int32_t m_timeScale;                                            // +0x0c multiplies the step's play time in GetAnimFXData
        Point3D<float> m_position;                                      // +0x10 position passed to the play calls
        Point3D<float> m_origin;                                        // +0x1c origin (compared with zero by PlayAnimFXStep)
        const GameObject* m_sourceObject;                               // +0x28 the game object the set plays on (PlayAnimFXStep passes it on); GetAnimFXSetData takes GameObject const*
        AnimFXSetData* unk_2c;                                          // +0x2c GetAnimFXSetData argument six (its fifth parameter, AnimFXSetData*), stored as passed; every call in game-world passes null
    };

    // One set of an AnimatedEffectTable row. Built by _BuildAnimFXSets; the copy ctor duplicates its step vector
    // and its list of AnimFXSetData. Size 0x18 (24).
    struct AnimFXSetInfo {
        // Copy ctor 0x493924 (duplicates the step vector and the set-data list). Dtor 0x4940d8.
        AnimFXSetInfo(const AnimFXSetInfo& other);
        // Default ctor: an empty set for building the table. No ELF symbol of its own (the binary has none).
        AnimFXSetInfo() : m_row(nullptr) {}
        ~AnimFXSetInfo();

        const void* m_row;                                              // +0x00 the AnimatedEffectTable row (24-byte stride) the set was built from
        std::vector<AnimFXStep*> m_steps;                               // +0x04 .. +0x0f begin, end, end of storage
        std::list<AnimFXSetData*> m_setData;                            // +0x10 .. +0x17 list sentinel (next, prev); nodes hold the data pointer at +0x08
    };

    // The AnimatedFX pool for one EffectDict row. Size 0x18 (24), the stride that Update and DropAnimatedFX use.
    struct AnimatedFXInfo {
        // Copy ctor 0x4951d8 (duplicates the free and active lists). Dtor 0x493f88.
        AnimatedFXInfo(const AnimatedFXInfo& other);
        ~AnimatedFXInfo();

        // Default ctor: the original builds the empty pool inline in _BuildAnimFXDict (no symbol of its own).
        AnimatedFXInfo() : m_dictName(nullptr), m_freeFX() {}

        const char* m_dictName;                                         // +0x00 the EffectDict row's name (Structs::ColladaFile::m_w2, row +8), copied by _BuildAnimFXDict. A host pointer, so not int32
        VectorSet<AnimatedFX*> m_freeFX;                                // +0x04 .. +0x0f free instances (DropAnimatedFX pushes back here)
        std::list<AnimatedFX*> m_activeFX;                              // +0x10 .. +0x17 list sentinel (next, prev); nodes hold the instance at +0x08
    };

    VisualFXManager();                                                  // 0x493260 (C2), 0x4932c4 (C1)
    virtual ~VisualFXManager();                                         // slot 0x00: 0x4950a4 (complete), slot 0x04: 0x495130 (deleting); 0x49514c (base-object form)

    // Reports two counters from the pools. The pseudocode fills a2 then a3 from the AnimatedFXInfo pools. 0x493328.
    void DBG_GetAnimatedFXStats(unsigned int& first, unsigned int& second) const;
    // Sets m_libraryBuilt and builds the dictionary and set tables. 0x4933d8 (_PreCacheAnimDict).
    void _PreCacheAnimDict();
    // Builds the AnimFXData for one step of a set. The AnimFXSetInfo is passed by value. 0x4933e4 (GetAnimFXData).
    AnimFXData GetAnimFXData(AnimFXSetInfo info, AnimFXSetData* setData);
    // Creates an AnimFXSetData (operator new(48)), stores the arguments and the position and origin, and returns it.
    // 0x4935b8. The second int goes to +0x0c (timeScale) and the third to +0x04 (stepIndex): the callers pass the
    // effect table row's +8 word as the second and the random or zero step as the third.
    AnimFXSetData* GetAnimFXSetData(int setIndex, int timeScale, int stepIndex, const GameObject* object,
                                    AnimFXSetData* out, const Point3D<float>& position, const Point3D<float>& origin);
    // Frees the set data of an effect table row and returns the first active instance of the first step's pool to
    // its free list. 0x494660 (DropAnimatedFXSetByID).
    void DropAnimatedFXSetByID(int effectTableId);
    // Releases one active instance back to its pool and clears the caller's pointer. 0x494978 (DropAnimatedFX).
    void DropAnimatedFX(AnimatedFX*& instance);
    // Plays one AnimatedEffectTable row on object: takes an instance from the pool of its first step, adds a set data
    // to the row's list and starts the instance. Returns null when the module is off or the pool is full. 0x495430 (GrabAnimFX).
    AnimatedFX* GrabAnimFX(int effectTableId, GameObject* object);
    // Returns the active instance for effectDictId from its pool (_GetAnimFX). 0x494ad4.
    AnimatedFX* _GetAnimFX(int effectDictId);
    // Frees every pool and set entry and clears m_libraryBuilt. 0x494e3c (_FlushAnimDict).
    void _FlushAnimDict();
    // Clears the libraries and their registrations. 0x4950a0.
    void FlushLibraries();
    // Builds one AnimatedFXInfo for each EffectDict row (_BuildAnimFXDict). 0x495364.
    void _BuildAnimFXDict();
    // Builds the libraries when the dictionary is empty (BuildLibraries calls it). 0x496ba4 (_BuildAnimLibrary).
    void _BuildAnimLibrary();
    // Builds the AnimFXSetInfo for each AnimatedEffectTable row (_BuildAnimFXSets). 0x496954.
    void _BuildAnimFXSets();
    // Calls _BuildAnimLibrary when the module is enabled. 0x496bd8.
    void BuildLibraries();
    // Loads the effect libraries the registrations ask for. 0x495a88.
    void PreCacheLibraries();
    // Plays the effect with the source row and the point. Each overload returns through the pool. 0x4956b8 .. 0x495f3c.
    void PlayAnimFX(int effectDictId, const Point3D<float>& position, const Point3D<float>& origin,
                    const GameObject* object, AnimFXData* data);     // 0x4956b8
    void PlayAnimFXSet(int effectTableId, const Point3D<float>& position, const Point3D<float>& origin,
                       const GameObject* object, AnimFXSetData* data); // 0x495888 (returns nothing: the original's r0 is a tail-call leftover)
    void PlayAnimFX(int effectDictId, const Point3D<float>& position, const GameObject* object,
                    AnimFXData* data);                                // 0x495b54
    void PlayAnimFXSet(int effectTableId, const Point3D<float>& position, const GameObject* object,
                       AnimFXSetData* data);                          // 0x495d14
    void PlayAnimFXSet(int effectTableId, const GameObject* object, AnimFXSetData* data);  // 0x495f04
    void PlayAnimFX(int effectDictId, const GameObject* object, AnimFXData* data);        // 0x495f3c
    // Plays one step of a set: a single effect or a nested set, from the step's flag and id. 0x495f74.
    void PlayAnimFXStep(AnimFXSetData* setData, AnimFXData step);
    // Advances one set step on an instance (_HandleSequence). 0x496144.
    void _HandleSequence(AnimatedFX* instance, AnimFXSetData* setData, bool loop);
    // Handles the end-of-loop callback of an instance. 0x496364.
    void _HandleEndOfLoopCB(AnimatedFX* instance, AnimFXSetData* setData);
    // Static end-of-loop callback passed to AnimatedFX::SetAnimFX. 0x4963d0 (__Anim_EndOfLoop).
    static void __Anim_EndOfLoop(AnimatedFX* instance, AnimFXSetData* setData);
    // Registers one EffectDict row to load (RegisterFXToLoad pushes it into m_fxToLoad). 0x496434.
    void RegisterFXToLoad(int effectDictId);
    // Registers an AnimatedEffectTable row and its steps (recursive). 0x4967e8 (RegisterFXSetToLoad).
    void RegisterFXSetToLoad(int effectTableId);
    // Advances every active instance and drops the ones that finished. 0x496594.
    void Update();

    // The fields below are at their original offsets. Members after +0x33 are not recovered.
    bool m_libraryBuilt;                                                // +0x04 set by _PreCacheAnimDict and _BuildAnimLibrary, cleared by _FlushAnimDict
    std::list<AnimatedFX*> m_activeFX;                                  // +0x08 .. +0x0f list sentinel of the instances that are playing (nodes are 12 bytes)
    VectorSet<int> m_fxToLoad;                                          // +0x10 .. +0x1b EffectDict rows to load, filled by RegisterFXToLoad
    std::vector<AnimFXSetInfo> m_animFXSets;                            // +0x1c .. +0x27 one AnimFXSetInfo per AnimatedEffectTable row
    std::vector<AnimatedFXInfo> m_animatedFXPools;                      // +0x28 .. +0x33 one AnimatedFXInfo per EffectDict row (begin +0x28, end +0x2c, capacity +0x30)
    // Singleton<VisualFXManager>::s_inst (ELF 0x9a1cf0): the instance is the object itself, callers take its address.
    // This name is a reference to that object, defined with the instantiation in game-app/src/singleton_VisualFXManager.cpp (link-1).
    static VisualFXManager& s_inst;
};
