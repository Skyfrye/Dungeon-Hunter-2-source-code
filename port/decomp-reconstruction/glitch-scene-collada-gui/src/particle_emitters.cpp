#include "glitch-scene-collada-gui/particle_emitters.hpp"

#include <cmath>

#include "glitch-core-io/io/iattributes.hpp"
#include "glitch-core-io/os/randomizer.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/IAnimatedMeshSceneNode.hpp"

namespace glitch::scene {

namespace {

const core::vector3d<float> kZeroVector{};

// Particles per second drawn for this call: the minimum, or the minimum plus rand() % (max - min).
float drawRate(std::uint32_t minValue, std::uint32_t maxValue) {
    if (minValue == maxValue) {
        return static_cast<float>(minValue);
    }
    const std::uint32_t r = static_cast<std::uint32_t>(os::Randomizer::rand());
    return static_cast<float>(minValue) + static_cast<float>(r % (maxValue - minValue));
}

// The emission direction turned by up to +-maxAngle degrees about each of the three axes (XY, YZ, XZ), one rand() each.
core::vector3d<float> perturbDirection(const core::vector3d<float>& direction, std::int32_t maxAngle,
                                       const core::vector3d<float>& pivot) {
    core::vector3d<float> v = direction;
    v.rotateXYBy(static_cast<double>(os::Randomizer::rand() % (2 * maxAngle) - maxAngle), pivot);
    v.rotateYZBy(static_cast<double>(os::Randomizer::rand() % (2 * maxAngle) - maxAngle), pivot);
    v.rotateXZBy(static_cast<double>(os::Randomizer::rand() % (2 * maxAngle) - maxAngle), pivot);
    return v;
}

// now + life time, the life time drawn between the minimum and the maximum.
std::uint32_t drawEndTime(std::uint32_t now, std::uint32_t minLife, std::uint32_t maxLife) {
    if (minLife == maxLife) {
        return now + maxLife;
    }
    const std::uint32_t r = static_cast<std::uint32_t>(os::Randomizer::rand());
    return now + minLife + r % (maxLife - minLife);
}

// The start colour: a random blend of the two colours.
video::SColor drawColor(const video::SColor& minColor, const video::SColor& maxColor) {
    const std::uint32_t r = static_cast<std::uint32_t>(os::Randomizer::rand());
    return minColor.getInterpolated(maxColor, static_cast<float>(r % 100) / 100.0f);
}

// How many particles are due: round(time / interval), at most twice the maximum rate.
std::uint32_t dueCount(std::uint32_t time, float interval, std::uint32_t maxRate) {
    std::uint32_t amount = static_cast<std::uint32_t>(static_cast<float>(time) / interval + 0.5f);
    if (amount >= 2 * maxRate) {
        amount = 2 * maxRate;
    }
    return amount;
}

// The shared deserialize tail of the box and point emitters: the rate, colour, life time and angle attributes.
void readCommon(io::IAttributes* attributes, std::uint32_t& minRate, std::uint32_t& maxRate, video::SColor& minColor,
                video::SColor& maxColor, std::uint32_t& minLife, std::uint32_t& maxLife, std::int32_t& maxAngle) {
    minRate = static_cast<std::uint32_t>(attributes->getInt("MinParticlesPerSecond"));   // vptr+0x58
    const std::uint32_t maxValue = static_cast<std::uint32_t>(attributes->getInt("MaxParticlesPerSecond"));
    maxRate = maxValue;
    const std::uint32_t minValue = minRate == 0 ? 1 : minRate;
    const std::uint32_t cap = maxValue == 0 ? 1 : (maxValue > 199 ? 200 : maxValue);
    minRate = minValue > cap ? cap : minValue;
    maxRate = cap;
    minColor = attributes->getColor("MinStartColor");                                    // vptr+0x124
    maxColor = attributes->getColor("MaxStartColor");
    minLife = static_cast<std::uint32_t>(attributes->getInt("MinLifeTime"));
    maxLife = static_cast<std::uint32_t>(attributes->getInt("MaxLifeTime"));
    maxAngle = attributes->getInt("MaxAngleDegrees");
    if (minLife > maxLife) {
        maxLife = minLife;
    }
}

// The direction read from the attributes; a zero vector becomes (0, 0.01, 0).
core::vector3d<float> readDirection(io::IAttributes* attributes) {
    core::vector3d<float> d = attributes->getVector3d("Direction");                      // vptr+0x1b4
    if (std::sqrt((d.X * d.X + d.Y * d.Y) + d.Z * d.Z) == 0.0f) {
        d.X = 0.0f;
        d.Y = 0.01f;
        d.Z = 0.0f;
    }
    return d;
}

// The shared serialize tail of the box and point emitters.
void writeCommon(io::IAttributes* attributes, std::uint32_t minRate, std::uint32_t maxRate, const video::SColor& minColor,
                 const video::SColor& maxColor, std::uint32_t minLife, std::uint32_t maxLife, std::int32_t maxAngle) {
    attributes->addInt("MinParticlesPerSecond", static_cast<std::int32_t>(minRate), false);  // vptr+0x4c
    attributes->addInt("MaxParticlesPerSecond", static_cast<std::int32_t>(maxRate), false);
    attributes->addColor("MinStartColor", minColor, false);                                  // vptr+0x118
    attributes->addColor("MaxStartColor", maxColor, false);
    attributes->addInt("MinLifeTime", static_cast<std::int32_t>(minLife), false);
    attributes->addInt("MaxLifeTime", static_cast<std::int32_t>(maxLife), false);
    attributes->addInt("MaxAngleDegrees", maxAngle, false);
}

// Records the vertex count of every mesh buffer of `meshToCount` after the ones already recorded, and adds them to `total`.
// The vertex count is the word at +0x08 of the buffer's vertex stream table.
template <typename MeshT>
void countBuffers(MeshT& meshToCount, std::uint32_t& total, std::uint32_t& bufferCount, std::vector<std::int32_t>& counts) {
    bufferCount = meshToCount->getMeshBufferCount();                                         // vptr+0x10
    for (std::uint32_t i = 0; i < bufferCount; ++i) {
        const boost::intrusive_ptr<CMeshBuffer> buffer = meshToCount->getMeshBuffer(i);      // vptr+0x14
        const boost::intrusive_ptr<video::CVertexStreams> streams = buffer->vertexStreams;  // +0x14
        counts.push_back(static_cast<std::int32_t>(streams->m_field08));
        total += streams->m_field08;
    }
}

}  // namespace

// ---- CParticleCylinderEmitter ----

// 0x6f9b38 _ZN6glitch5scene24CParticleCylinderEmitterC2ERKNS_4core8vector3dIfEEfS6_fbS6_jjNS_5video6SColorESA_jji
// 0x6f9c88 _ZN6glitch5scene24CParticleCylinderEmitterC1ERKNS_4core8vector3dIfEEfS6_fbS6_jjNS_5video6SColorESA_jji
CParticleCylinderEmitter::CParticleCylinderEmitter(
    const core::vector3d<float>& centerValue, float radiusValue, const core::vector3d<float>& normalValue,
    float lengthValue, bool outlineOnlyValue, const core::vector3d<float>& directionValue,
    std::uint32_t minParticlesPerSecondValue, std::uint32_t maxParticlesPerSecondValue, video::SColor minStartColorValue,
    video::SColor maxStartColorValue, std::uint32_t lifeTimeMinValue, std::uint32_t lifeTimeMaxValue,
    std::int32_t maxAngleDegreesValue)
    : center(centerValue),
      normal(normalValue),
      radius(radiusValue),
      length(lengthValue),
      outlineOnly(outlineOnlyValue),
      direction(directionValue),
      minParticlesPerSecond(minParticlesPerSecondValue),
      maxParticlesPerSecond(maxParticlesPerSecondValue),
      minStartColor(minStartColorValue),
      maxStartColor(maxStartColorValue),
      minLifeTime(lifeTimeMinValue),
      maxLifeTime(lifeTimeMaxValue),
      maxAngleDegrees(maxAngleDegreesValue) {}

// 0x6f9e28 _ZN6glitch5scene24CParticleCylinderEmitterD1Ev (D0 0x6f9e90): frees the particle storage.
CParticleCylinderEmitter::~CParticleCylinderEmitter() = default;

// 0x6f9ecc _ZN6glitch5scene24CParticleCylinderEmitter5emittEjjRPNS0_9SParticleE
int CParticleCylinderEmitter::emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) {
    time += timeSinceLastCall;  // +0x58
    const float rate = drawRate(minParticlesPerSecond, maxParticlesPerSecond);
    const float interval = 1000.0f / rate;
    if (!(static_cast<float>(time) > interval)) {
        return 0;
    }
    particles.clear();
    const std::uint32_t amount = dueCount(time, interval, maxParticlesPerSecond);
    time = 0;
    for (std::uint32_t i = 0; i != amount; ++i) {
        SParticle p;
        float r;
        if (outlineOnly) {
            r = radius;
        } else {
            r = std::fmod(static_cast<float>(os::Randomizer::rand()), radius * 1000.0f) * 0.001f;
        }
        p.pos.X = center.X + r;
        p.pos.Y = center.Y;
        p.pos.Z = r + center.Z;
        p.pos.rotateXZBy(static_cast<double>(os::Randomizer::rand() % 360), center);
        const float along = std::fmod(static_cast<float>(os::Randomizer::rand()), length * 1000.0f) * 0.001f;
        p.pos.X = p.pos.X + along * normal.X;
        p.pos.Y = p.pos.Y + along * normal.Y;
        p.pos.Z = p.pos.Z + along * normal.Z;
        p.startTime = now;
        p.vector = direction;
        if (maxAngleDegrees != 0) {
            p.vector = perturbDirection(direction, maxAngleDegrees, kZeroVector);
        }
        p.endTime = drawEndTime(now, minLifeTime, maxLifeTime);
        const video::SColor c = drawColor(minStartColor, maxStartColor);
        p.color = c;
        p.startColor = c;
        p.startVector = p.vector;
        particles.push_back(p);
    }
    outArray = particles.data();
    return static_cast<int>(particles.size());
}

