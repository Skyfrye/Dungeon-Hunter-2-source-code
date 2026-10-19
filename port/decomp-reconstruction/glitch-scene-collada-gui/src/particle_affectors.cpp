#include "glitch-scene-collada-gui/particle_affectors.hpp"

#include <cstring>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/randomizer.hpp"

namespace glitch::scene {

namespace {
// libgcc __fixunssfsi as the original calls it: negative inputs give 0 and
// inputs at or above 2^32 give the largest unsigned value.
std::uint32_t fixUnsignedFromFloat(float value) {
    if (!(value > 0.0f)) {
        return 0;
    }
    if (value >= 4294967296.0f) {
        return 0xffffffffu;
    }
    return static_cast<std::uint32_t>(value);
}

// The attribute at `index` is named `name`: getAttributeName(index) (vptr+0x10) is non-null and equals the name.
bool attributeIs(io::IAttributes* attributes, int index, const char* name) {
    const char* attributeName = attributes->getAttributeName(index);
    return attributeName != nullptr && std::strcmp(attributeName, name) == 0;
}

// Random percentage in [0, 100) with two decimals, rand() % (int)(variation * 100) / 100. The original divides by the
// truncated integer without a guard; a divisor of 0 (variation below 0.01) gives 0 here instead of a trap.
float randomVariation(float variation) {
    const int range = static_cast<int>(variation * 100.0f);
    if (range == 0) {
        return 0.0f;
    }
    return static_cast<float>(os::Randomizer::rand() % range) / 100.0f;
}
}  // namespace

// ---- CParticleAttractionAffector ----

// 0x6f845c _ZN6glitch5scene27CParticleAttractionAffectorC2ERKNS_4core8vector3dIfEEfbbbb
// 0x6f8528 _ZN6glitch5scene27CParticleAttractionAffectorC1ERKNS_4core8vector3dIfEEfbbbb
CParticleAttractionAffector::CParticleAttractionAffector(const core::vector3d<float>& pointValue, float speedValue,
                                                         bool attractValue, bool affectXValue, bool affectYValue,
                                                         bool affectZValue)
    : point(pointValue),
      speed(speedValue),
      affectX(affectXValue),
      affectY(affectYValue),
      affectZ(affectZValue),
      attract(attractValue),
      lastTime(0) {
    enabled = true;  // +0x04
}

// 0x6f8634 _ZN6glitch5scene27CParticleAttractionAffectorD1Ev
// 0x6f88b4 _ZN6glitch5scene27CParticleAttractionAffectorD0Ev
CParticleAttractionAffector::~CParticleAttractionAffector() = default;

// 0x6f86cc _ZN6glitch5scene27CParticleAttractionAffector6affectEjPNS0_9SParticleEj
void CParticleAttractionAffector::affect(std::uint32_t now, SParticle* particles, std::uint32_t count) {
    if (lastTime == 0) {
        lastTime = now;
        return;
    }
    const float dt = static_cast<float>(now - lastTime) / 1000.0f;
    lastTime = now;
    if (!enabled || count == 0) {
        return;
    }
    for (std::uint32_t i = 0; i != count; ++i, ++particles) {
        core::vector3d<float> direction;
        direction.X = point.X - particles->pos.X;
        direction.Y = point.Y - particles->pos.Y;
        direction.Z = point.Z - particles->pos.Z;
        direction.normalize();
        const float step = dt * speed;
        float dx = step * direction.X;
        float dy = step * direction.Y;
        float dz = step * direction.Z;
        if (!attract) {  // +0x1b: repel
            dx = -dx;
            dy = -dy;
            dz = -dz;
        }
        if (affectX) particles->pos.X = particles->pos.X + dx;  // +0x18
        if (affectY) particles->pos.Y = particles->pos.Y + dy;  // +0x19
        if (affectZ) particles->pos.Z = particles->pos.Z + dz;  // +0x1a
    }
}

// 0x6f83a0 _ZN6glitch5scene27CParticleAttractionAffector8setPointERKNS_4core8vector3dIfEE
void CParticleAttractionAffector::setPoint(const core::vector3d<float>& value) { point = value; }

// 0x6f83bc _ZN6glitch5scene27CParticleAttractionAffector8setSpeedEf
void CParticleAttractionAffector::setSpeed(float value) { speed = value; }

// 0x6f83c4 _ZN6glitch5scene27CParticleAttractionAffector10setAttractEb
void CParticleAttractionAffector::setAttract(bool value) { attract = value; }

// 0x6f83cc _ZN6glitch5scene27CParticleAttractionAffector10setAffectXEb
void CParticleAttractionAffector::setAffectX(bool value) { affectX = value; }

// 0x6f83d4 _ZN6glitch5scene27CParticleAttractionAffector10setAffectYEb
void CParticleAttractionAffector::setAffectY(bool value) { affectY = value; }

// 0x6f83dc _ZN6glitch5scene27CParticleAttractionAffector10setAffectZEb
void CParticleAttractionAffector::setAffectZ(bool value) { affectZ = value; }

// 0x6f83e4 _ZNK6glitch5scene27CParticleAttractionAffector8getPointEv
const core::vector3d<float>& CParticleAttractionAffector::getPoint() const { return point; }

// 0x6f83ec _ZNK6glitch5scene27CParticleAttractionAffector8getSpeedEv
float CParticleAttractionAffector::getSpeed() const { return speed; }

// 0x6f83f4 _ZNK6glitch5scene27CParticleAttractionAffector10getAttractEv
bool CParticleAttractionAffector::getAttract() const { return attract; }

// 0x6f83fc _ZNK6glitch5scene27CParticleAttractionAffector10getAffectXEv
bool CParticleAttractionAffector::getAffectX() const { return affectX; }

// 0x6f8404 _ZNK6glitch5scene27CParticleAttractionAffector10getAffectYEv
bool CParticleAttractionAffector::getAffectY() const { return affectY; }

// 0x6f840c _ZNK6glitch5scene27CParticleAttractionAffector10getAffectZEv
bool CParticleAttractionAffector::getAffectZ() const { return affectZ; }

// ---- CParticleGravityAffector ----

// 0x6faa54 _ZN6glitch5scene24CParticleGravityAffectorC2ERKNS_4core8vector3dIfEEj
// 0x6fab1c _ZN6glitch5scene24CParticleGravityAffectorC1ERKNS_4core8vector3dIfEEj
CParticleGravityAffector::CParticleGravityAffector(const core::vector3d<float>& gravityValue,
                                                   std::uint32_t timeForceLostValue)
    : timeForceLost(static_cast<float>(timeForceLostValue)), gravity(gravityValue) {
    enabled = true;  // +0x04
}

// 0x6fad94 _ZN6glitch5scene24CParticleGravityAffectorD1Ev
// 0x6faf24 _ZN6glitch5scene24CParticleGravityAffectorD0Ev
CParticleGravityAffector::~CParticleGravityAffector() = default;

// 0x6fad3c _ZNK6glitch5scene24CParticleGravityAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticleGravityAffector::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    attributes->addVector3d("Gravity", gravity, false);          // vptr+0x1a8, +0x0c
    attributes->addFloat("TimeForceLost", timeForceLost, false);  // vptr+0x64, +0x08
}

