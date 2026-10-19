// Tests of CFloatEx, CWeightEx, CVisibilityEx, CVector3dEx and CTextureTransformEx (collada/animation_track_ex.hpp,
// src/collada/animation_track_ex.cpp). The tracks are used through CAnimationTrackEx pointers (vtable slots); the expected values follow the
// Hex-Rays pseudocode of the corresponding binary functions.
#include <cmath>
#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/collada/animation_track_ex.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"

using namespace glitch;
using namespace glitch::collada;
using namespace glitch::collada::animation_track;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

bool near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

struct Fixture {
    SAnimationKeyframe frame{};
    SAnimationOutput output{};
    SAnimation animation{};
    SAnimationKeyCache cache{};
    Fixture(const void* data, int count) {
        output.count = count;
        output.data = data;
        animation.keyframes = &frame;
    }
    SAnimationAccessor accessor() { return SAnimationAccessor(&animation, &output, &cache); }
};

void testFloat() {
    CFloatEx track;
    const CAnimationTrackEx* base = &track;
    CHECK(base->getValueSize() == 4u);
    float value = 5.0f;
    base->getIdentityValue(&value);
    CHECK(value == 0.0f);
    float values[2] = {1.0f, 2.0f};
    float weights[2] = {0.5f, 2.0f};
    base->getBlendedValue(values, weights, 2, &value);
    CHECK(near(value, 4.5f));
    base->getAddedValue(values, weights, 0, &value);
    CHECK(value == 0.0f);

    const float keys[3] = {1.0f, 4.0f, 9.0f};
    Fixture fixture(keys, 3);
    const SAnimationAccessor accessor = fixture.accessor();
    base->getKeyBasedValue(accessor, 1, &value);
    CHECK(value == 4.0f);
    base->getKeyBasedValue(accessor, 0, 2, &value);  // nextKey - key
    CHECK(value == 8.0f);
    base->getKeyBasedValue(accessor, 0, 1, 0.5f, &value);
    CHECK(near(value, 2.5f));
    base->getKeyBasedValue(accessor, 0, 1, 2, 0.5f, &value);  // (v1 + f * (v2 - v1)) - v0
    CHECK(near(value, 5.5f));
    float target = 0.0f;
    float assigned = 7.0f;
    base->applyValue(&assigned, &target, nullptr);
    CHECK(target == 7.0f);
}

void testWeight() {
    CWeightEx track;
    const CAnimationTrackEx* base = &track;
    const float keys[3] = {1.0f, 4.0f, 9.0f};
    Fixture fixture(keys, 3);
    const SAnimationAccessor accessor = fixture.accessor();
    float value = 0.0f;
    base->getKeyBasedValue(accessor, 0, 2, &value);  // the value of nextKey (not a difference)
    CHECK(value == 9.0f);
    base->getKeyBasedValue(accessor, 0, 1, 2, 0.5f, &value);  // the interpolation between nextKey and lastKey
    CHECK(near(value, 6.5f));
    float target = -1.0f;
    base->applyKeyBasedValue(accessor, 1, &target, nullptr);  // written to the float target
    CHECK(target == 4.0f);
    base->applyKeyBasedValue(accessor, 0, 1, 0.5f, &target, nullptr);
    CHECK(near(target, 2.5f));
    float values[2] = {2.0f, 4.0f};
    float weights[2] = {0.5f, 0.25f};
    base->applyBlendedValue(values, weights, 2, &target, nullptr);
    CHECK(near(target, 2.0f));
    track.applyAddedValue(values, weights, 2, &target);
    CHECK(near(target, 2.0f));
    track.applyKeyBasedValue(accessor, 0, 2, &target, nullptr);  // the new slot: nextKey - key
    CHECK(target == 8.0f);
}