// 0x6f9a08 _ZN6glitch5scene24CParticleCylinderEmitter9setCenterERKNS_4core8vector3dIfEE
void CParticleCylinderEmitter::setCenter(const core::vector3d<float>& value) { center = value; }

// 0x6f9a24 _ZN6glitch5scene24CParticleCylinderEmitter9setNormalERKNS_4core8vector3dIfEE
void CParticleCylinderEmitter::setNormal(const core::vector3d<float>& value) { normal = value; }

// 0x6f9a40 _ZN6glitch5scene24CParticleCylinderEmitter9setRadiusEf
void CParticleCylinderEmitter::setRadius(float value) { radius = value; }

// 0x6f9a48 _ZN6glitch5scene24CParticleCylinderEmitter9setLengthEf
void CParticleCylinderEmitter::setLength(float value) { length = value; }

// 0x6f9a50 _ZN6glitch5scene24CParticleCylinderEmitter14setOutlineOnlyEb
void CParticleCylinderEmitter::setOutlineOnly(bool value) { outlineOnly = value; }

// 0x6f9a58 _ZN6glitch5scene24CParticleCylinderEmitter12setDirectionERKNS_4core8vector3dIfEE
void CParticleCylinderEmitter::setDirection(const core::vector3d<float>& value) { direction = value; }

// 0x6f9a74 _ZN6glitch5scene24CParticleCylinderEmitter24setMinParticlesPerSecondEj
void CParticleCylinderEmitter::setMinParticlesPerSecond(std::uint32_t value) {
    minParticlesPerSecond = value;
}

// 0x6f9a7c _ZN6glitch5scene24CParticleCylinderEmitter24setMaxParticlesPerSecondEj
void CParticleCylinderEmitter::setMaxParticlesPerSecond(std::uint32_t value) {
    maxParticlesPerSecond = value;
}

// 0x6f9a84 _ZN6glitch5scene24CParticleCylinderEmitter16setMinStartColorERKNS_5video6SColorE
void CParticleCylinderEmitter::setMinStartColor(const video::SColor& value) { minStartColor = value; }

// 0x6f9a98 _ZN6glitch5scene24CParticleCylinderEmitter16setMaxStartColorERKNS_5video6SColorE
void CParticleCylinderEmitter::setMaxStartColor(const video::SColor& value) { maxStartColor = value; }

// 0x6f9aac _ZNK6glitch5scene24CParticleCylinderEmitter9getCenterEv
const core::vector3d<float>& CParticleCylinderEmitter::getCenter() const { return center; }

// 0x6f9ab4 _ZNK6glitch5scene24CParticleCylinderEmitter9getNormalEv
const core::vector3d<float>& CParticleCylinderEmitter::getNormal() const { return normal; }

// 0x6f9abc _ZNK6glitch5scene24CParticleCylinderEmitter9getRadiusEv
float CParticleCylinderEmitter::getRadius() const { return radius; }

// 0x6f9ac4 _ZNK6glitch5scene24CParticleCylinderEmitter9getLengthEv
float CParticleCylinderEmitter::getLength() const { return length; }

// 0x6f9acc _ZNK6glitch5scene24CParticleCylinderEmitter14getOutlineOnlyEv
bool CParticleCylinderEmitter::getOutlineOnly() const { return outlineOnly; }

// 0x6f9ad4 _ZNK6glitch5scene24CParticleCylinderEmitter12getDirectionEv
const core::vector3d<float>& CParticleCylinderEmitter::getDirection() const { return direction; }

// 0x6f9adc _ZNK6glitch5scene24CParticleCylinderEmitter24getMinParticlesPerSecondEv
std::uint32_t CParticleCylinderEmitter::getMinParticlesPerSecond() const {
    return minParticlesPerSecond;
}

// 0x6f9ae4 _ZNK6glitch5scene24CParticleCylinderEmitter24getMaxParticlesPerSecondEv
std::uint32_t CParticleCylinderEmitter::getMaxParticlesPerSecond() const {
    return maxParticlesPerSecond;
}

// 0x6f9aec _ZNK6glitch5scene24CParticleCylinderEmitter16getMinStartColorEv
const video::SColor& CParticleCylinderEmitter::getMinStartColor() const { return minStartColor; }

// 0x6f9af4 _ZNK6glitch5scene24CParticleCylinderEmitter16getMaxStartColorEv
const video::SColor& CParticleCylinderEmitter::getMaxStartColor() const { return maxStartColor; }

// 0x6f9afc _ZNK6glitch5scene24CParticleCylinderEmitter14getMinLifeTimeEv
std::uint32_t CParticleCylinderEmitter::getMinLifeTime() const { return minLifeTime; }

// 0x6f9b04 _ZNK6glitch5scene24CParticleCylinderEmitter14getMaxLifeTimeEv
std::uint32_t CParticleCylinderEmitter::getMaxLifeTime() const { return maxLifeTime; }

// 0x6f9b0c _ZNK6glitch5scene24CParticleCylinderEmitter18getMaxAngleDegreesEv
std::int32_t CParticleCylinderEmitter::getMaxAngleDegrees() const { return maxAngleDegrees; }

// ---- CParticlePointEmitter ----

