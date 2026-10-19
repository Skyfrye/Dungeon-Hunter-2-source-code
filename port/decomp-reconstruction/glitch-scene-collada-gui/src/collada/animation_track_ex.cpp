// Bodies of CFloatEx, CWeightEx, CVisibilityEx and CVector3dEx (canonical classes: collada/animation_track_ex.hpp). This file replaces the
// stand-ins of recon/slice_28.cpp, texture_transform_ex.cpp, vector3d_ex.cpp, visibility_ex.cpp and collada_scene_accessors.cpp.
//
// A comment `// 0xADDR symbol` precedes each function; PARTIAL in the comment means the ledger row stays partial. Destructors D0 (the deleting
// forms) are compiler generated.
#include "glitch-scene-collada-gui/collada/animation_track_ex.hpp"

#include <cstring>

#include "glitch-core-io/core/matrix_builders.hpp"
#include "glitch-scene-collada-gui/collada/animation_track.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::collada::animation_track {

namespace {

// The float key array of the accessor (getOutput(0) + 4).
const float* floatKeys(const SAnimationAccessor& accessor) {
    return static_cast<const float*>(accessor.getOutput(0)->data);
}

// The weighted sum of CFloatEx / CWeightEx: the result is stored after every record (so an empty list stores 0.0).
float weightedSum(const void* values, const float* weights, int count) {
    const float* in = static_cast<const float*>(values);
    float result = 0.0f;
    if (count > 0) {
        float sum = 0.0f;
        for (int i = 0; i < count; ++i) {
            sum = sum + (in[i] * weights[i]);
            result = sum;
        }
    }
    return result;
}

// out = (1 - weight) * out + weight * value, per component (CVector3dEx).
void mixVector3(float* out, const float* value, float weight) {
    const float inverse = 1.0f - weight;
    const float y = (inverse * out[1]) + (weight * value[1]);
    const float z = (inverse * out[2]) + (weight * value[2]);
    const float x = (inverse * out[0]) + (weight * value[0]);
    out[2] = z;
    out[0] = x;
    out[1] = y;
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------------------------
// CFloatEx
// ---------------------------------------------------------------------------------------------------------------------------------------

// 0x6e31e4 _ZN6glitch7collada15animation_track8CFloatExD1Ev (empty; D0 0x6e33e0)
CFloatEx::~CFloatEx() {}

// 0x6e3110 _ZNK6glitch7collada15animation_track8CFloatEx12getValueSizeEv
std::uint32_t CFloatEx::getValueSize() const {
    return 4;
}

// 0x6e3118 _ZNK6glitch7collada15animation_track8CFloatEx16getIdentityValueEPv
void CFloatEx::getIdentityValue(void* out) const {
    *static_cast<float*>(out) = 0.0f;
}

// 0x6e3124 _ZNK6glitch7collada15animation_track8CFloatEx15getBlendedValueEPvPfiS3_
int CFloatEx::getBlendedValue(void* values, float* weights, int count, void* out) const {
    *static_cast<float*>(out) = weightedSum(values, weights, count);
    return 0;
}

// 0x6e3184 _ZNK6glitch7collada15animation_track8CFloatEx13getAddedValueEPvPfiS3_
int CFloatEx::getAddedValue(void* values, float* weights, int count, void* out) const {
    *static_cast<float*>(out) = weightedSum(values, weights, count);
    return 0;
}

// 0x6e3288 _ZN6glitch7collada15animation_track8CFloatEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
void CFloatEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out) {
    const float* keys = floatKeys(accessor);
    *static_cast<float*>(out) = keys[nextKey] - keys[key];
}

// 0x6e32f4 _ZN6glitch7collada15animation_track8CFloatEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
void CFloatEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) {
    const float* keys = floatKeys(accessor);
    *static_cast<float*>(out) = (keys[nextKey] + (fraction * (keys[lastKey] - keys[nextKey]))) - keys[key];
}

// 0x6e3374 _ZN6glitch7collada15animation_track8CFloatEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
void CFloatEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) {
    const float* keys = floatKeys(accessor);
    *static_cast<float*>(out) = keys[key] + (fraction * (keys[nextKey] - keys[key]));
}

// 0x6e33c4 _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
int CFloatEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, fraction, out);
    return 0;
}

// 0x6e3350 _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
int CFloatEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, lastKey, fraction, out);
    return 0;
}

// 0x6e32cc _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
int CFloatEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const {
    *static_cast<float*>(out) = floatKeys(accessor)[key];
    return 0;
}

// 0x6e32b8 _ZNK6glitch7collada15animation_track8CFloatEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
int CFloatEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, out);
    return 0;
}