// 0x6fadd8 _ZN6glitch5scene24CParticleGravityAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
int CParticleGravityAffector::deserializeAttributes(int index, io::IAttributes* attributes,
                                                    io::SAttributeReadWriteOptions*) {
    if (attributeIs(attributes, index, "Gravity")) {
        gravity = attributes->getVector3d(index);  // vptr+0x1b8
        ++index;
        if (attributeIs(attributes, index, "TimeForceLost")) {
            timeForceLost = attributes->getFloat(index);  // vptr+0x74
            ++index;
        }
    }
    return index;
}

// 0x6fac14 _ZN6glitch5scene24CParticleGravityAffector6affectEjPNS0_9SParticleEj
void CParticleGravityAffector::affect(std::uint32_t now, SParticle* particles, std::uint32_t count) {
    if (!enabled || count == 0) {
        return;
    }
    for (std::uint32_t i = 0; i != count; ++i, ++particles) {
        float t = static_cast<float>(now - particles->startTime) / timeForceLost;
        if (t <= 1.0f) {
            if (t < 0.0f) t = 0.0f;
        } else {
            t = 1.0f;
        }
        const float x = particles->startVector.X + (1.0f - t) * (gravity.X - particles->startVector.X);
        const float y = particles->startVector.Y + (1.0f - t) * (gravity.Y - particles->startVector.Y);
        const float z = particles->startVector.Z + (1.0f - t) * (gravity.Z - particles->startVector.Z);
        particles->vector.X = x;  // +0x0c
        particles->vector.Y = y;  // +0x10
        particles->vector.Z = z;  // +0x14
    }
}

