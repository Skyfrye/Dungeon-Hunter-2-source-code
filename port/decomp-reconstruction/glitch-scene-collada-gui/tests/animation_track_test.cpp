// Tests of the canonical animation track templates (collada/animation_track.hpp, src/collada/animation_track.cpp): the value size and
// identity of each mixin kind, the four key readers (key, difference, interpolation, interpolation relative to a base key) for the float,
// byte, quantised and component forms, the blend / added value, the rotation blender, and the apply / retrieve paths on a scene node and a
// light. The expected values follow the Hex-Rays pseudocode of the corresponding binary functions (the arithmetic order is noted where it
// matters). The tracks are used through IAnimationTrackEx pointers so that the vtable slots are checked as well.
#include <cmath>
#include <cstdio>
#include <cstring>

#include "glitch-scene-collada-gui/collada/animation_track.hpp"
#include "glitch-scene-collada-gui/scene/CEmptySceneNode.hpp"
#include "glitch-video/light.hpp"

using namespace glitch;
using namespace glitch::collada;
using namespace glitch::collada::animation_track;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

bool near(float a, float b) { return std::fabs(a - b) < 1e-4f; }

// One animation with one keyframe whose output record is `data`; the offset / scale record and the default value are optional.
struct Fixture {
    SAnimationKeyframe frame{};
    SAnimationOutput output{};
    SAnimationDefaultValue defaultValue{};
    SAnimationOffsetScale offsetScale{};
    SAnimation animation{};
    SAnimationKeyCache cache{};

    Fixture(const void* data, int count, const float* defaults = nullptr, const float* scales = nullptr, const float* offsets = nullptr) {
        frame.outputIndex = 0;
        output.count = count;
        output.data = data;
        animation.keyframes = &frame;
        if (defaults != nullptr) {
            defaultValue.value = defaults;
            animation.defaultValue = &defaultValue;
        }
        if (scales != nullptr) {
            offsetScale.scales = scales;
            offsetScale.offsets = offsets;
            animation.offsetScale = &offsetScale;
        }
    }
    SAnimationAccessor accessor() { return SAnimationAccessor(&animation, &output, &cache); }
};