// 0x6e3258 _ZNK6glitch7collada15animation_track8CFloatEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
// memcpy(target, value, getValueSize()) with the size taken from the virtual call.
int CFloatEx::applyValue(void* value, void* target, CApplicatorInfo*) const {
    std::memcpy(target, value, getValueSize());
    return 0;
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// CWeightEx
// ---------------------------------------------------------------------------------------------------------------------------------------

// 0x6e4f48 _ZN6glitch7collada15animation_track9CWeightExD1Ev (empty; D0 0x6e4f4c)
CWeightEx::~CWeightEx() {}

// 0x6e4db4 _ZNK6glitch7collada15animation_track9CWeightEx12getValueSizeEv
std::uint32_t CWeightEx::getValueSize() const {
    return 4;
}

// 0x6e4dbc _ZNK6glitch7collada15animation_track9CWeightEx16getIdentityValueEPv
void CWeightEx::getIdentityValue(void* out) const {
    *static_cast<float*>(out) = 0.0f;
}

// 0x6e4dc8 _ZNK6glitch7collada15animation_track9CWeightEx15getBlendedValueEPvPfiS3_
int CWeightEx::getBlendedValue(void* values, float* weights, int count, void* out) const {
    *static_cast<float*>(out) = weightedSum(values, weights, count);
    return 0;
}

// 0x6e4e28 _ZNK6glitch7collada15animation_track9CWeightEx13getAddedValueEPvPfiS3_
int CWeightEx::getAddedValue(void* values, float* weights, int count, void* out) const {
    *static_cast<float*>(out) = weightedSum(values, weights, count);
    return 0;
}

// 0x6e4e88 _ZNK6glitch7collada15animation_track9CWeightEx17applyBlendedValueEPvPfiS3_PNS1_15CApplicatorInfoE
int CWeightEx::applyBlendedValue(void* values, float* weights, int count, void* target, CApplicatorInfo*) const {
    *static_cast<float*>(target) = weightedSum(values, weights, count);
    return 0;
}

// 0x6e4ee8 _ZNK6glitch7collada15animation_track9CWeightEx15applyAddedValueEPvPfiS3_
int CWeightEx::applyAddedValue(void* values, float* weights, int count, void* target) const {
    *static_cast<float*>(target) = weightedSum(values, weights, count);
    return 0;
}

// 0x6e4fbc _ZN6glitch7collada15animation_track9CWeightEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
void CWeightEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out) {
    const float* keys = floatKeys(accessor);
    *static_cast<float*>(out) = keys[nextKey] - keys[key];
}

// 0x6e5028 _ZN6glitch7collada15animation_track9CWeightEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
void CWeightEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) {
    const float* keys = floatKeys(accessor);
    *static_cast<float*>(out) = keys[key] + (fraction * (keys[nextKey] - keys[key]));
}

// 0x6e50b0 _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
int CWeightEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, fraction, out);
    return 0;
}

// 0x6e5094 _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
// The interpolation between nextKey and lastKey; the first key is not used.
int CWeightEx::getKeyBasedValue(const SAnimationAccessor& accessor, int, int nextKey, int lastKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, nextKey, lastKey, fraction, out);
    return 0;
}

// 0x6e5110 _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
int CWeightEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const {
    *static_cast<float*>(out) = floatKeys(accessor)[key];
    return 0;
}

// 0x6e5000 _ZNK6glitch7collada15animation_track9CWeightEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
// The value of nextKey (not a difference).
int CWeightEx::getKeyBasedValue(const SAnimationAccessor& accessor, int, int nextKey, void* out) const {
    *static_cast<float*>(out) = floatKeys(accessor)[nextKey];
    return 0;
}

// 0x6e5078 _ZNK6glitch7collada15animation_track9CWeightEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
int CWeightEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                                  CApplicatorInfo*) const {
    getKeyBasedValueEx(accessor, key, nextKey, fraction, target);
    return 0;
}

// 0x6e5138 _ZNK6glitch7collada15animation_track9CWeightEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
int CWeightEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo*) const {
    *static_cast<float*>(target) = floatKeys(accessor)[key];
    return 0;
}

// 0x6e4fec _ZNK6glitch7collada15animation_track9CWeightEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiiPvPNS1_15CApplicatorInfoE
int CWeightEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* target, CApplicatorInfo*) const {
    getKeyBasedValueEx(accessor, key, nextKey, target);
    return 0;
}