// 0x6fba68 _ZN6glitch5scene21CParticlePointEmitterC2ERKNS_4core8vector3dIfEEjjNS_5video6SColorES8_jji
// 0x6fbb80 _ZN6glitch5scene21CParticlePointEmitterC1ERKNS_4core8vector3dIfEEjjNS_5video6SColorES8_jji
CParticlePointEmitter::CParticlePointEmitter(const core::vector3d<float>& directionValue,
                                             std::uint32_t minParticlesPerSecondValue,
                                             std::uint32_t maxParticlesPerSecondValue, video::SColor minStartColorValue,
                                             video::SColor maxStartColorValue, std::uint32_t lifeTimeMinValue,
                                             std::uint32_t lifeTimeMaxValue, std::int32_t maxAngleDegreesValue)
    : direction(directionValue),
      minParticlesPerSecond(minParticlesPerSecondValue),
      maxParticlesPerSecond(maxParticlesPerSecondValue),
      minStartColor(minStartColorValue),
      maxStartColor(maxStartColorValue),
      minLifeTime(lifeTimeMinValue),
      maxLifeTime(lifeTimeMaxValue),
      maxAngleDegrees(maxAngleDegreesValue) {}

// 0x6fc2fc _ZN6glitch5scene21CParticlePointEmitterD1Ev (D0 0x6fc340)
CParticlePointEmitter::~CParticlePointEmitter() = default;

// 0x6fbcd8 _ZNK6glitch5scene21CParticlePointEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticlePointEmitter::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    attributes->addVector3d("Direction", direction, false);  // vptr+0x1a8
    writeCommon(attributes, minParticlesPerSecond, maxParticlesPerSecond, minStartColor, maxStartColor, minLifeTime,
                maxLifeTime, maxAngleDegrees);
}

// 0x6fbe4c _ZN6glitch5scene21CParticlePointEmitter21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// Reads by name (the index is not used); a zero direction becomes (0, 0.01, 0), the rates are clamped to 1..200 and the life
// time range is made ordered. The original ends with a findAttribute("MaxAngleDegrees") call (vptr+0x28) whose result it returns.
int CParticlePointEmitter::deserializeAttributes(int, io::IAttributes* attributes, io::SAttributeReadWriteOptions*) {
    direction = readDirection(attributes);
    readCommon(attributes, minParticlesPerSecond, maxParticlesPerSecond, minStartColor, maxStartColor, minLifeTime,
               maxLifeTime, maxAngleDegrees);
    return static_cast<int>(attributes->findAttribute("MaxAngleDegrees"));
}

// 0x6fc0b4 _ZN6glitch5scene21CParticlePointEmitter5emittEjjRPNS0_9SParticleE
int CParticlePointEmitter::emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) {
    time += timeSinceLastCall;  // +0x70
    const float rate = drawRate(minParticlesPerSecond, maxParticlesPerSecond);
    if (!(static_cast<float>(time) > 1000.0f / rate)) {
        return 0;
    }
    time = 0;
    particle.startTime = now;         // +0x1c
    particle.vector = direction;      // +0x10..+0x18
    if (maxAngleDegrees != 0) {
        particle.vector = perturbDirection(direction, maxAngleDegrees, kZeroVector);
    }
    particle.endTime = drawEndTime(now, minLifeTime, maxLifeTime);
    particle.color = drawColor(minStartColor, maxStartColor);
    particle.startColor = particle.color;
    particle.startVector = particle.vector;
    outArray = &particle;
    return 1;
}

// 0x6fb9d4 _ZN6glitch5scene21CParticlePointEmitter12setDirectionERKNS_4core8vector3dIfEE
void CParticlePointEmitter::setDirection(const core::vector3d<float>& value) { direction = value; }

// 0x6fb9f0 _ZN6glitch5scene21CParticlePointEmitter24setMinParticlesPerSecondEj
void CParticlePointEmitter::setMinParticlesPerSecond(std::uint32_t value) {
    minParticlesPerSecond = value;
}

// 0x6fb9f8 _ZN6glitch5scene21CParticlePointEmitter24setMaxParticlesPerSecondEj
void CParticlePointEmitter::setMaxParticlesPerSecond(std::uint32_t value) {
    maxParticlesPerSecond = value;
}

// 0x6fba00 _ZN6glitch5scene21CParticlePointEmitter16setMinStartColorERKNS_5video6SColorE
void CParticlePointEmitter::setMinStartColor(const video::SColor& value) { minStartColor = value; }

// 0x6fba14 _ZN6glitch5scene21CParticlePointEmitter16setMaxStartColorERKNS_5video6SColorE
void CParticlePointEmitter::setMaxStartColor(const video::SColor& value) { maxStartColor = value; }

// 0x6fba28 _ZNK6glitch5scene21CParticlePointEmitter12getDirectionEv
const core::vector3d<float>& CParticlePointEmitter::getDirection() const { return direction; }

// 0x6fba30 _ZNK6glitch5scene21CParticlePointEmitter24getMinParticlesPerSecondEv
std::uint32_t CParticlePointEmitter::getMinParticlesPerSecond() const {
    return minParticlesPerSecond;
}

// 0x6fba38 _ZNK6glitch5scene21CParticlePointEmitter24getMaxParticlesPerSecondEv
std::uint32_t CParticlePointEmitter::getMaxParticlesPerSecond() const {
    return maxParticlesPerSecond;
}

// 0x6fba40 _ZNK6glitch5scene21CParticlePointEmitter16getMinStartColorEv
const video::SColor& CParticlePointEmitter::getMinStartColor() const { return minStartColor; }

// 0x6fba48 _ZNK6glitch5scene21CParticlePointEmitter16getMaxStartColorEv
const video::SColor& CParticlePointEmitter::getMaxStartColor() const { return maxStartColor; }

// 0x6fba50 _ZNK6glitch5scene21CParticlePointEmitter14getMinLifeTimeEv
std::uint32_t CParticlePointEmitter::getMinLifeTime() const { return minLifeTime; }

// 0x6fba58 _ZNK6glitch5scene21CParticlePointEmitter14getMaxLifeTimeEv
std::uint32_t CParticlePointEmitter::getMaxLifeTime() const { return maxLifeTime; }

// 0x6fba60 _ZNK6glitch5scene21CParticlePointEmitter18getMaxAngleDegreesEv
std::int32_t CParticlePointEmitter::getMaxAngleDegrees() const { return maxAngleDegrees; }

// ---- CParticleBoxEmitter ----

// 0x6f8a48 _ZN6glitch5scene19CParticleBoxEmitterC2ERKNS_4core8aabbox3dIfEERKNS2_8vector3dIfEEjjNS_5video6SColorESC_jji
// 0x6f8bb0 _ZN6glitch5scene19CParticleBoxEmitterC1ERKNS_4core8aabbox3dIfEERKNS2_8vector3dIfEEjjNS_5video6SColorESC_jji
CParticleBoxEmitter::CParticleBoxEmitter(const core::aabbox3d<float>& boxValue, const core::vector3d<float>& directionValue,
                                         std::uint32_t minParticlesPerSecondValue,
                                         std::uint32_t maxParticlesPerSecondValue, video::SColor minStartColorValue,
                                         video::SColor maxStartColorValue, std::uint32_t lifeTimeMinValue,
                                         std::uint32_t lifeTimeMaxValue, std::int32_t maxAngleDegreesValue)
    : box(boxValue),
      direction(directionValue),
      minParticlesPerSecond(minParticlesPerSecondValue),
      maxParticlesPerSecond(maxParticlesPerSecondValue),
      minStartColor(minStartColorValue),
      maxStartColor(maxStartColorValue),
      minLifeTime(lifeTimeMinValue),
      maxLifeTime(lifeTimeMaxValue),
      maxAngleDegrees(maxAngleDegreesValue) {}

