// Batch g1-game-world-VisualFXManager-29ec2f-0: VisualFXManager (game-world), the animated effect manager.
// Layout and declarations: dh2/VisualFXManager.hpp. The AnimatedFX instances are dh2/AnimatedFX.hpp.
//
// The original reads its 32-bit element tables by byte stride (AnimatedEffectTable rows of 24 bytes, step records of
// 48, EffectDict rows of 12). The port reads the same words through the host records (Structs::AnimFXTpl,
// Structs::AnimFX, Structs::ColladaFile) by field name, never by byte offset. The original's STLport lists, vectors and
// node allocator become std::list, std::vector and new/delete. VectorSet keeps raw storage from std::allocator, so the
// copy and the destructors here release that storage where the original did.
//
// Not rebuilt: the deleting destructor (D0, 0x495130), which the compiler generates from the complete destructor.

#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstring>
#include <list>
#include <memory>
#include <string>
#include <vector>

#include "dh2/AnimatedFX.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Random.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/Vec3f_Origin.hpp"  // Vec3f_Origin, the zero Point3D<float> global (0x99f854)
#include "pydata-accessors/w7_arrays27.hpp"   // Arrays::AnimatedEffectTable
#include "pydata-accessors/w7_arrays_02.hpp"  // Arrays::EffectDict
#include "pydata-accessors/w7_structs_5.hpp"  // Structs::AnimFXTpl, Structs::AnimFX, Structs::ColladaFile

namespace {

// Stores the bit pattern of a float in one 32-bit word of the original object. AnimatedFX +0x34 .. +0x3c are such words.
void StoreFloatWord(int& word, float value) {
    std::memcpy(&word, &value, sizeof word);
}

// Sets an instance's position offset (AnimatedFX +0x34, +0x38, +0x3c) to Vec3f_Origin, as three word copies.
void ResetPositionOffset(AnimatedFX* instance) {
    StoreFloatWord(instance->unk_34, Vec3f_Origin.X);
    StoreFloatWord(instance->unk_38, Vec3f_Origin.Y);
    StoreFloatWord(instance->unk_3c, Vec3f_Origin.Z);
}

// The AnimatedEffectTable row (Structs::AnimFXTpl) that a set was built from. The set keeps the row as const void*.
const Structs::AnimFXTpl& RowOf(const VisualFXManager::AnimFXSetInfo& set) {
    return *static_cast<const Structs::AnimFXTpl*>(set.m_row);
}

// The step records of an effect table row (Structs::AnimFX, the row's +0x10 members, 48 bytes each in the original).
const Structs::AnimFX* StepsOf(const Structs::AnimFXTpl& row) {
    return static_cast<const Structs::AnimFX*>(row.Steps);
}

// The EffectDict row (Structs::ColladaFile, 12 bytes each in the original) for an effect id.
const Structs::ColladaFile& EffectRow(std::uint32_t effectDictId) {
    return reinterpret_cast<const Structs::ColladaFile*>(Arrays::EffectDict::members)[effectDictId];
}

// The AnimatedEffectTable row for an id, given as the original checks it: 0 <= id < size.
bool IsValidEffectTableId(int id) {
    return id >= 0 && static_cast<std::uint32_t>(id) < Arrays::AnimatedEffectTable::size;
}

// The EffectDict id check: 0 <= id < size.
bool IsValidEffectDictId(int id) {
    return id >= 0 && static_cast<std::uint32_t>(id) < Arrays::EffectDict::size;
}

}  // namespace

// 0x493260 VisualFXManager::VisualFXManager()
// 0x4932c4 VisualFXManager::VisualFXManager()  (C1 variant: the same body, one C++ constructor covers both)
VisualFXManager::VisualFXManager() : m_libraryBuilt(false), m_fxToLoad() {
}

// 0x493328 VisualFXManager::DBG_GetAnimatedFXStats(unsigned int&, unsigned int&) const
// first: the free instances held by the pools, second: the instances on the pools' active lists.
void VisualFXManager::DBG_GetAnimatedFXStats(unsigned int& first, unsigned int& second) const {
    second = 0;
    first = 0;
    for (const AnimatedFXInfo& pool : m_animatedFXPools) {
        first += static_cast<unsigned int>(pool.m_freeFX.m_finish - pool.m_freeFX.m_start);
        second += static_cast<unsigned int>(pool.m_activeFX.size());
    }
}

