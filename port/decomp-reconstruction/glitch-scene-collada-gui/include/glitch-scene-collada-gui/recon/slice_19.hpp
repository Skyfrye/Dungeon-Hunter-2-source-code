// Slice 19 reconstruction stand-ins (namespace glitch::collada::recon_19).
// The classes here are minimal models of the glitch::ps and glitch::collada
// layouts used by the slice-19 bodies. Member offsets from the original are
// kept as comments. Nothing here is attached to the existing headers.
#pragma once

#include <cstdint>
#include <map>
#include <vector>

namespace glitch::collada::recon_19 {

// Reference-counted base. The original keeps the vtable at +0x00 and the
// reference count at +0x04 (the grab and drop sites in the pseudocode).
class RefCounted {
public:
    virtual ~RefCounted() = default;

    int referenceCount = 1;  // +0x04

    void grab() { ++referenceCount; }
    void drop() {
        if (--referenceCount == 0) {
            delete this;
        }
    }
};

inline void grabRef(RefCounted* object) {
    if (object) {
        object->grab();
    }
}

inline void dropRef(RefCounted* object) {
    if (object) {
        object->drop();
    }
}

// Only the shared billboard buffers of CGlitchNewParticleSystemSceneNode are
// modelled. The statics are the globals behind the pseudocode addresses.
class CGlitchNewParticleSystemSceneNode {
public:
    static RefCounted* OutBillboardIndexBuffer;
    static RefCounted* BillboardMeshBuffer;
    static int BillboardMaxParticles;

    static void deleteSharedBuffer();
};

// IParticleContext parameter table. The original is a red-black tree keyed by
// the hashed parameter name; each node payload is a pointer to the stored
// value. The tree is modelled with std::map.
class ParameterTable {
public:
    std::map<std::uint32_t, void*> slots;
};

// Writes value through the slot for key when the slot holds storage. A missing
// key is inserted with an empty slot, as the original insert_unique does.
// Returns key. The original hashes the name first (IParticleContext::hashString,
// not in this slice), so key is the already hashed name.
template <class T>
std::uint32_t setParameterValue(ParameterTable& table, std::uint32_t key, T value) {
    void*& slot = table.slots[key];
    if (slot != nullptr) {
        *static_cast<T*>(slot) = value;
    }
    return key;
}

// Returns the slot for key, inserting an empty slot when it is missing
// (the pseudocode returns the payload pointer at node +0x14).
void* getParameterSlot(ParameterTable& table, std::uint32_t key);

// PForcesModel<GNPSParticle> force list. The original is a manual buffer with
// begin +0x04, end +0x08, capacity +0x0c and dirty flag +0x10.
class PForcesModel {
public:
    std::vector<void*> forces;  // +0x04..+0x0c
    bool dirty = false;         // +0x10

    // Appends force. Returns the element count after the append.
    int addPForce(void* force);
};

}  // namespace glitch::collada::recon_19