void testVisibility() {
    CVisibilityEx track;
    const CAnimationTrackEx* base = &track;
    CHECK(base->getValueSize() == 4u);
    std::uint32_t value = 0;
    base->getIdentityValue(&value);
    CHECK(value == 1u);

    const float keys[3] = {0.0f, 1.0f, 0.5f};
    Fixture fixture(keys, 3);
    const SAnimationAccessor accessor = fixture.accessor();
    base->getKeyBasedValue(accessor, 1, &value);
    CHECK(value == 1u);
    base->getKeyBasedValue(accessor, 2, &value);  // 0.5 < 1.0
    CHECK(value == 0u);
    base->getKeyBasedValue(accessor, 0, 1, &value);  // the delta slot gives the visibility of nextKey
    CHECK(value == 1u);
    base->getKeyBasedValue(accessor, 1, 2, 0.5f, &value);  // no interpolation: the first key
    CHECK(value == 1u);

    std::uint32_t flags[2] = {1, 0};
    float weights[2] = {1.0f, 1.0f};
    base->getBlendedValue(flags, weights, 2, &value);  // a zero value with a weight hides
    CHECK(value == 0u);
    float noWeight[2] = {1.0f, 0.0f};
    base->getBlendedValue(flags, noWeight, 2, &value);
    CHECK(value == 1u);
    std::uint32_t added[2] = {0, 1};
    base->getAddedValue(added, weights, 2, &value);  // a one value with a weight shows
    CHECK(value == 1u);
    base->getAddedValue(added, noWeight, 2, &value);
    CHECK(value == 0u);

    scene::CEmptySceneNode* node = new scene::CEmptySceneNode(0);
    base->applyKeyBasedValue(accessor, 0, node, nullptr);
    CHECK(!node->visible);
    base->applyKeyBasedValue(accessor, 1, node, nullptr);
    CHECK(node->visible);
    std::uint8_t retrieved = 0;
    base->retrieveValue(node, &retrieved);
    CHECK(retrieved == 1);
    std::uint8_t hide = 0;
    base->applyValue(&hide, node, nullptr);
    CHECK(!node->visible);
    base->retrieveValue(node, &retrieved);
    CHECK(retrieved == 0);
    // applyBlendedValue starts visible and hides on a zero value; applyAddedValue starts hidden and shows on a ZERO value (the original tests 0 here).
    track.applyBlendedValue(flags, weights, 2, node, nullptr);
    CHECK(!node->visible);
    track.applyBlendedValue(flags, noWeight, 2, node, nullptr);
    CHECK(node->visible);
    std::uint32_t zeros[2] = {0, 0};
    track.applyAddedValue(zeros, weights, 2, node, nullptr);
    CHECK(node->visible);
    float zeroWeights[2] = {0.0f, 0.0f};
    track.applyAddedValue(added, zeroWeights, 2, node, nullptr);  // no weight: stays hidden
    CHECK(!node->visible);
    node->drop();
}

void testVector3() {
    CVector3dEx track;
    const CAnimationTrackEx* base = &track;
    CHECK(base->getValueSize() == 12u);
    float out[3] = {9, 9, 9};
    base->getIdentityValue(out);
    CHECK(out[0] == 0.0f && out[1] == 0.0f && out[2] == 0.0f);

    float values[9] = {0, 0, 0, 10, 20, 30, 20, 40, 60};
    float weights[3] = {1.0f, 1.0f, 1.0f};
    base->getBlendedValue(values, weights, 3, out);  // the running blend: (0 -> 10) at 1/2, then (-> 20) at 1/3
    CHECK(near(out[0], 10.0f) && near(out[1], 20.0f) && near(out[2], 30.0f));
    float pair[2] = {1.0f, 3.0f};
    base->getBlendedValue(values, pair, 2, out);
    CHECK(near(out[0], 7.5f) && near(out[1], 15.0f) && near(out[2], 22.5f));
    base->getBlendedValue(values + 3, pair, 1, out);  // one record: copied
    CHECK(near(out[0], 10.0f) && near(out[2], 30.0f));
    out[0] = 5.0f;
    base->getBlendedValue(values, pair, 0, out);  // none: the output is untouched
    CHECK(out[0] == 5.0f);
    float added[2] = {1.0f, 2.0f};
    base->getAddedValue(values, added, 2, out);  // the sum
    CHECK(near(out[0], 20.0f) && near(out[1], 40.0f) && near(out[2], 60.0f));

    // The weight form mixes the new value into the output: out = (1 - w) * out + w * blended.
    float mixed[3] = {1.0f, 1.0f, 1.0f};
    float two[6] = {5, 5, 5, 5, 5, 5};
    float half[2] = {1.0f, 1.0f};
    base->getBlendedValue(two, half, 2, mixed, 0.5f);
    CHECK(near(mixed[0], 3.0f) && near(mixed[1], 3.0f) && near(mixed[2], 3.0f));

    const float keys[9] = {1, 2, 3, 3, 6, 9, 5, 10, 15};
    Fixture fixture(keys, 3);
    const SAnimationAccessor accessor = fixture.accessor();
    base->getKeyBasedValue(accessor, 1, out);
    CHECK(out[0] == 3.0f && out[1] == 6.0f && out[2] == 9.0f);
    base->getKeyBasedValue(accessor, 0, 2, out);
    CHECK(out[0] == 4.0f && out[1] == 8.0f && out[2] == 12.0f);
    base->getKeyBasedValue(accessor, 0, 1, 0.5f, out);
    CHECK(near(out[0], 2.0f) && near(out[1], 4.0f) && near(out[2], 6.0f));
    base->getKeyBasedValue(accessor, 0, 1, 2, 0.5f, out);  // (v1 + f * (v2 - v1)) - v0
    CHECK(near(out[0], 3.0f) && near(out[1], 6.0f) && near(out[2], 9.0f));
    mixed[0] = mixed[1] = mixed[2] = 0.0f;
    base->getKeyBasedValue(accessor, 1, mixed, 0.5f);  // (1 - 0.5) * 0 + 0.5 * (3, 6, 9)
    CHECK(near(mixed[0], 1.5f) && near(mixed[1], 3.0f) && near(mixed[2], 4.5f));
    float target[3] = {};
    float assigned[3] = {7, 8, 9};
    base->applyValue(assigned, target, nullptr);
    CHECK(target[0] == 7.0f && target[2] == 9.0f);
}