// 0x4933d8 VisualFXManager::_PreCacheAnimDict()
void VisualFXManager::_PreCacheAnimDict() {
    m_libraryBuilt = true;
}

// 0x4933e4 VisualFXManager::GetAnimFXData(VisualFXManager::AnimFXSetInfo, VisualFXManager::AnimFXSetData*)
// Playback parameters of the step named by setData->m_stepIndex in the set's row.
VisualFXManager::AnimFXData VisualFXManager::GetAnimFXData(AnimFXSetInfo info, AnimFXSetData* setData) {
    const Structs::AnimFXTpl& row = RowOf(info);
    const Structs::AnimFX& step = StepsOf(row)[setData->m_stepIndex];

    AnimFXData data{};
    data.unk_00 = step.OrientWithAnchor;                       // record +17
    data.unk_01 = step.OrientOnce;                          // record +16
    data.unk_02 = step.ScaleWithAnchor;                          // record +32
    data.m_speed = step.Speed;                         // record +36, a float word
    data.m_setData = setData;                         // +0x10 of the result
    data.unk_0c = step.PlayTime;                          // record +20
    if (row.Type == 1) {
        data.m_playTime = step.Loop;                  // record +12, unscaled
    } else if (step.Loop == -1 || setData->m_timeScale == -1) {
        data.m_playTime = -1;
    } else if (step.Loop != 0) {
        std::int32_t playTime = step.Loop;
        if (setData->m_timeScale != 0) {
            playTime *= setData->m_timeScale;
        }
        data.m_playTime = playTime;
    } else {
        data.m_playTime = setData->m_timeScale;
    }
    return data;
}

// 0x4935b8 VisualFXManager::GetAnimFXSetData(int,int,int,GameObject const*,VisualFXManager::AnimFXSetData*,Point3D<float>,Point3D<float>)
// The second int is stored at +0x0c (timeScale) and the third at +0x04 (stepIndex); see the header.
VisualFXManager::AnimFXSetData* VisualFXManager::GetAnimFXSetData(int setIndex, int timeScale, int stepIndex,
                                                                  const GameObject* object, AnimFXSetData* out,
                                                                  const Point3D<float>& position,
                                                                  const Point3D<float>& origin) {
    AnimFXSetData* result = new AnimFXSetData();
    result->unk_00 = 0;
    result->m_stepIndex = stepIndex;
    result->m_setIndex = setIndex;
    result->m_timeScale = timeScale;
    result->m_position = position;
    result->m_origin = origin;
    result->m_sourceObject = object;
    result->unk_2c = out;
    return result;
}

// 0x493924 VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(VisualFXManager::AnimFXSetInfo const&)
// The step vector is copied (its pointers, not the records); the set-data list is copied node by node.
VisualFXManager::AnimFXSetInfo::AnimFXSetInfo(const AnimFXSetInfo& other)
    : m_row(other.m_row), m_steps(other.m_steps), m_setData(other.m_setData) {
}

// 0x493f88 VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo()
// The instances belong to the manager; only the active nodes and the free set's storage are released here.
VisualFXManager::AnimatedFXInfo::~AnimatedFXInfo() {
    m_activeFX.clear();
    if (m_freeFX.m_start != nullptr) {
        std::allocator<AnimatedFX*>().deallocate(
            m_freeFX.m_start, static_cast<std::size_t>(m_freeFX.m_endOfStorage - m_freeFX.m_start));
    }
}

// 0x4940d8 VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo()
// The data pointers belong to the manager. The list nodes are freed here, and the step vector's storage when the
// member is destroyed after this body.
VisualFXManager::AnimFXSetInfo::~AnimFXSetInfo() {
    m_setData.clear();
}

