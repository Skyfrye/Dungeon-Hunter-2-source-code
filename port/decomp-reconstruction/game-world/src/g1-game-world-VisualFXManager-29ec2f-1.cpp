// Batch g1-game-world-VisualFXManager-29ec2f-1: the second half of VisualFXManager (game-world). It holds the PlayAnimFX
// and PlayAnimFXSet overloads with their forwarders, the set step (PlayAnimFXStep), the end-of-loop chain
// (_HandleSequence, _HandleEndOfLoopCB, __Anim_EndOfLoop), the library registration (RegisterFXToLoad,
// RegisterFXSetToLoad), Update and the library builders. The first half (constructors, GetAnimFXData, GetAnimFXSetData,
// the pools) is in g1-game-world-VisualFXManager-29ec2f-0.cpp. Layout and declarations: dh2/VisualFXManager.hpp.
//
// The AnimatedEffectTable and step records are read through the host records Structs::AnimFXTpl and Structs::AnimFX by
// field name, as the other half does. The PlayAnimFXSet and PlayAnimFXStep bodies return nothing: the original returns
// the r0 left by a void tail call, and no caller reads it. Update is partial (see its comment).

#include <cstddef>
#include <cstdint>
#include <cstring>
#include <iterator>
#include <list>
#include <vector>

#include "dh2/AnimatedFX.hpp"
#include "dh2/RootSceneNode.hpp"
#include "dh2/VisualObject.hpp"
#include "glitch-scene-collada-gui/collada/ISceneNodeAnimator.hpp"
#include "glitch-scene-collada-gui/scene/ITimelineController.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/Random.hpp"
#include "dh2/Singleton.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/global/Vec3f_Origin.hpp"        // Vec3f_Origin, the zero Point3D<float> global (0x99f854)
#include "dh2/global/runtime_support.hpp"    // PushProfilingContext, PopProfilingContext
#include "pydata-accessors/w7_arrays27.hpp"    // Arrays::AnimatedEffectTable
#include "pydata-accessors/w7_arrays_02.hpp"   // Arrays::EffectDict
#include "pydata-accessors/w7_structs_5.hpp"   // Structs::AnimFXTpl, Structs::AnimFX

namespace {

// The DebugSwitches module "AnimatedFX": the original loads the switch file, then reads the module flag.
bool AnimatedFXModuleEnabled() {
    DebugSwitches::s_inst.load();
    return DebugSwitches::s_inst.GetModule("AnimatedFX");
}

// The AnimatedEffectTable rows, typed as the host record Structs::AnimFXTpl (the table's element 0).
const Structs::AnimFXTpl* EffectTableRows() {
    return static_cast<const Structs::AnimFXTpl*>(static_cast<const void*>(Arrays::AnimatedEffectTable::members));
}

// The AnimatedEffectTable row a set was built from.
const Structs::AnimFXTpl& RowOf(const VisualFXManager::AnimFXSetInfo& setInfo) {
    return *static_cast<const Structs::AnimFXTpl*>(setInfo.m_row);
}

// The step records of a row (Structs::AnimFX, the row's +0x10 members).
const Structs::AnimFX* StepsOf(const Structs::AnimFXTpl& row) {
    return static_cast<const Structs::AnimFX*>(row.Steps);
}

// 0 <= id < Arrays::AnimatedEffectTable::size, the check the original makes before it indexes the table.
bool IsValidEffectTableId(int id) {
    return id >= 0 && static_cast<std::uint32_t>(id) < Arrays::AnimatedEffectTable::size;
}

// 0 <= id < Arrays::EffectDict::size.
bool IsValidEffectDictId(int id) {
    return id >= 0 && static_cast<std::uint32_t>(id) < Arrays::EffectDict::size;
}

// Writes a position into the three words of AnimatedFX +0x34, +0x38 and +0x3c. The original stores the float bit
// patterns as integer words, so the bits are copied.
void StorePositionOffset(AnimatedFX* instance, const Point3D<float>& position) {
    std::memcpy(&instance->unk_34, &position.X, sizeof(float));
    std::memcpy(&instance->unk_38, &position.Y, sizeof(float));
    std::memcpy(&instance->unk_3c, &position.Z, sizeof(float));
}

// The end-of-loop callback as AnimatedFX::SetAnimFX takes it (the set data arrives as void*). It forwards to
// VisualFXManager::__Anim_EndOfLoop, the function the original passes.
void EndOfLoopThunk(AnimatedFX* instance, void* setData) {
    VisualFXManager::__Anim_EndOfLoop(instance, static_cast<VisualFXManager::AnimFXSetData*>(setData));
}

// The end of the two PlayAnimFX bodies, which are the same in the original: the playback parameters (or the defaults),
// the owner when there is one, then visibility on.
void StartInstance(AnimatedFX* instance, VisualFXManager::AnimFXData* data, const GameObject* object) {
    if (data != nullptr) {
        instance->SetAnimFX(data->unk_00, data->unk_01, data->unk_02, data->m_speed, data->m_playTime,
                            data->m_setData, &EndOfLoopThunk);
        instance->unk_1c = data->unk_0c;
    } else {
        instance->SetAnimFX(true, false, true, 1.0f, 0, nullptr, &EndOfLoopThunk);
    }
    if (object != nullptr) {
        instance->unk_28 = const_cast<GameObject*>(object);  // the owner slot is not const in AnimatedFX
        instance->SyncIrrData(true);
    }
    instance->SetVisible(true);
}

}  // namespace

