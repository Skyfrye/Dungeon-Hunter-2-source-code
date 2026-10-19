// Bodies of the particle forces (ps/PForce.hpp): PWind, PGravity and PDeflector apply<P> for both particle types, the PDeflector
// constructor and friction coefficient, and the bindForce instances. The two particle types share every body (the stride is the
// only difference between the listings), so each body is written once as a template over the particle record.
#include "glitch-scene-collada-gui/ps/PForce.hpp"

#include <cmath>
#include <cstring>

#include "vendor-lua/dh2_rand48.hpp"

namespace glitch::ps {

namespace {

// lrand48() scaled into [0, 1): `(float)r * 4.6566e-10`, both stages rounded to float as the listing's casts show.
float unitFromDraw(long draw) {
    return static_cast<float>(static_cast<double>(static_cast<float>(draw)) * 4.6566e-10);
}

}  // namespace

// ---------------------------------------------------------------------------------------------------------------------
// PWind
// ---------------------------------------------------------------------------------------------------------------------

// 0x632b70 _ZN6glitch2ps5PWind5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// 0x632f6c _ZN6glitch2ps5PWind5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// The push on a particle is `strength * 1000 * exp(-attenuation * distance) * dt` along a direction: with the radial flag the direction
// runs from the particle to the node's position (matrix elements 12..14) and the distance is its length; without it the direction is
// the node's z axis (elements 8..10, normalised; the matrix's identity flag is cleared as a side effect) and the distance is the
// particle's absolute distance from the node's plane. With turbulence above zero three lrand48 draws add
// `turbulence * (frequency * dt) * draw` to the push. The particle's POSITION moves by `dt * push`.
template <typename P>
void PWind::apply(typename IParticleContext<P>::ParticleItt first, typename IParticleContext<P>::ParticleItt last,
                  IParticleContext<P>* context) {
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    const parameters_type* p = params;
    const float strength = p->strength * 1000.0f;
    const std::int32_t radial = p->radial;
    const core::CMatrix4<float>* matrix = p->matrix;
    const float attenuation = p->attenuation;
    const float dt = context->deltaTime;
    const float turbulence = p->turbulence;
    const float turbulenceFrequency = p->turbulenceFrequency;
    if (first == last) {
        return;
    }
    const bool turbulent = turbulence > 0.0f;
    for (P* i = first; i != last; ++i) {
        float scale;
        float distance = 0.0f;
        bool attenuate = false;
        if (radial) {
            y = matrix->M[13] - i->position.Y;
            z = matrix->M[14] - i->position.Z;
            x = matrix->M[12] - i->position.X;
            const float length = static_cast<float>(std::sqrt(static_cast<double>(((x * x) + (y * y)) + (z * z))));
            distance = length;
            if (length != 0.0f) {
                x = x * (1.0f / length);
                y = y * (1.0f / length);
                z = z * (1.0f / length);
            }
            attenuate = attenuation > 0.0f;
        } else {
            x = matrix->M[8];
            y = matrix->M[9];
            z = matrix->M[10];
            matrix->flag = false;
            core::vector3d<float> direction{x, y, z};
            direction.normalize();
            x = direction.X;
            y = direction.Y;
            z = direction.Z;
            if (attenuation > 0.0f) {
                distance = static_cast<float>(std::fabs(static_cast<double>(
                    (((i->position.X - matrix->M[12]) * x) + ((i->position.Y - matrix->M[13]) * y)) +
                    ((i->position.Z - matrix->M[14]) * z))));
                attenuate = true;
            }
        }
        scale = attenuate ? strength * std::exp(-attenuation * distance) : strength;
        float pushX = (scale * dt) * x;
        float pushY = (scale * dt) * y;
        float pushZ = (scale * dt) * z;
        if (turbulent) {
            const float r1 = unitFromDraw(dh2::rand48_next());
            const float r2 = unitFromDraw(dh2::rand48_next());
            const float r3 = unitFromDraw(dh2::rand48_next());
            pushX = (turbulence * ((turbulenceFrequency * dt) * r1)) + pushX;
            pushY = (turbulence * ((turbulenceFrequency * dt) * r2)) + pushY;
            pushZ = (turbulence * ((turbulenceFrequency * dt) * r3)) + pushZ;
        }
        i->position.X = i->position.X + (dt * pushX);
        i->position.Y = i->position.Y + (dt * pushY);
        i->position.Z = i->position.Z + (pushZ * dt);
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PGravity
// ---------------------------------------------------------------------------------------------------------------------

// 0x633368 _ZN6glitch2ps8PGravity5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// 0x633624 _ZN6glitch2ps8PGravity5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// The same direction and fall-off as PWind (no turbulence), but the VELOCITY of the particle gains `strength * 1000 * falloff * dt`.
template <typename P>
void PGravity::apply(typename IParticleContext<P>::ParticleItt first, typename IParticleContext<P>::ParticleItt last,
                     IParticleContext<P>* context) {
    float x = 0.0f;
    float y = 0.0f;
    float z = 0.0f;
    const parameters_type* p = params;
    const float strength = p->strength * 1000.0f;
    const std::int32_t radial = p->radial;
    const float dt = context->deltaTime;
    const core::CMatrix4<float>* matrix = p->matrix;
    const float attenuation = p->attenuation;
    if (first == last) {
        return;
    }
    for (P* i = first; i != last; ++i) {
        float distance = 0.0f;
        bool attenuate = false;
        if (radial) {
            y = matrix->M[13] - i->position.Y;
            z = matrix->M[14] - i->position.Z;
            x = matrix->M[12] - i->position.X;
            const float length = static_cast<float>(std::sqrt(static_cast<double>(((x * x) + (y * y)) + (z * z))));
            distance = length;
            if (length != 0.0f) {
                x = x * (1.0f / length);
                y = y * (1.0f / length);
                z = z * (1.0f / length);
            }
            attenuate = attenuation > 0.0f;
        } else {
            x = matrix->M[8];
            y = matrix->M[9];
            z = matrix->M[10];
            matrix->flag = false;
            core::vector3d<float> direction{x, y, z};
            direction.normalize();
            x = direction.X;
            y = direction.Y;
            z = direction.Z;
            if (attenuation > 0.0f) {
                distance = static_cast<float>(std::fabs(static_cast<double>(
                    (((i->position.X - matrix->M[12]) * x) + ((i->position.Y - matrix->M[13]) * y)) +
                    ((i->position.Z - matrix->M[14]) * z))));
                attenuate = true;
            }
        }
        const float scale = attenuate ? strength * std::exp(-attenuation * distance) : strength;
        x = (scale * dt) * x;
        y = y * (scale * dt);
        z = z * (scale * dt);
        i->velocity.X = i->velocity.X + x;
        i->velocity.Y = i->velocity.Y + y;
        i->velocity.Z = i->velocity.Z + z;
    }
}

// ---------------------------------------------------------------------------------------------------------------------
// PDeflector
// ---------------------------------------------------------------------------------------------------------------------

// 0x6349a0 _ZN6glitch2ps10PDeflectorC1ERNS0_10PDeflector10ParametersE (C2 alias)
// Stores the parameters pointer, clears the cached matrix and makes it an identity (flag set), then copies the node's matrix over it
// (0x41 bytes: the sixteen floats and the flag).
PDeflector::PDeflector(Parameters& parameters) : params(&parameters), previousMatrix(core::CMatrix4<float>::EM4CONST_IDENTITY) {
    previousMatrix = *parameters.matrix;
}

// 0x630abc _ZN6glitch2ps10PDeflector22GetFrictionCoefficientEffff
float PDeflector::GetFrictionCoefficient(float coefficient, float speed, float scale, float rate) {
    if (coefficient == 0.0f) {
        return 1.0f;
    }
    if (coefficient == 1.0f) {
        return 0.0f;
    }
    if (static_cast<float>(static_cast<double>(scale) * 0.07) <= speed) {
        return static_cast<float>(1.0 - static_cast<double>(coefficient));
    }
    if (static_cast<float>(static_cast<double>(scale) * 0.035) > speed) {
        return std::exp(rate * std::log(static_cast<float>(1.0 - static_cast<double>(coefficient))));
    }
    const float t = static_cast<float>(
        static_cast<double>(static_cast<float>(static_cast<double>(speed / scale) / 0.035)) - 1.0);
    const float oneMinus = static_cast<float>(1.0 - static_cast<double>(coefficient));
    const float e = rate * std::log(static_cast<float>(1.0 - static_cast<double>(coefficient)));
    return (oneMinus * t) + (static_cast<float>(1.0 - static_cast<double>(t)) * std::exp(e));
}

// 0x6338e0 _ZN6glitch2ps10PDeflector5applyINS0_9SParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// 0x636e28 _ZN6glitch2ps10PDeflector5applyINS0_12GNPSParticleEEEvNS0_16IParticleContextIT_E11ParticleIttES7_PS6_
// The node's rectangle (its position M[12..14], half extents |M0..2| * lengthScale / 2 along x and |M4..6| * widthScale / 2 along the
// negated y axis, normal M[8..10]) is tested against the segment each particle travels during the step (position to position +
// dt * velocity): when the segment crosses the plane inside the rectangle the velocity is reflected (the normal part scaled by
// `bounce + random variation`, the tangential part by the friction coefficient), optionally scattered (random rotations of up to
// scatter * 180 degrees, flipped back to the front side when it ends up behind), pulled by `cohesion` towards the point of the
// rectangle (in the PREVIOUS matrix) that was hit, and the particle is placed on the hit point plus 0.3 along the normal. At the end
// the node's matrix is copied to previousMatrix and its identity flag is cleared.
template <typename P>
void PDeflector::apply(typename IParticleContext<P>::ParticleItt first, typename IParticleContext<P>::ParticleItt last,
                       IParticleContext<P>* context) {
    const Parameters* p = params;
    const core::CMatrix4<float>* matrix = p->matrix;
    const float* m = matrix->M;
    const float cohesion = p->cohesion;
    const float bounce = p->bounce;
    const float bounceVariation = p->bounceVariation;
    const float scatter = p->scatter;
    const float friction = p->friction;

    const float negYx = -m[4];
    const float negYy = -m[5];
    const float negYz = -m[6];
    const float xAxisX = m[0];
    const float xAxisY = m[1];
    const float xAxisZ = m[2];
    const float planeX = m[12];
    const float planeY = m[13];
    const float planeZ = m[14];
    matrix->flag = false;
    core::vector3d<float> normal{m[8], m[9], m[10]};
    normal.normalize();

    const float yAxisLength = static_cast<float>(std::sqrt(static_cast<double>(((negYx * negYx) + (negYy * negYy)) + (negYz * negYz))));
    const float halfY = (yAxisLength * p->widthScale) * 0.5f;
    const float xAxisLength = static_cast<float>(std::sqrt(static_cast<double>(((xAxisX * xAxisX) + (xAxisY * xAxisY)) + (xAxisZ * xAxisZ))));
    const float halfX = (xAxisLength * p->lengthScale) * 0.5f;

    const float* pm = previousMatrix.M;
    const float prevNegYx = -pm[4];
    const float prevNegYy = -pm[5];
    const float prevNegYz = -pm[6];
    previousMatrix.flag = false;
    const float bounceRange = bounce * bounceVariation;
    const float prevPlaneX = pm[12];
    const float prevPlaneY = pm[13];
    const float prevPlaneZ = pm[14];
    const float prevXx = pm[0];
    const float prevXy = pm[1];
    const float prevXz = pm[2];

    const float dt = context->deltaTime;
    for (P* i = first; i != last; ++i) {
        float vx = i->velocity.X;
        float vy = i->velocity.Y;
        float vz = i->velocity.Z;
        const float stepZ = dt * vz;
        const float along = (((dt * vx) * normal.X) + ((dt * vy) * normal.Y)) + ((dt * vz) * normal.Z);
        if (along == 0.0f) {
            continue;
        }
        const float py = i->position.Y;
        const float t = ((normal.X * (planeX - i->position.X) + normal.Y * (planeY - py)) + normal.Z * (planeZ - i->position.Z)) / along;
        if (!(t > 0.0f && t <= 1.0f)) {
            continue;
        }
        const float hx = (i->position.X + (t * (dt * vx))) - planeX;
        const float hy = (py + (t * (dt * vy))) - planeY;
        const float hz = (i->position.Z + (t * stepZ)) - planeZ;
        const float coordY = (((negYx * hx) + (negYy * hy)) + (negYz * hz)) / halfY;
        if (!(coordY <= 1.0f && coordY >= -1.0f)) {
            continue;
        }
        const float coordX = (((xAxisX * hx) + (xAxisY * hy)) + (xAxisZ * hz)) / halfX;
        if (!(coordX <= 1.0f && coordX >= -1.0f)) {
            continue;
        }
        PSRandom* random = context->getPRand();
        float variation;
        if (bounceRange == 0.0f) {
            variation = 0.0f;
        } else {
            const float draw = static_cast<float>(random->Rand());
            variation = (bounceRange * draw) + (bounceRange * -0.5f);
        }
        const float nx = normal.X;
        const float ny = normal.Y;
        const float nz = normal.Z;
        const float negDot = -((((nx * vx) + (ny * vy)) + (nz * vz)));
        const float tangentX = vx + (negDot * nx);
        const float tangentY = vy + (negDot * ny);
        const float tangentZ = vz + (negDot * nz);
        const float normalSpeed = negDot * (variation + bounce);
        const float tangentSpeed = static_cast<float>(std::sqrt(static_cast<double>(((tangentX * tangentX) + (tangentY * tangentY)) + (tangentZ * tangentZ))));
        const float coefficient = GetFrictionCoefficient(friction, normalSpeed, tangentSpeed, static_cast<float>(1.0 - static_cast<double>(t)) * dt);
        vx = (normalSpeed * nx) + (coefficient * tangentX);
        vy = (normalSpeed * ny) + (coefficient * tangentY);
        vz = (normalSpeed * nz) + (coefficient * tangentZ);
        if (scatter > 0.0f) {
            const float range = (scatter * 180.0f);
            const float low = range * -0.5f;
            core::vector3d<float> velocity{vx, vy, vz};
            const core::vector3d<float> zero{0.0f, 0.0f, 0.0f};
            velocity.rotateXYBy(static_cast<double>((range * static_cast<float>(random->Rand())) + low), zero);
            velocity.rotateYZBy(static_cast<double>(low + (range * static_cast<float>(random->Rand()))), zero);
            velocity.rotateXZBy(static_cast<double>(low + (range * static_cast<float>(random->Rand()))), zero);
            vx = velocity.X;
            vy = velocity.Y;
            vz = velocity.Z;
            const float facing = ((nx * vx) + (ny * vy)) + (nz * vz);
            if (facing < 0.0f) {
                vx = vx + ((facing * -2.0f) * nx);
                vy = vy + ((facing * -2.0f) * ny);
                vz = vz + ((facing * -2.0f) * nz);
            }
        }
        const float hitX = planeX + hx;
        const float hitY = planeY + hy;
        const float hitZ = planeZ + hz;
        if (cohesion > 0.0f) {
            vx = vx + (cohesion * (hitX - ((prevPlaneX + (prevNegYx * (coordY * halfY))) + (prevXx * (coordX * halfX)))));
            vy = vy + (cohesion * (hitY - ((prevPlaneY + (prevNegYy * (coordY * halfY))) + (prevXy * (coordX * halfX)))));
            vz = vz + (cohesion * (hitZ - ((prevPlaneZ + (prevNegYz * (coordY * halfY))) + (prevXz * (coordX * halfX)))));
        }
        i->position.X = hitX + (nx * 0.3f);
        i->position.Y = hitY + (ny * 0.3f);
        i->position.Z = hitZ + (nz * 0.3f);
        i->velocity.X = vx;
        i->velocity.Y = vy;
        i->velocity.Z = vz;
    }
    previousMatrix = *p->matrix;
}

// ---------------------------------------------------------------------------------------------------------------------
// Instances
// ---------------------------------------------------------------------------------------------------------------------

template void PWind::apply<GNPSParticle>(GNPSParticle*, GNPSParticle*, IParticleContext<GNPSParticle>*);
template void PWind::apply<SParticle>(SParticle*, SParticle*, IParticleContext<SParticle>*);
template void PGravity::apply<GNPSParticle>(GNPSParticle*, GNPSParticle*, IParticleContext<GNPSParticle>*);
template void PGravity::apply<SParticle>(SParticle*, SParticle*, IParticleContext<SParticle>*);
template void PDeflector::apply<GNPSParticle>(GNPSParticle*, GNPSParticle*, IParticleContext<GNPSParticle>*);
template void PDeflector::apply<SParticle>(SParticle*, SParticle*, IParticleContext<SParticle>*);

// 0x630018 / 0x630090 / 0x630108 / 0x630180 / 0x634a00 / 0x634a98
template int IParticleSystem<GNPSParticle>::bindForce<PWind>(PWind::parameters_type&);
template int IParticleSystem<SParticle>::bindForce<PWind>(PWind::parameters_type&);
template int IParticleSystem<GNPSParticle>::bindForce<PGravity>(PGravity::parameters_type&);
template int IParticleSystem<SParticle>::bindForce<PGravity>(PGravity::parameters_type&);
template int IParticleSystem<GNPSParticle>::bindForce<PDeflector>(PDeflector::parameters_type&);
template int IParticleSystem<SParticle>::bindForce<PDeflector>(PDeflector::parameters_type&);

// The proxies (0x62ff48 .. 0x630738 destructors, 0x632f64 .. 0x637a60 apply).
template class PForceProxy<GNPSParticle, PWind>;
template class PForceProxy<SParticle, PWind>;
template class PForceProxy<GNPSParticle, PGravity>;
template class PForceProxy<SParticle, PGravity>;
template class PForceProxy<GNPSParticle, PDeflector>;
template class PForceProxy<SParticle, PDeflector>;
template class PForce<GNPSParticle>;
template class PForce<SParticle>;

}  // namespace glitch::ps
