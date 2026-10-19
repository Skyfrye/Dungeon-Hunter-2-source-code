// Test for batch g1-game-world-LightSetManager-37fe36-0 (part 1 of 1).
//
// Covered: the constructor's defaults and light set names, GetLightSetIdFromName, InitLightFilter (every starting size),
// GetLight's slot address, AddStaticLight and AddActiveLight, SetLight (changed flag and reference counts), SetDummyLightOff,
// ResetLightSets, and the copy assignment.
//
// Not covered: ApplySettings (needs a CMaterial with its parameter table), Update and GetClosestStaticLight's search (both
// partial in the batch source), and the destructors' releases of non-null lights, which the reference count check below
// follows through SetLight and ResetLightSets.
//
// Link stubs defined here, because the batch source calls them and their owners are not linked in this test:
//   gAssertLevel                       0 (no assert output)
//   DebugSwitches::s_inst and its members  empty; load() does nothing and GetSwitch returns false
//   ObjectHandle::ObjectHandle()       the default state from game-world/src (id 0, null cache, generation -1)
//   ObjectHandle::operator GameObject* returns null
//   CMaterialRenderer::getParameterID  returns 0xFFFF
//   CLight::~CLight                    empty (the test never drops a light's count to zero, so it is not reached)
// The light is a zero-filled buffer that is never constructed. Only its reference count at +0x00 is touched.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/DebugSwitches.hpp"
#include "dh2/LightSetManager.hpp"
#include "dh2/ObjectHandle.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/material_renderer.hpp"

// Engine assert level (core-platform/memory.cpp is not linked here).
int gAssertLevel = 0;

// Debug switches: the batch source reads the switch in Update. Nothing is loaded here.
DebugSwitches DebugSwitches::s_inst;
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string& name) {
    (void)name;
    return false;
}

// Object handles: the default state, and a null conversion to GameObject.
ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0xFFFFFFFFu) {}
ObjectHandle::operator GameObject*() { return nullptr; }

namespace glitch::video {
std::uint16_t CMaterialRenderer::getParameterID(const char* name, std::uint16_t index) const {
    (void)name;
    (void)index;
    return 0xFFFF;
}
CLight::~CLight() {}
}  // namespace glitch::video

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// A zero-filled stand-in for a light. Its count starts at 100, so no release reaches zero and no delete runs.
alignas(16) unsigned char g_lightStorage[sizeof(glitch::video::CLight)];

glitch::video::CLight* FakeLight() { return reinterpret_cast<glitch::video::CLight*>(g_lightStorage); }

void ResetFakeLight() {
    std::memset(g_lightStorage, 0, sizeof g_lightStorage);
    FakeLight()->m_refCount = 100;
}

// Tags whose addresses stand in for scene nodes. The batch source only stores them.
unsigned char g_nodeTagA;
unsigned char g_nodeTagB;

glitch::scene::CLightSceneNode* NodeA() { return reinterpret_cast<glitch::scene::CLightSceneNode*>(&g_nodeTagA); }
glitch::scene::CLightSceneNode* NodeB() { return reinterpret_cast<glitch::scene::CLightSceneNode*>(&g_nodeTagB); }

void TestDefaults() {
    LightSetManager m;
    EXPECT(m.m_lightSetNames[0] == "PlayerLight");
    EXPECT(m.m_lightSetNames[1] == "SceneLight");
    EXPECT(m.m_lightSetNames[2] == "CameraLight");
    EXPECT(m.m_lightSetNames[3] == "MonsterLight");
    EXPECT(m.m_countStaticLight == 0);
    EXPECT(m.m_countActiveLight == 0);
    EXPECT(m.m_lightingEnabled);
    EXPECT(m.m_specularEnabled);
    EXPECT(!m.m_fogEnabled);
    EXPECT(m.unk_1a0 == 0);
    EXPECT(m.unk_178[0] == 0 && m.unk_178[3] == 0);
    EXPECT(m.unk_190.empty());
    EXPECT(m.m_lights[3][4].get() == nullptr);
    EXPECT(m.m_dummyLightOff[4].get() == nullptr);
    EXPECT(!m.m_lightChanged[0][0] && !m.m_lightChanged[3][4]);
    EXPECT(m.m_staticLights[7].m_node == nullptr);
    EXPECT(m.m_activeLights[3].m_node == nullptr);
    EXPECT(m.m_activeLights[3].m_object.m_id == 0);

    // The three floats hold the bit pattern 0xc9742400 that the constructor stores.
    std::uint32_t bits = 0;
    std::memcpy(&bits, &m.unk_16c[2], sizeof bits);
    EXPECT(bits == 0xc9742400u);
}

void TestNames() {
    LightSetManager m;
    EXPECT(m.GetLightSetIdFromName("PlayerLight") == 0);
    EXPECT(m.GetLightSetIdFromName("SceneLight") == 1);
    EXPECT(m.GetLightSetIdFromName("CameraLight") == 2);
    EXPECT(m.GetLightSetIdFromName("MonsterLight") == 3);
    EXPECT(m.GetLightSetIdFromName("Unknown") == 0);
    EXPECT(m.GetLightSetIdFromName("") == 0);
}