// 0x6e50cc _ZNK6glitch7collada15animation_track9CWeightEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
int CWeightEx::applyValue(void* value, void* target, CApplicatorInfo*) const {
    std::memcpy(target, value, getValueSize());
    return 0;
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// CVisibilityEx
// ---------------------------------------------------------------------------------------------------------------------------------------

// 0x6e4a24 _ZN6glitch7collada15animation_track13CVisibilityExD1Ev (empty; D0 0x6e4a28)
CVisibilityEx::~CVisibilityEx() {}

// 0x6e494c _ZNK6glitch7collada15animation_track13CVisibilityEx12getValueSizeEv
std::uint32_t CVisibilityEx::getValueSize() const {
    return 4;
}

// 0x6e4954 _ZNK6glitch7collada15animation_track13CVisibilityEx16getIdentityValueEPv
void CVisibilityEx::getIdentityValue(void* out) const {
    *static_cast<std::uint32_t*>(out) = 1;
}

// 0x6e4960 _ZNK6glitch7collada15animation_track13CVisibilityEx15getBlendedValueEPvPfiS3_
int CVisibilityEx::getBlendedValue(void* values, float* weights, int count, void* out) const {
    const std::uint32_t* in = static_cast<const std::uint32_t*>(values);
    std::uint32_t* result = static_cast<std::uint32_t*>(out);
    *result = 1;
    for (int i = 0; i < count; ++i) {
        if (weights[i] != 0.0f && in[i] == 0) {
            *result = 0;
            break;
        }
    }
    return 0;
}

// 0x6e49c4 _ZNK6glitch7collada15animation_track13CVisibilityEx13getAddedValueEPvPfiS3_
int CVisibilityEx::getAddedValue(void* values, float* weights, int count, void* out) const {
    const std::uint32_t* in = static_cast<const std::uint32_t*>(values);
    std::uint32_t* result = static_cast<std::uint32_t*>(out);
    *result = 0;
    for (int i = 0; i < count; ++i) {
        if (weights[i] != 0.0f && in[i] == 1) {
            *result = 1;
            break;
        }
    }
    return 0;
}

// 0x6e4a98 _ZN6glitch7collada15animation_track13CVisibilityEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
void CVisibilityEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* out) {
    *static_cast<std::uint32_t*>(out) = floatKeys(accessor)[key] >= 1.0f ? 1u : 0u;
}

// 0x6e4aec _ZN6glitch7collada15animation_track13CVisibilityEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
// The first key only: a visibility flag does not interpolate.
void CVisibilityEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int, float, void* out) {
    *static_cast<std::uint32_t*>(out) = floatKeys(accessor)[key] >= 1.0f ? 1u : 0u;
}

// 0x6e4b3c _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
int CVisibilityEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, fraction, out);
    return 0;
}

// 0x6e4b20 _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
int CVisibilityEx::getKeyBasedValue(const SAnimationAccessor& accessor, int, int nextKey, int lastKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, nextKey, lastKey, fraction, out);
    return 0;
}

// 0x6e4adc _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
int CVisibilityEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const {
    getKeyBasedValueEx(accessor, key, out);
    return 0;
}

// 0x6e4acc _ZNK6glitch7collada15animation_track13CVisibilityEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
int CVisibilityEx::getKeyBasedValue(const SAnimationAccessor& accessor, int, int nextKey, void* out) const {
    getKeyBasedValueEx(accessor, nextKey, out);
    return 0;
}

// 0x6e4cac _ZN6glitch7collada15animation_track13CVisibilityEx19applyKeyBasedValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
int CVisibilityEx::applyKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo*) {
    static_cast<scene::ISceneNode*>(target)->setVisible(floatKeys(accessor)[key] >= 1.0f);  // K 0x48
    return 0;
}

// 0x6e4b6c _ZN6glitch7collada15animation_track13CVisibilityEx19applyKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
int CVisibilityEx::applyKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int, float, void* target, CApplicatorInfo*) {
    static_cast<scene::ISceneNode*>(target)->setVisible(floatKeys(accessor)[key] >= 1.0f);  // K 0x48
    return 0;
}

// 0x6e4bd8 _ZNK6glitch7collada15animation_track13CVisibilityEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiifPvPNS1_15CApplicatorInfoE
int CVisibilityEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* target,
                                      CApplicatorInfo* info) const {
    return applyKeyBasedValueEx(accessor, key, nextKey, fraction, target, info);
}

// 0x6e4d08 _ZNK6glitch7collada15animation_track13CVisibilityEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoE
int CVisibilityEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int key, void* target, CApplicatorInfo* info) const {
    return applyKeyBasedValueEx(accessor, key, target, info);
}

// 0x6e4bb4 _ZNK6glitch7collada15animation_track13CVisibilityEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiiifPvPNS1_15CApplicatorInfoE
int CVisibilityEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int, int nextKey, int lastKey, float fraction, void* target,
                                      CApplicatorInfo* info) const {
    return applyKeyBasedValueEx(accessor, nextKey, lastKey, fraction, target, info);
}