// 0x4956b8 VisualFXManager::PlayAnimFX(int, Point3D<float> const&, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXData*)
// Starts the instance of effectDictId at position and rotated by origin, on object when there is one.
void VisualFXManager::PlayAnimFX(int effectDictId, const Point3D<float>& position, const Point3D<float>& origin,
                                 const GameObject* object, AnimFXData* data) {
    if (!AnimatedFXModuleEnabled()) {
        return;
    }
    AnimatedFX* instance = _GetAnimFX(effectDictId);
    if (instance == nullptr) {
        return;
    }
    StorePositionOffset(instance, position);
    instance->SyncIrrData(false);
    instance->SetRotation(origin);
    instance->SetLooping(true);
    instance->SetStart();
    StartInstance(instance, data, object);
}

// 0x495888 VisualFXManager::PlayAnimFXSet(int, Point3D<float> const&, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXSetData*)
// Starts the set of an AnimatedEffectTable row at position and origin. A row of type 2 picks one step at random. The new
// set data joins the set's list. An effect step plays through PlayAnimFX. A nested set recurses with the data this call
// was given (the 0x495d14 variant passes the new set data instead).
void VisualFXManager::PlayAnimFXSet(int effectTableId, const Point3D<float>& position, const Point3D<float>& origin,
                                    const GameObject* object, AnimFXSetData* data) {
    if (!IsValidEffectTableId(effectTableId)) {
        return;
    }
    AnimFXSetInfo& setInfo = m_animFXSets[static_cast<std::size_t>(effectTableId)];
    const Structs::AnimFXTpl& row = RowOf(setInfo);

    int stepIndex = 0;
    if (row.Type == 2) {
        // The original BLs the GCC clone of Random::GetRandom with synced folded to false (0x493780, the ordinary
        // stream: s_seed and counter [0]). The effect table id left in r1 is a register leftover; that clone never
        // reads it, so the call is GetRandom(range, false).
        stepIndex = static_cast<int>(Random::GetRandom(static_cast<int>(row.StepsSize), false));
    }

    const Point3D<float> positionCopy = position;
    const Point3D<float> originCopy = origin;
    AnimFXSetData* setData =
        GetAnimFXSetData(effectTableId, row.LoopAFX, stepIndex, object, data, positionCopy, originCopy);
    AnimFXData step = GetAnimFXData(setInfo, setData);
    setInfo.m_setData.push_back(setData);

    const Structs::AnimFX* steps = StepsOf(row);
    if (steps[stepIndex].File == -1) {
        PlayAnimFX(steps[setData->m_stepIndex].File, position, origin, object, &step);
        return;
    }
    const AnimFXStep* entry = setInfo.m_steps[static_cast<std::size_t>(stepIndex)];
    if (!entry->isSet) {
        PlayAnimFX(steps[setData->m_stepIndex].File, position, origin, object, &step);
        return;
    }
    PlayAnimFXSet(entry->id, position, origin, object, data);
}

// 0x495a88 VisualFXManager::PreCacheLibraries()
// Loads the effect libraries when the AnimatedFX module is on.
void VisualFXManager::PreCacheLibraries() {
    if (AnimatedFXModuleEnabled()) {
        _PreCacheAnimDict();
    }
}

// 0x495b54 VisualFXManager::PlayAnimFX(int, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXData*)
// Starts the instance of effectDictId at position, on object when there is one. There is no rotation.
void VisualFXManager::PlayAnimFX(int effectDictId, const Point3D<float>& position, const GameObject* object,
                                 AnimFXData* data) {
    if (!AnimatedFXModuleEnabled()) {
        return;
    }
    AnimatedFX* instance = _GetAnimFX(effectDictId);
    if (instance == nullptr) {
        return;
    }
    StorePositionOffset(instance, position);
    instance->SyncIrrData(false);
    instance->SetLooping(true);
    instance->SetStart();
    StartInstance(instance, data, object);
}