using Float4Material = CApplyValueEx<float[4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float[4], float[4]>>, -1, float>>;
using Float1Material = CApplyValueEx<float, CMixin<float, 1, SMaterialSetParam<SAnimationTypes<float, float>>, -1, float>>;
using Float4MaterialY = CApplyValueEx<float[4], CMixin<float, 4, SMaterialSetParam<SAnimationTypes<float[4], float[4]>>, 1, float>>;
using Byte4Material = CApplyValueEx<unsigned char[4], CMixin<unsigned char, 4, SMaterialSetParam<SAnimationTypes<unsigned char[4], video::SColor>>, -1, unsigned char>>;
using PositionFloat = CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<float>>;
using PositionShort = CApplyValueEx<core::vector3d<float>, CSceneNodePositionMixin<short>>;
using PositionYFloat = CApplyValueEx<core::vector3d<float>, CSceneNodePositionComponentMixin<CSceneNodePositionYEx<float>, 1, float>>;
using ScaleChar = CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<char>>;
using QuatFloat = CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<float>>;
using QuatShort = CApplyValueEx<core::quaternion, CSceneNodeQuaternionMixin<short>>;
using QuatAngleFloat = CApplyValueEx<core::quaternion, CSceneNodeQuaternionAngleMixin<float>>;
using LightColor = CApplyValueEx<core::vector3d<float>, CLightColorMixin<unsigned char>>;

template <class TApply>
const CAnimationTrackEx* track() {
    return CVirtualEx<TApply>::getInstance();
}

void testSizesAndIdentity() {
    CHECK(track<Float4Material>()->getValueSize() == 16u);
    CHECK(track<Float1Material>()->getValueSize() == 4u);
    CHECK(track<Byte4Material>()->getValueSize() == 4u);
    CHECK(track<PositionFloat>()->getValueSize() == 12u);
    CHECK(track<QuatFloat>()->getValueSize() == 16u);
    CHECK(track<LightColor>()->getValueSize() == 3u);

    float value[4] = {9, 9, 9, 9};
    track<QuatFloat>()->getIdentityValue(value);
    CHECK(value[0] == 0.0f && value[1] == 0.0f && value[2] == 0.0f && value[3] == 1.0f);
    track<PositionFloat>()->getIdentityValue(value);  // all zero (also for the scale tracks)
    CHECK(value[0] == 0.0f && value[1] == 0.0f && value[2] == 0.0f && value[3] == 1.0f);
    std::uint8_t bytes[4] = {7, 7, 7, 7};
    track<Byte4Material>()->getIdentityValue(bytes);
    CHECK(bytes[0] == 0 && bytes[3] == 0);
    // One object per instantiation.
    CHECK(CVirtualEx<PositionFloat>::getInstance() == CVirtualEx<PositionFloat>::getInstance());
    CHECK(static_cast<const void*>(CVirtualEx<PositionFloat>::getInstance()) != static_cast<const void*>(CVirtualEx<ScaleChar>::getInstance()));
}

void testBlend() {
    const float values[8] = {1, 2, 3, 4, 10, 20, 30, 40};
    const float weights[2] = {0.25f, 0.5f};
    float out[4] = {};
    track<Float4Material>()->getBlendedValue(const_cast<float*>(values), const_cast<float*>(weights), 2, out);
    CHECK(near(out[0], 5.25f) && near(out[1], 10.5f) && near(out[2], 15.75f) && near(out[3], 21.0f));
    track<Float4Material>()->getAddedValue(const_cast<float*>(values), const_cast<float*>(weights), 1, out);  // one record: copied
    CHECK(out[0] == 1.0f && out[3] == 4.0f);
    track<Float4Material>()->getBlendedValue(const_cast<float*>(values), const_cast<float*>(weights), 0, out);  // none: zero
    CHECK(out[0] == 0.0f && out[3] == 0.0f);

    // Byte colours: the float sum is converted to unsigned (truncating) for the bytes.
    const std::uint8_t colors[8] = {10, 20, 30, 40, 50, 60, 70, 80};
    const float colorWeights[2] = {0.5f, 0.5f};
    std::uint8_t result[4] = {};
    track<Byte4Material>()->getBlendedValue(const_cast<std::uint8_t*>(colors), const_cast<float*>(colorWeights), 2, result);
    CHECK(result[0] == 30 && result[1] == 40 && result[2] == 50 && result[3] == 60);
    const float big[2] = {2.0f, 2.0f};
    track<Byte4Material>()->getBlendedValue(const_cast<std::uint8_t*>(colors), const_cast<float*>(big), 2, result);  // 120, 160, 200, 240
    CHECK(result[0] == 120 && result[1] == 160 && result[2] == 200 && result[3] == 240);
}

void testFloatKeys() {
    const float keys[12] = {1, 2, 3, 4, 3, 6, 9, 12, 5, 10, 15, 20};
    Fixture fixture(keys, 3);
    const SAnimationAccessor accessor = fixture.accessor();
    const CAnimationTrackEx* material = track<Float4Material>();
    float out[4] = {};
    material->getKeyBasedValue(accessor, 1, out);
    CHECK(out[0] == 3.0f && out[1] == 6.0f && out[2] == 9.0f && out[3] == 12.0f);
    material->getKeyBasedValue(accessor, 0, 2, out);  // difference
    CHECK(out[0] == 4.0f && out[1] == 8.0f && out[2] == 12.0f && out[3] == 16.0f);
    material->getKeyBasedValue(accessor, 0, 1, 0.25f, out);  // records 0 and 1 with the weights {0.75, 0.25}
    CHECK(near(out[0], 1.5f) && near(out[1], 3.0f) && near(out[2], 4.5f) && near(out[3], 6.0f));
    material->getKeyBasedValue(accessor, 0, 1, 2, 0.5f, out);  // (v1 + f * (v2 - v1)) - v0
    CHECK(near(out[0], 3.0f) && near(out[1], 6.0f) && near(out[2], 9.0f) && near(out[3], 12.0f));
    // The interpolation reads the record after `key`, not `nextKey`.
    material->getKeyBasedValue(accessor, 0, 2, 0.5f, out);
    CHECK(near(out[0], 2.0f) && near(out[3], 8.0f));

    // A single float.
    const float scalars[3] = {1.0f, 3.0f, 8.0f};
    Fixture scalarFixture(scalars, 3);
    const SAnimationAccessor scalarAccessor = scalarFixture.accessor();
    float one = 0.0f;
    track<Float1Material>()->getKeyBasedValue(scalarAccessor, 1, 2, 0.5f, &one);
    CHECK(near(one, 5.5f));
    track<Float1Material>()->getKeyBasedValue(scalarAccessor, 0, 2, &one);
    CHECK(near(one, 7.0f));
}

void testByteKeys() {
    const std::uint8_t keys[12] = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120};
    Fixture fixture(keys, 3);
    const SAnimationAccessor accessor = fixture.accessor();
    const CAnimationTrackEx* colors = track<Byte4Material>();
    std::uint8_t out[4] = {};
    colors->getKeyBasedValue(accessor, 2, out);
    CHECK(out[0] == 90 && out[3] == 120);
    colors->getKeyBasedValue(accessor, 0, 1, out);  // difference, bytes
    CHECK(out[0] == 40 && out[1] == 40 && out[2] == 40 && out[3] == 40);
    colors->getKeyBasedValue(accessor, 0, 1, 0.5f, out);  // bytes of the two-record blend: (10 * 0.5 + 0) + 50 * 0.5
    CHECK(out[0] == 30 && out[1] == 40 && out[2] == 50 && out[3] == 60);
    colors->getKeyBasedValue(accessor, 0, 1, 2, 0.5f, out);  // (unsigned)(50 + 0.5 * (90 - 50)) - 10 = 60
    CHECK(out[0] == 60 && out[1] == 60 && out[2] == 60 && out[3] == 60);
}