// 0x6e4cf4 _ZNK6glitch7collada15animation_track13CVisibilityEx17applyKeyBasedValueERKNS0_18SAnimationAccessorEiiPvPNS1_15CApplicatorInfoE
int CVisibilityEx::applyKeyBasedValue(const SAnimationAccessor& accessor, int, int nextKey, void* target, CApplicatorInfo* info) const {
    return applyKeyBasedValueEx(accessor, nextKey, target, info);
}

// 0x6e4bfc _ZN6glitch7collada15animation_track13CVisibilityEx17applyBlendedValueExEPvPfiS3_
int CVisibilityEx::applyBlendedValueEx(void* values, float* weights, int count, void* target) {
    scene::ISceneNode* node = static_cast<scene::ISceneNode*>(target);
    const std::uint32_t* in = static_cast<const std::uint32_t*>(values);
    node->setVisible(true);  // K 0x48
    for (int i = 0; i < count; ++i) {
        if (weights[i] != 0.0f && in[i] == 0) {
            node->setVisible(false);
            break;
        }
    }
    return 0;
}

// 0x6e4d1c _ZN6glitch7collada15animation_track13CVisibilityEx15applyAddedValueExEPvPfiS3_
int CVisibilityEx::applyAddedValueEx(void* values, float* weights, int count, void* target) {
    scene::ISceneNode* node = static_cast<scene::ISceneNode*>(target);
    const std::uint32_t* in = static_cast<const std::uint32_t*>(values);
    node->setVisible(false);  // K 0x48
    for (int i = 0; i < count; ++i) {
        if (weights[i] != 0.0f && in[i] == 0) {
            node->setVisible(true);
            break;
        }
    }
    return 0;
}

// 0x6e4c7c _ZNK6glitch7collada15animation_track13CVisibilityEx17applyBlendedValueEPvPfiS3_PNS1_15CApplicatorInfoE
int CVisibilityEx::applyBlendedValue(void* values, float* weights, int count, void* target, CApplicatorInfo*) const {
    return applyBlendedValueEx(values, weights, count, target);
}

// 0x6e4da0 _ZNK6glitch7collada15animation_track13CVisibilityEx15applyAddedValueEPvPfiS3_PNS1_15CApplicatorInfoE
int CVisibilityEx::applyAddedValue(void* values, float* weights, int count, void* target, CApplicatorInfo*) const {
    return applyAddedValueEx(values, weights, count, target);
}

// 0x6e4c90 _ZNK6glitch7collada15animation_track13CVisibilityEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
int CVisibilityEx::applyValue(void* value, void* target, CApplicatorInfo*) const {
    static_cast<scene::ISceneNode*>(target)->setVisible(*static_cast<const std::uint8_t*>(value) != 0);  // K 0x48
    return 0;
}