// 0x6f8f50 _ZN6glitch5scene19CParticleBoxEmitterD1Ev (D0 0x6f8f98): frees the particle storage.
CParticleBoxEmitter::~CParticleBoxEmitter() = default;

// 0x6f8d5c _ZNK6glitch5scene19CParticleBoxEmitter19serializeAttributesEPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
void CParticleBoxEmitter::serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions*) const {
    core::vector3d<float> half;
    half.X = (box.MaxEdge.X - box.MinEdge.X) * 0.5f;
    half.Y = (box.MaxEdge.Y - box.MinEdge.Y) * 0.5f;
    half.Z = (box.MaxEdge.Z - box.MinEdge.Z) * 0.5f;
    attributes->addVector3d("Box", half, false);             // vptr+0x1a8
    attributes->addVector3d("Direction", direction, false);
    writeCommon(attributes, minParticlesPerSecond, maxParticlesPerSecond, minStartColor, maxStartColor, minLifeTime,
                maxLifeTime, maxAngleDegrees);
}

// 0x6f8fd4 _ZN6glitch5scene19CParticleBoxEmitter21deserializeAttributesEiPNS_2io11IAttributesEPNS2_26SAttributeReadWriteOptionsE
// The box is read as half extents (non-positive components become 1) and centred on the origin. See the point emitter for the
// repairs and the trailing findAttribute call.
int CParticleBoxEmitter::deserializeAttributes(int, io::IAttributes* attributes, io::SAttributeReadWriteOptions*) {
    core::vector3d<float> half = attributes->getVector3d("Box");  // vptr+0x1b4
    if (half.X <= 0.0f) half.X = 1.0f;
    if (half.Y <= 0.0f) half.Y = 1.0f;
    if (half.Z <= 0.0f) half.Z = 1.0f;
    box.MinEdge.X = -half.X;  // +0x10
    box.MinEdge.Y = -half.Y;
    box.MinEdge.Z = -half.Z;
    box.MaxEdge.X = half.X;
    box.MaxEdge.Y = half.Y;
    box.MaxEdge.Z = half.Z;
    direction = readDirection(attributes);
    readCommon(attributes, minParticlesPerSecond, maxParticlesPerSecond, minStartColor, maxStartColor, minLifeTime,
               maxLifeTime, maxAngleDegrees);
    return static_cast<int>(attributes->findAttribute("MaxAngleDegrees"));
}

// 0x6f9508 _ZN6glitch5scene19CParticleBoxEmitter5emittEjjRPNS0_9SParticleE
int CParticleBoxEmitter::emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) {
    time += timeSinceLastCall;  // +0x4c
    const float rate = drawRate(minParticlesPerSecond, maxParticlesPerSecond);
    const float interval = 1000.0f / rate;
    if (!(static_cast<float>(time) > interval)) {
        return 0;
    }
    particles.clear();
    const std::uint32_t amount = dueCount(time, interval, maxParticlesPerSecond);
    time = 0;
    const float extentX = box.MaxEdge.X - box.MinEdge.X;
    const float extentY = box.MaxEdge.Y - box.MinEdge.Y;
    const float extentZ = box.MaxEdge.Z - box.MinEdge.Z;
    for (std::uint32_t i = 0; i != amount; ++i) {
        SParticle p;
        p.pos.X = std::fmod(static_cast<float>(os::Randomizer::rand()), extentX) + box.MinEdge.X;
        p.pos.Y = box.MinEdge.Y + std::fmod(static_cast<float>(os::Randomizer::rand()), extentY);
        p.pos.Z = box.MinEdge.Z + std::fmod(static_cast<float>(os::Randomizer::rand()), extentZ);
        p.startTime = now;
        p.vector = direction;
        if (maxAngleDegrees != 0) {
            p.vector = perturbDirection(direction, maxAngleDegrees, kZeroVector);
        }
        p.endTime = drawEndTime(now, minLifeTime, maxLifeTime);
        const video::SColor c = drawColor(minStartColor, maxStartColor);
        p.color = c;
        p.startColor = c;
        p.startVector = p.vector;
        particles.push_back(p);
    }
    outArray = particles.data();
    return static_cast<int>(particles.size());
}

// 0x6f8954 _ZN6glitch5scene19CParticleBoxEmitter12setDirectionERKNS_4core8vector3dIfEE
void CParticleBoxEmitter::setDirection(const core::vector3d<float>& value) { direction = value; }

// 0x6f89a8 _ZN6glitch5scene19CParticleBoxEmitter6setBoxERKNS_4core8aabbox3dIfEE
void CParticleBoxEmitter::setBox(const core::aabbox3d<float>& value) { box = value; }

// 0x6f8970 _ZN6glitch5scene19CParticleBoxEmitter24setMinParticlesPerSecondEj
void CParticleBoxEmitter::setMinParticlesPerSecond(std::uint32_t value) {
    minParticlesPerSecond = value;
}

// 0x6f8978 _ZN6glitch5scene19CParticleBoxEmitter24setMaxParticlesPerSecondEj
void CParticleBoxEmitter::setMaxParticlesPerSecond(std::uint32_t value) {
    maxParticlesPerSecond = value;
}

// 0x6f8980 _ZN6glitch5scene19CParticleBoxEmitter16setMinStartColorERKNS_5video6SColorE
void CParticleBoxEmitter::setMinStartColor(const video::SColor& value) { minStartColor = value; }

// 0x6f8994 _ZN6glitch5scene19CParticleBoxEmitter16setMaxStartColorERKNS_5video6SColorE
void CParticleBoxEmitter::setMaxStartColor(const video::SColor& value) { maxStartColor = value; }

// 0x6f89dc _ZNK6glitch5scene19CParticleBoxEmitter12getDirectionEv
const core::vector3d<float>& CParticleBoxEmitter::getDirection() const { return direction; }

// 0x6f8a04 _ZNK6glitch5scene19CParticleBoxEmitter6getBoxEv
const core::aabbox3d<float>& CParticleBoxEmitter::getBox() const { return box; }

// 0x6f89e4 _ZNK6glitch5scene19CParticleBoxEmitter24getMinParticlesPerSecondEv
std::uint32_t CParticleBoxEmitter::getMinParticlesPerSecond() const {
    return minParticlesPerSecond;
}

// 0x6f89ec _ZNK6glitch5scene19CParticleBoxEmitter24getMaxParticlesPerSecondEv
std::uint32_t CParticleBoxEmitter::getMaxParticlesPerSecond() const {
    return maxParticlesPerSecond;
}

// 0x6f89f4 _ZNK6glitch5scene19CParticleBoxEmitter16getMinStartColorEv
const video::SColor& CParticleBoxEmitter::getMinStartColor() const { return minStartColor; }

// 0x6f89fc _ZNK6glitch5scene19CParticleBoxEmitter16getMaxStartColorEv
const video::SColor& CParticleBoxEmitter::getMaxStartColor() const { return maxStartColor; }

// 0x6f8a0c _ZNK6glitch5scene19CParticleBoxEmitter14getMinLifeTimeEv
std::uint32_t CParticleBoxEmitter::getMinLifeTime() const { return minLifeTime; }

// 0x6f8a14 _ZNK6glitch5scene19CParticleBoxEmitter14getMaxLifeTimeEv
std::uint32_t CParticleBoxEmitter::getMaxLifeTime() const { return maxLifeTime; }

// 0x6f8a1c _ZNK6glitch5scene19CParticleBoxEmitter18getMaxAngleDegreesEv
std::int32_t CParticleBoxEmitter::getMaxAngleDegrees() const { return maxAngleDegrees; }