// 0x6fa9fc _ZN6glitch5scene24CParticleGravityAffector16setTimeForceLostEf
void CParticleGravityAffector::setTimeForceLost(float value) { timeForceLost = value; }

// 0x6faa04 _ZN6glitch5scene24CParticleGravityAffector10setGravityERKNS_4core8vector3dIfEE
void CParticleGravityAffector::setGravity(const core::vector3d<float>& value) { gravity = value; }

// 0x6faa20 _ZNK6glitch5scene24CParticleGravityAffector16getTimeForceLostEv
float CParticleGravityAffector::getTimeForceLost() const { return timeForceLost; }

// 0x6faa28 _ZNK6glitch5scene24CParticleGravityAffector10getGravityEv
const core::vector3d<float>& CParticleGravityAffector::getGravity() const { return gravity; }

// ---- CParticleRotationAffector ----

// 0x6fcd74 _ZN6glitch5scene25CParticleRotationAffectorC2ERKNS_4core8vector3dIfEES6_
// 0x6fce34 _ZN6glitch5scene25CParticleRotationAffectorC1ERKNS_4core8vector3dIfEES6_
CParticleRotationAffector::CParticleRotationAffector(const core::vector3d<float>& pivotPointValue,
                                                     const core::vector3d<float>& speedValue)
    : pivotPoint(pivotPointValue), speed(speedValue), lastTime(0) {
    enabled = true;  // +0x04
}

// 0x6fcf28 _ZN6glitch5scene25CParticleRotationAffectorD1Ev
// 0x6fd14c _ZN6glitch5scene25CParticleRotationAffectorD0Ev
CParticleRotationAffector::~CParticleRotationAffector() = default;

// 0x6fcf6c _ZN6glitch5scene25CParticleRotationAffector6affectEjPNS0_9SParticleEj
void CParticleRotationAffector::affect(std::uint32_t now, SParticle* particles, std::uint32_t count) {
    if (lastTime == 0) {
        lastTime = now;
        return;
    }
    const float dt = static_cast<float>(now - lastTime) / 1000.0f;
    lastTime = now;
    if (!enabled || count == 0) {
        return;
    }
    for (std::uint32_t i = 0; i != count; ++i, ++particles) {
        if (speed.X != 0.0f) particles->pos.rotateYZBy(dt * speed.X, pivotPoint);  // +0x14
        if (speed.Y != 0.0f) particles->pos.rotateXZBy(dt * speed.Y, pivotPoint);  // +0x18
        if (speed.Z != 0.0f) particles->pos.rotateXYBy(dt * speed.Z, pivotPoint);  // +0x1c
    }
}

// 0x6fcd08 _ZN6glitch5scene25CParticleRotationAffector13setPivotPointERKNS_4core8vector3dIfEE
void CParticleRotationAffector::setPivotPoint(const core::vector3d<float>& value) { pivotPoint = value; }

// 0x6fcd24 _ZN6glitch5scene25CParticleRotationAffector8setSpeedERKNS_4core8vector3dIfEE
void CParticleRotationAffector::setSpeed(const core::vector3d<float>& value) { speed = value; }