// 0x6e493c _ZNK6glitch7collada15animation_track13CVisibilityEx13retrieveValueEPvS3_
// One byte: bit 0 of the node flags (+0x11c).
void CVisibilityEx::retrieveValue(void* source, void* out) const {
    const scene::ISceneNode* node = static_cast<const scene::ISceneNode*>(source);
    *static_cast<std::uint8_t*>(out) = static_cast<std::uint8_t>(node->flags & 1u);
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// CVector3dEx
// ---------------------------------------------------------------------------------------------------------------------------------------

// 0x6e43ac _ZN6glitch7collada15animation_track11CVector3dExD1Ev (empty; D0 0x6e43b0)
CVector3dEx::~CVector3dEx() {}

// 0x6e42b4 _ZNK6glitch7collada15animation_track11CVector3dEx12getValueSizeEv
std::uint32_t CVector3dEx::getValueSize() const {
    return 12;
}

// 0x6e42bc _ZNK6glitch7collada15animation_track11CVector3dEx16getIdentityValueEPv
void CVector3dEx::getIdentityValue(void* out) const {
    float* value = static_cast<float*>(out);
    std::uint32_t zero = 0;
    std::memcpy(&value[2], &zero, 4);
    std::memcpy(&value[0], &zero, 4);
    std::memcpy(&value[1], &zero, 4);
}

// 0x6e3fb0 _ZN6glitch7collada15animation_track11CVector3dEx15getBlendedValueExEPvPfiS3_
// Two or more records: the first record, then each next one lerped in with weight / (running total). One record is copied, none leaves the
// output unchanged.
void CVector3dEx::getBlendedValueEx(void* values, float* weights, int count, void* out) {
    const float* in = static_cast<const float*>(values);
    float* result = static_cast<float*>(out);
    if (count <= 0) {
        return;
    }
    if (count == 1) {
        result[0] = in[0];
        result[1] = in[1];
        result[2] = in[2];
        return;
    }
    float x = in[0];
    float y = in[1];
    float z = in[2];
    float total = weights[0];
    for (int i = 1; i < count; ++i) {
        total = total + weights[i];
        const float t = weights[i] / total;
        const float stepX = t * (in[3 * i] - x);
        const float stepY = t * (in[3 * i + 1] - y);
        const float stepZ = t * (in[3 * i + 2] - z);
        x = x + stepX;
        y = y + stepY;
        z = z + stepZ;
    }
    result[2] = z;
    result[0] = x;
    result[1] = y;
}

// 0x6e41ec _ZN6glitch7collada15animation_track11CVector3dEx15getBlendedValueExEPvPfiS3_f
void CVector3dEx::getBlendedValueEx(void* values, float* weights, int count, void* out, float weight) {
    float blended[3] = {0.0f, 0.0f, 0.0f};
    getBlendedValueEx(values, weights, count, blended);
    mixVector3(static_cast<float*>(out), blended, weight);
}

// 0x6e42d0 _ZNK6glitch7collada15animation_track11CVector3dEx15getBlendedValueEPvPfiS3_
int CVector3dEx::getBlendedValue(void* values, float* weights, int count, void* out) const {
    getBlendedValueEx(values, weights, count, out);
    return 0;
}

// 0x6e4390 _ZNK6glitch7collada15animation_track11CVector3dEx15getBlendedValueEPvPfiS3_f
int CVector3dEx::getBlendedValue(void* values, float* weights, int count, void* out, float weight) const {
    getBlendedValueEx(values, weights, count, out, weight);
    return 0;
}

// 0x6e42e4 _ZNK6glitch7collada15animation_track11CVector3dEx13getAddedValueEPvPfiS3_
int CVector3dEx::getAddedValue(void* values, float* weights, int count, void* out) const {
    const float* in = static_cast<const float*>(values);
    float* result = static_cast<float*>(out);
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    for (int i = 0; i < count; ++i) {
        const float weight = weights[i];
        x = x + (weight * in[3 * i]);
        y = y + (weight * in[3 * i + 1]);
        z = z + (weight * in[3 * i + 2]);
    }
    result[2] = z;
    result[0] = x;
    result[1] = y;
    return 0;
}

// 0x6e4450 _ZN6glitch7collada15animation_track11CVector3dEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiPv
void CVector3dEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, void* out) {
    const float* record = floatKeys(accessor) + 3 * key;
    float* result = static_cast<float*>(out);
    result[0] = record[0];
    result[1] = record[1];
    result[2] = record[2];
}

// 0x6e4578 _ZN6glitch7collada15animation_track11CVector3dEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPv
void CVector3dEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) {
    const float* first = floatKeys(accessor) + 3 * key;
    const float* second = floatKeys(accessor) + 3 * nextKey;
    float* result = static_cast<float*>(out);
    const float y = first[1] + (fraction * (second[1] - first[1]));
    const float x = first[0] + (fraction * (second[0] - first[0]));
    result[2] = first[2] + (fraction * (second[2] - first[2]));
    result[0] = x;
    result[1] = y;
}

// 0x6e4758 _ZN6glitch7collada15animation_track11CVector3dEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiPv
void CVector3dEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, void* out) {
    const float* first = floatKeys(accessor) + 3 * key;
    const float* second = floatKeys(accessor) + 3 * nextKey;
    float* result = static_cast<float*>(out);
    const float y = second[1] - first[1];
    const float x = second[0] - first[0];
    result[2] = second[2] - first[2];
    result[0] = x;
    result[1] = y;
}

// 0x6e47e8 _ZN6glitch7collada15animation_track11CVector3dEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
void CVector3dEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) {
    const float* first = floatKeys(accessor) + 3 * nextKey;
    const float* second = floatKeys(accessor) + 3 * lastKey;
    const float* base = floatKeys(accessor) + 3 * key;
    float* result = static_cast<float*>(out);
    const float y = (first[1] + (fraction * (second[1] - first[1]))) - base[1];
    const float x = (first[0] + (fraction * (second[0] - first[0]))) - base[0];
    result[2] = (first[2] + (fraction * (second[2] - first[2]))) - base[2];
    result[0] = x;
    result[1] = y;
}

// 0x6e464c _ZN6glitch7collada15animation_track11CVector3dEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiifPvf
void CVector3dEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out, float weight) {
    float lerped[3] = {0.0f, 0.0f, 0.0f};
    getKeyBasedValueEx(accessor, key, nextKey, fraction, lerped);
    mixVector3(static_cast<float*>(out), lerped, weight);
}

// 0x6e473c _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv
int CVector3dEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, fraction, out);
    return 0;
}

// 0x6e4904 _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv
int CVector3dEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, int lastKey, float fraction, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, lastKey, fraction, out);
    return 0;
}