// 0x495d14 VisualFXManager::PlayAnimFXSet(int, Point3D<float> const&, GameObject const*, VisualFXManager::AnimFXSetData*)
// As the 0x495888 variant, with the origin set to Vec3f_Origin. A nested set recurses with the new set data.
void VisualFXManager::PlayAnimFXSet(int effectTableId, const Point3D<float>& position, const GameObject* object,
                                    AnimFXSetData* data) {
    if (!IsValidEffectTableId(effectTableId)) {
        return;
    }
    AnimFXSetInfo& setInfo = m_animFXSets[static_cast<std::size_t>(effectTableId)];
    const Structs::AnimFXTpl& row = RowOf(setInfo);

    int stepIndex = 0;
    if (row.Type == 2) {
        // Same clone as the 0x495888 variant (0x493780, ordinary stream): the effect table id in r1 is never read,
        // so the call is GetRandom(range, false).
        stepIndex = static_cast<int>(Random::GetRandom(static_cast<int>(row.StepsSize), false));
    }

    const Point3D<float> positionCopy = position;
    const Point3D<float> originCopy = Vec3f_Origin;
    AnimFXSetData* setData =
        GetAnimFXSetData(effectTableId, row.LoopAFX, stepIndex, object, data, positionCopy, originCopy);
    AnimFXData step = GetAnimFXData(setInfo, setData);
    setInfo.m_setData.push_back(setData);

    const Structs::AnimFX* steps = StepsOf(row);
    if (steps[stepIndex].File == -1) {
        PlayAnimFX(steps[setData->m_stepIndex].File, position, object, &step);
        return;
    }
    const AnimFXStep* entry = setInfo.m_steps[static_cast<std::size_t>(stepIndex)];
    if (!entry->isSet) {
        PlayAnimFX(steps[setData->m_stepIndex].File, position, object, &step);
        return;
    }
    PlayAnimFXSet(entry->id, position, object, setData);
}

// 0x495f04 VisualFXManager::PlayAnimFXSet(int, GameObject const*, VisualFXManager::AnimFXSetData*)
// Thunk: forwards to the 0x495d14 overload with position Vec3f_Origin.
void VisualFXManager::PlayAnimFXSet(int effectTableId, const GameObject* object, AnimFXSetData* data) {
    PlayAnimFXSet(effectTableId, Vec3f_Origin, object, data);
}

// 0x495f3c VisualFXManager::PlayAnimFX(int, GameObject const*, VisualFXManager::AnimFXData*)
// Thunk: forwards to the 0x495b54 overload with position Vec3f_Origin.
void VisualFXManager::PlayAnimFX(int effectDictId, const GameObject* object, AnimFXData* data) {
    PlayAnimFX(effectDictId, Vec3f_Origin, object, data);
}

// 0x495f74 VisualFXManager::PlayAnimFXStep(VisualFXManager::AnimFXSetData*, VisualFXManager::AnimFXData)
// Plays the step that setData names: a nested set (the step flag is set) or an effect. A zero origin, or a zero position
// under a zero origin, selects the overload that leaves that argument out, as the original does.
void VisualFXManager::PlayAnimFXStep(AnimFXSetData* setData, AnimFXData step) {
    const AnimFXSetInfo& setInfo = m_animFXSets[static_cast<std::size_t>(setData->m_setIndex)];
    const AnimFXStep* entry = setInfo.m_steps[static_cast<std::size_t>(setData->m_stepIndex)];
    const int id = entry->id;
    const GameObject* object = setData->m_sourceObject;

    if (entry->isSet) {
        if (setData->m_origin == Vec3f_Origin) {
            if (setData->m_position == Vec3f_Origin) {
                PlayAnimFXSet(id, object, setData);
            } else {
                PlayAnimFXSet(id, setData->m_position, object, setData);
            }
        } else {
            PlayAnimFXSet(id, setData->m_position, setData->m_origin, object, setData);
        }
        return;
    }
    if (setData->m_origin == Vec3f_Origin) {
        if (setData->m_position == Vec3f_Origin) {
            PlayAnimFX(id, object, &step);
        } else {
            PlayAnimFX(id, setData->m_position, object, &step);
        }
    } else {
        PlayAnimFX(id, setData->m_position, setData->m_origin, object, &step);
    }
}