// 0x494660 VisualFXManager::DropAnimatedFXSetByID(int)
// The original copies the set, runs GetAnimFXData on the copy, takes the step-0 pool, frees the set data it made and
// returns the first active instance of that pool to the pool's free set. Its other active nodes are dropped from the
// list without being returned, as the original does.
void VisualFXManager::DropAnimatedFXSetByID(int effectTableId) {
    if (!IsValidEffectTableId(effectTableId)) {
        return;
    }
    AnimFXSetInfo& set = m_animFXSets[static_cast<std::size_t>(effectTableId)];
    const Structs::AnimFXTpl& row = RowOf(set);
    AnimFXSetData* setData = GetAnimFXSetData(effectTableId, row.LoopAFX, 0, nullptr, nullptr, Vec3f_Origin, Vec3f_Origin);

    // The result is not used by the original; the call is kept for its reads.
    static_cast<void>(GetAnimFXData(set, setData));

    // The pool of the step: the step record's +4 word (Structs::AnimFX::m_w1) is the EffectDict id.
    const std::int32_t dictId = StepsOf(row)[setData->m_stepIndex].File;
    AnimatedFXInfo& pool = m_animatedFXPools[static_cast<std::size_t>(dictId)];
    delete setData;

    if (!pool.m_activeFX.empty()) {
        AnimatedFX* instance = pool.m_activeFX.front();
        pool.m_freeFX.push_back_unique(instance);
        pool.m_activeFX.clear();
        ResetPositionOffset(instance);
        instance->SyncIrrData(false);
        instance->unk_28 = nullptr;
        instance->SyncIrrData(true);
        instance->SetVisible(false);
    }
}

// 0x494978 VisualFXManager::DropAnimatedFX(AnimatedFX*&)
// Returns an active instance to its pool, unlinks it from the pool's active list and nulls the caller's pointer.
void VisualFXManager::DropAnimatedFX(AnimatedFX*& instance) {
    if (instance == nullptr) {
        return;
    }
    if (!m_libraryBuilt) {
        // The original stores the library flag byte (zero on this path) into the pointer.
        instance = nullptr;
        return;
    }
    const std::int32_t poolIndex = instance->unk_08;
    if (poolIndex < 0 || static_cast<std::uint32_t>(poolIndex) >= m_animatedFXPools.size()) {
        instance = nullptr;
        return;
    }

    AnimatedFXInfo& pool = m_animatedFXPools[static_cast<std::size_t>(poolIndex)];
    for (auto it = pool.m_activeFX.begin(); it != pool.m_activeFX.end();) {
        if (*it == instance) {
            it = pool.m_activeFX.erase(it);
        } else {
            ++it;
        }
    }
    pool.m_freeFX.push_back_unique(instance);
    instance->unk_28 = nullptr;
    instance->SyncIrrData(true);
    ResetPositionOffset(instance);
    instance->SyncIrrData(false);
    instance->SetVisible(false);
    instance = nullptr;
}

// 0x494ad4 VisualFXManager::_GetAnimFX(int)
// Takes the last free instance of the pool (and resets its scale), or creates one when the pool has at most five
// active instances. The instance goes on the pool's active list.
AnimatedFX* VisualFXManager::_GetAnimFX(int effectDictId) {
    if (!IsValidEffectDictId(effectDictId)) {
        return nullptr;
    }
    AnimatedFXInfo& pool = m_animatedFXPools[static_cast<std::size_t>(effectDictId)];

    AnimatedFX* instance = nullptr;
    if (pool.m_freeFX.m_finish != pool.m_freeFX.m_start) {
        instance = pool.m_freeFX.m_finish[-1];
        instance->m_visual->SetScaling(1.0f);
        pool.m_freeFX.m_finish -= 1;
    } else {
        if (pool.m_activeFX.size() > 5) {
            return nullptr;
        }
        instance = new AnimatedFX(effectDictId);
        instance->Load(EffectRow(static_cast<std::uint32_t>(effectDictId)).Name, "", 1.0f, -1, true);
    }
    pool.m_activeFX.push_back(instance);
    return instance;
}

// 0x494e3c VisualFXManager::_FlushAnimDict()
// Drops every active instance, deletes the instances the pools hold, empties the pools and the set tables, and clears
// the library flag.
void VisualFXManager::_FlushAnimDict() {
    for (auto it = m_activeFX.begin(); it != m_activeFX.end(); ++it) {
        DropAnimatedFX(*it);
    }

    for (AnimatedFXInfo& pool : m_animatedFXPools) {
        for (AnimatedFX** slot = pool.m_freeFX.m_start; slot != pool.m_freeFX.m_finish; ++slot) {
            if (*slot != nullptr) {
                delete *slot;
                *slot = nullptr;
            }
        }
        pool.m_freeFX.m_finish = pool.m_freeFX.m_start;

        for (AnimatedFX*& instance : pool.m_activeFX) {
            if (instance != nullptr) {
                delete instance;
                instance = nullptr;
            }
        }
        pool.m_activeFX.clear();
    }

    for (AnimFXSetInfo& set : m_animFXSets) {
        for (AnimFXSetData*& setData : set.m_setData) {
            if (setData != nullptr) {
                delete setData;
                setData = nullptr;
            }
        }
        for (AnimFXStep*& step : set.m_steps) {
            if (step != nullptr) {
                delete step;
                step = nullptr;
            }
        }
    }

    m_animatedFXPools.clear();
    m_animFXSets.clear();
    m_activeFX.clear();
    m_libraryBuilt = false;
}