// 0x6e4568 _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv
int CVector3dEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out) const {
    getKeyBasedValueEx(accessor, key, out);
    return 0;
}

// 0x6e47d4 _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv
int CVector3dEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, void* out) const {
    getKeyBasedValueEx(accessor, key, nextKey, out);
    return 0;
}

// 0x6e4718 _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPvf
int CVector3dEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, int nextKey, float fraction, void* out, float weight) const {
    getKeyBasedValueEx(accessor, key, nextKey, fraction, out, weight);
    return 0;
}

// 0x6e4498 _ZNK6glitch7collada15animation_track11CVector3dEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPvf
int CVector3dEx::getKeyBasedValue(const SAnimationAccessor& accessor, int key, void* out, float weight) const {
    float value[3] = {0.0f, 0.0f, 0.0f};
    getKeyBasedValueEx(accessor, key, value);
    mixVector3(static_cast<float*>(out), value, weight);
    return 0;
}

// 0x6e4420 _ZNK6glitch7collada15animation_track11CVector3dEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
int CVector3dEx::applyValue(void* value, void* target, CApplicatorInfo*) const {
    std::memcpy(target, value, getValueSize());
    return 0;
}

// ---------------------------------------------------------------------------------------------------------------------------------------
// CTextureTransformEx
// ---------------------------------------------------------------------------------------------------------------------------------------

namespace {

// The weighted sums of getBlendedValue / getAddedValue / applyBlendedValueEx: every record is multiplied by its weight in place and added to
// the running components (translation and rotation start at 0, the scales at 1).
void accumulateTextureTransform(float* values, const float* weights, int count, float* sums) {
    sums[0] = 0.0f;
    sums[1] = 0.0f;
    sums[2] = 0.0f;
    sums[3] = 1.0f;
    sums[4] = 1.0f;
    for (int i = 0; i < count; ++i) {
        const float weight = weights[i];
        float* record = values + 5 * i;
        for (int k = 0; k < 5; ++k) {
            record[k] = weight * record[k];
        }
        for (int k = 0; k < 5; ++k) {
            sums[k] = sums[k] + record[k];
        }
    }
}

// The value of the channel `channel`, stored into the component the channel type (87 .. 91) names.
void storeChannel(const SAnimationAccessor& accessor, int channel, float value, float* out) {
    const std::uint32_t component = accessor.getType(channel) - 87u;
    if (component < 5u) {
        out[component] = value;
    }
}

}  // namespace

// 0x6e3708 _ZN6glitch7collada15animation_track19CTextureTransformExD1Ev (empty; D0 0x6e370c)
CTextureTransformEx::~CTextureTransformEx() {}

// 0x6e33f8 _ZNK6glitch7collada15animation_track19CTextureTransformEx12getValueSizeEv
std::uint32_t CTextureTransformEx::getValueSize() const {
    return 20;
}

// 0x6e3400 _ZNK6glitch7collada15animation_track19CTextureTransformEx16getIdentityValueEPv
void CTextureTransformEx::getIdentityValue(void* out) const {
    float* value = static_cast<float*>(out);
    value[0] = 0.0f;
    value[3] = 1.0f;
    value[4] = 1.0f;
    value[2] = 0.0f;
    value[1] = 0.0f;
}

// 0x6e3420 _ZNK6glitch7collada15animation_track19CTextureTransformEx15getBlendedValueEPvPfiS3_
int CTextureTransformEx::getBlendedValue(void* values, float* weights, int count, void* out) const {
    accumulateTextureTransform(static_cast<float*>(values), weights, count, static_cast<float*>(out));
    return 0;
}

// 0x6e358c _ZNK6glitch7collada15animation_track19CTextureTransformEx13getAddedValueEPvPfiS3_
int CTextureTransformEx::getAddedValue(void* values, float* weights, int count, void* out) const {
    accumulateTextureTransform(static_cast<float*>(values), weights, count, static_cast<float*>(out));
    return 0;
}

// 0x6e36f8 _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiifPv (empty)
int CTextureTransformEx::getKeyBasedValue(const SAnimationAccessor&, int, int, float, void*) const {
    return 0;
}

// 0x6e3700 _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiifPv (empty)
int CTextureTransformEx::getKeyBasedValue(const SAnimationAccessor&, int, int, int, float, void*) const {
    return 0;
}

// 0x6e36fc _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiPv (empty)
int CTextureTransformEx::getKeyBasedValue(const SAnimationAccessor&, int, void*) const {
    return 0;
}

// 0x6e3704 _ZNK6glitch7collada15animation_track19CTextureTransformEx16getKeyBasedValueERKNS0_18SAnimationAccessorEiiPv (empty)
int CTextureTransformEx::getKeyBasedValue(const SAnimationAccessor&, int, int, void*) const {
    return 0;
}