// ---- CParticleRingEmitter ----

// 0x6fc4c8 _ZN6glitch5scene20CParticleRingEmitterC2ERKNS_4core8vector3dIfEEffS6_jjNS_5video6SColorES8_jji
// 0x6fc5f4 _ZN6glitch5scene20CParticleRingEmitterC1ERKNS_4core8vector3dIfEEffS6_jjNS_5video6SColorES8_jji
CParticleRingEmitter::CParticleRingEmitter(const core::vector3d<float>& centerValue, float radiusValue,
                                           float ringThicknessValue, const core::vector3d<float>& directionValue,
                                           std::uint32_t minParticlesPerSecondValue,
                                           std::uint32_t maxParticlesPerSecondValue, video::SColor minStartColorValue,
                                           video::SColor maxStartColorValue, std::uint32_t lifeTimeMinValue,
                                           std::uint32_t lifeTimeMaxValue, std::int32_t maxAngleDegreesValue)
    : center(centerValue),
      radius(radiusValue),
      ringThickness(ringThicknessValue),
      direction(directionValue),
      minParticlesPerSecond(minParticlesPerSecondValue),
      maxParticlesPerSecond(maxParticlesPerSecondValue),
      minStartColor(minStartColorValue),
      maxStartColor(maxStartColorValue),
      minLifeTime(lifeTimeMinValue),
      maxLifeTime(lifeTimeMaxValue),
      maxAngleDegrees(maxAngleDegreesValue) {}

// 0x6fc78c _ZN6glitch5scene20CParticleRingEmitterD1Ev (D0 0x6fc7d8): frees the particle storage.
CParticleRingEmitter::~CParticleRingEmitter() = default;

// 0x6fc814 _ZN6glitch5scene20CParticleRingEmitter5emittEjjRPNS0_9SParticleE
int CParticleRingEmitter::emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) {
    time += timeSinceLastCall;  // +0x48
    const float rate = drawRate(minParticlesPerSecond, maxParticlesPerSecond);
    const float interval = 1000.0f / rate;
    if (!(static_cast<float>(time) > interval)) {
        return 0;
    }
    particles.clear();
    const std::uint32_t amount = dueCount(time, interval, maxParticlesPerSecond);
    time = 0;
    for (std::uint32_t i = 0; i != amount; ++i) {
        SParticle p;
        float jitter = std::fmod(static_cast<float>(os::Randomizer::rand()), (ringThickness * 0.5f) * 1000.0f) * 0.001f;
        if (os::Randomizer::rand() % 2 != 0) {
            jitter = -jitter;
        }
        const float offset = jitter + radius;
        p.pos.X = center.X + offset;
        p.pos.Y = center.Y;
        p.pos.Z = offset + center.Z;
        p.pos.rotateXZBy(static_cast<double>(static_cast<float>(os::Randomizer::rand() % 3600) * 0.1f), center);
        p.startTime = now;
        p.vector = direction;
        if (maxAngleDegrees != 0) {
            // The original rotates the direction about the ring's centre (the pivot argument is +0x10), not about the origin.
            p.vector = perturbDirection(direction, maxAngleDegrees, center);
        }
        p.endTime = drawEndTime(now, minLifeTime, maxLifeTime);
        const video::SColor c = drawColor(minStartColor, maxStartColor);
        p.color = c;
        p.startColor = c;
        p.startVector = p.vector;
        particles.push_back(p);
    }
    outArray = particles.data();
    return static_cast<int>(particles.size());
}

// 0x6fc3cc _ZN6glitch5scene20CParticleRingEmitter12setDirectionERKNS_4core8vector3dIfEE
void CParticleRingEmitter::setDirection(const core::vector3d<float>& value) { direction = value; }

// 0x6fc3e8 _ZN6glitch5scene20CParticleRingEmitter24setMinParticlesPerSecondEj
void CParticleRingEmitter::setMinParticlesPerSecond(std::uint32_t value) {
    minParticlesPerSecond = value;
}

// 0x6fc3f0 _ZN6glitch5scene20CParticleRingEmitter24setMaxParticlesPerSecondEj
void CParticleRingEmitter::setMaxParticlesPerSecond(std::uint32_t value) {
    maxParticlesPerSecond = value;
}

// 0x6fc3f8 _ZN6glitch5scene20CParticleRingEmitter16setMinStartColorERKNS_5video6SColorE
void CParticleRingEmitter::setMinStartColor(const video::SColor& value) { minStartColor = value; }

// 0x6fc40c _ZN6glitch5scene20CParticleRingEmitter16setMaxStartColorERKNS_5video6SColorE
void CParticleRingEmitter::setMaxStartColor(const video::SColor& value) { maxStartColor = value; }

// 0x6fc420 _ZN6glitch5scene20CParticleRingEmitter9setCenterERKNS_4core8vector3dIfEE
void CParticleRingEmitter::setCenter(const core::vector3d<float>& value) { center = value; }

// 0x6fc43c _ZN6glitch5scene20CParticleRingEmitter9setRadiusEf
void CParticleRingEmitter::setRadius(float value) { radius = value; }

// 0x6fc444 _ZN6glitch5scene20CParticleRingEmitter16setRingThicknessEf
void CParticleRingEmitter::setRingThickness(float value) { ringThickness = value; }

// 0x6fc44c _ZNK6glitch5scene20CParticleRingEmitter12getDirectionEv
const core::vector3d<float>& CParticleRingEmitter::getDirection() const { return direction; }

// 0x6fc454 _ZNK6glitch5scene20CParticleRingEmitter24getMinParticlesPerSecondEv
std::uint32_t CParticleRingEmitter::getMinParticlesPerSecond() const {
    return minParticlesPerSecond;
}

// 0x6fc45c _ZNK6glitch5scene20CParticleRingEmitter24getMaxParticlesPerSecondEv
std::uint32_t CParticleRingEmitter::getMaxParticlesPerSecond() const {
    return maxParticlesPerSecond;
}

// 0x6fc464 _ZNK6glitch5scene20CParticleRingEmitter16getMinStartColorEv
const video::SColor& CParticleRingEmitter::getMinStartColor() const { return minStartColor; }

// 0x6fc46c _ZNK6glitch5scene20CParticleRingEmitter16getMaxStartColorEv
const video::SColor& CParticleRingEmitter::getMaxStartColor() const { return maxStartColor; }

// 0x6fc474 _ZNK6glitch5scene20CParticleRingEmitter9getCenterEv
const core::vector3d<float>& CParticleRingEmitter::getCenter() const { return center; }

// 0x6fc47c _ZNK6glitch5scene20CParticleRingEmitter9getRadiusEv
float CParticleRingEmitter::getRadius() const { return radius; }

// 0x6fc484 _ZNK6glitch5scene20CParticleRingEmitter16getRingThicknessEv
float CParticleRingEmitter::getRingThickness() const { return ringThickness; }

// 0x6fc48c _ZNK6glitch5scene20CParticleRingEmitter14getMinLifeTimeEv
std::uint32_t CParticleRingEmitter::getMinLifeTime() const { return minLifeTime; }

// 0x6fc494 _ZNK6glitch5scene20CParticleRingEmitter14getMaxLifeTimeEv
std::uint32_t CParticleRingEmitter::getMaxLifeTime() const { return maxLifeTime; }

// 0x6fc49c _ZNK6glitch5scene20CParticleRingEmitter18getMaxAngleDegreesEv
std::int32_t CParticleRingEmitter::getMaxAngleDegrees() const { return maxAngleDegrees; }

// ---- CParticleSphereEmitter ----