void testQuantisedKeys() {
    const std::int16_t keys[6] = {2, 4, 6, 10, 20, 30};
    const float scales[3] = {0.5f, 0.5f, 0.5f};
    const float offsets[3] = {1.0f, 1.0f, 1.0f};
    Fixture fixture(keys, 2, nullptr, scales, offsets);
    const SAnimationAccessor accessor = fixture.accessor();
    const CAnimationTrackEx* position = track<PositionShort>();
    float out[3] = {};
    position->getKeyBasedValue(accessor, 1, out);  // key * scale + offset
    CHECK(near(out[0], 6.0f) && near(out[1], 11.0f) && near(out[2], 16.0f));
    position->getKeyBasedValue(accessor, 0, 1, out);
    CHECK(near(out[0], 4.0f) && near(out[1], 8.0f) && near(out[2], 12.0f));
    position->getKeyBasedValue(accessor, 0, 1, 0.5f, out);  // the two records dequantised, blended
    CHECK(near(out[0], 4.0f) && near(out[1], 7.0f) && near(out[2], 10.0f));

    const std::int8_t scaleKeys[6] = {1, 2, 3, 4, 5, 6};
    const float scaleScales[3] = {2.0f, 2.0f, 2.0f};
    const float scaleOffsets[3] = {0.0f, 0.0f, 0.0f};
    Fixture scaleFixture(scaleKeys, 2, nullptr, scaleScales, scaleOffsets);
    const SAnimationAccessor scaleAccessor = scaleFixture.accessor();
    track<ScaleChar>()->getKeyBasedValue(scaleAccessor, 0, 1, 0.0f, out);
    CHECK(near(out[0], 2.0f) && near(out[1], 4.0f) && near(out[2], 6.0f));
}

