// Slice 19 reconstruction. Functions outside the reconstructed set are listed
// in ledger_parts/slice_19.csv with the reason they are not rebuilt.
#include "glitch-scene-collada-gui/recon/slice_19.hpp"

namespace glitch::collada::recon_19 {

RefCounted* CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer = nullptr;
RefCounted* CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer = nullptr;
int CGlitchNewParticleSystemSceneNode::BillboardMaxParticles = 0;

// 0x63dcc0 _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode18deleteSharedBufferEv
void CGlitchNewParticleSystemSceneNode::deleteSharedBuffer() {
    RefCounted* indexBuffer = OutBillboardIndexBuffer;
    OutBillboardIndexBuffer = nullptr;
    dropRef(indexBuffer);

    RefCounted* meshBuffer = BillboardMeshBuffer;
    BillboardMeshBuffer = nullptr;
    dropRef(meshBuffer);

    BillboardMaxParticles = 0;
}

// 0x63ec44 _ZN6glitch2ps12PForcesModelINS0_12GNPSParticleEE9addPForceEPNS0_6PForceIS2_EE
int PForcesModel::addPForce(void* force) {
    forces.push_back(force);
    dirty = true;
    return static_cast<int>(forces.size());
}

// 0x63f07c _ZN6glitch7collada33CGlitchNewParticleSystemSceneNode26getParticleSystemParameterEPKc
// getParticleSystemParameter: the hashed-name lookup used by the setParameter rows.
void* getParameterSlot(ParameterTable& table, std::uint32_t key) {
    return table.slots[key];
}

}  // namespace glitch::collada::recon_19