// 0x6e3d30 _ZN6glitch7collada15animation_track19CTextureTransformEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiifPv
void CTextureTransformEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int channel, int key, int nextKey, float fraction,
                                             void* out) {
    const float* keys = static_cast<const float*>(accessor.getOutput(channel)->data);
    *static_cast<float*>(out) = keys[key] + (fraction * (keys[nextKey] - keys[key]));
}

// 0x6e3b1c _ZN6glitch7collada15animation_track19CTextureTransformEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiiPv
void CTextureTransformEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int channel, int key, int nextKey, void* out) {
    const float* keys = static_cast<const float*>(accessor.getOutput(channel)->data);
    *static_cast<float*>(out) = keys[nextKey] - keys[key];
}

// 0x6e3ac4 _ZN6glitch7collada15animation_track19CTextureTransformEx17getKeyBasedValueExERKNS0_18SAnimationAccessorEiiiifPv
void CTextureTransformEx::getKeyBasedValueEx(const SAnimationAccessor& accessor, int channel, int baseKey, int key, int nextKey,
                                             float fraction, void* out) {
    const float* keys = static_cast<const float*>(accessor.getOutput(channel)->data);
    *static_cast<float*>(out) = (keys[key] + (fraction * (keys[nextKey] - keys[key]))) - keys[baseKey];
}

// 0x6e3d78 _ZN6glitch7collada15animation_track19CTextureTransformEx10getValueExERKNS0_18SAnimationAccessorEiPvRib
// The default value, then every channel at the time. `interpolate` is replaced by (key found & interpolate) after each channel, so one channel
// without a key switches the interpolation off for the following ones (the original does the same); keyIndex is not used.
int CTextureTransformEx::getValueEx(const SAnimationAccessor& accessor, int time, void* out, int&, bool interpolate) {
    float* result = static_cast<float*>(out);
    const float* defaults = static_cast<const float*>(accessor.getDefaultValue());
    for (int k = 0; k < 5; ++k) {
        result[k] = defaults[k];
    }
    const int channels = accessor.getChannelsCount();
    for (int channel = 0; channel < channels; ++channel) {
        int index = 0;
        float fraction = 0.0f;
        const bool found = accessor.findKeyFrameNo(channel, time, index, fraction);
        interpolate = found && interpolate;
        float value;
        if (interpolate) {
            getKeyBasedValueEx(accessor, channel, index, index + 1, fraction, &value);
        } else {
            value = static_cast<const float*>(accessor.getOutput(channel)->data)[index];
        }
        storeChannel(accessor, channel, value, result);
    }
    return 0;
}

// 0x6e3b48 _ZN6glitch7collada15animation_track19CTextureTransformEx10getValueExERKNS0_18SAnimationAccessorEiiPvRib
// The value at the second time relative to the key found for the first time.
int CTextureTransformEx::getValueEx(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* out, int&, bool interpolate) {
    float* result = static_cast<float*>(out);
    const float* defaults = static_cast<const float*>(accessor.getDefaultValue());
    for (int k = 0; k < 5; ++k) {
        result[k] = defaults[k];
    }
    const int channels = accessor.getChannelsCount();
    for (int channel = 0; channel < channels; ++channel) {
        int index = 0;
        float fraction = 0.0f;
        const bool found = accessor.findKeyFrameNo(channel, secondTime, index, fraction);
        interpolate = found && interpolate;
        int baseIndex = 0;
        accessor.findKeyFrameNo(channel, firstTime, baseIndex);
        float value;
        if (interpolate) {
            getKeyBasedValueEx(accessor, channel, baseIndex, index, index + 1, fraction, &value);
        } else {
            getKeyBasedValueEx(accessor, channel, baseIndex, index, &value);
        }
        storeChannel(accessor, channel, value, result);
    }
    return 0;
}

// 0x6e3f80 _ZNK6glitch7collada15animation_track19CTextureTransformEx8getValueERKNS0_18SAnimationAccessorEiPvRib
int CTextureTransformEx::getValue(const SAnimationAccessor& accessor, int time, void* out, int& keyIndex, bool interpolate) const {
    return getValueEx(accessor, time, out, keyIndex, interpolate);
}

// 0x6e3d08 _ZNK6glitch7collada15animation_track19CTextureTransformEx8getValueERKNS0_18SAnimationAccessorEiiPvRib
int CTextureTransformEx::getValue(const SAnimationAccessor& accessor, int firstTime, int secondTime, void* out, int& keyIndex,
                                  bool interpolate) const {
    return getValueEx(accessor, firstTime, secondTime, out, keyIndex, interpolate);
}

