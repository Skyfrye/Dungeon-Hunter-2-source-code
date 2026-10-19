// Slice 19 tests: deleteSharedBuffer, addPForce, parameter table slots.
#include "glitch-scene-collada-gui/recon/slice_19.hpp"

#include <cstdio>

namespace r19 = glitch::collada::recon_19;

namespace {

int failures = 0;

void check(bool condition, const char* what) {
    if (!condition) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++failures;
    }
}

struct Probe : r19::RefCounted {
    static int destroyed;
    ~Probe() override { ++destroyed; }
};
int Probe::destroyed = 0;

}  // namespace

int main() {
    // deleteSharedBuffer drops both buffers and clears the statics.
    {
        Probe::destroyed = 0;
        auto* index = new Probe();
        auto* mesh = new Probe();
        r19::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer = index;
        r19::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer = mesh;
        r19::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles = 12;
        r19::CGlitchNewParticleSystemSceneNode::deleteSharedBuffer();
        check(r19::CGlitchNewParticleSystemSceneNode::OutBillboardIndexBuffer == nullptr, "index buffer cleared");
        check(r19::CGlitchNewParticleSystemSceneNode::BillboardMeshBuffer == nullptr, "mesh buffer cleared");
        check(r19::CGlitchNewParticleSystemSceneNode::BillboardMaxParticles == 0, "max particles reset");
        check(Probe::destroyed == 2, "both buffers destroyed at count 0");
    }

    // addPForce returns the element count after each append and sets dirty.
    {
        r19::PForcesModel model;
        int a = 0;
        int b = 0;
        check(model.addPForce(&a) == 1, "first append returns 1");
        check(model.addPForce(&b) == 2, "second append returns 2");
        check(model.dirty, "dirty flag set");
        check(model.forces[1] == &b, "order kept");
    }

    // setParameterValue writes through an existing slot and inserts missing keys.
    {
        r19::ParameterTable table;
        float storage = 0.0f;
        r19::setParameterValue(table, 7u, 1.5f);
        check(storage == 0.0f, "missing slot does not write");
        table.slots[7u] = &storage;
        r19::setParameterValue(table, 7u, 2.5f);
        check(storage == 2.5f, "existing slot receives the value");
        check(r19::getParameterSlot(table, 9u) == nullptr, "missing key yields empty slot");
    }

    if (failures == 0) {
        std::puts("slice_19 tests passed");
    }
    return failures == 0 ? 0 : 1;
}