// 0x6fcd40 _ZNK6glitch5scene25CParticleRotationAffector13getPivotPointEv
const core::vector3d<float>& CParticleRotationAffector::getPivotPoint() const { return pivotPoint; }

// 0x6fcd48 _ZNK6glitch5scene25CParticleRotationAffector8getSpeedEv
const core::vector3d<float>& CParticleRotationAffector::getSpeed() const { return speed; }

// ---- CParticleSizeAffector ----

// 0x6fd250 _ZN6glitch5scene21CParticleSizeAffectorC2Effjj
// 0x6fd310 _ZN6glitch5scene21CParticleSizeAffectorC1Effjj
CParticleSizeAffector::CParticleSizeAffector(float targetSizeValue, float variationValue,
                                             std::uint32_t growForTimeValue, std::uint32_t fadeForTimeValue)
    : targetSize(targetSizeValue),
      variation(variationValue),
      growForTime(static_cast<float>(growForTimeValue)),
      fadeForTime(static_cast<float>(fadeForTimeValue)) {
    enabled = true;  // +0x04
}

// 0x6fd4a0 _ZN6glitch5scene21CParticleSizeAffectorD1Ev
// 0x6fd84c _ZN6glitch5scene21CParticleSizeAffectorD0Ev
CParticleSizeAffector::~CParticleSizeAffector() = default;

// 0x6fd400 _ZNK6glitch5scene21CParticleSizeAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticleSizeAffector::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    attributes->addFloat("TargetSize", targetSize, false);    // vptr+0x64
    attributes->addFloat("Variation", variation, false);
    attributes->addFloat("GrowForTime", growForTime, false);
    attributes->addFloat("FadeForTime", fadeForTime, false);
}

// 0x6fd4e4 _ZN6glitch5scene21CParticleSizeAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
int CParticleSizeAffector::deserializeAttributes(int index, io::IAttributes* attributes,
                                                 io::SAttributeReadWriteOptions*) {
    if (attributeIs(attributes, index, "TargetSize")) {
        targetSize = attributes->getFloat(index++);  // vptr+0x74
        if (attributeIs(attributes, index, "Variation")) {
            variation = attributes->getFloat(index++);
            if (attributeIs(attributes, index, "GrowForTime")) {
                growForTime = attributes->getFloat(index++);
                if (attributeIs(attributes, index, "FadeForTime")) {
                    fadeForTime = attributes->getFloat(index++);
                }
            }
        }
    }
    return index;
}

// 0x6fd63c _ZN6glitch5scene21CParticleSizeAffector6affectEjPNS0_9SParticleEj
void CParticleSizeAffector::affect(std::uint32_t now, SParticle* particles, std::uint32_t count) {
    if (!enabled || count == 0) {
        return;
    }
    for (std::uint32_t i = 0; i != count; ++i, ++particles) {
        float percent;
        if (particles->startTime == now) {  // newly born: draw the variation
            if (variation > 0.0f) {
                percent = randomVariation(variation);
                particles->sizeVariation = percent;  // +0x38
            } else {
                particles->sizeVariation = 0.0f;
                percent = 0.0f;
            }
        } else {
            percent = particles->sizeVariation;
        }
        const float base = targetSize + (targetSize * percent) / -100.0f;
        particles->size = base;  // +0x34
        const float age = static_cast<float>(now - particles->startTime);
        if (growForTime > 0.0f && growForTime > age) {
            particles->size = base * (age / growForTime);
        }
        const float remaining = static_cast<float>(particles->endTime - now);
        if (fadeForTime > 0.0f && fadeForTime > remaining) {
            particles->size = base * (remaining / fadeForTime);
        }
    }
}

// 0x6fd1ec _ZN6glitch5scene21CParticleSizeAffector13setTargetSizeEf
void CParticleSizeAffector::setTargetSize(float value) { targetSize = value; }

// 0x6fd1f4 _ZN6glitch5scene21CParticleSizeAffector12setVariationEf
void CParticleSizeAffector::setVariation(float value) { variation = value; }