// 0x6e38c4 _ZN6glitch7collada15animation_track19CTextureTransformEx12applyValueExEPvRNS2_5SDataEPNS1_15CApplicatorInfoE
// PARTIAL: the texture matrix (rotation about (0.5, 0.5) of rotation / 180 * 3.1416, the translation, the scale) is built, but the write to
// the material parameter of the applicator (IMaterialParameters<CMaterial, ...>::setParameter(id, 0, matrix)) has no receiver in the port
// (CMaterial has no parameter storage). The callers 0x6e3aa4 / 0x6e3a90 / 0x6e3ab8 pass a null applicator, whose parameter id the original
// reads at address 8.
int CTextureTransformEx::applyValueEx(void* target, SData& data, CApplicatorInfo* info) {
    std::uint32_t piBits = 0x40490fe9u;  // 3.1416 as the original's single precision constant
    float pi;
    std::memcpy(&pi, &piBits, sizeof(pi));
    const float rotation = (data.rotation / 180.0f) * pi;
    core::vector2d<float> center;
    center.X = 0.5f;
    center.Y = 0.5f;
    core::vector2d<float> translation;
    translation.X = data.translateX;
    translation.Y = data.translateY;
    core::vector2d<float> scale;
    scale.X = data.scaleU;
    scale.Y = data.scaleV;
    const core::CMatrix4<float> matrix = core::buildTextureTransform<float>(rotation, center, translation, scale);
    const std::uint16_t parameterId = info != nullptr ? info->parameterId : 0;
    return detail::setMaterialMatrixParameter(target, parameterId, 0, &matrix);
}

// 0x6e3ab8 _ZNK6glitch7collada15animation_track19CTextureTransformEx10applyValueEPvS3_PNS1_15CApplicatorInfoE
int CTextureTransformEx::applyValue(void* value, void* target, CApplicatorInfo*) const {
    return applyValueEx(target, *static_cast<SData*>(value), nullptr);
}

// 0x6e3efc _ZN6glitch7collada15animation_track19CTextureTransformEx12applyValueExERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoERib
int CTextureTransformEx::applyValueEx(const SAnimationAccessor& accessor, int time, void* target, CApplicatorInfo* info, int& keyIndex,
                                      bool interpolate) {
    SData data;
    data.translateX = 0.0f;
    data.translateY = 0.0f;
    data.rotation = 0.0f;
    data.scaleU = 1.0f;
    data.scaleV = 1.0f;
    getValueEx(accessor, time, &data, keyIndex, interpolate);
    return applyValueEx(target, data, info);
}

// 0x6e3f58 _ZNK6glitch7collada15animation_track19CTextureTransformEx10applyValueERKNS0_18SAnimationAccessorEiPvPNS1_15CApplicatorInfoERib
int CTextureTransformEx::applyValue(const SAnimationAccessor& accessor, int time, void* target, CApplicatorInfo* info, int& keyIndex,
                                    bool interpolate) const {
    return applyValueEx(accessor, time, target, info, keyIndex, interpolate);
}

// 0x6e395c _ZN6glitch7collada15animation_track19CTextureTransformEx17applyBlendedValueExEPvPfiS3_
int CTextureTransformEx::applyBlendedValueEx(void* values, float* weights, int count, void* target) {
    SData data;
    accumulateTextureTransform(static_cast<float*>(values), weights, count, &data.translateX);
    return applyValueEx(target, data, nullptr);
}

// 0x6e3aa4 _ZNK6glitch7collada15animation_track19CTextureTransformEx17applyBlendedValueEPvPfiS3_
int CTextureTransformEx::applyBlendedValue(void* values, float* weights, int count, void* target) const {
    return applyBlendedValueEx(values, weights, count, target);
}

// 0x6e3a90 _ZNK6glitch7collada15animation_track19CTextureTransformEx15applyAddedValueEPvPfiS3_
int CTextureTransformEx::applyAddedValue(void* values, float* weights, int count, void* target) const {
    return applyBlendedValueEx(values, weights, count, target);
}

// 0x6e33f4 _ZNK6glitch7collada15animation_track19CTextureTransformEx13retrieveValueEPvS3_ (empty)
void CTextureTransformEx::retrieveValue(void*, void*) const {}

// The objects getAnimationTrackEx (0x611ae0) returns: 0x9f8350, 0x9f8390, 0x9f8380, 0x9f8370, 0x9f8360.
CFloatEx CFloatEx::s_Instance;
CWeightEx CWeightEx::s_Instance;
CVisibilityEx CVisibilityEx::s_Instance;
CVector3dEx CVector3dEx::s_Instance;
CTextureTransformEx CTextureTransformEx::s_Instance;

}  // namespace glitch::collada::animation_track