// 0x496144 VisualFXManager::_HandleSequence(AnimatedFX*, VisualFXManager::AnimFXSetData*, bool)
// Advances the sets of the row that the instance belongs to. With loop set, the row is the one of setData's parent.
// A sequence row (type 1) walks its list of set data: each set data that is armed (unk_00 set) takes its next step, or
// repeats (timeScale counts down, -1 is endless). A finished set data hands over to its parent. Other row types only
// re-arm the parent and recurse.
void VisualFXManager::_HandleSequence(AnimatedFX* instance, AnimFXSetData* setData, bool loop) {
    AnimFXSetData* owner = loop ? setData->unk_2c : setData;
    AnimFXSetInfo& setInfo = m_animFXSets[static_cast<std::size_t>(owner->m_setIndex)];
    const Structs::AnimFXTpl& row = RowOf(setInfo);

    if (row.Type == 1) {
        auto node = setInfo.m_setData.begin();
        while (node != setInfo.m_setData.end()) {
            AnimFXSetData* data = *node;
            if (data == nullptr || data->unk_00 == 0) {
                ++node;
                continue;
            }
            data->unk_00 = 0;

            const std::int32_t nextStep = data->m_stepIndex + 1;
            if (nextStep < static_cast<std::int32_t>(row.StepsSize)) {
                data->m_stepIndex = nextStep;
                AnimFXData step = GetAnimFXData(setInfo, data);
                PlayAnimFXStep(data, step);
                ++node;
                continue;
            }

            std::int32_t repeats = data->m_timeScale;
            if (repeats > 0 || repeats == -1) {
                if (repeats > 0) {
                    --repeats;
                    data->m_timeScale = repeats;
                }
                data->m_stepIndex = 0;
                AnimFXData step = GetAnimFXData(setInfo, data);
                PlayAnimFXStep(data, step);
                ++node;
                continue;
            }

            if (data->unk_2c != nullptr) {
                _HandleSequence(instance, setData, true);
            }
            ++node;
        }
        return;
    }

    if (loop) {
        AnimFXSetData* parent = setData->unk_2c;
        AnimFXSetData* grandparent = parent->unk_2c;
        if (grandparent != nullptr) {
            grandparent->unk_00 = 1;
            _HandleSequence(instance, parent, true);
        }
    } else {
        AnimFXSetData* parent = setData->unk_2c;
        if (parent != nullptr) {
            parent->unk_00 = 1;
            _HandleSequence(instance, setData, true);
        }
    }
}

// 0x496364 VisualFXManager::_HandleEndOfLoopCB(AnimatedFX*, VisualFXManager::AnimFXSetData*)
// The end of one loop of an instance. A sequence row advances at once. Otherwise the parent is armed, and when the
// parent's row is a sequence, that row advances.
void VisualFXManager::_HandleEndOfLoopCB(AnimatedFX* instance, AnimFXSetData* setData) {
    const AnimFXSetInfo& setInfo = m_animFXSets[static_cast<std::size_t>(setData->m_setIndex)];
    if (RowOf(setInfo).Type == 1) {
        _HandleSequence(instance, setData, false);
        return;
    }
    AnimFXSetData* parent = setData->unk_2c;
    if (parent != nullptr) {
        const AnimFXSetInfo& parentInfo = m_animFXSets[static_cast<std::size_t>(parent->m_setIndex)];
        parent->unk_00 = 1;
        if (RowOf(parentInfo).Type == 1) {
            _HandleSequence(instance, setData, true);
        }
    }
}

// 0x4963d0 VisualFXManager::__Anim_EndOfLoop(AnimatedFX*, VisualFXManager::AnimFXSetData*)
// The end-of-loop callback. It runs the set handling when the instance has set data, then puts the instance on the
// manager's active list.
void VisualFXManager::__Anim_EndOfLoop(AnimatedFX* instance, AnimFXSetData* setData) {
    if (setData != nullptr) {
        Singleton<VisualFXManager>::s_inst._HandleEndOfLoopCB(instance, setData);
    }
    Singleton<VisualFXManager>::s_inst.m_activeFX.push_back(instance);
}

// 0x496434 VisualFXManager::RegisterFXToLoad(int)
// Queues one EffectDict row for loading. The switch read is kept: the original reads it and discards the result.
void VisualFXManager::RegisterFXToLoad(int effectDictId) {
    if (!AnimatedFXModuleEnabled()) {
        return;
    }
    if (!IsValidEffectDictId(effectDictId)) {
        return;
    }
    DebugSwitches::s_inst.load();
    static_cast<void>(DebugSwitches::s_inst.GetSwitch("isTracingPreCached_FX"));
    m_fxToLoad.push_back_unique(effectDictId);
}

