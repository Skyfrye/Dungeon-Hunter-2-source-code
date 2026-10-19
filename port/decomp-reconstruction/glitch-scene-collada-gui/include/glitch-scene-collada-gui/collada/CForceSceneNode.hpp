// glitch::collada::particle_system::CForceSceneNode and its three kinds CGravityForceSceneNode, CWindForceSceneNode and
// CDeflectorForceSceneNode: the scene nodes that carry a particle force (tag 'daef'). Canonical header of residue pass ob; it replaces
// the stand-in functions of recon/slice_17, slice_18, slice_32 and recon/v2/wave_07 and the address-named stubs 0x62fee4 .. 0x62fef8
// of generated_stubs.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x630f6c (CForceSceneNode), 0x631274 (inline in
// createParticleSystemGravityForce), 0x631168 (wind), 0x631050 (deflector); decomp_vtable.py):
//   CForceSceneNode derives from scene::ISceneNode (0x130 bytes) and adds
//     +0x130 the uid (the empty-string constant at 0x9f6f08)
//     +0x134 CColladaDatabase (record, factory; a use is taken on the record)
//     +0x13c SForce* the record the node was built from
//   Each kind adds the parameter struct of its force from +0x140 (the struct the force hands out to the particle system; it is bound,
//   not copied, see ps/PForce.hpp): +0x140 the pointer to the node's absolute transformation (node +0x24), then the values of the
//   SForce record. The virtual base glitch::IReferenceCounted follows (+0x158 gravity, +0x164 wind, +0x168 deflector; the objects
//   are 0x158, 0x164 and 0x168 bytes).
//   Slots: getBoundingBox (K 0x30, 0x630ee8: a static empty box), getType (K 0xbc, 0x62feec: 'daef'), render (K 0x1c, 0x62fef8:
//   empty), serializeAttributes / deserializeAttributes (K 0x00 / 0x04, per kind) and the two binders K 0xf4 (bind to the old
//   particle system, 0x62fee4 empty in the base) and K 0xf8 (bind to the new one, 0x62fee8 empty in the base).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-scene-collada-gui/ps/PForce.hpp"
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"

namespace glitch::collada {

class CParticleSystemSceneNode;
class CGlitchNewParticleSystemSceneNode;

namespace particle_system {

class CForceSceneNode : public scene::ISceneNode {
public:
    // 0x630f6c (C2; the kind constructors call it): ISceneNode(-1, origin, identity rotation, unit scale), the database copied (a use on
    // the record), the uid set to the empty string and the record stored.
    CForceSceneNode(const CColladaDatabase& database, const SForce& force);
    // 0x630768 (D1), 0x63081c (D2), D0 0x6307e0 skipped: drops the database handle; ISceneNode's destructor follows.
    ~CForceSceneNode() override;

    // K 0x30, 0x630ee8: a function-local static box (-1, -1, -1) .. (1, 1, 1).
    const core::aabbox3d<float>& getBoundingBox() const override;
    // K 0xbc, 0x62feec: 'daef'.
    scene::E_SCENE_NODE_TYPE getType() const override;
    // K 0x1c, 0x62fef8: empty.
    void render(void* renderContext) override;
    // K 0xf4 / 0xf8, 0x62fee4 / 0x62fee8: empty here; the kinds hand their force to the system.
    virtual void bind(CParticleSystemSceneNode* particleSystem);
    virtual void bind(CGlitchNewParticleSystemSceneNode* particleSystem);

    const char* uid = "";            // +0x130
    CColladaDatabase database;       // +0x134
    const SForce* force = nullptr;   // +0x13c
};

// 0x631274 (inline in CColladaFactory::createParticleSystemGravityForce). The record's values: strength, decay, type.
class CGravityForceSceneNode : public CForceSceneNode {
public:
    CGravityForceSceneNode(const CColladaDatabase& database, const SForce& force);
    // 0x630940 (D1), D0 0x632a88 skipped.
    ~CGravityForceSceneNode() override;
    // K 0x00, 0x6303f0: ISceneNode's attributes, then "decay", "strength" (floats) and "type" (int).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // K 0x04, 0x630648: reads "decay" and "strength" back ("type" is not read).
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // K 0xf8 / 0xf4, 0x630170 / 0x6301e8: IParticleSystem<GNPSParticle / SParticle>::bindForce<PGravity>(parameters) on the node's
    // system (+0x178 of the old node, +0x178 of the new one).
    void bind(CParticleSystemSceneNode* particleSystem) override;
    void bind(CGlitchNewParticleSystemSceneNode* particleSystem) override;

    ps::PGravity::parameters_type parameters;  // +0x140 matrix, +0x144 strength, +0x148 decay, +0x14c type
};

// 0x631168. The record's values: strength, decay, type, turbulence, frequency, scale.
class CWindForceSceneNode : public CForceSceneNode {
public:
    CWindForceSceneNode(const CColladaDatabase& database, const SForce& force);
    // 0x6308d4 (D1), D0 0x632a14 skipped.
    ~CWindForceSceneNode() override;
    // K 0x00, 0x630318: "strength", "decay", "turbulence", "frequency", "scale" (floats).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // K 0x04, 0x630584.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // 0x630080 / 0x6300f8: bindForce<PWind>.
    void bind(CParticleSystemSceneNode* particleSystem) override;
    void bind(CGlitchNewParticleSystemSceneNode* particleSystem) override;

    ps::PWind::parameters_type parameters;  // +0x140 matrix, +0x144 strength, +0x148 decay, +0x14c turbulence, +0x150 frequency, +0x154 scale, +0x158 type
};

// 0x631050. The record's values: bounce, variation, chaos, friction, inheritVelocity, width, length.
class CDeflectorForceSceneNode : public CForceSceneNode {
public:
    CDeflectorForceSceneNode(const CColladaDatabase& database, const SForce& force);
    // 0x630868 (D1), D0 0x632afc skipped.
    ~CDeflectorForceSceneNode() override;
    // K 0x00, 0x6301f8: "bounce", "variation", "chaos", "friction", "inheritVelocity", "width", "length" (floats).
    void serializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) const override;
    // K 0x04, 0x630480.
    void deserializeAttributes(io::IAttributes* attributes, io::SAttributeReadWriteOptions* options) override;
    // 0x634b20 / 0x634a88: bindForce<PDeflector>.
    void bind(CParticleSystemSceneNode* particleSystem) override;
    void bind(CGlitchNewParticleSystemSceneNode* particleSystem) override;

    ps::PDeflector::parameters_type parameters;  // +0x140 matrix, +0x144 bounce, +0x148 variation, +0x14c chaos, +0x150 friction, +0x154 inheritVelocity, +0x158 width, +0x15c length
};

}  // namespace particle_system
}  // namespace glitch::collada
