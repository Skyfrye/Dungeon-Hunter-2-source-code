// Test for batch g1-game-world-GameObject-5d2019-7.
//
// GameObject::LoadVisualObject (0x394eb0) forwards the names held in m_dae and m_xrefObject to
// SetVisualObject(char const*, char const*, bool) with force = true. The object is zero-filled and never constructed,
// as in the other GameObject tests. Only the two std::string members the function reads are constructed in place, and
// they are destroyed at the end.
//
// SetVisualObject is stubbed here. It records its arguments and never reaches the engine.

#include <cstdio>
#include <cstring>
#include <new>
#include <string>

#include "dh2/GameObject.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

int g_setCalls = 0;
const char* g_seenDae = nullptr;
const char* g_seenXref = nullptr;
bool g_seenForce = false;

alignas(GameObject) unsigned char g_storage[sizeof(GameObject)];

GameObject* Storage() {
    return reinterpret_cast<GameObject*>(g_storage);
}

}  // namespace

// Stub for the engine overload the unit calls.
void GameObject::SetVisualObject(const char* dae, const char* xref, bool force) {
    ++g_setCalls;
    g_seenDae = dae;
    g_seenXref = xref;
    g_seenForce = force;
}

int main() {
    using Str = std::string;
    std::memset(g_storage, 0, sizeof g_storage);
    GameObject* self = Storage();
    new (&self->m_dae) Str("models/gate.dae");
    new (&self->m_xrefObject) Str("gate_xref");

    // The call forwards the current names by pointer and passes force = true.
    self->LoadVisualObject();
    EXPECT(g_setCalls == 1);
    EXPECT(g_seenDae == self->m_dae.c_str());
    EXPECT(g_seenXref == self->m_xrefObject.c_str());
    EXPECT(g_seenDae != nullptr && std::strcmp(g_seenDae, "models/gate.dae") == 0);
    EXPECT(g_seenXref != nullptr && std::strcmp(g_seenXref, "gate_xref") == 0);
    EXPECT(g_seenForce);

    // A second call reads the names again, so a changed name is forwarded.
    self->m_xrefObject = "gate_xref_2";
    self->LoadVisualObject();
    EXPECT(g_setCalls == 2);
    EXPECT(g_seenXref == self->m_xrefObject.c_str());
    EXPECT(g_seenXref != nullptr && std::strcmp(g_seenXref, "gate_xref_2") == 0);
    EXPECT(g_seenForce);

    self->m_dae.~Str();
    self->m_xrefObject.~Str();

    if (g_failures == 0) {
        std::printf("g1-game-world-GameObject-5d2019-7 test: OK\n");
    }
    return g_failures == 0 ? 0 : 1;
}