// 0x496594 VisualFXManager::Update()
// Nothing happens unless the AnimatedFX debug module is on. Every pooled instance updates; every active instance then steps its
// animator: the timeline controller's range end (+0x14) is read, SetEnd runs when it differs from the controller's current time (+0x04),
// and the animator animates the instance's visual node (VisualObject +0x08) at that time (vtable +0x10, animateNode). An instance whose
// visibility flag (+0x24) is clear leaves the active list and is dropped.
void VisualFXManager::Update() {
    if (!AnimatedFXModuleEnabled()) {
        return;
    }
    PushProfilingContext("VisualFXManager::Update");

    for (AnimatedFXInfo& pool : m_animatedFXPools) {
        for (AnimatedFX* instance : pool.m_activeFX) {
            instance->Update();
        }
    }

    for (auto it = m_activeFX.begin(); it != m_activeFX.end();) {
        AnimatedFX* instance = *it;
        const auto next = std::next(it);
        instance->GetAnimator()->getTimelineCtrl();                       // vtable +0x44, the answer is dropped
        glitch::scene::ISceneNode* node = instance->m_visual->m_node;     // VisualObject +0x08
        const std::int32_t rangeEnd = instance->GetAnimator()->getTimelineCtrl()->rangeEndMs;     // controller +0x14
        if (rangeEnd != instance->GetAnimator()->getTimelineCtrl()->currentTimeMs) {              // controller +0x04
            instance->SetEnd();
        }
        instance->GetAnimator()->animateNode(node, static_cast<std::uint32_t>(rangeEnd));
        if (!instance->unk_24) {
            m_activeFX.erase(it);
            DropAnimatedFX(instance);
        }
        it = next;
    }

    PopProfilingContext("VisualFXManager::Update");
}

// 0x4967e8 VisualFXManager::RegisterFXSetToLoad(int)
// Queues the EffectDict rows and the nested sets of an AnimatedEffectTable row. A step with the set flag recurses.
void VisualFXManager::RegisterFXSetToLoad(int effectTableId) {
    if (!AnimatedFXModuleEnabled()) {
        return;
    }
    if (!IsValidEffectTableId(effectTableId)) {
        return;
    }
    const Structs::AnimFXTpl& row = EffectTableRows()[effectTableId];
    const Structs::AnimFX* steps = StepsOf(row);
    const std::int32_t count = static_cast<std::int32_t>(row.StepsSize);
    for (std::int32_t i = 0; i < count; ++i) {
        const Structs::AnimFX& step = steps[i];
        if (step.Redir == 1) {
            RegisterFXSetToLoad(step.File);
        } else {
            RegisterFXToLoad(step.File);
        }
    }
}

// 0x496954 VisualFXManager::_BuildAnimFXSets()
// Builds one AnimFXSetInfo per AnimatedEffectTable row, when the set table is empty and the table has rows. Each step
// with an id other than -1 becomes an AnimFXStep (the flag is the step's +28 word). A row with the preload flag queues
// its steps for loading.
void VisualFXManager::_BuildAnimFXSets() {
    if (!m_animFXSets.empty() || Arrays::AnimatedEffectTable::size == 0) {
        return;
    }
    const std::uint32_t rowCount = Arrays::AnimatedEffectTable::size;
    const Structs::AnimFXTpl* rows = EffectTableRows();
    for (std::uint32_t i = 0; i < rowCount; ++i) {
        const Structs::AnimFXTpl& row = rows[i];
        AnimFXSetInfo info;
        info.m_row = &row;

        const Structs::AnimFX* steps = StepsOf(row);
        const std::int32_t count = static_cast<std::int32_t>(row.StepsSize);
        for (std::int32_t j = 0; j < count; ++j) {
            const Structs::AnimFX& step = steps[j];
            if (step.File == -1) {
                continue;
            }
            const bool isSet = step.Redir != 0;
            info.m_steps.push_back(new AnimFXStep{isSet, step.File});
            if (row.ForceCache) {
                if (isSet) {
                    RegisterFXSetToLoad(step.File);
                } else {
                    RegisterFXToLoad(step.File);
                }
            }
        }
        m_animFXSets.push_back(info);
    }
}

// 0x496ba4 VisualFXManager::_BuildAnimLibrary()
// Builds the dictionary and the set table when the pool table is empty.
void VisualFXManager::_BuildAnimLibrary() {
    if (m_animatedFXPools.empty()) {
        m_libraryBuilt = true;
        _BuildAnimFXDict();
        _BuildAnimFXSets();
    }
}

// 0x496bd8 VisualFXManager::BuildLibraries()
// Builds the libraries when the AnimatedFX module is on.
void VisualFXManager::BuildLibraries() {
    if (AnimatedFXModuleEnabled()) {
        _BuildAnimLibrary();
    }
}