void testComponentKeys() {
    const float keys[3] = {3.0f, 7.0f, 15.0f};
    const float defaults[3] = {10.0f, 20.0f, 30.0f};
    Fixture withDefault(keys, 3, defaults);
    const SAnimationAccessor accessor = withDefault.accessor();
    const CAnimationTrackEx* positionY = track<PositionYFloat>();
    float out[3] = {};
    positionY->getKeyBasedValue(accessor, 1, out);  // component 1 from the key, the others from the default value
    CHECK(out[0] == 10.0f && out[1] == 7.0f && out[2] == 30.0f);
    positionY->getKeyBasedValue(accessor, 0, 1, 0.5f, out);
    CHECK(out[0] == 10.0f && near(out[1], 5.0f) && out[2] == 30.0f);
    positionY->getKeyBasedValue(accessor, 0, 1, out);
    CHECK(out[0] == 10.0f && near(out[1], 4.0f) && out[2] == 30.0f);
    positionY->getKeyBasedValue(accessor, 0, 1, 2, 0.5f, out);  // ((v1 - v0) + f * ((v2 - v0) - (v1 - v0)))
    CHECK(out[0] == 10.0f && near(out[1], 8.0f) && out[2] == 30.0f);

    // Without a default value only element 0 is written, whatever the component.
    Fixture noDefault(keys, 3);
    const SAnimationAccessor bare = noDefault.accessor();
    float bareOut[3] = {-1.0f, -1.0f, -1.0f};
    positionY->getKeyBasedValue(bare, 2, bareOut);
    CHECK(bareOut[0] == 15.0f && bareOut[1] == -1.0f && bareOut[2] == -1.0f);

    // A material component (float[4], component 1) fills the other three from the default.
    const float materialDefaults[4] = {1, 2, 3, 4};
    Fixture material(keys, 3, materialDefaults);
    const SAnimationAccessor materialAccessor = material.accessor();
    float four[4] = {};
    track<Float4MaterialY>()->getKeyBasedValue(materialAccessor, 2, four);
    CHECK(four[0] == 1.0f && four[1] == 15.0f && four[2] == 3.0f && four[3] == 4.0f);
}

