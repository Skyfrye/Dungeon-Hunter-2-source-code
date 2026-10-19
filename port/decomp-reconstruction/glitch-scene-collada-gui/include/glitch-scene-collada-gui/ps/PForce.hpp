// glitch::ps forces: PForce<P> (the base the forces model keeps in its list), PForceProxy<P, Force> (the 16-byte object
// bindForce hangs a force's parameters on), the three forces PWind, PGravity and PDeflector, and the two functors the forces
// model uses (SortPriorityForce, CompareForce). Canonical header (residue pass ob); it replaces the recon_17 / recon_18 /
// recon_slice_07 stand-ins of the same classes.
//
// Evidence (libDungeonHunter2.so, ARM 32 bit):
//   PForce<P> (vtable 0x97b378 family): +0x00 vptr (slot +0 / +4 the two destructors 0x62ff40 .. 0x6306e8, slot +8 apply(first, last,
//   context)), +0x04 the key the proxy was bound with (the address of the parameters struct: bindForce 0x630018 stores `a2` there),
//   +0x08 the priority (0 at bind time; SortPriorityForce orders by it: __push_heap 0x64ca74 moves a parent down while
//   `parent->+8 < value->+8`), +0x0c for the proxy: the force object itself (a PWind / PGravity is one word, the pointer to its
//   parameters; bindForce stores `a2` there as well). CompareForce<P> (find_if 0x64c518) holds the force being removed and matches
//   the list entry whose +0x04 key is equal.
//   The parameters are not copied: the force scene nodes (collada::particle_system::CWindForceSceneNode and the others) own the
//   struct at node +0x140 (0x631168 ctor: +0x140 the pointer to the node's absolute matrix at node +0x24, then the values of the
//   SForce record) and hand its address to bind().
#pragma once

#include <algorithm>
#include <cstdint>

#include "glitch-scene-collada-gui/ps/IParticleSystem.hpp"

namespace glitch::ps {

// 0x62ff40 / 0x62ff44 (D1), 0x6306e8 / 0x6306c0 (D0).
template <typename P>
class PForce {
public:
    virtual ~PForce() = default;
    virtual void apply(P* first, P* last, IParticleContext<P>* context) = 0;  // +0x08

    void* key = nullptr;           // +0x04
    std::int32_t priority = 0;     // +0x08
};

// The comparator of std::sort over the force list (the heap code 0x64ca74 shows `a->priority < b->priority`).
template <typename P>
struct SortPriorityForce {
    bool operator()(const PForce<P>* a, const PForce<P>* b) const { return a->priority < b->priority; }
};

// The predicate of std::find_if in removePForce(PForce*): the entries whose key equals the key of the force to remove.
template <typename P>
struct CompareForce {
    explicit CompareForce(const PForce<P>* force) : force(force) {}
    bool operator()(const PForce<P>* other) const { return other->key == force->key; }
    const PForce<P>* force;
};

// PWind: pushes the particles' positions along a direction (the node's local z axis) or towards the node (radial), with an
// exponential fall-off and an optional random turbulence. 0x632b70 (GNPSParticle) / 0x632f6c (SParticle).
class PWind {
public:
    struct parameters_type {
        const core::CMatrix4<float>* matrix = nullptr;  // +0x00 the node's absolute transformation (node +0x24)
        float strength = 0.0f;                          // +0x04 (scaled by 1000 in apply)
        float attenuation = 0.0f;                       // +0x08 exponential fall-off; 0 = none
        float turbulence = 0.0f;                        // +0x0c
        float turbulenceFrequency = 0.0f;               // +0x10
        float unk_14 = 0.0f;                            // +0x14 never read by apply
        std::int32_t radial = 0;                        // +0x18 non-zero: towards the node instead of along its z axis
    };

    explicit PWind(parameters_type& parameters) : params(&parameters) {}

    template <typename P>
    void apply(typename IParticleContext<P>::ParticleItt first, typename IParticleContext<P>::ParticleItt last,
               IParticleContext<P>* context);

    parameters_type* params;  // +0x00
};

// PGravity: accelerates the particles' velocities the same way. 0x633368 (GNPSParticle) / 0x633624 (SParticle).
class PGravity {
public:
    struct parameters_type {
        const core::CMatrix4<float>* matrix = nullptr;  // +0x00
        float strength = 0.0f;                          // +0x04 (scaled by 1000 in apply)
        float attenuation = 0.0f;                       // +0x08
        std::int32_t radial = 0;                        // +0x0c
    };

    explicit PGravity(parameters_type& parameters) : params(&parameters) {}

    template <typename P>
    void apply(typename IParticleContext<P>::ParticleItt first, typename IParticleContext<P>::ParticleItt last,
               IParticleContext<P>* context);

    parameters_type* params;  // +0x00
};

// PDeflector: reflects the particles that cross the node's rectangle during the step. 0x6338e0 (SParticle) / 0x636e28 (GNPSParticle).
class PDeflector {
public:
    // The values of the SForce record, in the order the force node copies them (0x631050: node +0x144 .. +0x15c).
    struct Parameters {
        const core::CMatrix4<float>* matrix = nullptr;  // +0x00 the node's absolute transformation
        float bounce = 0.0f;                            // +0x04
        float bounceVariation = 0.0f;                   // +0x08
        float scatter = 0.0f;                           // +0x0c randomises the outgoing direction (1.0 = 180 degrees)
        float friction = 0.0f;                          // +0x10 GetFrictionCoefficient's coefficient
        float cohesion = 0.0f;                          // +0x14 pulls the particle towards the rectangle point it crossed
        float lengthScale = 0.0f;                       // +0x18 scales the rectangle along the node's x axis
        float widthScale = 0.0f;                        // +0x1c scales the rectangle along the node's y axis
    };
    using parameters_type = Parameters;

    // 0x6349a0: stores the parameters, builds an identity matrix, then copies the node's matrix (0x41 bytes: 16 floats and the flag).
    explicit PDeflector(Parameters& parameters);

    // 0x630abc: the share of the speed that survives the contact; `rate` is the time left in the step.
    float GetFrictionCoefficient(float coefficient, float speed, float scale, float rate);

    template <typename P>
    void apply(typename IParticleContext<P>::ParticleItt first, typename IParticleContext<P>::ParticleItt last,
               IParticleContext<P>* context);

    Parameters* params;                        // +0x00
    core::CMatrix4<float> previousMatrix;      // +0x04 .. +0x44 the node's matrix as it was at the end of the last step
};

// 0x62ff48 .. 0x630738 (destructors), 0x632f64 / 0x633360 / 0x63361c / 0x6338d8 / 0x634518 / 0x637a60 (apply).
template <typename P, typename Force>
class PForceProxy : public PForce<P> {
public:
    explicit PForceProxy(typename Force::parameters_type& parameters) : force(parameters) {
        this->key = &parameters;
        this->priority = 0;
    }
    ~PForceProxy() override = default;
    void apply(P* first, P* last, IParticleContext<P>* context) override { force.template apply<P>(first, last, context); }

    Force force;  // +0x0c
};

// 0x630018 .. 0x630180, 0x634a00, 0x634a98: allocates the proxy, files it with the forces model (virtual-base slot +88) and returns
// that slot's result (the new number of forces).
template <typename P>
template <typename Force>
int IParticleSystem<P>::bindForce(typename Force::parameters_type& parameters) {
    auto* proxy = new PForceProxy<P, Force>(parameters);
    return this->addPForce(proxy);
}

}  // namespace glitch::ps
