// Bodies of the particle models (ps/ParticleModels.hpp): the old system's generation, size, colour, emitter, motion, spin and life
// models, the new system's size, colour, motion, spin and life models, the forces model, the render-data model and the bakers.
// Each body is transcribed from the Hex-Rays listing of the address in its comment; the two particle types share a body wherever the
// listings differ only in the stride (the field names stand for the offsets of each record).
//
// Deviations, all host-necessitated and named once here:
//  - std::sort / std::remove_if replace STLport's introsort / remove_if: equal keys may come out in a different order;
//  - the pool of the original's allocations (GlitchAlloc / GlitchFree for the force list and the one-byte placeholder) is
//    std::vector / operator new;
//  - the virtual-base pointer arithmetic `this + *(vptr - 12)` is the C++ virtual base.
#include "glitch-scene-collada-gui/ps/ParticleModels.hpp"

#include <cmath>
#include <cstring>
#include <limits>
#include <type_traits>

#include "glitch-scene-collada-gui/collada/SAnimationAccessor.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "glitch-video/video_driver.hpp"

namespace glitch::ps {

namespace {

// The values the listings write as constants: vHalf is (0.5, 0.5, 0.5); 33.333332 converts milliseconds to the key index of the
// animation cache (a key every 1/30 s); 3.1416 is the listings' pi.
constexpr float kHalf = 0.5f;

// The accessor over a track: the track, the context's animation database and a key cache that is switched off (byte 13 of the
// local cache block is cleared by every listing).
struct TrackReader {
    TrackReader(const collada::SAnimation* track, const collada::SAnimationOutput* database)
        : accessor(track, database, &cache) {}
    collada::SAnimationKeyCache cache;
    collada::SAnimationAccessor accessor;
};

// `(float)(a * r) + (float)(a * -0.5)` with r a draw of PSRandom::Rand: a value in [-a / 2, a / 2).
inline float centered(float amplitude, float draw) { return (amplitude * draw) + (amplitude * -0.5f); }

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// PGenerationModel (SParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x6545d0 _ZN6glitch2ps16PGenerationModelINS0_9SParticleEEC2Ev
// BirthRate = 1.0, MaxParticles = 1, the step and the carry zeroed; registers "BirthRate" (+0x04) and "MaxParticles" (+0x08).
template <typename P>
PGenerationModel<P>::PGenerationModel() {
    this->registerParameter("BirthRate", &birthRate);
    this->registerParameter("MaxParticles", &maxParticles);
}

// 0x64fc50 _ZN6glitch2ps16PGenerationModelINS0_9SParticleEE19initGenerationModelEv
// The carry is cleared, the particle list emptied when it is not empty, and its capacity reserved to MaxParticles.
template <typename P>
void PGenerationModel<P>::initGenerationModel() {
    carry = 0.0f;
    if (!this->particles.empty()) {
        this->particles.clear();
    }
    this->particles.reserve(static_cast<std::size_t>(maxParticles));
}

// 0x65317c _ZN6glitch2ps16PGenerationModelINS0_9SParticleEE17generateParticlesEv
// The step is current - previous time (also kept in lastDelta); the number of new particles is the integer part of
// step * BirthRate + carry (the fraction is carried). Nothing new: the end of the list is returned. Otherwise the list grows by that
// many default particles, but not beyond MaxParticles when that is non-zero (a smaller cap shrinks the list: resize), and the
// pointer to the first new particle (old size from the begin) is returned.
template <typename P>
P* PGenerationModel<P>::generateParticles() {
    const std::size_t existing = this->particles.size();
    const float step = this->currentTime - this->previousTime;
    lastDelta = step;
    const float exact = (step * birthRate) + carry;
    const int count = static_cast<int>(exact);
    carry = exact - static_cast<float>(static_cast<int>(exact));
    if (count <= 0) {
        return this->particles.data() + this->particles.size();
    }
    std::size_t newSize = static_cast<std::size_t>(count) + existing;
    if (!(static_cast<std::int64_t>(newSize) <= static_cast<std::int64_t>(maxParticles) || maxParticles == 0)) {
        newSize = static_cast<std::size_t>(maxParticles);
    }
    this->particles.resize(newSize, P());
    return this->particles.data() + existing;
}

// ---------------------------------------------------------------------------------------------------------------------
// GNPSGenerationModel (GNPSParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x641e2c _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEEC2Ev
// BirthRate = 1.0, MaxParticles = 1, the variations, the step and the carry zeroed; registers "BirthRate" (+0x04),
// "BirthRateVariation" (+0x08), "MaxParticlesVariation" (+0x0c) and "MaxParticles" (+0x10).
template <typename P>
GNPSGenerationModel<P>::GNPSGenerationModel() {
    this->registerParameter("BirthRate", &birthRate);
    this->registerParameter("BirthRateVariation", &birthRateVariation);
    this->registerParameter("MaxParticlesVariation", &maxParticlesVariation);
    this->registerParameter("MaxParticles", &maxParticles);
}

// 0x63dea0 _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEE19initGenerationModelEv
// The carry is cleared and the list emptied; MaxParticles grows by a random share of its variation (`(int)((2 * draw - 1) * variation)`,
// so the cap drifts with every init) and the list's capacity is reserved to it.
template <typename P>
void GNPSGenerationModel<P>::initGenerationModel() {
    carry = 0.0f;
    if (!this->particles.empty()) {
        this->particles.clear();
    }
    PSRandom* random = this->getPRand();
    const std::int32_t previous = maxParticles;
    const float draw = static_cast<float>(random->Rand());
    const std::int32_t share = static_cast<std::int32_t>(((draw + draw) - 1.0f) * static_cast<float>(maxParticlesVariation));
    maxParticles = share + previous;
    this->particles.reserve(static_cast<std::size_t>(share + previous));
}

// 0x63e644 _ZN6glitch2ps19GNPSGenerationModelINS0_12GNPSParticleEE17generateParticlesEv
// As PGenerationModel::generateParticles with a random share of the birth-rate variation: the number of new particles is the integer
// part of `step * BirthRate + carry` plus the integer part of `(2 * draw - 1) * step * BirthRateVariation` (the generator is drawn
// every step, even when nothing is born); the fraction of the sum is carried. The list grows by that many default particles, but not
// beyond MaxParticles when that is non-zero. The first new particle's address (old size from the begin), or the end, is returned.
template <typename P>
P* GNPSGenerationModel<P>::generateParticles() {
    PSRandom* random = this->getPRand();
    const std::size_t existing = this->particles.size();
    const float step = this->currentTime - this->previousTime;
    lastDelta = step;
    const float exact = (step * birthRate) + carry;
    const float draw = static_cast<float>(random->Rand());
    const float jitter = (((draw + draw) - 1.0f) * lastDelta) * birthRateVariation;
    const int count = static_cast<int>(jitter) + static_cast<int>(exact);
    carry = (exact + jitter) - static_cast<float>(count);
    if (count <= 0) {
        return this->particles.data() + this->particles.size();
    }
    std::size_t newSize = static_cast<std::size_t>(count) + existing;
    if (!(static_cast<std::int64_t>(newSize) <= static_cast<std::int64_t>(maxParticles) || maxParticles == 0)) {
        newSize = static_cast<std::size_t>(maxParticles);
    }
    this->particles.resize(newSize, P());
    return this->particles.data() + existing;
}

// ---------------------------------------------------------------------------------------------------------------------
// PSizeModel (SParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x6543f8 _ZN6glitch2ps10PSizeModelINS0_9SParticleEEC2Ev
// TargetSize = 1.0, the rest zero; registers "TargetSize" (+0x04), "SizeVariation" (+0x08), "SizeGrowthTime" (+0x0c) and
// "SizeFadeTime" (+0x10).
template <typename P>
PSizeModel<P>::PSizeModel() {
    this->registerParameter("TargetSize", &targetSize);
    this->registerParameter("SizeVariation", &sizeVariation);
    this->registerParameter("SizeGrowthTime", &growthTime);
    this->registerParameter("SizeFadeTime", &fadeTime);
}

// 0x64bd08 _ZN6glitch2ps10PSizeModelINS0_9SParticleEE14initPSizeModelEv (empty)
template <typename P>
void PSizeModel<P>::initPSizeModel() {}

// 0x64bd1c _ZN6glitch2ps10PSizeModelINS0_9SParticleEE9initPSizeEPS2_S4_
// Every particle gets `TargetSize + centered(TargetSize * SizeVariation)` as its target size; with a growth time the current size
// starts at zero, otherwise it starts at the target.
template <typename P>
void PSizeModel<P>::initPSize(P* first, P* last) {
    PSRandom* random = this->getPRand();
    const float step = targetSize * sizeVariation;
    for (P* p = first; p != last; ++p) {
        const float draw = static_cast<float>(random->Rand());
        const float offset = (step * draw) + (step * -0.5f);
        if (growthTime > 0.0f) {
            p->size = 0.0f;
            p->baseSize = targetSize + offset;
        } else {
            const float value = offset + targetSize;
            p->baseSize = value;
            p->size = value;
        }
    }
}

// 0x64be08 _ZN6glitch2ps10PSizeModelINS0_9SParticleEE10applyPSizeEPS2_S4_
// The current size is the target size, scaled by age / growthTime while the particle is younger than the growth time and by
// (life - age) / fadeTime while less than the fade time is left.
template <typename P>
void PSizeModel<P>::applyPSize(P* first, P* last) {
    for (P* p = first; p != last; ++p) {
        p->size = p->baseSize;
        if (growthTime > 0.0f && growthTime > p->age) {
            p->size = p->baseSize * (p->age / growthTime);
        }
        if (fadeTime > 0.0f) {
            const float remaining = p->life - p->age;
            if (fadeTime > remaining) {
                p->size = p->baseSize * ((p->life - p->age) / fadeTime);
            }
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PColorModel (SParticle)
// ---------------------------------------------------------------------------------------------------------------------

// Registers the nine bindings in the order of the members (the two tracks, the key mapping type and the six anim values).
template <typename P>
PColorModel<P>::PColorModel() {
    this->registerParameter("TextureTransformTrack", &textureTransformTrack);
    this->registerParameter("DiffuseColorTrack", &diffuseColorTrack);
    this->registerParameter("AnimKeyMappingType", &animKeyMappingType);
    this->registerParameter("AnimOffset", &animOffset);
    this->registerParameter("AnimOffsetVariation", &animOffsetVariation);
    this->registerParameter("AnimLength", &animLength);
    this->registerParameter("AnimLengthVariation", &animLengthVariation);
    this->registerParameter("AnimScaleMultiplier", &animScaleMultiplier);
    this->registerParameter("AnimScaleMultiplierVariation", &animScaleMultiplierVariation);
}

// 0x64beec _ZN6glitch2ps11PColorModelINS0_9SParticleEE15initPColorModelEv (empty)
template <typename P>
void PColorModel<P>::initPColorModel() {}

// 0x64c06c _ZN6glitch2ps11PColorModelINS0_9SParticleEE22hasColorAnimationTrackEv
// True when the diffuse colour track (+0x08) is set.
template <typename P>
int PColorModel<P>::hasColorAnimationTrack() {
    return diffuseColorTrack != nullptr ? 1 : 0;
}

// 0x64bf00 _ZN6glitch2ps11PColorModelINS0_9SParticleEE10initPColorEPS2_S4_
// Only with a track (texture or diffuse): each particle gets a start offset and a length, each `model value + centered(value *
// variation)`. The draw for the offset is taken only when its amplitude is non-zero, the one for the length likewise (in that order).
template <typename P>
void PColorModel<P>::initPColor(P* first, P* last) {
    if (textureTransformTrack == nullptr && diffuseColorTrack == nullptr) {
        return;
    }
    PSRandom* random = this->getPRand();
    const float offsetAmplitude = animOffset * animOffsetVariation;
    const float lengthAmplitude = animLength * animLengthVariation;
    for (P* p = first; p != last; ++p) {
        float offset;
        float length;
        if (offsetAmplitude == 0.0f) {
            offset = 0.0f;
            if (lengthAmplitude != 0.0f) {
                length = centered(lengthAmplitude, static_cast<float>(random->Rand()));
            } else {
                length = 0.0f;
            }
        } else {
            offset = centered(offsetAmplitude, static_cast<float>(random->Rand()));
            if (lengthAmplitude != 0.0f) {
                length = centered(lengthAmplitude, static_cast<float>(random->Rand()));
            } else {
                length = 0.0f;
            }
        }
        p->animOffset = offset + animOffset;
        p->animLength = length + animLength;
    }
}

// 0x64e830 _ZN6glitch2ps11PColorModelINS0_9SParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
// Without a track every particle takes the system colour. With tracks the track time (milliseconds) is `(anim offset + fraction)
// * 1000` where the fraction is age * animLength / life * AnimScaleMultiplier (AnimKeyMappingType 1) or the age; the texture track
// (translation, rotation, scale) fills the particle's texture transform [cos * sx, -sin * sx, tx, sin * sy, cos * sy, ty] and the
// diffuse track the particle's colour. The texture track keeps one key index across the particles; the diffuse track starts every
// particle at time / 33.333332.
template <typename P>
void PColorModel<P>::applyPColor(P* first, P* last, video::SColor& color) {
    if (diffuseColorTrack != nullptr || textureTransformTrack != nullptr) {
        int textureKeyIndex = 0;
        for (P* p = first; p != last; ++p) {
            float fraction;
            float offsetPart;
            if (animKeyMappingType == 1) {
                fraction = ((p->age * p->animLength) / p->life) * animScaleMultiplier;
                offsetPart = p->animOffset;
            } else {
                offsetPart = p->age;
                fraction = p->animOffset;
            }
            const float time = static_cast<float>(static_cast<double>(fraction + offsetPart) * 1000.0);
            if (textureTransformTrack != nullptr) {
                TrackReader reader(textureTransformTrack, this->animationDatabase);
                struct {
                    float tx = 0.0f;
                    float ty = 0.0f;
                    float angle = 0.0f;
                    float sx = 1.0f;
                    float sy = 1.0f;
                } value;
                reader.accessor.getValue(static_cast<int>(time), &value, textureKeyIndex, false);
                const float c = std::cos(value.angle);
                const float s = std::sin(value.angle);
                p->texTransform[0] = value.sx * c;
                p->texTransform[1] = -s * value.sx;
                p->texTransform[2] = value.tx;
                p->texTransform[3] = value.sy * s;
                p->texTransform[4] = value.sy * c;
                p->texTransform[5] = value.ty;
            }
            if (diffuseColorTrack != nullptr) {
                int keyIndex = static_cast<int>(static_cast<float>(static_cast<double>(time) / 33.333332));
                TrackReader reader(diffuseColorTrack, this->animationDatabase);
                reader.accessor.getValue(static_cast<int>(time), &p->color, keyIndex, true);
            }
        }
    } else {
        for (P* p = first; p != last; ++p) {
            p->color = color;
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PEmitterModel (both systems)
// ---------------------------------------------------------------------------------------------------------------------

// 0x6548fc _ZN6glitch2ps13PEmitterModelINS0_9SParticleEEC2Ev (0x6415ac for GNPSParticle)
// The domain is a new PDBox over (-1,-1,-1) .. (1,1,1); type 0, the three lengths 2.0; registers "EmitterType" (+0x08),
// "RadiusLength" (+0x0c), "Width" (+0x10) and "Height" (+0x14).
template <typename P>
PEmitterModel<P>::PEmitterModel() {
    const core::vector3d<float> upper{1.0f, 1.0f, 1.0f};
    const core::vector3d<float> lower{-1.0f, -1.0f, -1.0f};
    domain = new PDBox(lower, upper);
    this->registerParameter("EmitterType", &emitterType);
    this->registerParameter("RadiusLength", &radiusLength);
    this->registerParameter("Width", &width);
    this->registerParameter("Height", &height);
}

// 0x64d3f0 / 0x64d460 (SParticle), 0x63a350 / 0x63a3c0 (GNPSParticle): the domain is destroyed through its virtual destructor.
template <typename P>
PEmitterModel<P>::~PEmitterModel() {
    delete domain;
}

// 0x64e750 _ZN6glitch2ps13PEmitterModelINS0_9SParticleEE17initPEmitterModelEv (0x63c4c8 for GNPSParticle)
// The old domain is destroyed and a new one built for the emitter type: 0 a PDBox(Width, Height, RadiusLength), 1 a PDSphere at the
// origin of radius RadiusLength, 2 a PDCylinder(Height, RadiusLength); other types leave no domain.
template <typename P>
void PEmitterModel<P>::initPEmitterModel() {
    if (domain != nullptr) {
        delete domain;
        domain = nullptr;
    }
    switch (emitterType) {
        case 1:
            domain = new PDSphere(core::vector3d<float>{0.0f, 0.0f, 0.0f}, radiusLength, 0.0f);
            break;
        case 2:
            domain = new PDCylinder(height, radiusLength);
            break;
        case 0:
            domain = new PDBox(width, height, radiusLength);
            break;
        default:
            break;
    }
}

// 0x64c08c _ZN6glitch2ps13PEmitterModelINS0_9SParticleEE13initPPositionEPS2_S4_ (0x638544 for GNPSParticle)
// In world space (the local-space flag clear) the system's world matrix, when it has one, is applied to the domain first (the domain
// keeps the transformed shape, as the original does on every call). Every particle's position is a point drawn from the domain.
template <typename P>
void PEmitterModel<P>::initPPosition(P* first, P* last) {
    PSRandom* random = this->getPRand();
    if (!this->localSpace) {
        const float* worldMatrix = this->getWorldMatrixPtr();
        if (worldMatrix != nullptr) {
            domain->transform(*reinterpret_cast<const core::CMatrix4<float>*>(worldMatrix));
        }
    }
    for (P* p = first; p != last; ++p) {
        p->position = domain->generate(*random);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PMotionModel (SParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x6540ec _ZN6glitch2ps12PMotionModelINS0_9SParticleEEC2Ev
// Registers "Direction" (+0x04), "DirectionVariation" (+0x10), "Speed" (+0x14) and "SpeedVariation" (+0x18).
template <typename P>
PMotionModel<P>::PMotionModel() {
    this->registerParameter("Direction", &direction);
    this->registerParameter("DirectionVariation", &directionVariation);
    this->registerParameter("Speed", &speed);
    this->registerParameter("SpeedVariation", &speedVariation);
}

// 0x64c17c _ZN6glitch2ps12PMotionModelINS0_9SParticleEE16initPMotionModelEv (empty)
template <typename P>
void PMotionModel<P>::initPMotionModel() {}

// 0x653bb8 _ZN6glitch2ps12PMotionModelINS0_9SParticleEE11initPMotionEPS2_S4_
// Each particle's velocity is `(Speed + centered(Speed * SpeedVariation))` times a unit direction: a random direction (RandVec - 0.5,
// normalised) when the model direction is the zero vector; otherwise the model direction, rotated by up to DirectionVariation * 180
// degrees about the three axes (three draws) when the variation is positive, carried through the system's world matrix (its rotation
// part; the identity when the system has none) and normalised.
template <typename P>
void PMotionModel<P>::initPMotion(P* first, P* last) {
    PSRandom* random = this->getPRand();
    core::CMatrix4<float> world;
    const float* worldMatrix = this->getWorldMatrixPtr();
    if (worldMatrix != nullptr) {
        world = *reinterpret_cast<const core::CMatrix4<float>*>(worldMatrix);
        world.flag = false;
    } else {
        world = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    const float angle = directionVariation * 180.0f;
    const float speedAmplitude = speed * speedVariation;
    if (first == last) {
        return;
    }
    for (P* p = first; p != last; ++p) {
        float speedOffset;
        if (speedAmplitude == 0.0f) {
            speedOffset = 0.0f;
        } else {
            speedOffset = centered(speedAmplitude, static_cast<float>(random->Rand()));
        }
        const float dx = direction.X;
        if (dx == 0.0f && direction.Y == 0.0f && direction.Z == 0.0f) {
            const core::vector3d<float> r = random->RandVec();
            core::vector3d<float> pick{r.X - kHalf, r.Y - kHalf, r.Z - kHalf};
            pick.normalize();
            const float magnitude = speedOffset + speed;
            p->velocity.X = magnitude * pick.X;
            p->velocity.Y = magnitude * pick.Y;
            p->velocity.Z = magnitude * pick.Z;
            continue;
        }
        core::vector3d<float> d = direction;
        if (directionVariation > 0.0f) {
            const core::vector3d<float> zero{0.0f, 0.0f, 0.0f};
            const double first = random->Rand();
            d.rotateXYBy(static_cast<double>(static_cast<float>(static_cast<float>(static_cast<double>(angle) * first) + (angle * -0.5f))), zero);
            const float second = static_cast<float>(random->Rand());
            d.rotateYZBy(static_cast<double>((angle * -0.5f) + (angle * second)), zero);
            const float third = static_cast<float>(random->Rand());
            d.rotateXZBy(static_cast<double>((angle * -0.5f) + (angle * third)), zero);
        }
        core::vector3d<float> world3{(d.X * world.M[0] + d.Y * world.M[4]) + d.Z * world.M[8],
                                     (d.X * world.M[1] + d.Y * world.M[5]) + d.Z * world.M[9],
                                     (d.X * world.M[2] + d.Y * world.M[6]) + d.Z * world.M[10]};
        world3.normalize();
        const float magnitude = speedOffset + speed;
        p->velocity.X = magnitude * world3.X;
        p->velocity.Y = magnitude * world3.Y;
        p->velocity.Z = magnitude * world3.Z;
    }
}

// 0x64c190 _ZN6glitch2ps12PMotionModelINS0_9SParticleEE12applyPMotionEPS2_S4_
// position += dt * velocity.
template <typename P>
void PMotionModel<P>::applyPMotion(P* first, P* last) {
    for (P* p = first; p != last; ++p) {
        const float step = this->deltaTime;
        const float vy = step * p->velocity.Y;
        const float vz = step * p->velocity.Z;
        p->position.X = p->position.X + (step * p->velocity.X);
        p->position.Y = p->position.Y + vy;
        p->position.Z = p->position.Z + vz;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PSpinModel (SParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x654218 _ZN6glitch2ps10PSpinModelINS0_9SParticleEEC2Ev
// Registers the seven bindings in member order; the axis is the zero vector.
template <typename P>
PSpinModel<P>::PSpinModel() {
    this->registerParameter("SpinTime", &spinTime);
    this->registerParameter("SpinVariation", &spinVariation);
    this->registerParameter("SpinPhase", &spinPhase);
    this->registerParameter("SpinPhaseVariation", &spinPhaseVariation);
    this->registerParameter("SpinAxis", &spinAxis);
    this->registerParameter("SpinAxisVariation", &spinAxisVariation);
    this->registerParameter("SpinAxisType", &spinAxisType);
}

// 0x64c248 _ZN6glitch2ps10PSpinModelINS0_9SParticleEE14initPSpinModelEv (empty)
template <typename P>
void PSpinModel<P>::initPSpinModel() {}

// 0x64e3c8 _ZN6glitch2ps10PSpinModelINS0_9SParticleEE9initPSpinEPS2_S4_
// Per particle: the spin period `SpinTime + centered(SpinTime * SpinVariation)` and the start angle `SpinPhase + centered(...)`
// (a draw only for a non-zero amplitude); the axis is a random unit vector (type 0), the particle's velocity (type 2) or the model
// axis (other types), the last two rotated by up to SpinAxisVariation * 180 degrees about the three axes (three draws) when that
// is positive; the result is normalised.
template <typename P>
void PSpinModel<P>::initPSpin(P* first, P* last) {
    PSRandom* random = this->getPRand();
    const float timeAmplitude = spinTime * spinVariation;
    const float phaseAmplitude = spinPhase * spinPhaseVariation;
    const float axisAngle = spinAxisVariation * 180.0f;
    for (P* p = first; p != last; ++p) {
        float timeOffset;
        if (timeAmplitude == 0.0f) {
            timeOffset = 0.0f;
        } else {
            timeOffset = centered(timeAmplitude, static_cast<float>(random->Rand()));
        }
        p->spinPeriod = timeOffset + spinTime;
        float phaseOffset;
        if (phaseAmplitude == 0.0f) {
            phaseOffset = 0.0f;
        } else {
            phaseOffset = centered(phaseAmplitude, static_cast<float>(random->Rand()));
        }
        p->spinAngle = phaseOffset + spinPhase;
        core::vector3d<float> axis;
        if (spinAxisType != 0) {
            axis = spinAxisType == 2 ? p->velocity : spinAxis;
            if (axisAngle > 0.0f) {
                const core::vector3d<float> zero{0.0f, 0.0f, 0.0f};
                const double first = random->Rand();
                axis.rotateXYBy(static_cast<double>(static_cast<float>(static_cast<double>(axisAngle) * first) + (axisAngle * -0.5f)), zero);
                const float second = static_cast<float>(random->Rand());
                axis.rotateYZBy(static_cast<double>((axisAngle * -0.5f) + (axisAngle * second)), zero);
                const float third = static_cast<float>(random->Rand());
                axis.rotateXZBy(static_cast<double>((axisAngle * -0.5f) + (axisAngle * third)), zero);
            }
        } else {
            const core::vector3d<float> r = random->RandVec();
            axis = core::vector3d<float>{r.X - kHalf, r.Y - kHalf, r.Z - kHalf};
        }
        axis.normalize();
        p->spinAxis = axis;
    }
}

// 0x64c25c _ZN6glitch2ps10PSpinModelINS0_9SParticleEE10applyPSpinEPS2_S4_
// The spin angle advances by (2 pi / period) * dt (nothing for a zero period).
template <typename P>
void PSpinModel<P>::applyPSpin(P* first, P* last) {
    for (P* p = first; p != last; ++p) {
        float increment;
        if (p->spinPeriod == 0.0f) {
            increment = 0.0f;
        } else {
            increment = static_cast<float>(6.2832 / static_cast<double>(p->spinPeriod)) * this->deltaTime;
        }
        p->spinAngle = p->spinAngle + increment;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PLifeModel (SParticle)
// ---------------------------------------------------------------------------------------------------------------------

// 0x65452c _ZN6glitch2ps10PLifeModelINS0_9SParticleEEC2Ev
// Registers "Life" (+0x04) and "LifeVariation" (+0x08).
template <typename P>
PLifeModel<P>::PLifeModel() {
    this->registerParameter("Life", &life);
    this->registerParameter("LifeVariation", &lifeVariation);
}

// 0x64c2e8 _ZN6glitch2ps10PLifeModelINS0_9SParticleEE14initPLifeModelEv (empty)
template <typename P>
void PLifeModel<P>::initPLifeModel() {}

// 0x64c2fc _ZN6glitch2ps10PLifeModelINS0_9SParticleEE9initPLifeEPS2_S4_
// age = 0; life = Life + centered(LifeVariation); a life shorter than one step (but at least a quarter of it) is stretched to 1.5
// steps so that the particle is seen once.
template <typename P>
void PLifeModel<P>::initPLife(P* first, P* last) {
    PSRandom* random = this->getPRand();
    for (P* p = first; p != last; ++p) {
        const float draw = static_cast<float>(random->Rand());
        p->age = 0.0f;
        const float value = centered(lifeVariation, draw) + life;
        p->life = value;
        const float step = this->deltaTime;
        if (value < step) {
            if (step < static_cast<float>(static_cast<double>(value) * 4.0)) {
                p->life = static_cast<float>(static_cast<double>(step) * 1.5);
            }
        }
    }
}

// 0x64c3f4 _ZN6glitch2ps10PLifeModelINS0_9SParticleEE10applyPLifeEPS2_S4_
// age += dt.
template <typename P>
void PLifeModel<P>::applyPLife(P* first, P* last) {
    for (P* p = first; p != last; ++p) {
        p->age = p->age + this->deltaTime;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// GNPSSizeModel
// ---------------------------------------------------------------------------------------------------------------------

// 0x641f70 _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEEC2Ev
// TargetSize = 1.0, the rest zero; registers "TargetSize" (+0x04), "SizeVariation" (+0x08), "SizeScale" (+0x10) and "SizeScaleOverLife" (+0x0c).
template <typename P>
GNPSSizeModel<P>::GNPSSizeModel() {
    this->registerParameter("TargetSize", &targetSize);
    this->registerParameter("SizeVariation", &sizeVariation);
    this->registerParameter("SizeScale", &sizeScale);
    this->registerParameter("SizeScaleOverLife", &sizeScaleOverLife);
}

// 0x63802c _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE14initPSizeModelEv (empty)
template <typename P>
void GNPSSizeModel<P>::initPSizeModel() {}

// 0x638040 _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE9initPSizeEPS2_S4_
// Target size `TargetSize + (2 * v * draw - v)` with v = SizeVariation; the current size is that times the SizeScale word read as a
// float.
template <typename P>
void GNPSSizeModel<P>::initPSize(P* first, P* last) {
    PSRandom* random = this->getPRand();
    for (P* p = first; p != last; ++p) {
        const float draw = static_cast<float>(random->Rand());
        const float value = (((sizeVariation * draw) + (sizeVariation * draw)) - sizeVariation) + targetSize;
        p->baseSize = value;
        p->size = value * sizeScale.scale;
    }
}

// 0x63c388 _ZN6glitch2ps13GNPSSizeModelINS0_12GNPSParticleEE10applyPSizeEPS2_S4_
// With SizeScaleOverLife > 0 and a track the size is the target size times the track value at (age / life) (the track is read at
// `Length * fraction`, the cache starts at fraction * 1000 / 33.333332); otherwise the target size times the SizeScale float.
template <typename P>
void GNPSSizeModel<P>::applyPSize(P* first, P* last) {
    for (P* p = first; p != last; ++p) {
        if (sizeScaleOverLife > 0 && sizeScale.track != nullptr) {
            const float fraction = p->age / p->life;
            float value = 0.0f;
            int keyIndex = static_cast<int>(static_cast<float>(static_cast<double>(fraction * 1000.0f) / 33.333332));
            TrackReader reader(sizeScale.track, this->animationDatabase);
            const int length = reader.accessor.getLength(0);
            reader.accessor.getValue(static_cast<int>(static_cast<float>(length) * fraction), &value, keyIndex, true);
            p->size = p->baseSize * value;
        } else {
            p->size = p->baseSize * sizeScale.scale;
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// GNPSColorModel
// ---------------------------------------------------------------------------------------------------------------------

// 0x638524 _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE22hasColorAnimationTrackEv
template <typename P>
int GNPSColorModel<P>::hasColorAnimationTrack() {
    return diffuseColorTrack != nullptr ? 1 : 0;
}

// 0x6420a8 _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEEC2Ev
// AnimKeyMappingType, TextureSubDiviseH and TextureSubDiviseV are 1, AnimScaleMultiplier 1.0, the rest zero; registers the eighteen
// parameters of the model in the order of the listing (the track pointers, the animation values, the tint, the visibility, the colour
// randomisation, the texture sub-divisions and the flips).
template <typename P>
GNPSColorModel<P>::GNPSColorModel() {
    this->registerParameter("TextureTransformTrack", &textureTransformTrack);
    this->registerParameter("DiffuseColorTrack", &diffuseColorTrack);
    this->registerParameter("AnimKeyMappingType", &animKeyMappingType);
    this->registerParameter("AnimOffset", &animOffset);
    this->registerParameter("AnimOffsetVariation", &animOffsetVariation);
    this->registerParameter("AnimLength", &animLength);
    this->registerParameter("AnimLengthVariation", &animLengthVariation);
    this->registerParameter("AnimScaleMultiplier", &animScaleMultiplier);
    this->registerParameter("AnimScaleMultiplierVariation", &animScaleMultiplierVariation);
    this->registerParameter("TintStrength", &tintStrength);
    this->registerParameter("TintColor", &tintColor);
    this->registerParameter("Visibility", &visibility);
    this->registerParameter("RandomColor", &randomColor);
    this->registerParameter("TextureSubDiviseH", &textureSubDiviseH);
    this->registerParameter("TextureSubDiviseV", &textureSubDiviseV);
    this->registerParameter("TextureSubDiviseRandomPick", &textureSubDiviseRandomPick);
    this->registerParameter("FlipU", &flipU);
    this->registerParameter("FlipV", &flipV);
}

// 0x6380d8 _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE15initPColorModelEv (empty)
template <typename P>
void GNPSColorModel<P>::initPColorModel() {}

// 0x6380ec _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE10initPColorEPS2_S4_
// Per particle: a texture cell when the texture is subdivided (TextureSubDiviseH/V > 1 in either direction; a random cell when
// TextureSubDiviseRandomPick is positive, else the next cell of the sequence counter), the cell's (u0, v0, u1, v1), swapped
// end-for-end by FlipU / FlipV; and, with a track, the animation offset and length (`model value + centered(value * variation)`,
// a draw only for a non-zero amplitude). Afterwards RandomColor gives every particle a random opaque colour.
template <typename P>
void GNPSColorModel<P>::initPColor(P* first, P* last) {
    for (P* p = first; p != last; ++p) {
        if (textureSubDiviseH > 1 || textureSubDiviseV > 1) {
            int cell;
            if (textureSubDiviseRandomPick > 0) {
                PSRandom* random = this->getPRand();
                const float draw = static_cast<float>(random->Rand());
                cell = static_cast<int>(static_cast<float>(textureSubDiviseH * textureSubDiviseV) * draw);
            } else {
                cell = subdivisionCounter++ % (textureSubDiviseV * textureSubDiviseH);
            }
            const int column = cell % textureSubDiviseH;
            const int row = cell / textureSubDiviseH;
            p->uv[0] = (1.0f / static_cast<float>(textureSubDiviseH)) * static_cast<float>(column);
            p->uv[1] = (1.0f / static_cast<float>(textureSubDiviseV)) * static_cast<float>(row);
            p->uv[3] = (1.0f / static_cast<float>(textureSubDiviseV)) * static_cast<float>(row + 1);
            p->uv[2] = (1.0f / static_cast<float>(textureSubDiviseH)) * static_cast<float>(column + 1);
        }
        if (flipU != 0) {
            std::swap(p->uv[0], p->uv[2]);
        }
        if (flipV != 0) {
            std::swap(p->uv[1], p->uv[3]);
        }
        if (textureTransformTrack == nullptr && diffuseColorTrack == nullptr) {
            continue;
        }
        PSRandom* random = this->getPRand();
        const float offsetAmplitude = animOffset * animOffsetVariation;
        const float lengthAmplitude = animLength * animLengthVariation;
        float offset;
        float length;
        if (offsetAmplitude == 0.0f) {
            offset = 0.0f;
            length = lengthAmplitude != 0.0f ? centered(lengthAmplitude, static_cast<float>(random->Rand())) : 0.0f;
        } else {
            offset = centered(offsetAmplitude, static_cast<float>(random->Rand()));
            length = lengthAmplitude != 0.0f ? centered(lengthAmplitude, static_cast<float>(random->Rand())) : 0.0f;
        }
        p->animOffset = offset + animOffset;
        p->animLength = length + animLength;
    }
    if (randomColor != 0) {
        PSRandom* random = this->getPRand();
        for (P* p = first; p != last; ++p) {
            const float r = static_cast<float>(random->Rand());
            const float g = static_cast<float>(random->Rand());
            const float b = static_cast<float>(random->Rand());
            p->color.setComponent(0, static_cast<std::uint8_t>(static_cast<int>(r * 255.0f)));
            p->color.setComponent(1, static_cast<std::uint8_t>(static_cast<int>(g * 255.0f)));
            p->color.setComponent(2, static_cast<std::uint8_t>(static_cast<int>(b * 255.0f)));
            p->color.setComponent(3, 0xFF);
        }
    }
}

// 0x63c5a8 _ZN6glitch2ps14GNPSColorModelINS0_12GNPSParticleEE11applyPColorEPS2_S4_RNS_5video6SColorE
// With a track only. The track fraction is `age / life + animOffset` (AnimKeyMappingType 1) or `animOffset + age`; the texture track
// is read at `fraction * Length` (no interpolation) into (translation, rotation, scale) and builds the texture transform
// [cos * sx, -sin * sx, tx, sin * sy, cos * sy, ty]; the diffuse track writes the particle's colour (interpolated; the cache
// starts at fraction * 1000 / 33.333332).
template <typename P>
void GNPSColorModel<P>::applyPColor(P* first, P* last, video::SColor& /*color*/) {
    if ((diffuseColorTrack == nullptr && textureTransformTrack == nullptr) || first == last) {
        return;
    }
    int textureKeyIndex = 0;
    for (P* p = first; p != last; ++p) {
        float fraction;
        if (animKeyMappingType == 1) {
            fraction = (p->age / p->life) + p->animOffset;
        } else {
            fraction = p->animOffset + p->age;
        }
        if (textureTransformTrack != nullptr) {
            TrackReader reader(textureTransformTrack, this->animationDatabase);
            const int length = reader.accessor.getLength(0);
            struct {
                float tx = 0.0f;
                float ty = 0.0f;
                float angle = 0.0f;
                float sx = 1.0f;
                float sy = 1.0f;
            } value;
            reader.accessor.getValue(static_cast<int>(fraction * static_cast<float>(length)), &value, textureKeyIndex, false);
            const float c = std::cos(value.angle);
            const float s = std::sin(value.angle);
            p->texTransform[0] = value.sx * c;
            p->texTransform[1] = -s * value.sx;
            p->texTransform[2] = value.tx;
            p->texTransform[3] = value.sy * s;
            p->texTransform[4] = value.sy * c;
            p->texTransform[5] = value.ty;
        }
        if (diffuseColorTrack != nullptr) {
            int keyIndex = static_cast<int>(static_cast<float>(static_cast<double>(fraction * 1000.0f) / 33.333332));
            TrackReader reader(diffuseColorTrack, this->animationDatabase);
            const int length = reader.accessor.getLength(0);
            reader.accessor.getValue(static_cast<int>(fraction * static_cast<float>(length)), &p->color, keyIndex, true);
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// GNPSMotionModel
// ---------------------------------------------------------------------------------------------------------------------

// 0x641724 _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEEC2Ev
// Everything zero; registers "Direction" (+0x04), "DirectionVariation" (+0x10), "SpeedScale" (+0x2c), "MotionRandom" (+0x1c),
// "MotionRandomVariation" (+0x20), "MotionRandomScale" (+0x30), "SpeedScaleOverLife" (+0x24), "MotionRandomScaleOverLife" (+0x28),
// "Speed" (+0x34) and "SpeedVariation" (+0x38).
template <typename P>
GNPSMotionModel<P>::GNPSMotionModel() {
    this->registerParameter("Direction", &direction);
    this->registerParameter("DirectionVariation", &directionVariation);
    this->registerParameter("SpeedScale", &speedScale);
    this->registerParameter("MotionRandom", &motionRandom);
    this->registerParameter("MotionRandomVariation", &motionRandomVariation);
    this->registerParameter("MotionRandomScale", &motionRandomScale);
    this->registerParameter("SpeedScaleOverLife", &speedScaleOverLife);
    this->registerParameter("MotionRandomScaleOverLife", &motionRandomScaleOverLife);
    this->registerParameter("Speed", &speed);
    this->registerParameter("SpeedVariation", &speedVariation);
}

// 0x638634 _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE16initPMotionModelEv (empty)
template <typename P>
void GNPSMotionModel<P>::initPMotionModel() {}

// 0x6410b0 _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE11initPMotionEPS2_S4_
// One draw before the loop gives the random-motion offset `centered(2 * MotionRandomVariation)`, shared by all particles (each gets
// MotionRandom + that). Per particle: the speed offset `centered(2 * SpeedVariation)` (a draw only when the variation is non-zero). With
// the zero direction AND the zero direction variation the velocity is a random unit direction times `Speed + speed offset`;
// otherwise the direction is `Direction + (2 * draw - 1) * DirectionVariation` per axis (three draws), carried through the system's
// world matrix (identity when it has none), normalised, stored as the particle's direction and used for the velocity.
template <typename P>
void GNPSMotionModel<P>::initPMotion(P* first, P* last) {
    PSRandom* random = this->getPRand();
    core::CMatrix4<float> world;
    const float* worldMatrix = this->getWorldMatrixPtr();
    if (worldMatrix != nullptr) {
        world = *reinterpret_cast<const core::CMatrix4<float>*>(worldMatrix);
    } else {
        world = core::CMatrix4<float>(core::CMatrix4<float>::EM4CONST_IDENTITY);
    }
    const float speedAmplitude = speedVariation + speedVariation;
    const float randomAmplitude = motionRandomVariation + motionRandomVariation;
    const float randomOffset = (randomAmplitude * static_cast<float>(random->Rand())) + (randomAmplitude * -0.5f);
    for (P* p = first; p != last; ++p) {
        float speedOffset;
        if (speedAmplitude == 0.0f) {
            speedOffset = 0.0f;
        } else {
            speedOffset = centered(speedAmplitude, static_cast<float>(random->Rand()));
        }
        if (direction.X == 0.0f && direction.Y == 0.0f && direction.Z == 0.0f && directionVariation.X == 0.0f &&
            directionVariation.Y == 0.0f && directionVariation.Z == 0.0f) {
            const core::vector3d<float> r = random->RandVec();
            core::vector3d<float> pick{r.X - kHalf, r.Y - kHalf, r.Z - kHalf};
            pick.normalize();
            const float magnitude = speedOffset + speed;
            p->velocity.X = magnitude * pick.X;
            p->velocity.Y = magnitude * pick.Y;
            p->velocity.Z = magnitude * pick.Z;
            continue;
        }
        const float rx = static_cast<float>(random->Rand());
        const float offsetX = ((rx + rx) - 1.0f) * directionVariation.X;
        const float ry = static_cast<float>(random->Rand());
        const float offsetY = ((ry + ry) - 1.0f) * directionVariation.Y;
        const float rz = static_cast<float>(random->Rand());
        const float dx = offsetX + direction.X;
        const float dy = offsetY + direction.Y;
        const float dz = (((rz + rz) - 1.0f) * directionVariation.Z) + direction.Z;
        core::vector3d<float> carried{(dx * world.M[0] + dy * world.M[4]) + dz * world.M[8],
                                      (dx * world.M[1] + dy * world.M[5]) + dz * world.M[9],
                                      (dx * world.M[2] + dy * world.M[6]) + dz * world.M[10]};
        carried.normalize();
        p->direction = carried;
        carried.normalize();
        const float magnitude = speedOffset + speed;
        p->velocity.Y = magnitude * carried.Y;
        p->velocity.Z = magnitude * carried.Z;
        p->velocity.X = magnitude * carried.X;
        p->motionRandom = motionRandom + randomOffset;
    }
}

// 0x63beec _ZN6glitch2ps15GNPSMotionModelINS0_12GNPSParticleEE12applyPMotionEPS2_S4_
// The position advances by `speedScale * dt * velocity`, where speedScale is the SpeedScale float, or the track value at (age / life)
// when SpeedScaleOverLife > 0 and a track is set; then a random jitter is added: `dt * (scale * (motionRandom * (RandVec - 0.5)))` with
// the particle's motionRandom, where scale is the MotionRandomScale float or its track value (MotionRandomScaleOverLife > 0).
template <typename P>
void GNPSMotionModel<P>::applyPMotion(P* first, P* last) {
    for (P* p = first; p != last; ++p) {
        PSRandom* random = this->getPRand();
        float scale;
        if (speedScaleOverLife > 0 && speedScale.track != nullptr) {
            const float fraction = p->age / p->life;
            float value = 0.0f;
            int keyIndex = static_cast<int>(static_cast<float>(static_cast<double>(fraction * 1000.0f) / 33.333332));
            TrackReader reader(speedScale.track, this->animationDatabase);
            const int length = reader.accessor.getLength(0);
            reader.accessor.getValue(static_cast<int>(static_cast<float>(length) * fraction), &value, keyIndex, true);
            scale = value;
        } else {
            scale = speedScale.scale;
        }
        const float dt = this->deltaTime;
        p->position.X = p->position.X + (scale * (dt * p->velocity.X));
        p->position.Y = p->position.Y + (scale * (dt * p->velocity.Y));
        const float z = scale * (dt * p->velocity.Z);
        p->position.Z = p->position.Z + z;

        float randomScale;
        if (motionRandomScaleOverLife > 0 && motionRandomScale.track != nullptr) {
            const float fraction = p->age / p->life;
            float value = 0.0f;
            int keyIndex = static_cast<int>(static_cast<float>(static_cast<double>(fraction * 1000.0f) / 33.333332));
            TrackReader reader(motionRandomScale.track, this->animationDatabase);
            const int length = reader.accessor.getLength(0);
            reader.accessor.getValue(static_cast<int>(static_cast<float>(length) * fraction), &value, keyIndex, true);
            randomScale = value;
        } else {
            randomScale = motionRandomScale.scale;
        }
        const float magnitude = p->motionRandom;
        const core::vector3d<float> r = random->RandVec();
        const float step = this->deltaTime;
        const float jitterY = step * (randomScale * (magnitude * (r.Y - kHalf)));
        const float jitterZ = step * (randomScale * (magnitude * (r.Z - kHalf)));
        const float jitterX = magnitude * (r.X - kHalf);
        p->position.X = p->position.X + (step * (randomScale * jitterX));
        p->position.Y = p->position.Y + jitterY;
        p->position.Z = p->position.Z + jitterZ;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// GNPSSpinModel
// ---------------------------------------------------------------------------------------------------------------------

// 0x6419dc _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEEC2Ev
// Everything zero but the view rotation matrix, which is the identity; registers "SpinTime" (+0x04), "SpinVariation" (+0x08),
// "SpinPhase" (+0x0c), "SpinPhaseVariation" (+0x10), "SpinAxis" (+0x14), "SpinAxisVariation" (+0x20), "SpinAxisType" (+0x8c),
// "StartAngleType" (+0x2c), "SpinKeepAlignedToMotion" (+0x30), "ViewRotMatrix" (+0x34), "SpinPivotPoint" (+0x78), "SpinScale" (+0x88)
// and "SpinScaleOverLife" (+0x84).
template <typename P>
GNPSSpinModel<P>::GNPSSpinModel() {
    this->registerParameter("SpinTime", &spinTime);
    this->registerParameter("SpinVariation", &spinVariation);
    this->registerParameter("SpinPhase", &spinPhase);
    this->registerParameter("SpinPhaseVariation", &spinPhaseVariation);
    this->registerParameter("SpinAxis", &spinAxis);
    this->registerParameter("SpinAxisVariation", &spinAxisVariation);
    this->registerParameter("SpinAxisType", &spinAxisType);
    this->registerParameter("StartAngleType", &startAngleType);
    this->registerParameter("SpinKeepAlignedToMotion", &spinKeepAlignedToMotion);
    this->registerParameter("ViewRotMatrix", &viewRotMatrix);
    this->registerParameter("SpinPivotPoint", &spinPivotPoint);
    this->registerParameter("SpinScale", &spinScale);
    this->registerParameter("SpinScaleOverLife", &spinScaleOverLife);
}

// 0x63865c _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE14initPSpinModelEv (empty)
template <typename P>
void GNPSSpinModel<P>::initPSpinModel() {}

namespace {

// The angle of a vector's (x, y) projection through the spin model's view rotation: the vector is carried through the matrix's
// rotation part (the z output stays zero), normalised, and acos(y) is returned, negated when x is positive.
float motionAlignedAngle(const core::CMatrix4<float>& m, float x, float y, float z, core::vector3d<float>* projected) {
    core::vector3d<float> v{(x * m.M[0] + y * m.M[4]) + z * m.M[8], (x * m.M[1] + y * m.M[5]) + z * m.M[9], 0.0f};
    v.normalize();
    float angle = std::acos((v.X * 0.0f + v.Y) + v.Z * 0.0f);
    if (v.X > 0.0f) {
        angle = -angle;
    }
    if (projected != nullptr) {
        *projected = v;
    }
    return angle;
}

}  // namespace

// 0x63cce8 _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE9initPSpinEPS2_S4_
// Per particle: SpinSpeedBase = SpinTime + centered(2 * SpinTime * SpinVariation) (two times the amplitude, as the listing has it); the
// current speed is that times the SpinScale float; the pivot is the model pivot scaled by size / baseSize; the start angle follows
// StartAngleType (0 random in [0, 2 pi), 1 the phase `(SpinPhase + centered(2 * phaseVariation)) / 180 * pi`, 2 that phase plus the
// angle that aligns the quad with the motion) and, for types 0 and 1 with SpinKeepAlignedToMotion > 0, the offset between the start
// angle and the motion-aligned angle is kept; the spin axis is a random unit vector (SpinAxisType 0), the particle's velocity (2), or the
// model axis plus a random component per axis of up to its variation (other types), normalised.
template <typename P>
void GNPSSpinModel<P>::initPSpin(P* first, P* last) {
    PSRandom* random = this->getPRand();
    const float timeAmplitude = spinVariation + spinVariation;
    const float phaseAmplitude = spinPhaseVariation + spinPhaseVariation;
    const float axisAmplitudeX = spinAxisVariation.X + spinAxisVariation.X;
    const float axisAmplitudeY = spinAxisVariation.Y + spinAxisVariation.Y;
    const float axisAmplitudeZ = spinAxisVariation.Z + spinAxisVariation.Z;
    viewRotMatrix.flag = false;
    core::CMatrix4<float> view = viewRotMatrix;
    view.M[12] = 0.0f;
    view.M[13] = 0.0f;
    view.M[14] = 0.0f;
    view.flag = false;
    if (first == last) {
        return;
    }
    const float pi = 3.1416f;
    for (P* p = first; p != last; ++p) {
        float timeOffset;
        if (timeAmplitude == 0.0f) {
            timeOffset = 0.0f;
        } else {
            timeOffset = centered(timeAmplitude, static_cast<float>(random->Rand()));
        }
        const float speedBase = timeOffset + spinTime;
        p->spinSpeedBase = speedBase;
        const float ratio0 = p->size / p->baseSize;
        p->spinSpeed = speedBase * spinScale.scale;
        const float ratio = ratio0;
        p->spinPivot.X = ratio * spinPivotPoint.X;
        p->spinPivot.Y = ratio * spinPivotPoint.Y;
        p->spinPivot.Z = ratio * spinPivotPoint.Z;

        float phaseOffset;
        std::int32_t type = startAngleType;
        if (phaseAmplitude == 0.0f) {
            phaseOffset = 0.0f;
        } else {
            const float draw = static_cast<float>(random->Rand());
            phaseOffset = centered(phaseAmplitude, draw);
        }
        bool aligned = false;
        if (type == 2) {
            const float angle = motionAlignedAngle(view, p->velocity.X, p->velocity.Y, p->velocity.Z, nullptr);
            p->spinAngle = (((phaseOffset + spinPhase) / 180.0f) * pi) + angle;
            p->spinAngleOffset = ((phaseOffset + spinPhase) / 180.0f) * pi;
            aligned = true;
        } else if (type == 0) {
            const float draw = static_cast<float>(random->Rand());
            p->spinAngle = (draw + draw) * pi;
        } else if (type == 1) {
            p->spinAngle = ((phaseOffset + spinPhase) / 180.0f) * pi;
        }
        if (!aligned && spinKeepAlignedToMotion > 0) {
            const float angle = motionAlignedAngle(view, p->velocity.X, p->velocity.Y, p->velocity.Z, nullptr);
            p->spinAngleOffset = p->spinAngle - angle;
        }

        core::vector3d<float> axis;
        if (spinAxisType != 0) {
            if (spinAxisType == 2) {
                axis = p->velocity;
            } else {
                axis = spinAxis;
                const double dx = random->Rand();
                const double dy = random->Rand();
                const double dz = random->Rand();
                axis.X = axis.X + (static_cast<float>(static_cast<double>(axisAmplitudeX) * dx) + (axisAmplitudeX * -0.5f));
                axis.Y = axis.Y + (static_cast<float>(static_cast<double>(axisAmplitudeY) * dy) + (axisAmplitudeY * -0.5f));
                axis.Z = axis.Z + (static_cast<float>(static_cast<double>(axisAmplitudeZ) * dz) + (axisAmplitudeZ * -0.5f));
            }
        } else {
            const core::vector3d<float> r = random->RandVec();
            axis = core::vector3d<float>{r.X - kHalf, r.Y - kHalf, r.Z - kHalf};
        }
        axis.normalize();
        p->spinAxis = axis;
    }
}

// 0x63d390 _ZN6glitch2ps13GNPSSpinModelINS0_12GNPSParticleEE10applyPSpinEPS2_S4_
// The pivot follows the size (size / baseSize times the model pivot). With SpinKeepAlignedToMotion > 0 the spin angle is the stored
// offset plus the motion-aligned angle of the velocity; otherwise the spin speed is SpinSpeedBase times the SpinScale float, or
// times its track value at (age / life) when SpinScaleOverLife > 0 and a track is set, and the angle advances by
// speed / 180 * pi * dt.
template <typename P>
void GNPSSpinModel<P>::applyPSpin(P* first, P* last) {
    viewRotMatrix.flag = false;
    core::CMatrix4<float> view = viewRotMatrix;
    view.M[12] = 0.0f;
    view.M[13] = 0.0f;
    view.M[14] = 0.0f;
    view.flag = false;
    const float pi = 3.1416f;
    for (P* p = first; p != last; ++p) {
        const float ratio = p->size / p->baseSize;
        p->spinPivot.X = ratio * spinPivotPoint.X;
        p->spinPivot.Y = ratio * spinPivotPoint.Y;
        p->spinPivot.Z = ratio * spinPivotPoint.Z;
        if (spinKeepAlignedToMotion > 0) {
            const float angle = motionAlignedAngle(view, p->velocity.X, p->velocity.Y, p->velocity.Z, nullptr);
            p->spinAngle = p->spinAngleOffset + angle;
            continue;
        }
        float speed;
        if (spinScaleOverLife <= 0 || spinScale.track == nullptr) {
            speed = p->spinSpeedBase * spinScale.scale;
            p->spinSpeed = speed;
        } else {
            const float fraction = p->age / p->life;
            float value = 0.0f;
            int keyIndex = static_cast<int>(static_cast<float>(static_cast<double>(fraction * 1000.0f) / 33.333332));
            TrackReader reader(spinScale.track, this->animationDatabase);
            const int length = reader.accessor.getLength(0);
            reader.accessor.getValue(static_cast<int>(static_cast<float>(length) * fraction), &value, keyIndex, true);
            speed = p->spinSpeedBase * value;
            p->spinSpeed = speed;
        }
        float increment;
        if (speed == 0.0f) {
            increment = 0.0f;
        } else {
            increment = ((speed / 180.0f) * pi) * this->deltaTime;
        }
        p->spinAngle = p->spinAngle + increment;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// GNPSLifeModel
// ---------------------------------------------------------------------------------------------------------------------

// 0x641d7c _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEEC2Ev
// Life and LifeVariation zero; registers "Life" (+0x04) and "LifeVariation" (+0x08).
template <typename P>
GNPSLifeModel<P>::GNPSLifeModel() {
    this->registerParameter("Life", &life);
    this->registerParameter("LifeVariation", &lifeVariation);
}

// 0x638670 _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE14initPLifeModelEv (empty)
template <typename P>
void GNPSLifeModel<P>::initPLifeModel() {}

// 0x638684 _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE9initPLifeEPS2_S4_
// age = 0; life = Life + centered(LifeVariation).
template <typename P>
void GNPSLifeModel<P>::initPLife(P* first, P* last) {
    PSRandom* random = this->getPRand();
    for (P* p = first; p != last; ++p) {
        const float draw = static_cast<float>(random->Rand());
        p->age = 0.0f;
        p->life = life + ((lifeVariation * draw) + (lifeVariation * -0.5f));
    }
}

// 0x63904c _ZN6glitch2ps13GNPSLifeModelINS0_12GNPSParticleEE10applyPLifeEPS2_S4_
// remove_if over [first, last) with AgeNKillCheck(dt): every particle ages by dt and is dropped when its age is no longer in
// [0, life); the dropped tail is erased from the context's particle list.
template <typename P>
void GNPSLifeModel<P>::applyPLife(P* first, P* last) {
    const float dt = this->deltaTime;
    P* kept = std::remove_if(first, last, [dt](P& particle) {
        particle.age = dt + particle.age;
        return !(particle.age < particle.life && particle.age >= 0.0f);
    });
    if (kept != last) {
        this->particles.erase(this->particles.begin() + (kept - this->particles.data()), this->particles.begin() + (last - this->particles.data()));
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PForcesModel
// ---------------------------------------------------------------------------------------------------------------------

// 0x64d64c / 0x64d6e4 / 0x64d710 (SParticle), 0x63a5ac / 0x63a644 / 0x63a670 (GNPSParticle): every force is destroyed through its
// virtual destructor (slot +4, the deleting one) and the list storage is freed.
template <typename P>
PForcesModel<P>::~PForcesModel() {
    for (PForce<P>* force : forces) {
        delete force;
    }
}

// 0x64f190 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE9addPForceEPNS0_6PForceIS2_EE (0x63ec44 for GNPSParticle)
// Appends the force, marks the list dirty and returns the new number of forces.
template <typename P>
int PForcesModel<P>::addPForce(PForce<P>* force) {
    forces.push_back(force);
    dirty = true;
    return static_cast<int>(forces.size());
}

// 0x64f278 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEPNS0_6PForceIS2_EE (0x63da68)
// The entry whose key equals the force's key (CompareForce) is destroyed and removed, and the list marked dirty; nothing otherwise.
template <typename P>
void PForcesModel<P>::removePForce(PForce<P>* force) {
    auto it = std::find_if(forces.begin(), forces.end(), CompareForce<P>(force));
    if (it != forces.end()) {
        delete *it;
        forces.erase(it);
        dirty = true;
    }
}

// 0x64f318 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12removePForceEi (0x63dc3c)
// An index in [1, count) is destroyed and removed (index 0 is never removed by this overload, and the dirty flag is not touched).
template <typename P>
void PForcesModel<P>::removePForce(int index) {
    if (index > 0 && index < static_cast<int>(forces.size())) {
        delete forces[static_cast<std::size_t>(index)];
        forces.erase(forces.begin() + index);
    }
}

// 0x64d9d4 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE16initPForcesModelEv (0x63b188)
// A dirty list is sorted by priority (SortPriorityForce) and marked clean.
template <typename P>
void PForcesModel<P>::initPForcesModel() {
    if (dirty) {
        std::sort(forces.begin(), forces.end(), SortPriorityForce<P>());
        dirty = false;
    }
}

// 0x64c234 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE11initPForcesEPS2_S4_ (0x638648) (empty)
template <typename P>
void PForcesModel<P>::initPForces(P* /*first*/, P* /*last*/) {}

// 0x64d948 _ZN6glitch2ps12PForcesModelINS0_9SParticleEE12applyPForcesEPS2_S4_ (0x63b0fc)
// Sorts a dirty list, then lets every force act on the range with the context as the third argument.
template <typename P>
void PForcesModel<P>::applyPForces(P* first, P* last) {
    if (dirty) {
        std::sort(forces.begin(), forces.end(), SortPriorityForce<P>());
        dirty = false;
    }
    for (PForce<P>* force : forces) {
        force->apply(first, last, this);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PRenderData and the render-data model
// ---------------------------------------------------------------------------------------------------------------------

// 0x63f898 _ZN6glitch2ps11PRenderData17setRenderDataInfoEPNS_5scene11CMeshBufferEPNS_5video12IVideoDriverE
// The index buffer of the current stream table (when there is one) is kept; a new table for the mesh buffer's active attributes is
// allocated when there is none or the mesh buffer has an attribute the table lacks; the table's streams are set up over that buffer
// for those attributes, and the bytes per particle become (the mesh buffer table's field08) times setupStreams' result.
void PRenderData::setRenderDataInfo(scene::CMeshBuffer* meshBuffer, video::IVideoDriver* /*driver*/) {
    boost::intrusive_ptr<video::IBuffer> keptBuffer;
    if (streams && !streams->m_streams.empty()) {
        keptBuffer = streams->m_streams[0].buffer;
    }
    const std::uint32_t activeMask = meshBuffer->vertexStreams->getActiveAttributeMask();
    if (!streams || (activeMask & ~streams->m_attributeMask) != 0) {
        streams = video::CVertexStreams::allocate(activeMask);
    }
    const std::uint32_t copied = streams->setupStreams(keptBuffer, activeMask);
    boost::intrusive_ptr<video::CVertexStreams> meshStreams = meshBuffer->vertexStreams;
    bytesPerParticle = meshStreams->m_field08 * copied;
}

// 0x652384 / 0x6524dc (SParticle), 0x63fa14 / 0x63fb6c (GNPSParticle) and the Mixin constructors 0x654a74 / 0x654ec4: the members are
// zeroed or defaulted (index type 255, primitive type 6, the view matrix an identity, the box (-1 .. 1), AllocateBuffer set, a
// one-byte placeholder allocation), the eight bindings are registered (AllocateBuffer, RenderMesh, OutIndexBuffer, RenderMaterial,
// RenderBuffer, RBufferSizeNeeded, ViewMatrix, BBox) and the context gets its default axes ((0.5, 0, 0) and (0, 0.5, 0), neither
// locked, the extra flag byte clear).
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
PRenderDataBillboardModel<P, S, C, N, Pos, T>::PRenderDataBillboardModel()
    : viewMatrix(core::CMatrix4<float>::EM4CONST_IDENTITY), boundingBox{{-1.0f, -1.0f, -1.0f}, {1.0f, 1.0f, 1.0f}} {
    renderData.primitives.m_indexType = 255;
    renderData.primitives.m_primitiveType = 6;
    placeholder = ::operator new(1);
    this->registerParameter("AllocateBuffer", &allocateBuffer);
    this->registerParameter("RenderMesh", &renderMesh);
    this->registerParameter("OutIndexBuffer", &outIndexBuffer);
    this->registerParameter("RenderMaterial", &renderMaterial);
    this->registerParameter("RenderBuffer", &renderBuffer);
    this->registerParameter("RBufferSizeNeeded", &renderBufferSizeNeeded);
    this->registerParameter("ViewMatrix", &viewMatrix);
    this->registerParameter("BBox", &boundingBox);
    this->axisLocked[0] = 0;
    this->axisLocked[1] = 0;
    this->axis[0] = core::vector3d<float>{0.5f, 0.0f, 0.0f};
    this->axis[1] = core::vector3d<float>{0.0f, 0.5f, 0.0f};
    this->alignToMotion = 0;
}

// 0x6539a8 / 0x653ab0 (SParticle) and the GNPSParticle destructors 0x63fcc4 / 0x63fdcc: the placeholder is freed, the buffer given
// back (deallocateBuffer), then the members drop their references.
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
PRenderDataBillboardModel<P, S, C, N, Pos, T>::~PRenderDataBillboardModel() {
    ::operator delete(placeholder);
    placeholder = nullptr;
    PRenderDataBillboardModel::deallocateBuffer();
}

// 0x64c448 / 0x64c4b0 / 0x638728 / 0x638790 getRenderVertexStreams: a counted copy of the stream table.
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
boost::intrusive_ptr<video::CVertexStreams> PRenderDataBillboardModel<P, S, C, N, Pos, T>::getRenderVertexStreams() {
    return renderData.streams;
}

// 0x64c484 / 0x64c4ec / 0x638764 / 0x6387cc getRenderBufferSizeNeeded.
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
std::uint32_t PRenderDataBillboardModel<P, S, C, N, Pos, T>::getRenderBufferSizeNeeded() const {
    return renderBufferSizeNeeded;
}

// 0x64dba0 / 0x64dc3c / 0x63b6c4 / 0x63b760 deallocateBuffer: when a buffer is set and owned (AllocateBuffer) it is freed (PS_FREE),
// forgotten, and the stream table's vertex buffer is reset to (0, null).
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
void PRenderDataBillboardModel<P, S, C, N, Pos, T>::deallocateBuffer() {
    if (renderBuffer != nullptr && allocateBuffer) {
        PS_FREE(renderBuffer);
        renderBuffer = nullptr;
        renderData.streams->m_streams[0].buffer->reset(0, nullptr, false);
    }
}

// 0x64dbe8 / 0x64dc84 / 0x63b70c / 0x63b7a8 setRenderBuffer: only for a non-null buffer: the old one is given back, the new one is
// adopted without ownership (AllocateBuffer cleared), and the vertex buffer of the stream table is reset over it.
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
void PRenderDataBillboardModel<P, S, C, N, Pos, T>::setRenderBuffer(void* data, std::uint32_t size) {
    if (data != nullptr) {
        deallocateBuffer();
        allocateBuffer = false;
        renderBuffer = data;
        renderBufferSize = size;
        renderData.streams->m_streams[0].buffer->reset(size, data, false);
    }
}

// 0x652384 / 0x6524dc (SParticle), 0x63fa14 / 0x63fb6c (GNPSParticle) initPRenderDataModel
// MaxParticles is read through the generation model's registered slot. With a render mesh AND a render material: the render data
// is set up for the mesh (setRenderDataInfo), its counters cleared, its index type 1, RBufferSizeNeeded = bytesPerParticle *
// MaxParticles, the index buffer taken from OutIndexBuffer, and the parameter id is the renderer's parameter of shader type 6.
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
void PRenderDataBillboardModel<P, S, C, N, Pos, T>::initPRenderDataModel() {
    std::int32_t maxParticles = 0;
    auto slot = this->parameters.find(this->hashString("MaxParticles"));
    if (slot != this->parameters.end() && slot->second != nullptr) {
        maxParticles = *static_cast<std::int32_t*>(slot->second);
    }
    if (renderMesh != nullptr && renderMaterial) {
        renderData.setRenderDataInfo(renderMesh, renderMaterial->m_renderer->m_driver);
        const std::uint32_t needed = renderData.bytesPerParticle * static_cast<std::uint32_t>(maxParticles);
        renderData.primitives.m_vertexEnd = 0;
        renderData.primitives.m_count = 0;
        renderData.primitives.m_vertexStart = 0;
        renderBufferSizeNeeded = needed;
        renderData.primitives.m_indexType = 1;
        renderData.primitives.m_indexBuffer = outIndexBuffer;
        parameterId = renderMaterial->m_renderer->getParameterID(6, 0);
    }
}

// 0x64c49c / 0x64c504 / 0x63877c / 0x6387e4 initPRenderData (empty)
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
void PRenderDataBillboardModel<P, S, C, N, Pos, T>::initPRenderData(P* /*first*/, P* /*last*/) {}

// 0x651eec / 0x652138 (SParticle), 0x639884 / 0x639ad0 (GNPSParticle) applyPRenderData
// The squared distance from the camera (the view matrix's translation, elements 12 .. 14) is stored in every particle and the bounding
// box (starting inverted at +-FLT_MAX) grows over the particle positions. In world space (the context's local-space flag clear and a
// world matrix present... the original tests the flag only: a set flag adds the world matrix translation to the box) the box is
// moved by the world matrix's translation. The particles are sorted far to near (AlphaSort).
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
void PRenderDataBillboardModel<P, S, C, N, Pos, T>::applyPRenderData(P* first, P* last) {
    const float big = std::numeric_limits<float>::max();
    boundingBox.MaxEdge.Z = -big;
    boundingBox.MinEdge.Z = big;
    boundingBox.MaxEdge.X = -big;
    boundingBox.MaxEdge.Y = -big;
    boundingBox.MinEdge.X = big;
    boundingBox.MinEdge.Y = big;
    const float cx = viewMatrix.M[12];
    const float cy = viewMatrix.M[13];
    const float cz = viewMatrix.M[14];
    for (P* p = first; p != last; ++p) {
        const float x = p->position.X;
        p->distanceSq = (((cx - x) * (cx - x)) + ((cy - p->position.Y) * (cy - p->position.Y))) + ((cz - p->position.Z) * (cz - p->position.Z));
        const float y = p->position.Y;
        const float z = p->position.Z;
        if (x > boundingBox.MaxEdge.X) boundingBox.MaxEdge.X = x;
        if (y > boundingBox.MaxEdge.Y) boundingBox.MaxEdge.Y = y;
        if (z > boundingBox.MaxEdge.Z) boundingBox.MaxEdge.Z = z;
        if (x < boundingBox.MinEdge.X) boundingBox.MinEdge.X = x;
        if (y < boundingBox.MinEdge.Y) boundingBox.MinEdge.Y = y;
        if (z < boundingBox.MinEdge.Z) boundingBox.MinEdge.Z = z;
    }
    if (this->localSpace) {
        const float* world = this->getWorldMatrixPtr();
        const float tx = world[12];
        const float tz = world[14];
        const float ty = world[13];
        boundingBox.MinEdge.X = boundingBox.MinEdge.X + tx;
        boundingBox.MinEdge.Y = boundingBox.MinEdge.Y + ty;
        boundingBox.MinEdge.Z = boundingBox.MinEdge.Z + tz;
        boundingBox.MaxEdge.X = boundingBox.MaxEdge.X + tx;
        boundingBox.MaxEdge.Y = boundingBox.MaxEdge.Y + ty;
        boundingBox.MaxEdge.Z = boundingBox.MaxEdge.Z + tz;
    }
    std::sort(first, last, AlphaSort<P>());
}


}  // namespace glitch::ps

namespace glitch::video {

// 0x6403f8 / 0x640904 (GNPSParticle), 0x6554a4 / 0x6559b0 (SParticle). The listing's `this` is unused. The material is referenced and
// released at once by the listing, which has no net effect, so it is not touched here.
template <typename P>
template <typename ColorBaker, typename NormalBaker, typename PositionBaker, typename TexCoordsBaker, typename ShaderParametersBaker>
void CParticleSystemBaker<P>::bake(const ps::IParticleContext<P>* context, const CVertexStreams* templateStreams, CVertexStreams* output,
                                   const core::CMatrix4<float>* viewMatrix, const boost::intrusive_ptr<CMaterial>& material) {
    (void)material;
    constexpr bool kGeneric = std::is_same_v<ColorBaker, ps::PSNullColorBaker<P>>;

    // The listing holds one reference on the destination (output stream 0) and on the source (template stream 0) for the bake.
    boost::intrusive_ptr<IBuffer> destination = output->m_streams[0].buffer;
    boost::intrusive_ptr<IBuffer> source = templateStreams->m_streams[0].buffer;

    // Copy the template vertices once per particle: the destination is mapped for writing, the source for reading, then the copies.
    const std::size_t particleCount = context->particles.size();
    const std::size_t chunk = static_cast<std::size_t>(templateStreams->m_field08) * output->m_streams[0].field0e;
    std::uint8_t* write = destination->map(2);
    const std::uint8_t* read = static_cast<const IBuffer*>(source.get())->map(static_cast<E_BUFFER_READ_MAP_ACCESS>(0));
    for (std::size_t p = 0; p < particleCount; ++p) {
        std::memcpy(write, read, chunk);
        write += chunk;
    }
    destination->unmap();
    source->unmap();

    // The three mapped views (positions: stream 0, normals: stream m_count0c + 1, texture coordinates: stream 1).
    SVertexStream::SMapBuffer<core::vector3d<float>> positions;
    SVertexStream::SMapBuffer<core::vector3d<float>> normals;
    SVertexStream::SMapBuffer<core::vector2d<float>> texCoords;
    positions.reset(output->m_streams[0], 5);
    normals.reset(output->m_streams[static_cast<std::size_t>(output->m_count0c) + 1u], 5);
    texCoords.reset(output->m_streams[1], 5);

    if constexpr (kGeneric) {
        PositionBaker::SceneNodeWorldMat = reinterpret_cast<const core::CMatrix4<float>*>(context->getWorldMatrixPtr());
        std::uint32_t global = 0;
        for (const P& particle : context->particles) {
            PositionBaker::getPerParticlePosition(context, &particle);
            const std::uint32_t count = templateStreams->m_field08;
            for (std::uint32_t i = 0; i < count; ++i) {
                PositionBaker::convertVertexPosition(&particle, global + i, i, positions);
            }
            global += count;
        }
    } else {
        // The colour stream (attribute 18) is mapped for writing; the listing does not test it for null.
        SVertexStream* colorStream =
            output->getStream(18, output->m_streams.data(), output->m_streams.data() + output->m_streams.size());
        std::uint8_t* colorBase = colorStream != nullptr ? colorStream->buffer->map(5) : nullptr;
        std::uint8_t* colorData = colorBase != nullptr ? colorBase + colorStream->offset : nullptr;

        // The quad normal: the negated third column of the view matrix (M[2], M[6], M[10]).
        NormalBaker::Normal[0] = -viewMatrix->M[2];
        NormalBaker::Normal[1] = -viewMatrix->M[6];
        NormalBaker::Normal[2] = -viewMatrix->M[10];
        PositionBaker::getPerParticleSystemPosition(context, viewMatrix);

        std::uint32_t vertex = 0;
        for (const P& particle : context->particles) {
            TexCoordsBaker::getPerParticleTexCoords(context, &particle);
            std::memcpy(ColorBaker::Color, &particle.color, 4);
            PositionBaker::getPerParticlePosition(context, &particle);
            const std::uint32_t count = templateStreams->m_field08;
            for (std::uint32_t j = 0; j < count; ++j, ++vertex) {
                const core::vector3d<float>& corner = PositionBaker::Position[4 + j];
                const float size = particle.size;
                const float x = (particle.position.X + PositionBaker::Pivot.X) + size * corner.X;
                const float y = (particle.position.Y + PositionBaker::Pivot.Y) + size * corner.Y;
                const float z = (particle.position.Z + PositionBaker::Pivot.Z) + size * corner.Z;

                float* pos = reinterpret_cast<float*>(reinterpret_cast<std::uint8_t*>(positions.data) +
                                                      static_cast<std::size_t>(positions.stream->field0e) * vertex);
                pos[0] = x;
                pos[1] = y;
                pos[2] = z;

                float* nrm = reinterpret_cast<float*>(reinterpret_cast<std::uint8_t*>(normals.data) +
                                                      static_cast<std::size_t>(normals.stream->field0e) * vertex);
                nrm[0] = NormalBaker::Normal[0];
                nrm[1] = NormalBaker::Normal[1];
                nrm[2] = NormalBaker::Normal[2];

                float* uv = reinterpret_cast<float*>(reinterpret_cast<std::uint8_t*>(texCoords.data) +
                                                     static_cast<std::size_t>(texCoords.stream->field0e) * vertex);
                uv[0] = TexCoordsBaker::TexCoords[2 * j];
                uv[1] = TexCoordsBaker::TexCoords[2 * j + 1];

                if (colorData != nullptr) {
                    std::memcpy(colorData + static_cast<std::size_t>(colorStream->field0e) * vertex, ColorBaker::Color, 4);
                }
            }
        }
        if (colorBase != nullptr) {
            colorStream->buffer->unmap();
        }
    }

    // Release the views in the listing's order (texture coordinates, normals, positions), then the two buffer references.
    texCoords.reset();
    normals.reset();
    positions.reset();
}

}  // namespace glitch::video

namespace glitch::ps {

// 0x6558b0 / 0x65605c (SParticle), 0x640804 / 0x640fb0 (GNPSParticle) getRenderData
// Bakes the particles into the render streams (generic shape for the null colour baker, billboard shape otherwise), then sets the
// output stream's vertex count to (vertices per particle * particles), and the primitive stream to that vertex range and (indices per
// particle * particles) elements. Returns the render data.
template <typename P, typename S, typename C, typename N, typename Pos, typename T>
PRenderData* PRenderDataBillboardModel<P, S, C, N, Pos, T>::getRenderData() {
    video::CVertexStreams& templateStreams = *renderMesh->vertexStreams;
    video::CVertexStreams& output = *renderData.streams;
    video::CParticleSystemBaker<P>::template bake<C, N, Pos, T, S>(this, &templateStreams, &output, &viewMatrix, renderMaterial);
    const std::uint32_t particleCount = static_cast<std::uint32_t>(this->particles.size());
    const std::uint32_t vertices = templateStreams.m_field08 * particleCount;
    output.m_field08 = vertices;
    renderData.primitives.m_vertexEnd = vertices;
    renderData.primitives.m_vertexStart = 0;
    renderData.primitives.m_count = renderMesh->primitiveStream.m_count * particleCount;
    return &renderData;
}

// ---------------------------------------------------------------------------------------------------------------------
// Bakers
// ---------------------------------------------------------------------------------------------------------------------

template <typename P>
const core::CMatrix4<float>* PSGenericPositionBaker<P>::SceneNodeWorldMat = nullptr;
template <typename P>
core::CMatrix4<float> PSGenericPositionBaker<P>::SpinMat;
template <typename P>
core::CMatrix4<float> PSGenericPositionBaker<P>::RotMat;
template <typename P>
core::vector3d<float> PSBillboardPositionBaker<P>::Position[8];
template <typename P>
core::vector3d<float> PSBillboardPositionBaker<P>::Pivot;
template <typename P>
float PSBillboardNormalBaker<P>::Normal[3];
template <typename P>
std::uint8_t PSBillboardColorBaker<P>::Color[4];
template <typename P>
float PSBillboardTexCoordsBaker<P>::TexCoords[8];

// 0x64c674 _ZN6glitch2ps22PSGenericPositionBakerINS0_9SParticleEE21convertVertexPositionEPKS2_jjRKNS_5video13SVertexStream10SMapBufferINS_4core8vector3dIfEEEE (0x638954)
// The vertex at index `vertex` (stride = the stream's per-vertex bytes) is carried through the scene node's matrix (x*M0 + y*M4 +
// z*M8 + M12 ..., the translation then subtracted again), through SpinMat, through RotMat, and the particle's position added.
template <typename P>
void PSGenericPositionBaker<P>::convertVertexPosition(const P* particle, unsigned int vertex, unsigned int /*unused*/,
                                                      const video::SVertexStream::SMapBuffer<core::vector3d<float>>& stream) {
    auto* base = reinterpret_cast<std::uint8_t*>(stream.data);
    float* v = reinterpret_cast<float*>(base + static_cast<std::size_t>(stream.stream->field0e) * vertex);
    const float* w = SceneNodeWorldMat->M;
    const float x = v[0];
    const float y = v[1];
    const float z = v[2];
    float tx = (((x * w[0]) + (y * w[4])) + (z * w[8])) + w[12];
    float ty = (((x * w[1]) + (y * w[5])) + (z * w[9])) + w[13];
    float tz = (((x * w[2]) + (y * w[6])) + (z * w[10])) + w[14];
    v[0] = tx;
    v[2] = tz;
    v[1] = ty;
    const float wx = tx - w[12];
    v[0] = wx;
    const float wy = ty - w[13];
    v[1] = wy;
    const float wz = tz - w[14];
    v[2] = wz;
    const float* s = SpinMat.M;
    const float sx = (((wx * s[0]) + (wy * s[4])) + (wz * s[8]));
    v[0] = sx;
    const float sy = (((wx * s[1]) + (wy * s[5])) + (wz * s[9]));
    v[1] = sy;
    const float sz = (((wx * s[2]) + (wy * s[6])) + (wz * s[10]));
    v[2] = sz;
    const float* r = RotMat.M;
    const float rx = (((sx * r[0]) + (sy * r[4])) + (sz * r[8]));
    v[0] = rx;
    const float ry = (((sx * r[1]) + (sy * r[5])) + (sz * r[9]));
    v[1] = ry;
    const float rz = (((sx * r[2]) + (sy * r[6])) + (sz * r[10]));
    v[2] = rz;
    v[0] = rx + particle->position.X;
    v[1] = ry + particle->position.Y;
    v[2] = rz + particle->position.Z;
}

// 0x64ea84 _ZN6glitch2ps22PSGenericPositionBakerINS0_9SParticleEE22getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_ (0x63c800)
// RotMat: the rotation that takes the z axis to the particle's velocity direction (angle acos(dir.z) about the negated normalised
// cross of the velocity with z). SpinMat: for a positive spin angle, the rotation by that angle about the spin axis (negated when its x
// is positive); unchanged otherwise.
template <typename P>
void PSGenericPositionBaker<P>::getPerParticlePosition(const IParticleContext<P>* /*context*/, const P* particle) {
    const float vx = particle->velocity.X;
    const float vy = particle->velocity.Y;
    const float vz = particle->velocity.Z;
    core::vector3d<float> cross{(vz * -0.0f) + vy, (-vx) + (vz * 0.0f), (vy * -0.0f) + (vx * 0.0f)};
    cross.normalize();
    const core::vector3d<float> negated{-cross.X, -cross.Y, -cross.Z};
    core::vector3d<float> direction{vx, vy, vz};
    direction.normalize();
    const float angle = std::acos(direction.Z + ((direction.X * 0.0f) + (direction.Y * 0.0f)));
    const core::quaternion rotation = core::quaternion::fromAngleAxis(angle, negated);
    rotation.getMatrix(RotMat);
    const float spin = particle->spinAngle;
    if (spin > 0.0f) {
        core::vector3d<float> axis = particle->spinAxis;
        if (particle->spinAxis.X > 0.0f) {
            axis = core::vector3d<float>{-axis.X, -axis.Y, -axis.Z};
        }
        const core::quaternion spinRotation = core::quaternion::fromAngleAxis(spin, axis);
        spinRotation.getMatrix(SpinMat);
    }
}

// 0x64dcd8 _ZN6glitch2ps24PSBillboardPositionBakerINS0_9SParticleEE28getPerParticleSystemPositionEPKNS0_16IParticleContextIS2_EEPKNS_4core8CMatrix4IfEE (0x63b7fc)
// Position[0] = (M1, M5, M9) and Position[1] = (-M2, -M6, -M10) of the view matrix. Position[2] / [3] start as the context's two
// axes (carried through the world matrix when the context says so). Unless both axes are locked, the half right vector [2] becomes
// 0.5 * normalise([0] x [1]) and the half up vector [3] 0.5 * normalise([0]) (the table's own [0] is normalised in place); a locked
// axis 0 then replaces [2] by 0.5 * normalise(axis 0) and re-derives [3] from the cross product of the old [3] and [2] (kept in
// c); a locked axis 1 replaces [3] by 0.5 * normalise(axis 1) and re-derives [2].
template <typename P>
void PSBillboardPositionBaker<P>::getPerParticleSystemPosition(const IParticleContext<P>* context, const core::CMatrix4<float>* viewMatrixPtr) {
    const float* m = viewMatrixPtr->M;
    Position[0] = core::vector3d<float>{m[1], m[5], m[9]};
    Position[1] = core::vector3d<float>{-m[2], -m[6], -m[10]};
    const float* w = context->getWorldMatrixPtr();
    const core::vector3d<float> axis0 = context->axis[0];
    const core::vector3d<float> axis1 = context->axis[1];
    if (context->transformAxes) {
        Position[2] = core::vector3d<float>{(axis0.X * w[0] + axis0.Y * w[4]) + axis0.Z * w[8],
                                            (axis0.X * w[1] + axis0.Y * w[5]) + axis0.Z * w[9],
                                            (axis0.X * w[2] + axis0.Y * w[6]) + axis0.Z * w[10]};
        Position[3] = core::vector3d<float>{(axis1.X * w[0] + axis1.Y * w[4]) + axis1.Z * w[8],
                                            (axis1.X * w[1] + axis1.Y * w[5]) + axis1.Z * w[9],
                                            (axis1.X * w[2] + axis1.Y * w[6]) + axis1.Z * w[10]};
    } else {
        Position[2] = axis0;
        Position[3] = axis1;
    }
    const bool locked0 = context->axisLocked[0] != 0;
    const bool locked1 = context->axisLocked[1] != 0;
    if (!locked0 || !locked1) {
        const core::vector3d<float> a = Position[0];
        const core::vector3d<float> b = Position[1];
        core::vector3d<float> right{((-b.Y) * a.Z) + (b.Z * a.Y), ((-b.Z) * a.X) + (a.Z * b.X), (a.Y * (-b.X)) + (b.Y * a.X)};
        right.normalize();
        Position[2] = core::vector3d<float>{right.X * 0.5f, right.Y * 0.5f, right.Z * 0.5f};
        Position[0].normalize();
        Position[3] = core::vector3d<float>{Position[0].X * 0.5f, Position[0].Y * 0.5f, Position[0].Z * 0.5f};
        const core::vector3d<float> r = Position[2];
        const core::vector3d<float> u = Position[3];
        const float cx = (u.Z * (-r.Y)) + (u.Y * r.Z);
        const float cy = (u.X * (-r.Z)) + (u.Z * r.X);
        const float cz = (u.Y * (-r.X)) + (u.X * r.Y);
        if (locked0) {
            core::vector3d<float> fixed = axis0;
            fixed.normalize();
            Position[2] = core::vector3d<float>{fixed.X * 0.5f, fixed.Y * 0.5f, fixed.Z * 0.5f};
            const core::vector3d<float> r2 = Position[2];
            core::vector3d<float> up{(r2.Z * (-cy)) + (cz * r2.Y), (r2.X * (-cz)) + (cx * r2.Z), (r2.Y * (-cx)) + (cy * r2.X)};
            up.normalize();
            Position[3] = core::vector3d<float>{up.X * 0.5f, up.Y * 0.5f, up.Z * 0.5f};
        }
        if (locked1) {
            core::vector3d<float> fixed = axis1;
            fixed.normalize();
            Position[3] = core::vector3d<float>{fixed.X * 0.5f, fixed.Y * 0.5f, fixed.Z * 0.5f};
            const core::vector3d<float> u2 = Position[3];
            core::vector3d<float> right2{(cz * (-u2.Y)) + (cy * u2.Z), (cx * (-u2.Z)) + (cz * u2.X), (cy * (-u2.X)) + (cx * u2.Y)};
            right2.normalize();
            Position[2] = core::vector3d<float>{right2.X * 0.5f, right2.Y * 0.5f, right2.Z * 0.5f};
        }
    }
}

// 0x6c0238 _ZN6glitch2ps24PSBillboardPositionBakerINS0_9SParticleEE21getPerParticlePositionEPKNS0_16IParticleContextIS2_EEPKS2_ (0x6c063c)
// R = Position[2], U = Position[3]. With the context's align flag (+0x20) U becomes 0.5 * normalise(velocity) and R is rebuilt from it
// and Position[1] (negated normalised cross, times 0.5). With a spin angle the pair is rotated about the (negated when its x is
// positive) normalised cross of U and R by the spin angle (GNPSParticle: the pivot offset 2 * (pivot.x * R + pivot.y * U) is rotated
// with them). The four corners are U-R, -R-U, R-U and U+R, written to Position[4 .. 7].
template <typename P>
void PSBillboardPositionBaker<P>::getPerParticlePosition(const IParticleContext<P>* context, const P* particle) {
    core::vector3d<float> r = Position[2];
    core::vector3d<float> u = Position[3];
    core::quaternion rotation{0.0f, 0.0f, 0.0f, 1.0f};
    if (context->alignToMotion) {
        core::vector3d<float> motion{particle->velocity.X, particle->velocity.Y, particle->velocity.Z};
        motion.normalize();
        u = core::vector3d<float>{motion.X * 0.5f, motion.Y * 0.5f, motion.Z * 0.5f};
        const core::vector3d<float> b = Position[1];
        core::vector3d<float> across{((-u.Y) * b.Z) + (u.Z * b.Y), ((-u.Z) * b.X) + (u.X * b.Z), (b.Y * (-u.X)) + (u.Y * b.X)};
        across.normalize();
        r = core::vector3d<float>{(-across.X) * 0.5f, (-across.Y) * 0.5f, (-across.Z) * 0.5f};
    }
    if (particle->spinAngle != 0.0f) {
        core::vector3d<float> axis{((-r.Y) * u.Z) + (r.Z * u.Y), ((-r.Z) * u.X) + (u.Z * r.X), ((-r.X) * u.Y) + (r.Y * u.X)};
        axis.normalize();
        if (particle->spinAxis.X > 0.0f) {
            axis = core::vector3d<float>{-axis.X, -axis.Y, -axis.Z};
        }
        rotation = core::quaternion::fromAngleAxis(particle->spinAngle, axis);
        if constexpr (std::is_same_v<P, GNPSParticle>) {
            const float pivotX = particle->spinPivot.X;
            const float pivotY = particle->spinPivot.Y;
            Pivot = core::vector3d<float>{((pivotX * r.X) + (pivotY * u.X)) + ((pivotX * r.X) + (pivotY * u.X)),
                                          ((pivotX * r.Y) + (pivotY * u.Y)) + ((pivotX * r.Y) + (pivotY * u.Y)),
                                          ((pivotX * r.Z) + (pivotY * u.Z)) + ((pivotX * r.Z) + (pivotY * u.Z))};
        }
        r = rotation * r;
        u = rotation * u;
        if constexpr (std::is_same_v<P, GNPSParticle>) {
            Pivot = rotation * Pivot;
        }
    }
    Position[4] = core::vector3d<float>{u.X - r.X, u.Y - r.Y, u.Z - r.Z};
    Position[5] = core::vector3d<float>{(-r.X) - u.X, (-r.Y) - u.Y, (-r.Z) - u.Z};
    Position[6] = core::vector3d<float>{r.X - u.X, r.Y - u.Y, r.Z - u.Z};
    Position[7] = core::vector3d<float>{u.X + r.X, u.Y + r.Y, u.Z + r.Z};
}

// 0x6c01d8 _ZN6glitch2ps25PSBillboardTexCoordsBakerINS0_9SParticleEE21getPerParticleTexCoordsEPKNS0_16IParticleContextIS2_EEPKS2_ (empty),
// 0x6c01dc for GNPSParticle: the four corners' (u, v) pairs, (u0, v0), (u0, v1), (u1, v1), (u1, v0), in TexCoords[0 .. 7].
template <typename P>
void PSBillboardTexCoordsBaker<P>::getPerParticleTexCoords(const IParticleContext<P>* /*context*/, const P* particle) {
    if constexpr (std::is_same_v<P, GNPSParticle>) {
        TexCoords[0] = particle->uv[0];
        TexCoords[1] = particle->uv[1];
        TexCoords[2] = particle->uv[0];
        TexCoords[3] = particle->uv[3];
        TexCoords[4] = particle->uv[2];
        TexCoords[5] = particle->uv[3];
        TexCoords[6] = particle->uv[2];
        TexCoords[7] = particle->uv[1];
    } else {
        (void)particle;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// Instances
// ---------------------------------------------------------------------------------------------------------------------

template class PGenerationModel<SParticle>;
template class GNPSGenerationModel<GNPSParticle>;
template class PSizeModel<SParticle>;
template class PColorModel<SParticle>;
template class PEmitterModel<SParticle>;
template class PEmitterModel<GNPSParticle>;
template class PMotionModel<SParticle>;
template class PSpinModel<SParticle>;
template class PLifeModel<SParticle>;
template class GNPSSizeModel<GNPSParticle>;
template class GNPSColorModel<GNPSParticle>;
template class GNPSMotionModel<GNPSParticle>;
template class GNPSSpinModel<GNPSParticle>;
template class GNPSLifeModel<GNPSParticle>;
template class PForcesModel<SParticle>;
template class PForcesModel<GNPSParticle>;
template class PSGenericPositionBaker<SParticle>;
template class PSGenericPositionBaker<GNPSParticle>;
template class PSBillboardPositionBaker<SParticle>;
template class PSBillboardPositionBaker<GNPSParticle>;
template class PSBillboardTexCoordsBaker<SParticle>;
template class PSBillboardTexCoordsBaker<GNPSParticle>;
template class PSBillboardNormalBaker<SParticle>;
template class PSBillboardNormalBaker<GNPSParticle>;
template class PSBillboardColorBaker<SParticle>;
template class PSBillboardColorBaker<GNPSParticle>;

// ---------------------------------------------------------------------------------------------------------------------
// IParticleSystem<P>::init / update (the pipeline both systems share)
// ---------------------------------------------------------------------------------------------------------------------

// 0x64bbe0 _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE4initEv (0x637be4 for GNPSParticle)
// The random seed is restored, both times cleared, and the nine model initialisers run in the order generation, size, colour,
// emitter, motion, forces, spin, life, render data.
template <typename P>
void IParticleSystem<P>::init() {
    random.seed = initialSeed;
    this->previousTime = 0.0f;
    this->currentTime = 0.0f;
    this->initGenerationModel();
    this->initPSizeModel();
    this->initPColorModel();
    this->initPEmitterModel();
    this->initPMotionModel();
    this->initPForcesModel();
    this->initPSpinModel();
    this->initPLifeModel();
    this->initPRenderDataModel();
}

// 0x6532cc _ZN6glitch2ps15IParticleSystemINS0_9SParticleEE6updateEfRNS_5video6SColorE (0x63e82c for GNPSParticle)
// A time earlier than the current one restarts the system (virtual init). The step is the difference of the two times. The
// generation model returns the first new particle; life, colour, size, position, forces, motion, spin and render data are
// initialised for the new range and life is applied to all; particles whose age left [0, life) are partitioned to the tail and cut
// off; then colour, size, forces, motion, spin and render data are applied to the survivors.
template <typename P>
void IParticleSystem<P>::update(float time, video::SColor& color) {
    if (time - this->currentTime < 0.0f) {
        init();
    }
    this->previousTime = this->currentTime;
    this->currentTime = time;
    this->deltaTime = this->currentTime - this->previousTime;
    P* fresh = this->generateParticles();
    P* end = this->particles.data() + this->particles.size();
    P* begin = this->particles.data();
    this->initPLife(fresh, end);
    this->initPColor(fresh, end);
    this->initPSize(fresh, end);
    this->initPPosition(fresh, end);
    this->initPForces(fresh, end);
    this->initPMotion(fresh, end);
    this->initPSpin(fresh, end);
    this->initPRenderData(fresh, end);
    this->applyPLife(begin, end);

    auto alive = [](const P& particle) { return particle.age < particle.life && particle.age >= 0.0f; };
    P* low = this->particles.data();
    P* high = this->particles.data() + this->particles.size();
    std::ptrdiff_t remaining = static_cast<std::ptrdiff_t>(this->particles.size());
    if (high != low) {
        do {
            bool finished = false;
            while (alive(*low)) {
                ++low;
                if (high == low) {
                    finished = true;
                    break;
                }
            }
            if (finished) {
                break;
            }
            do {
                --high;
                --remaining;
            } while (high > low && !alive(*high));
            if (low == high) {
                break;
            }
            P* swapped = low;
            ++low;
            std::swap(*swapped, *high);
        } while (high != low);
    }
    this->particles.resize(static_cast<std::size_t>(remaining), P());
    P* survivorsBegin = this->particles.data();
    P* survivorsEnd = this->particles.data() + this->particles.size();
    this->applyPColor(survivorsBegin, survivorsEnd, color);
    this->applyPSize(survivorsBegin, survivorsEnd);
    this->applyPForces(survivorsBegin, survivorsEnd);
    this->applyPMotion(survivorsBegin, survivorsEnd);
    this->applyPSpin(survivorsBegin, survivorsEnd);
    this->applyPRenderData(survivorsBegin, survivorsEnd);
}

template class IParticleSystem<SParticle>;
template class IParticleSystem<GNPSParticle>;

template class PRenderDataBillboardModel<SParticle, PSNullShaderParametersBaker, PSBillboardColorBaker<SParticle>,
                                         PSBillboardNormalBaker<SParticle>, PSBillboardPositionBaker<SParticle>,
                                         PSBillboardTexCoordsBaker<SParticle>>;
template class PRenderDataBillboardModel<SParticle, PSNullShaderParametersBaker, PSNullColorBaker<SParticle>,
                                         PSGenericNormalBaker<SParticle>, PSGenericPositionBaker<SParticle>,
                                         PSGenericTexCoordsBaker<SParticle>>;
template class PRenderDataBillboardModel<GNPSParticle, PSNullShaderParametersBaker, PSBillboardColorBaker<GNPSParticle>,
                                         PSBillboardNormalBaker<GNPSParticle>, PSBillboardPositionBaker<GNPSParticle>,
                                         PSBillboardTexCoordsBaker<GNPSParticle>>;
template class PRenderDataBillboardModel<GNPSParticle, PSNullShaderParametersBaker, PSNullColorBaker<GNPSParticle>,
                                         PSGenericNormalBaker<GNPSParticle>, PSGenericPositionBaker<GNPSParticle>,
                                         PSGenericTexCoordsBaker<GNPSParticle>>;

// The setParameter instances the res3 pass left out (src/ps/IParticleContext.cpp has the others). The two SParticle ones of the
// original are compiler clones with the parameter name folded in (".clone.7" is "OutIndexBuffer", ".clone.8" is "RenderMesh"): the
// instances here take the name like every other instance, which is the same lookup.
template void IParticleContext<SParticle>::setParameter<boost::intrusive_ptr<video::IBuffer>>(const char*, boost::intrusive_ptr<video::IBuffer>);
template void IParticleContext<SParticle>::setParameter<scene::CMeshBuffer*>(const char*, scene::CMeshBuffer*);
template void IParticleContext<GNPSParticle>::setParameter<collada::SAnimation*>(const char*, collada::SAnimation*);
template void IParticleContext<GNPSParticle>::setParameter<float>(const char*, float);
template void IParticleContext<GNPSParticle>::setParameter<unsigned char>(const char*, unsigned char);
template void IParticleContext<GNPSParticle>::setParameter<scene::CMeshBuffer*>(const char*, scene::CMeshBuffer*);

}  // namespace glitch::ps