void testQuaternions() {
    const float angle = 1.57079632679f;  // 90 degrees
    const float half = std::sin(angle / 2.0f);
    const float cosHalf = std::cos(angle / 2.0f);
    float quats[12] = {0, 0, 0, 1, 0, 0, half, cosHalf, 0, 0, half, cosHalf};
    const CAnimationTrackEx* rotation = track<QuatFloat>();
    float out[4] = {};
    // Weights 0.5 / 0.5: the half way rotation.
    float weights[2] = {0.5f, 0.5f};
    rotation->getBlendedValue(quats, weights, 2, out);
    CHECK(near(out[0], 0.0f) && near(out[1], 0.0f) && near(out[2], std::sin(angle / 4.0f)) && near(out[3], std::cos(angle / 4.0f)));
    // One key, weight 1: the key itself. Leading zero weights are skipped.
    float single[1] = {1.0f};
    rotation->getBlendedValue(quats + 4, single, 1, out);
    CHECK(near(out[2], half) && near(out[3], cosHalf));
    float skipped[3] = {0.0f, 1.0f, 0.0f};
    rotation->getBlendedValue(quats, skipped, 3, out);
    CHECK(near(out[2], half) && near(out[3], cosHalf));
    // No weight: the identity.
    float zeros[2] = {0.0f, 0.0f};
    rotation->getBlendedValue(quats, zeros, 2, out);
    CHECK(near(out[0], 0.0f) && near(out[3], 1.0f));
    // Added value: the product of slerp(identity, key, weight); two half way steps of the same rotation give the whole rotation.
    float addWeights[2] = {0.5f, 0.5f};
    rotation->getAddedValue(quats + 4, addWeights, 2, out);
    CHECK(near(out[2], half) && near(out[3], cosHalf));
    // A negative weight undoes the rotation (the conjugate with the opposite weight).
    float negative[2] = {1.0f, -1.0f};
    rotation->getAddedValue(quats + 4, negative, 2, out);
    CHECK(near(out[2], 0.0f) && near(out[3], 1.0f));

    // Float keys through the vtable: the interpolation is the blender on the records key and key + 1.
    Fixture fixture(quats, 3);
    const SAnimationAccessor accessor = fixture.accessor();
    rotation->getKeyBasedValue(accessor, 0, 1, 0.5f, out);
    CHECK(near(out[2], std::sin(angle / 4.0f)) && near(out[3], std::cos(angle / 4.0f)));
    // The difference of two keys is conjugate(key) * nextKey.
    rotation->getKeyBasedValue(accessor, 1, 0, out);
    CHECK(near(out[2], -half) && near(out[3], cosHalf));

    // Quantised rotation: keys * scale + offset.
    const std::int16_t shortKeys[8] = {0, 0, 0, 100, 0, 0, 100, 100};
    const float scales[4] = {0.01f, 0.01f, 0.01f, 0.01f};
    const float offsets[4] = {0.0f, 0.0f, 0.0f, 0.0f};
    Fixture quantised(shortKeys, 2, nullptr, scales, offsets);
    const SAnimationAccessor quantisedAccessor = quantised.accessor();
    track<QuatShort>()->getKeyBasedValue(quantisedAccessor, 1, out);
    CHECK(near(out[0], 0.0f) && near(out[2], 1.0f) && near(out[3], 1.0f));
}

void testAngleAxis() {
    // CSceneNodeQuaternionAngleMixin<float>: one angle per key, the axis comes from the default value.
    const float angles[2] = {0.0f, 3.14159265f};
    const float axis[3] = {0.0f, 0.0f, 1.0f};
    Fixture fixture(angles, 2, axis);
    const SAnimationAccessor accessor = fixture.accessor();
    float out[4] = {};
    track<QuatAngleFloat>()->getKeyBasedValue(accessor, 1, out);
    CHECK(near(out[0], 0.0f) && near(out[1], 0.0f) && near(out[2], 1.0f) && near(out[3], 0.0f));
    track<QuatAngleFloat>()->getKeyBasedValue(accessor, 0, 1, 0.5f, out);  // half way: 90 degrees about z
    CHECK(near(out[2], std::sin(3.14159265f / 4.0f)) && near(out[3], std::cos(3.14159265f / 4.0f)));
}