// 0x6fd9e8 _ZN6glitch5scene22CParticleSphereEmitterC2ERKNS_4core8vector3dIfEEfS6_jjNS_5video6SColorES8_jji
// 0x6fdb0c _ZN6glitch5scene22CParticleSphereEmitterC1ERKNS_4core8vector3dIfEEfS6_jjNS_5video6SColorES8_jji
CParticleSphereEmitter::CParticleSphereEmitter(const core::vector3d<float>& centerValue, float radiusValue,
                                               const core::vector3d<float>& directionValue,
                                               std::uint32_t minParticlesPerSecondValue,
                                               std::uint32_t maxParticlesPerSecondValue, video::SColor minStartColorValue,
                                               video::SColor maxStartColorValue, std::uint32_t lifeTimeMinValue,
                                               std::uint32_t lifeTimeMaxValue, std::int32_t maxAngleDegreesValue)
    : center(centerValue),
      radius(radiusValue),
      direction(directionValue),
      minParticlesPerSecond(minParticlesPerSecondValue),
      maxParticlesPerSecond(maxParticlesPerSecondValue),
      minStartColor(minStartColorValue),
      maxStartColor(maxStartColorValue),
      minLifeTime(lifeTimeMinValue),
      maxLifeTime(lifeTimeMaxValue),
      maxAngleDegrees(maxAngleDegreesValue) {}

// 0x6fdc9c _ZN6glitch5scene22CParticleSphereEmitterD1Ev (D0 0x6fdcec): frees the particle storage.
CParticleSphereEmitter::~CParticleSphereEmitter() = default;

// 0x6fdd28 _ZN6glitch5scene22CParticleSphereEmitter5emittEjjRPNS0_9SParticleE
int CParticleSphereEmitter::emitt(std::uint32_t now, std::uint32_t timeSinceLastCall, SParticle*& outArray) {
    time += timeSinceLastCall;  // +0x44
    const float rate = drawRate(minParticlesPerSecond, maxParticlesPerSecond);
    const float interval = 1000.0f / rate;
    if (!(static_cast<float>(time) > interval)) {
        return 0;
    }
    particles.clear();
    const std::uint32_t amount = dueCount(time, interval, maxParticlesPerSecond);
    time = 0;
    for (std::uint32_t i = 0; i != amount; ++i) {
        SParticle p;
        const float offset = std::fmod(static_cast<float>(os::Randomizer::rand()), radius * 1000.0f) * 0.001f;
        p.pos.X = offset + center.X;
        p.pos.Y = offset + center.Y;
        p.pos.Z = offset + center.Z;
        p.pos.rotateXYBy(static_cast<double>(os::Randomizer::rand() % 360), center);
        p.pos.rotateYZBy(static_cast<double>(os::Randomizer::rand() % 360), center);
        p.pos.rotateXZBy(static_cast<double>(os::Randomizer::rand() % 360), center);
        p.startTime = now;
        p.vector = direction;
        if (maxAngleDegrees != 0) {
            p.vector = perturbDirection(direction, maxAngleDegrees, kZeroVector);
        }
        p.endTime = drawEndTime(now, minLifeTime, maxLifeTime);
        const video::SColor c = drawColor(minStartColor, maxStartColor);
        p.color = c;
        p.startColor = c;
        p.startVector = p.vector;
        particles.push_back(p);
    }
    outArray = particles.data();
    return static_cast<int>(particles.size());
}

// 0x6fd8fc _ZN6glitch5scene22CParticleSphereEmitter12setDirectionERKNS_4core8vector3dIfEE
void CParticleSphereEmitter::setDirection(const core::vector3d<float>& value) { direction = value; }

// 0x6fd918 _ZN6glitch5scene22CParticleSphereEmitter24setMinParticlesPerSecondEj
void CParticleSphereEmitter::setMinParticlesPerSecond(std::uint32_t value) {
    minParticlesPerSecond = value;
}

// 0x6fd920 _ZN6glitch5scene22CParticleSphereEmitter24setMaxParticlesPerSecondEj
void CParticleSphereEmitter::setMaxParticlesPerSecond(std::uint32_t value) {
    maxParticlesPerSecond = value;
}

// 0x6fd928 _ZN6glitch5scene22CParticleSphereEmitter16setMinStartColorERKNS_5video6SColorE
void CParticleSphereEmitter::setMinStartColor(const video::SColor& value) { minStartColor = value; }

// 0x6fd93c _ZN6glitch5scene22CParticleSphereEmitter16setMaxStartColorERKNS_5video6SColorE
void CParticleSphereEmitter::setMaxStartColor(const video::SColor& value) { maxStartColor = value; }

// 0x6fd950 _ZN6glitch5scene22CParticleSphereEmitter9setCenterERKNS_4core8vector3dIfEE
void CParticleSphereEmitter::setCenter(const core::vector3d<float>& value) { center = value; }

// 0x6fd96c _ZN6glitch5scene22CParticleSphereEmitter9setRadiusEf
void CParticleSphereEmitter::setRadius(float value) { radius = value; }

// 0x6fd974 _ZNK6glitch5scene22CParticleSphereEmitter12getDirectionEv
const core::vector3d<float>& CParticleSphereEmitter::getDirection() const { return direction; }

// 0x6fd97c _ZNK6glitch5scene22CParticleSphereEmitter24getMinParticlesPerSecondEv
std::uint32_t CParticleSphereEmitter::getMinParticlesPerSecond() const {
    return minParticlesPerSecond;
}

// 0x6fd984 _ZNK6glitch5scene22CParticleSphereEmitter24getMaxParticlesPerSecondEv
std::uint32_t CParticleSphereEmitter::getMaxParticlesPerSecond() const {
    return maxParticlesPerSecond;
}

// 0x6fd98c _ZNK6glitch5scene22CParticleSphereEmitter16getMinStartColorEv
const video::SColor& CParticleSphereEmitter::getMinStartColor() const { return minStartColor; }

// 0x6fd994 _ZNK6glitch5scene22CParticleSphereEmitter16getMaxStartColorEv
const video::SColor& CParticleSphereEmitter::getMaxStartColor() const { return maxStartColor; }

// 0x6fd99c _ZNK6glitch5scene22CParticleSphereEmitter9getCenterEv
const core::vector3d<float>& CParticleSphereEmitter::getCenter() const { return center; }

// 0x6fd9a4 _ZNK6glitch5scene22CParticleSphereEmitter9getRadiusEv
float CParticleSphereEmitter::getRadius() const { return radius; }

// 0x6fd9ac _ZNK6glitch5scene22CParticleSphereEmitter14getMinLifeTimeEv
std::uint32_t CParticleSphereEmitter::getMinLifeTime() const { return minLifeTime; }

// 0x6fd9b4 _ZNK6glitch5scene22CParticleSphereEmitter14getMaxLifeTimeEv
std::uint32_t CParticleSphereEmitter::getMaxLifeTime() const { return maxLifeTime; }

// 0x6fd9bc _ZNK6glitch5scene22CParticleSphereEmitter18getMaxAngleDegreesEv
std::int32_t CParticleSphereEmitter::getMaxAngleDegrees() const { return maxAngleDegrees; }

// ---- CParticleMeshEmitter ----