// 0x4950a0 VisualFXManager::FlushLibraries()
void VisualFXManager::FlushLibraries() {
    _FlushAnimDict();
}

// 0x4950a4 VisualFXManager::~VisualFXManager()  (complete object)
// 0x49514c VisualFXManager::~VisualFXManager()  (base object: the same body)
// The members are destroyed after this body, in the original's order: the pools, the set table, the list. The set's
// storage is released here because VectorSet has no destructor.
VisualFXManager::~VisualFXManager() {
    FlushLibraries();
    if (m_fxToLoad.m_start != nullptr) {
        std::allocator<int>().deallocate(m_fxToLoad.m_start,
                                         static_cast<std::size_t>(m_fxToLoad.m_endOfStorage - m_fxToLoad.m_start));
    }
}

// 0x4951d8 VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(VisualFXManager::AnimatedFXInfo const&)
// The free set is copied into a new block of its size, and the active list is copied node by node.
VisualFXManager::AnimatedFXInfo::AnimatedFXInfo(const AnimatedFXInfo& other)
    : m_dictName(other.m_dictName), m_freeFX(), m_activeFX(other.m_activeFX) {
    const std::size_t count = static_cast<std::size_t>(other.m_freeFX.m_finish - other.m_freeFX.m_start);
    if (count != 0) {
        AnimatedFX** block = std::allocator<AnimatedFX*>().allocate(count);
        std::copy(other.m_freeFX.m_start, other.m_freeFX.m_finish, block);
        m_freeFX.m_start = block;
        m_freeFX.m_finish = block + count;
        m_freeFX.m_endOfStorage = block + count;
    }
}

// 0x495364 VisualFXManager::_BuildAnimFXDict()
// One empty pool per EffectDict row, named after the row.
void VisualFXManager::_BuildAnimFXDict() {
    const std::uint32_t count = Arrays::EffectDict::size;
    for (std::uint32_t i = 0; i < count; ++i) {
        AnimatedFXInfo info;
        info.m_dictName = EffectRow(i).Name;
        m_animatedFXPools.push_back(info);
    }
}

// 0x495430 VisualFXManager::GrabAnimFX(int, GameObject*)
// Plays one AnimatedEffectTable row on object. The module flag "AnimatedFX" must be on. The row's mode 2 picks a random
// step (Random::GetRandom over the row's element count, on the ordinary stream); otherwise step 0 is used.
AnimatedFX* VisualFXManager::GrabAnimFX(int effectTableId, GameObject* object) {
    DebugSwitches::s_inst.load();
    if (!DebugSwitches::s_inst.GetModule(std::string("AnimatedFX"))) {
        return nullptr;
    }
    if (!IsValidEffectTableId(effectTableId)) {
        return nullptr;
    }

    AnimFXSetInfo& set = m_animFXSets[static_cast<std::size_t>(effectTableId)];
    const Structs::AnimFXTpl& row = RowOf(set);
    AnimatedFX* instance = _GetAnimFX(StepsOf(row)[0].File);
    if (instance == nullptr) {
        return nullptr;
    }

    // The original calls the clone of GetRandom that the ordinary stream uses (Random::s_seed), so the flag is false.
    int stepIndex = 0;
    if (row.Type == 2) {
        stepIndex = static_cast<int>(Random::GetRandom(static_cast<int>(row.StepsSize), false));
    }

    AnimFXSetData* setData = GetAnimFXSetData(effectTableId, row.LoopAFX, stepIndex, object, nullptr,
                                              Vec3f_Origin, Vec3f_Origin);
    const AnimFXData data = GetAnimFXData(set, setData);
    set.m_setData.push_back(setData);

    instance->unk_28 = object;
    instance->SyncIrrData(true);
    instance->SyncIrrData(true);
    instance->SetLooping(true);
    instance->SetStart();
    instance->SetAnimFX(data.unk_00, data.unk_01, data.unk_02, data.m_speed, -1, data.m_setData,
                        reinterpret_cast<AnimatedFX::EndOfLoopCallback>(&VisualFXManager::__Anim_EndOfLoop));
    instance->SetVisible(true);
    return instance;
}