void TestInitLightFilter() {
    LightSetManager m;

    std::vector<bool> empty;
    m.InitLightFilter(empty, true);
    EXPECT(empty.size() == 5);
    for (std::size_t i = 0; i < empty.size(); ++i) EXPECT(empty[i]);

    std::vector<bool> longer(8, false);
    m.InitLightFilter(longer, true);
    EXPECT(longer.size() == 5);
    for (std::size_t i = 0; i < longer.size(); ++i) EXPECT(longer[i]);

    std::vector<bool> shorter(3, true);
    m.InitLightFilter(shorter, false);
    EXPECT(shorter.size() == 5);
    for (std::size_t i = 0; i < shorter.size(); ++i) EXPECT(!shorter[i]);

    std::vector<bool> exact(5, true);
    m.InitLightFilter(exact, false);
    EXPECT(exact.size() == 5);
    for (std::size_t i = 0; i < exact.size(); ++i) EXPECT(!exact[i]);
}

void TestLightLists() {
    LightSetManager m;
    m.AddStaticLight(NodeA());
    m.AddStaticLight(NodeB());
    EXPECT(m.m_countStaticLight == 2);
    EXPECT(m.m_staticLights[0].m_node == NodeA());
    EXPECT(m.m_staticLights[1].m_node == NodeB());

    ObjectHandle handle;
    handle.m_id = 42;
    handle.m_cached = nullptr;
    handle.m_generation = 3;
    m.AddActiveLight(handle, NodeB());
    EXPECT(m.m_countActiveLight == 1);
    EXPECT(m.m_activeLights[0].m_node == NodeB());
    EXPECT(m.m_activeLights[0].m_object.m_id == 42);
    EXPECT(m.m_activeLights[0].m_object.m_generation == 3);

    // GetLight returns the address of the slot.
    EXPECT(m.GetLight(2, 3) == &m.m_lights[2][3]);
    EXPECT(m.GetLight(0, 0) == &m.m_lights[0][0]);
}

void TestSetLightAndReset() {
    ResetFakeLight();
    const std::uint32_t base = FakeLight()->m_refCount;
    {
        LightSetManager m;
        boost::intrusive_ptr<glitch::video::CLight> light(FakeLight(), true);
        EXPECT(FakeLight()->m_refCount == base + 1);

        // A new light changes the slot and sets its changed flag.
        m.SetLight(1, 2, light);
        EXPECT(m.m_lightChanged[1][2]);
        EXPECT(m.m_lights[1][2].get() == FakeLight());
        EXPECT(FakeLight()->m_refCount == base + 2);

        // The same light again leaves the flag as it is (cleared here first) and does not change the count.
        m.m_lightChanged[1][2] = false;
        m.SetLight(1, 2, light);
        EXPECT(!m.m_lightChanged[1][2]);
        EXPECT(FakeLight()->m_refCount == base + 2);

        // A null light into a slot that holds one changes it.
        boost::intrusive_ptr<glitch::video::CLight> none;
        m.SetLight(1, 2, none);
        EXPECT(m.m_lightChanged[1][2]);
        EXPECT(m.m_lights[1][2].get() == nullptr);
        EXPECT(FakeLight()->m_refCount == base + 1);

        // Dummy lights take a use each and give it back on reset.
        m.SetDummyLightOff(2, light);
        EXPECT(m.m_dummyLightOff[2].get() == FakeLight());
        EXPECT(FakeLight()->m_refCount == base + 2);

        m.SetLight(0, 4, light);
        m.unk_1a0 = 5;
        m.ResetLightSets();
        EXPECT(m.m_lights[0][4].get() == nullptr);
        EXPECT(m.m_dummyLightOff[2].get() == nullptr);
        EXPECT(m.unk_1a0 == 0);
        EXPECT(FakeLight()->m_refCount == base + 1);
    }
    EXPECT(FakeLight()->m_refCount == base);
}

void TestAssign() {
    ResetFakeLight();
    const std::uint32_t base = FakeLight()->m_refCount;
    {
        LightSetManager source;
        source.AddStaticLight(NodeA());
        ObjectHandle handle;
        handle.m_id = 9;
        source.AddActiveLight(handle, NodeB());
        boost::intrusive_ptr<glitch::video::CLight> light(FakeLight(), true);
        source.SetLight(3, 1, light);
        source.SetDummyLightOff(4, light);
        source.unk_1a0 = 77;
        source.m_fogEnabled = true;

        LightSetManager copy;
        copy = source;
        EXPECT(copy.m_countStaticLight == 1);
        EXPECT(copy.m_countActiveLight == source.m_countActiveLight);
        EXPECT(copy.m_staticLights[0].m_node == NodeA());
        EXPECT(copy.m_activeLights[0].m_node == NodeB());
        EXPECT(copy.m_activeLights[0].m_object.m_id == 9);
        EXPECT(copy.m_lights[3][1].get() == FakeLight());
        EXPECT(copy.m_dummyLightOff[4].get() == FakeLight());
        EXPECT(copy.m_lightSetNames[2] == "CameraLight");
        EXPECT(copy.unk_1a0 == 77);
        EXPECT(copy.m_fogEnabled);
        // Source holds the light in two slots and the local holds it once; the copy holds it in two more.
        EXPECT(FakeLight()->m_refCount == base + 5);
    }
    EXPECT(FakeLight()->m_refCount == base);
}

}  // namespace

int main() {
    TestDefaults();
    TestNames();
    TestInitLightFilter();
    TestLightLists();
    TestSetLightAndReset();
    TestAssign();
    if (g_failures == 0) {
        std::printf("LightSetManager tests passed\n");
        return 0;
    }
    std::printf("LightSetManager tests: %d failure(s)\n", g_failures);
    return 1;
}