// 0x6fd1fc _ZN6glitch5scene21CParticleSizeAffector14setGrowForTimeEf
void CParticleSizeAffector::setGrowForTime(float value) { growForTime = value; }

// 0x6fd204 _ZN6glitch5scene21CParticleSizeAffector14setFadeForTimeEf
void CParticleSizeAffector::setFadeForTime(float value) { fadeForTime = value; }

// 0x6fd20c _ZNK6glitch5scene21CParticleSizeAffector13getTargetSizeEv
float CParticleSizeAffector::getTargetSize() const { return targetSize; }

// 0x6fd214 _ZNK6glitch5scene21CParticleSizeAffector12getVariationEv
float CParticleSizeAffector::getVariation() const { return variation; }

// 0x6fd21c _ZNK6glitch5scene21CParticleSizeAffector14getGrowForTimeEv
float CParticleSizeAffector::getGrowForTime() const { return growForTime; }

// 0x6fd224 _ZNK6glitch5scene21CParticleSizeAffector14getFadeForTimeEv
float CParticleSizeAffector::getFadeForTime() const { return fadeForTime; }

// ---- CParticleSpinAffector ----

// 0x6fe310 _ZN6glitch5scene21CParticleSpinAffectorC2Ejf
// 0x6fe3bc _ZN6glitch5scene21CParticleSpinAffectorC1Ejf
CParticleSpinAffector::CParticleSpinAffector(std::uint32_t spinTimeValue, float variationValue)
    : spinTime(spinTimeValue), variation(variationValue) {
    enabled = true;  // +0x04
}

// 0x6fe4fc _ZN6glitch5scene21CParticleSpinAffectorD1Ev
// 0x6fe7ac _ZN6glitch5scene21CParticleSpinAffectorD0Ev
CParticleSpinAffector::~CParticleSpinAffector() = default;

// 0x6fe498 _ZNK6glitch5scene21CParticleSpinAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticleSpinAffector::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    attributes->addFloat("SpinTime", static_cast<float>(spinTime), false);  // vptr+0x64
    attributes->addFloat("Variation", variation, false);
}

// 0x6fe540 _ZN6glitch5scene21CParticleSpinAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
int CParticleSpinAffector::deserializeAttributes(int index, io::IAttributes* attributes,
                                                 io::SAttributeReadWriteOptions*) {
    if (!attributeIs(attributes, index, "SpinTime")) {
        return index;
    }
    spinTime = fixUnsignedFromFloat(attributes->getFloat(index++));  // vptr+0x74, converted with __fixunssfsi
    if (!attributeIs(attributes, index, "Variation")) {
        return index;
    }
    variation = attributes->getFloat(index);
    return index + 1;
}

// 0x6fe600 _ZN6glitch5scene21CParticleSpinAffector6affectEjPNS0_9SParticleEj
void CParticleSpinAffector::affect(std::uint32_t now, SParticle* particles, std::uint32_t count) {
    if (!enabled || count == 0) {
        return;
    }
    for (std::uint32_t i = 0; i != count; ++i, ++particles) {
        if (particles->startTime == now) {
            if (variation > 0.0f) {
                particles->rotationVariation = randomVariation(variation);  // +0x40
            } else {
                particles->rotationVariation = 0.0f;
            }
        }
        particles->rotation = 0.0f;  // +0x3c
        const std::int32_t elapsed = static_cast<std::int32_t>(now - particles->startTime);
        const float spin = static_cast<float>(spinTime);
        const std::int32_t period = static_cast<std::int32_t>(spin + (spin * particles->rotationVariation) / -100.0f);
        if (period > 0) {
            const float fraction = static_cast<float>(elapsed % period) / static_cast<float>(period);
            particles->rotation = fraction * 3.1416f + fraction * 3.1416f;
        }
    }
}

// 0x6fe2b4 _ZN6glitch5scene21CParticleSpinAffector11setSpinTimeEf
void CParticleSpinAffector::setSpinTime(float value) { spinTime = fixUnsignedFromFloat(value); }