void testSceneNodeTargets() {
    scene::CEmptySceneNode* node = new scene::CEmptySceneNode(0);
    const float keys[6] = {1, 2, 3, 4, 5, 6};
    Fixture fixture(keys, 2);
    const SAnimationAccessor accessor = fixture.accessor();

    // Position: key 1 / interpolation / blended value go to setPosition.
    const CAnimationTrackEx* position = track<PositionFloat>();
    position->applyKeyBasedValue(accessor, 1, node, nullptr);
    CHECK(node->getPosition().X == 4.0f && node->getPosition().Y == 5.0f && node->getPosition().Z == 6.0f);
    position->applyKeyBasedValue(accessor, 0, 1, 0.5f, node, nullptr);
    CHECK(near(node->getPosition().X, 2.5f) && near(node->getPosition().Z, 4.5f));
    float values[6] = {1, 1, 1, 3, 3, 3};
    float weights[2] = {0.5f, 0.5f};
    position->applyBlendedValue(values, weights, 2, node, nullptr);
    CHECK(near(node->getPosition().X, 2.0f) && near(node->getPosition().Y, 2.0f));
    float read[3] = {};
    position->retrieveValue(node, read);
    CHECK(near(read[0], 2.0f) && near(read[2], 2.0f));
    float assigned[3] = {7, 8, 9};
    position->applyValue(assigned, node, nullptr);
    CHECK(node->getPosition().X == 7.0f && node->getPosition().Z == 9.0f);

    // Scale and rotation.
    const CAnimationTrackEx* scale = track<CApplyValueEx<core::vector3d<float>, CSceneNodeScaleMixin<float>>>();
    scale->applyKeyBasedValue(accessor, 0, node, nullptr);
    CHECK(node->getScale().X == 1.0f && node->getScale().Y == 2.0f && node->getScale().Z == 3.0f);
    const float quaternion[4] = {0, 0, 1, 0};
    const CAnimationTrackEx* rotation = track<QuatFloat>();
    float rotationOut[4] = {};
    rotation->applyValue(const_cast<float*>(quaternion), node, nullptr);
    rotation->retrieveValue(node, rotationOut);
    CHECK(rotationOut[2] == 1.0f && rotationOut[3] == 0.0f);

    // A component track keeps the default values of the other components.
    const float yKeys[2] = {50.0f, 60.0f};
    const float defaults[3] = {1.0f, 2.0f, 3.0f};
    Fixture componentFixture(yKeys, 2, defaults);
    const SAnimationAccessor componentAccessor = componentFixture.accessor();
    track<PositionYFloat>()->applyKeyBasedValue(componentAccessor, 1, node, nullptr);
    CHECK(node->getPosition().X == 1.0f && node->getPosition().Y == 60.0f && node->getPosition().Z == 3.0f);
    node->drop();
}

void testLightColor() {
    video::CLight light(nullptr);
    const CAnimationTrackEx* color = track<LightColor>();
    std::uint8_t rgb[3] = {255, 0, 51};
    color->applyValue(rgb, &light, nullptr);
    CHECK(near(light.m_diffuseColor.r, 1.0f) && near(light.m_diffuseColor.g, 0.0f) && near(light.m_diffuseColor.b, 0.2f) &&
          near(light.m_diffuseColor.a, 1.0f));
    std::uint8_t back[3] = {};
    color->retrieveValue(&light, back);
    CHECK(back[0] == 255 && back[1] == 0 && back[2] == 51);

    // Keys: three bytes per colour; the interpolation blends the records key and key + 1.
    const std::uint8_t keys[6] = {0, 100, 200, 100, 200, 100};
    Fixture fixture(keys, 2);
    const SAnimationAccessor accessor = fixture.accessor();
    color->applyKeyBasedValue(accessor, 0, 1, 0.5f, &light, nullptr);
    CHECK(near(light.m_diffuseColor.r, 50.0f / 255.0f) && near(light.m_diffuseColor.g, 150.0f / 255.0f) &&
          near(light.m_diffuseColor.b, 150.0f / 255.0f));
}

void testBlender() {
    // The blender is also callable directly (what the quaternion mixin does).
    float quats[8] = {0, 0, 0, 1, 0, 0, 0, 1};
    float weights[2] = {0.3f, 0.7f};
    float out[4] = {};
    CBlender<core::quaternion, 1, core::quaternion>::getBlendedValueEx(quats, weights, 2, out);
    CHECK(near(out[3], 1.0f));
    float single[1] = {1.0f};
    CBlender<core::quaternion, 1, core::quaternion>::getBlendedValueEx(quats, single, 1, out);
    CHECK(near(out[3], 1.0f));
}

}  // namespace

int main() {
    testSizesAndIdentity();
    testBlend();
    testFloatKeys();
    testByteKeys();
    testQuantisedKeys();
    testComponentKeys();
    testQuaternions();
    testAngleAxis();
    testSceneNodeTargets();
    testLightColor();
    testBlender();
    std::printf("%s\n", failures ? "animation_track: FAILED" : "animation_track: ok");
    return failures != 0;
}
