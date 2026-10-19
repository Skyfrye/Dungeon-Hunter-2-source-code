// Bodies of glitch::collada::CSceneNodeAnimatorBlender (canonical class: collada/CSceneNodeAnimatorBlender.hpp). This file replaces
// src/tb_scene-collada-gui-glitch_collada_CSceneNodeAnimatorBlender-0.cpp (written against tb/scene_node_animator_blender.hpp, whose
// base class had five of the virtual slots, so the child calls were not expressed).
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/CSceneNodeAnimatorBlender.hpp"

#include <algorithm>
#include <cstring>

#include "glitch-scene-collada-gui/collada/CApplicatorInfo.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/collada/IAnimationTrackEx.hpp"

namespace glitch::collada {

// 0x366f7c _ZN6glitch7collada25CSceneNodeAnimatorBlenderC2Ev (and C1)
// The base is constructed; every member is zero.
CSceneNodeAnimatorBlender::CSceneNodeAnimatorBlender() = default;

// 0x65e958 _ZN6glitch7collada25CSceneNodeAnimatorBlenderD1Ev, 0x65ea78 (D2); D0 0x65ea5c is skipped.
// Drops every child (one use each) and frees the vectors. The original does not release the applicators.
CSceneNodeAnimatorBlender::~CSceneNodeAnimatorBlender() {
    for (ISceneNodeAnimator* child : animators) {
        child->drop();
    }
}

// 0x65e5c8 _ZN6glitch7collada25CSceneNodeAnimatorBlender11animateNodeEPNS_5scene10ISceneNodeEj
// Tail-calls applyAnimationValues (vptr+0x50).
void CSceneNodeAnimatorBlender::animateNode(scene::ISceneNode*, std::uint32_t timeMs) {
    applyAnimationValues(timeMs);
}

// 0x65e32c _ZNK6glitch7collada25CSceneNodeAnimatorBlender9getLengthEv
std::uint32_t CSceneNodeAnimatorBlender::getLength() const {
    return animators[0]->getLength();
}

// 0x65e204 _ZN6glitch7collada25CSceneNodeAnimatorBlender17getAnimationTrackEi
const SChannel* CSceneNodeAnimatorBlender::getAnimationTrack(std::int32_t index) {
    return animators[0]->getAnimationTrack(index);
}

// 0x65e224 _ZN6glitch7collada25CSceneNodeAnimatorBlender19getAnimationTrackExEi
IAnimationTrackEx* CSceneNodeAnimatorBlender::getAnimationTrackEx(std::int32_t index) {
    return animators[0]->getAnimationTrackEx(index);
}

// 0x65e244 _ZN6glitch7collada25CSceneNodeAnimatorBlender9setTargetEiPvPKNS0_15animation_track15CApplicatorInfoE
// Stores the target, releases the old applicator (destructor slot) and takes a clone of the new one.
void CSceneNodeAnimatorBlender::setTarget(std::int32_t index, void* target, const animation_track::CApplicatorInfo* applicator) {
    targets[index] = target;
    if (applicators[index] != nullptr) {
        delete applicators[index];
        applicators[index] = nullptr;
    }
    if (applicator != nullptr) {
        applicators[index] = applicator->clone();
    }
}

// 0x65e2ac _ZN6glitch7collada25CSceneNodeAnimatorBlender10getBindURIEi
const char* CSceneNodeAnimatorBlender::getBindURI(std::int32_t index) {
    return animators[0]->getBindURI(index);
}

// 0x65e2cc _ZN6glitch7collada25CSceneNodeAnimatorBlender14getTargetCountEv
std::int32_t CSceneNodeAnimatorBlender::getTargetCount() {
    return animators[0]->getTargetCount();
}

// 0x65e2ec _ZN6glitch7collada25CSceneNodeAnimatorBlender13getTargetSizeEi
std::int32_t CSceneNodeAnimatorBlender::getTargetSize(std::int32_t index) {
    return animators[0]->getTargetSize(index);
}

// 0x65e30c _ZN6glitch7collada25CSceneNodeAnimatorBlender14getTargetsSizeEv
std::int32_t CSceneNodeAnimatorBlender::getTargetsSize() {
    return animators[0]->getTargetsSize();
}

// 0x65e34c _ZN6glitch7collada25CSceneNodeAnimatorBlender17getAnimationValueEiiPv
// Empty in the original.
void CSceneNodeAnimatorBlender::getAnimationValue(std::int32_t, std::int32_t, void*) {}

// 0x366594 _ZN6glitch7collada25CSceneNodeAnimatorBlender16normalizeWeightsEv
// The weights are divided by their sum. A zero sum with at least one weight sets weights[0] to 1.0. The original's float return
// value is not read by any caller.
void CSceneNodeAnimatorBlender::normalizeWeights() {
    const std::size_t count = weights.size();
    if (count == 0) {
        return;
    }
    float sum = 0.0f;
    for (std::size_t i = 0; i != count; ++i) {
        sum = sum + weights[i];
    }
    if (sum != 0.0f) {
        for (std::size_t i = 0; i != count; ++i) {
            weights[i] = weights[i] / sum;
        }
    } else {
        weights[0] = 1.0f;
    }
}

// 0x65e48c _ZN6glitch7collada25CSceneNodeAnimatorBlender22computeAnimationValuesEj
// The children with a non-zero weight compute their values (child slot +0x4c), the weights are normalised, and for every enabled
// target the first child's track blends the children's values into the target (track slot +0x10).
void CSceneNodeAnimatorBlender::computeAnimationValues(std::uint32_t timeMs) {
    for (std::size_t i = 0; i < animators.size(); ++i) {
        if (weights[i] != 0.0f) {
            animators[i]->computeAnimationValues(timeMs);
        }
    }
    normalizeWeights();
    for (std::size_t i = 0; i < targets.size(); ++i) {
        if (isTrackEnabled(static_cast<std::int32_t>(i)) && targets[i] != nullptr) {
            IAnimationTrackEx* track = animators[0]->getAnimationTrackEx(static_cast<std::int32_t>(i));
            track->getBlendedValue(outputs[i], weights.data(), static_cast<int>(weights.size()), targets[i]);
        }
    }
}

// 0x65e350 _ZN6glitch7collada25CSceneNodeAnimatorBlender20applyAnimationValuesEj
// As computeAnimationValues, but the track applies the blended values to the target through the target's applicator (track slot +0x18).
void CSceneNodeAnimatorBlender::applyAnimationValues(std::uint32_t timeMs) {
    for (std::size_t i = 0; i < animators.size(); ++i) {
        if (weights[i] != 0.0f) {
            animators[i]->computeAnimationValues(timeMs);
        }
    }
    normalizeWeights();
    for (std::size_t i = 0; i < targets.size(); ++i) {
        if (isTrackEnabled(static_cast<std::int32_t>(i)) && targets[i] != nullptr) {
            IAnimationTrackEx* track = animators[0]->getAnimationTrackEx(static_cast<std::int32_t>(i));
            track->applyBlendedValue(outputs[i], weights.data(), static_cast<int>(weights.size()), targets[i], applicators[i]);
        }
    }
}

// 0x65ed98 _ZN6glitch7collada25CSceneNodeAnimatorBlender7compileEPSt6vectorIhNS_4core10SAllocatorIhLNS_6memory13E_MEMORY_HINTE0EEEE
// Sizes the buffer (child count times the targets size) when none is given, zeroes the weights and the buffer, and for every
// target of the first child lays out one block of child values (stride from getTargetSize): the first child writes into the start
// of the block (setTarget with no applicator), every other child gets the matching channel bound to its slot (setCompatibleTarget).
// Then the target and applicator vectors are sized, the flag at +0x24 is cleared and the bind is forced when there are children.
void CSceneNodeAnimatorBlender::compile(core::svector<std::uint8_t>* buffer) {
    const std::size_t childCount = animators.size();
    const std::int32_t targetsSize = getTargetsSize();
    const std::int32_t targetCount = getTargetCount();
    if (buffer == nullptr) {
        buffer = &valueBuffer;
        valueBuffer.resize(childCount * static_cast<std::size_t>(targetsSize), 0);
    }
    weights.resize(childCount, 0.0f);
    std::fill(weights.begin(), weights.end(), 0.0f);
    outputs.resize(static_cast<std::size_t>(targetCount), nullptr);
    ISceneNodeAnimator* primary = animators[0];
    std::fill(buffer->begin(), buffer->end(), static_cast<std::uint8_t>(0));
    std::size_t offset = 0;
    for (std::int32_t t = 0; t < targetCount; ++t) {
        const std::int32_t stride = getTargetSize(t);
        outputs[t] = buffer->data() + offset;
        primary->setTarget(t, outputs[t], nullptr);
        const SChannel* channel = primary->getAnimationTrack(t);
        std::uint8_t* slot = static_cast<std::uint8_t*>(outputs[t]) + stride;
        for (std::size_t k = 1; k < childCount; ++k) {
            animators[k]->setCompatibleTarget(*channel, slot);
            slot += stride;
        }
        offset += childCount * static_cast<std::size_t>(stride);
    }
    targets.resize(static_cast<std::size_t>(targetCount), nullptr);
    applicators.resize(static_cast<std::size_t>(targetCount), nullptr);
    needsCompile = false;
    if (!animators.empty()) {
        forceBind();
    }
}

}  // namespace glitch::collada