void testTextureTransform() {
    CTextureTransformEx track;
    const CAnimationTrackEx* base = &track;
    CHECK(base->getValueSize() == 20u);
    float identity[5] = {9, 9, 9, 9, 9};
    base->getIdentityValue(identity);
    CHECK(identity[0] == 0.0f && identity[1] == 0.0f && identity[2] == 0.0f && identity[3] == 1.0f && identity[4] == 1.0f);

    // Blend: the records are scaled by their weight in place, the sums start at (0, 0, 0, 1, 1).
    float records[10] = {2, 4, 90, 1, 1, 4, 8, 0, 3, 3};
    float weights[2] = {0.5f, 0.5f};
    float sums[5] = {};
    base->getBlendedValue(records, weights, 2, sums);
    CHECK(near(sums[0], 3.0f) && near(sums[1], 6.0f) && near(sums[2], 45.0f) && near(sums[3], 3.0f) && near(sums[4], 3.0f));
    CHECK(near(records[0], 1.0f) && near(records[2], 45.0f) && near(records[8], 1.5f));
    float none[5] = {};
    base->getAddedValue(records, weights, 0, none);
    CHECK(none[0] == 0.0f && none[3] == 1.0f && none[4] == 1.0f);

    // One channel (type 87: the x translation) with the keys 10 / 30 at 0 / 1000 ms (32-bit key times, time type 4); the other components
    // come from the default value.
    const float values[2] = {10.0f, 30.0f};
    const std::int32_t times[2] = {0, 1000};
    SAnimationOutput outputs[2];
    outputs[0].count = 2;
    outputs[0].data = values;
    outputs[1].count = 2;
    outputs[1].data = times;
    SAnimationKeyframe frame{};
    frame.interpolationType = 1;
    frame.timeType = 4;
    frame.keyTimeIndex = 1;
    frame.outputIndex = 0;
    SChannel channel{};
    channel.type = 87;
    const float defaults[5] = {1, 2, 3, 4, 5};
    SAnimationDefaultValue defaultValue{};
    defaultValue.value = defaults;
    SAnimation animation{};
    animation.keyframes = &frame;
    animation.channelCount = 1;
    animation.channels = &channel;
    animation.defaultValue = &defaultValue;
    SAnimationKeyCache cache{};
    const SAnimationAccessor accessor(&animation, outputs, &cache);
    float value[5] = {};
    int keyIndex = 0;
    base->getValue(accessor, 500, value, keyIndex, true);
    CHECK(near(value[0], 20.0f) && value[1] == 2.0f && value[2] == 3.0f && value[3] == 4.0f && value[4] == 5.0f);
    base->getValue(accessor, 500, value, keyIndex, false);  // without the interpolation the key itself
    CHECK(near(value[0], 10.0f));
    // The static helpers.
    float lerp = 0.0f;
    CTextureTransformEx::getKeyBasedValueEx(accessor, 0, 0, 1, 0.25f, &lerp);
    CHECK(near(lerp, 15.0f));
    CTextureTransformEx::getKeyBasedValueEx(accessor, 0, 0, 1, &lerp);
    CHECK(near(lerp, 20.0f));
    CTextureTransformEx::getKeyBasedValueEx(accessor, 0, 0, 0, 1, 0.5f, &lerp);  // (10 + 0.5 * (30 - 10)) - 10
    CHECK(near(lerp, 10.0f));
    // The relative value: at 500 ms relative to the key of 0 ms (the key index 0): (10 + 0.5 * 20) - 10.
    base->getValue(accessor, 0, 500, value, keyIndex, true);
    CHECK(near(value[0], 10.0f) && value[1] == 2.0f);
}

}  // namespace

int main() {
    testFloat();
    testWeight();
    testVisibility();
    testVector3();
    testTextureTransform();
    std::printf("%s\n", failures ? "animation_track_ex: FAILED" : "animation_track_ex: ok");
    return failures != 0;
}