// 0x6fb2e4 _ZN6glitch5scene20CParticleMeshEmitterC2ERKN5boost13intrusive_ptrIKNS0_5IMeshEEEbRKNS_4core8vector3dIfEEfibjjNS_5video6SColorESH_jji
// 0x6fb708 _ZN6glitch5scene20CParticleMeshEmitterC1ERKN5boost13intrusive_ptrIKNS0_5IMeshEEEbRKNS_4core8vector3dIfEEfibjjNS_5video6SColorESH_jji
// Holds the mesh and records the vertex count of every mesh buffer.
CParticleMeshEmitter::CParticleMeshEmitter(const boost::intrusive_ptr<const IMesh>& meshValue, bool useNormalDirectionValue,
                                           const core::vector3d<float>& directionValue,
                                           float normalDirectionModifierValue, std::int32_t meshBufferNumberValue,
                                           bool everyMeshVertexValue, std::uint32_t minParticlesPerSecondValue,
                                           std::uint32_t maxParticlesPerSecondValue, video::SColor minStartColorValue,
                                           video::SColor maxStartColorValue, std::uint32_t lifeTimeMinValue,
                                           std::uint32_t lifeTimeMaxValue, std::int32_t maxAngleDegreesValue)
    : mesh(meshValue),
      meshBufferNumber(meshBufferNumberValue),
      everyMeshVertex(everyMeshVertexValue),
      useNormalDirection(useNormalDirectionValue),
      normalDirectionModifier(normalDirectionModifierValue),
      direction(directionValue),
      minParticlesPerSecond(minParticlesPerSecondValue),
      maxParticlesPerSecond(maxParticlesPerSecondValue),
      minStartColor(minStartColorValue),
      maxStartColor(maxStartColorValue),
      minLifeTime(lifeTimeMinValue),
      maxLifeTime(lifeTimeMaxValue),
      maxAngleDegrees(maxAngleDegreesValue) {
    countBuffers(mesh, totalVertexCount, meshBufferCount, bufferVertexCounts);
}

// 0x6fb0d4 _ZN6glitch5scene20CParticleMeshEmitter5emittEjjRPNS0_9SParticleE: the original body returns 0.
int CParticleMeshEmitter::emitt(std::uint32_t, std::uint32_t, SParticle*&) { return 0; }

// 0x6fb0fc _ZN6glitch5scene20CParticleMeshEmitterD1Ev (D0 0x6fb184): frees the two vectors and drops the mesh.
CParticleMeshEmitter::~CParticleMeshEmitter() = default;

// 0x6fb57c _ZN6glitch5scene20CParticleMeshEmitter7setMeshERKN5boost13intrusive_ptrIKNS0_5IMeshEEE
// Replaces the mesh, restarts the total and appends the per-buffer vertex counts of the new mesh (the vector is not cleared).
void CParticleMeshEmitter::setMesh(const boost::intrusive_ptr<const IMesh>& value) {
    mesh = value;
    totalVertexCount = 0;  // +0x08
    countBuffers(mesh, totalVertexCount, meshBufferCount, bufferVertexCounts);
}

// 0x6fafd4 _ZN6glitch5scene20CParticleMeshEmitter21setUseNormalDirectionEb
void CParticleMeshEmitter::setUseNormalDirection(bool value) { useNormalDirection = value; }

// 0x6fafdc _ZN6glitch5scene20CParticleMeshEmitter12setDirectionERKNS_4core8vector3dIfEE
void CParticleMeshEmitter::setDirection(const core::vector3d<float>& value) { direction = value; }

// 0x6faff8 _ZN6glitch5scene20CParticleMeshEmitter26setNormalDirectionModifierEf
void CParticleMeshEmitter::setNormalDirectionModifier(float value) {
    normalDirectionModifier = value;
}

// 0x6fb000 _ZN6glitch5scene20CParticleMeshEmitter18setEveryMeshVertexEb
void CParticleMeshEmitter::setEveryMeshVertex(bool value) { everyMeshVertex = value; }

// 0x6fb008 _ZN6glitch5scene20CParticleMeshEmitter24setMinParticlesPerSecondEj
void CParticleMeshEmitter::setMinParticlesPerSecond(std::uint32_t value) {
    minParticlesPerSecond = value;
}

// 0x6fb010 _ZN6glitch5scene20CParticleMeshEmitter24setMaxParticlesPerSecondEj
void CParticleMeshEmitter::setMaxParticlesPerSecond(std::uint32_t value) {
    maxParticlesPerSecond = value;
}

// 0x6fb018 _ZN6glitch5scene20CParticleMeshEmitter16setMinStartColorERKNS_5video6SColorE
void CParticleMeshEmitter::setMinStartColor(const video::SColor& value) { minStartColor = value; }

// 0x6fb02c _ZN6glitch5scene20CParticleMeshEmitter16setMaxStartColorERKNS_5video6SColorE
void CParticleMeshEmitter::setMaxStartColor(const video::SColor& value) { maxStartColor = value; }

// 0x6fb040 _ZNK6glitch5scene20CParticleMeshEmitter7getMeshEv
const boost::intrusive_ptr<const IMesh>& CParticleMeshEmitter::getMesh() const { return mesh; }

// 0x6fb048 _ZNK6glitch5scene20CParticleMeshEmitter22isUsingNormalDirectionEv
bool CParticleMeshEmitter::isUsingNormalDirection() const { return useNormalDirection; }

// 0x6fb050 _ZNK6glitch5scene20CParticleMeshEmitter12getDirectionEv
const core::vector3d<float>& CParticleMeshEmitter::getDirection() const { return direction; }

// 0x6fb058 _ZNK6glitch5scene20CParticleMeshEmitter26getNormalDirectionModifierEv
float CParticleMeshEmitter::getNormalDirectionModifier() const { return normalDirectionModifier; }

// 0x6fb060 _ZNK6glitch5scene20CParticleMeshEmitter18getEveryMeshVertexEv
bool CParticleMeshEmitter::getEveryMeshVertex() const { return everyMeshVertex; }

// 0x6fb068 _ZNK6glitch5scene20CParticleMeshEmitter24getMinParticlesPerSecondEv
std::uint32_t CParticleMeshEmitter::getMinParticlesPerSecond() const {
    return minParticlesPerSecond;
}

// 0x6fb070 _ZNK6glitch5scene20CParticleMeshEmitter24getMaxParticlesPerSecondEv
std::uint32_t CParticleMeshEmitter::getMaxParticlesPerSecond() const {
    return maxParticlesPerSecond;
}

// 0x6fb078 _ZNK6glitch5scene20CParticleMeshEmitter16getMinStartColorEv
const video::SColor& CParticleMeshEmitter::getMinStartColor() const { return minStartColor; }

// 0x6fb080 _ZNK6glitch5scene20CParticleMeshEmitter16getMaxStartColorEv
const video::SColor& CParticleMeshEmitter::getMaxStartColor() const { return maxStartColor; }

// 0x6fb088 _ZNK6glitch5scene20CParticleMeshEmitter21getUseNormalDirectionEv
bool CParticleMeshEmitter::getUseNormalDirection() const { return useNormalDirection; }

// 0x6fb090 _ZNK6glitch5scene20CParticleMeshEmitter11getMBNumberEv
std::int32_t CParticleMeshEmitter::getMBNumber() const { return meshBufferNumber; }

// 0x6fb098 _ZNK6glitch5scene20CParticleMeshEmitter14getMinLifeTimeEv
std::uint32_t CParticleMeshEmitter::getMinLifeTime() const { return minLifeTime; }

// 0x6fb0a0 _ZNK6glitch5scene20CParticleMeshEmitter14getMaxLifeTimeEv
std::uint32_t CParticleMeshEmitter::getMaxLifeTime() const { return maxLifeTime; }

// 0x6fb0a8 _ZNK6glitch5scene20CParticleMeshEmitter18getMaxAngleDegreesEv
std::int32_t CParticleMeshEmitter::getMaxAngleDegrees() const { return maxAngleDegrees; }

// ---- CParticleAnimatedMeshSceneNodeEmitter ----