// 0x6fe2cc _ZN6glitch5scene21CParticleSpinAffector12setVariationEf
void CParticleSpinAffector::setVariation(float value) { variation = value; }

// 0x6fe2d4 _ZNK6glitch5scene21CParticleSpinAffector11getSpinTimeEv
float CParticleSpinAffector::getSpinTime() const { return static_cast<float>(spinTime); }

// 0x6fe2e4 _ZNK6glitch5scene21CParticleSpinAffector12getVariationEv
float CParticleSpinAffector::getVariation() const { return variation; }

// ---- CParticleFadeOutAffector ----

// 0x6fa4d4 _ZN6glitch5scene24CParticleFadeOutAffectorC2ERKNS_5video6SColorEj
// 0x6fa5a4 _ZN6glitch5scene24CParticleFadeOutAffectorC1ERKNS_5video6SColorEj
CParticleFadeOutAffector::CParticleFadeOutAffector(const video::SColor& targetColorValue,
                                                   std::uint32_t fadeOutTimeValue)
    : targetColor(targetColorValue), fadeOutTime(fadeOutTimeValue != 0 ? static_cast<float>(fadeOutTimeValue) : 1.0f) {
    enabled = true;  // +0x04
}

// 0x6fa7c0 _ZN6glitch5scene24CParticleFadeOutAffectorD1Ev
// 0x6fa94c _ZN6glitch5scene24CParticleFadeOutAffectorD0Ev
CParticleFadeOutAffector::~CParticleFadeOutAffector() = default;

// 0x6fa750 _ZNK6glitch5scene24CParticleFadeOutAffector19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticleFadeOutAffector::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    attributes->addColor("TargetColor", targetColor, false);   // vptr+0x118, the four bytes at +0x05
    attributes->addFloat("FadeOutTime", fadeOutTime, false);   // vptr+0x64, +0x0c
}

// 0x6fa804 _ZN6glitch5scene24CParticleFadeOutAffector21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
int CParticleFadeOutAffector::deserializeAttributes(int index, io::IAttributes* attributes,
                                                    io::SAttributeReadWriteOptions*) {
    if (!attributeIs(attributes, index, "TargetColor")) {
        return index;
    }
    targetColor = attributes->getColor(index++);  // vptr+0x128
    if (!attributeIs(attributes, index, "FadeOutTime")) {
        return index;
    }
    fadeOutTime = attributes->getFloat(index);
    return index + 1;
}

// 0x6fa69c _ZN6glitch5scene24CParticleFadeOutAffector6affectEjPNS0_9SParticleEj
void CParticleFadeOutAffector::affect(std::uint32_t now, SParticle* particles, std::uint32_t count) {
    if (!enabled || count == 0) {
        return;
    }
    for (std::uint32_t i = 0; i != count; ++i, ++particles) {
        const float remaining = static_cast<float>(particles->endTime - now);
        if (remaining < fadeOutTime) {
            particles->color = particles->startColor.getInterpolated(targetColor, remaining / fadeOutTime);  // +0x20
        }
    }
}

// 0x6fa484 _ZN6glitch5scene24CParticleFadeOutAffector14setTargetColorERKNS_5video6SColorE
void CParticleFadeOutAffector::setTargetColor(const video::SColor& value) { targetColor = value; }

// 0x6fa498 _ZN6glitch5scene24CParticleFadeOutAffector14setFadeOutTimeEf
void CParticleFadeOutAffector::setFadeOutTime(float value) { fadeOutTime = value; }

// 0x6fa4a0 _ZNK6glitch5scene24CParticleFadeOutAffector14getTargetColorEv
const video::SColor& CParticleFadeOutAffector::getTargetColor() const { return targetColor; }

// 0x6fa4a8 _ZNK6glitch5scene24CParticleFadeOutAffector14getFadeOutTimeEv
float CParticleFadeOutAffector::getFadeOutTime() const { return fadeOutTime; }

}  // namespace glitch::scene