// 0x6f7a94 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterC2EPNS0_22IAnimatedMeshSceneNodeEbRKNS_4core8vector3dIfEEfibjjNS_5video6SColorESC_jji
// 0x6f7ff0 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterC1EPNS0_22IAnimatedMeshSceneNodeEbRKNS_4core8vector3dIfEEfibjjNS_5video6SColorESC_jji
// Stores the node (not referenced), takes the node's animated mesh and its frame-0 mesh, and records the vertex counts.
CParticleAnimatedMeshSceneNodeEmitter::CParticleAnimatedMeshSceneNodeEmitter(
    IAnimatedMeshSceneNode* nodeValue, bool useNormalDirectionValue, const core::vector3d<float>& directionValue,
    float normalDirectionModifierValue, std::int32_t meshBufferNumberValue, bool everyMeshVertexValue,
    std::uint32_t minParticlesPerSecondValue, std::uint32_t maxParticlesPerSecondValue, video::SColor minStartColorValue,
    video::SColor maxStartColorValue, std::uint32_t lifeTimeMinValue, std::uint32_t lifeTimeMaxValue,
    std::int32_t maxAngleDegreesValue)
    : node(nodeValue),
      meshBufferNumber(meshBufferNumberValue),
      everyMeshVertex(everyMeshVertexValue),
      useNormalDirection(useNormalDirectionValue),
      normalDirectionModifier(normalDirectionModifierValue),
      direction(directionValue),
      minParticlesPerSecond(minParticlesPerSecondValue),
      maxParticlesPerSecond(maxParticlesPerSecondValue),
      minStartColor(minStartColorValue),
      maxStartColor(maxStartColorValue),
      minLifeTime(lifeTimeMinValue),
      maxLifeTime(lifeTimeMaxValue),
      maxAngleDegrees(maxAngleDegreesValue) {
    animatedMesh = node->getMesh();                  // vptr+0x11c
    mesh = animatedMesh->getMesh(0, 255, -1, -1);    // vptr+0x34
    countBuffers(mesh, totalVertexCount, meshBufferCount, bufferVertexCounts);
}

// 0x6f7820 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter5emittEjjRPNS0_9SParticleE: the original body returns 0.
int CParticleAnimatedMeshSceneNodeEmitter::emitt(std::uint32_t, std::uint32_t, SParticle*&) { return 0; }

// 0x6f789c _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitterD1Ev (D0 0x6f7934): frees the two vectors and drops both meshes.
CParticleAnimatedMeshSceneNodeEmitter::~CParticleAnimatedMeshSceneNodeEmitter() = default;

// 0x6f7ddc _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter23setAnimatedMeshSceneNodeEPNS0_22IAnimatedMeshSceneNodeE
// Stores the node, re-derives the meshes, restarts the total and appends the per-buffer vertex counts (the vector is not cleared).
void CParticleAnimatedMeshSceneNodeEmitter::setAnimatedMeshSceneNode(IAnimatedMeshSceneNode* nodeValue) {
    node = nodeValue;
    animatedMesh = node->getMesh();
    mesh = animatedMesh->getMesh(0, 255, -1, -1);
    totalVertexCount = 0;  // +0x10
    countBuffers(mesh, totalVertexCount, meshBufferCount, bufferVertexCounts);
}

// 0x6f76fc _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter21setUseNormalDirectionEb
void CParticleAnimatedMeshSceneNodeEmitter::setUseNormalDirection(bool value) {
    useNormalDirection = value;
}

// 0x6f7704 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter12setDirectionERKNS_4core8vector3dIfEE
void CParticleAnimatedMeshSceneNodeEmitter::setDirection(const core::vector3d<float>& value) {
    direction = value;
}

// 0x6f7720 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter26setNormalDirectionModifierEf
void CParticleAnimatedMeshSceneNodeEmitter::setNormalDirectionModifier(float value) {
    normalDirectionModifier = value;
}

// 0x6f7728 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter18setEveryMeshVertexEb
void CParticleAnimatedMeshSceneNodeEmitter::setEveryMeshVertex(bool value) {
    everyMeshVertex = value;
}

// 0x6f7730 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24setMinParticlesPerSecondEj
void CParticleAnimatedMeshSceneNodeEmitter::setMinParticlesPerSecond(std::uint32_t value) {
    minParticlesPerSecond = value;
}

// 0x6f7738 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24setMaxParticlesPerSecondEj
void CParticleAnimatedMeshSceneNodeEmitter::setMaxParticlesPerSecond(std::uint32_t value) {
    maxParticlesPerSecond = value;
}

// 0x6f7740 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16setMinStartColorERKNS_5video6SColorE
void CParticleAnimatedMeshSceneNodeEmitter::setMinStartColor(const video::SColor& value) {
    minStartColor = value;
}

// 0x6f7754 _ZN6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16setMaxStartColorERKNS_5video6SColorE
void CParticleAnimatedMeshSceneNodeEmitter::setMaxStartColor(const video::SColor& value) {
    maxStartColor = value;
}

// 0x6f7768 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24getAnimatedMeshSceneNodeEv
IAnimatedMeshSceneNode* CParticleAnimatedMeshSceneNodeEmitter::getAnimatedMeshSceneNode() const {
    return node;
}

// 0x6f7770 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter22isUsingNormalDirectionEv
bool CParticleAnimatedMeshSceneNodeEmitter::isUsingNormalDirection() const {
    return useNormalDirection;
}

// 0x6f7778 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter12getDirectionEv
const core::vector3d<float>& CParticleAnimatedMeshSceneNodeEmitter::getDirection() const {
    return direction;
}

// 0x6f7780 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter26getNormalDirectionModifierEv
float CParticleAnimatedMeshSceneNodeEmitter::getNormalDirectionModifier() const {
    return normalDirectionModifier;
}

// 0x6f7788 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter18getEveryMeshVertexEv
bool CParticleAnimatedMeshSceneNodeEmitter::getEveryMeshVertex() const { return everyMeshVertex; }

// 0x6f7790 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24getMinParticlesPerSecondEv
std::uint32_t CParticleAnimatedMeshSceneNodeEmitter::getMinParticlesPerSecond() const {
    return minParticlesPerSecond;
}

// 0x6f7798 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter24getMaxParticlesPerSecondEv
std::uint32_t CParticleAnimatedMeshSceneNodeEmitter::getMaxParticlesPerSecond() const {
    return maxParticlesPerSecond;
}

// 0x6f77a0 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16getMinStartColorEv
const video::SColor& CParticleAnimatedMeshSceneNodeEmitter::getMinStartColor() const {
    return minStartColor;
}

// 0x6f77a8 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter16getMaxStartColorEv
const video::SColor& CParticleAnimatedMeshSceneNodeEmitter::getMaxStartColor() const {
    return maxStartColor;
}

// 0x6f77b0 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter21getUseNormalDirectionEv
bool CParticleAnimatedMeshSceneNodeEmitter::getUseNormalDirection() const {
    return useNormalDirection;
}

// 0x6f77b8 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter11getMBNumberEv
std::int32_t CParticleAnimatedMeshSceneNodeEmitter::getMBNumber() const { return meshBufferNumber; }

// 0x6f77c0 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter14getMinLifeTimeEv
std::uint32_t CParticleAnimatedMeshSceneNodeEmitter::getMinLifeTime() const { return minLifeTime; }

// 0x6f77c8 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter14getMaxLifeTimeEv
std::uint32_t CParticleAnimatedMeshSceneNodeEmitter::getMaxLifeTime() const { return maxLifeTime; }

// 0x6f77d0 _ZNK6glitch5scene37CParticleAnimatedMeshSceneNodeEmitter18getMaxAngleDegreesEv
std::int32_t CParticleAnimatedMeshSceneNodeEmitter::getMaxAngleDegrees() const {
    return maxAngleDegrees;
}

}  // namespace glitch::scene
