// Test for batch g1-game-world-pack3-ce4c1f-0.
//
// Covers the logic that runs without the engine: Point2D<float>::normalize, both lineIntersection overloads (every
// return code), PFInnerTest_BasicIdentity::operator(), PolyStat::~PolyStat (no free for a null or self buffer, real
// heap blocks freed) and the two projectile-trap scripts (type-code check, the trap's m_active flag and m_trap).
//
// Objects are zero-filled storage with the fields set by hand, and only qualified (non-virtual) calls are made, so
// no constructor and no vtable is run. The object manager, the debug switches, PFObject::CanPathOn and the script
// base class are stubbed below, because the batch source references them and the test has to link.

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "pydata-accessors/script_cmd.hpp"  // Structs::ActivateProjectileTrap and Structs::DeactivateProjectileTrap (m_w3 at +0x0c)

#include "dh2/DebugSwitches.hpp"
#include "dh2/ObjectBase.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/PFGInnerEdge.hpp"
#include "dh2/PFGInnerNode.hpp"
#include "dh2/PFInnerTest_BasicIdentity.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/Point2D.hpp"
#include "dh2/PolyStat.hpp"
#include "dh2/ProjectileTrap.hpp"
#include "dh2/Script_ActivateProjectileTrap.hpp"
#include "dh2/Script_DeactivateProjectileTrap.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

bool Near(float a, float b, float eps = 1e-5f) {
    return std::fabs(a - b) <= eps;
}

// State of the stubbed object manager and object handle.
ObjectBase* g_found = nullptr;          // what ObjectHandle::GetObject returns
const char* g_lookupName = nullptr;     // the last GetObjectByName arguments
int g_lookupFlags = 0;
bool g_lookupActive = true;
const char* g_lookupType = nullptr;

alignas(ObjectManager) unsigned char g_managerStorage[sizeof(ObjectManager)];

alignas(ProjectileTrap) unsigned char g_trapStorage[sizeof(ProjectileTrap)];
alignas(ObjectBase) unsigned char g_doorStorage[sizeof(ObjectBase)];
alignas(Script_ActivateProjectileTrap) unsigned char g_activateStorage[sizeof(Script_ActivateProjectileTrap)];
alignas(Script_DeactivateProjectileTrap) unsigned char g_deactivateStorage[sizeof(Script_DeactivateProjectileTrap)];
alignas(Structs::ActivateProjectileTrap) unsigned char g_activateRecord[sizeof(Structs::ActivateProjectileTrap)];
alignas(Structs::DeactivateProjectileTrap) unsigned char g_deactivateRecord[sizeof(Structs::DeactivateProjectileTrap)];

// ---- Point2D<float> ----------------------------------------------------------------------------------------------

void TestNormalize() {
    Point2D<float> p{3.0f, 4.0f};
    Point2D<float>& result = p.normalize();
    EXPECT(&result == &p);
    EXPECT(Near(p.X, 0.6f));
    EXPECT(Near(p.Y, 0.8f));
}

void TestLineIntersection() {
    const Point2D<float> p0{0.0f, 0.0f};
    const Point2D<float> p1{4.0f, 0.0f};
    Point2D<float> out{-1.0f, -1.0f};
    float t = -1.0f;
    float u = -1.0f;

    // Segments cross at (2, 0): both parameters are 0.5, both inside [0, 1].
    const Point2D<float> q0{2.0f, -1.0f};
    const Point2D<float> q1{2.0f, 1.0f};
    EXPECT(Point2D<float>::lineIntersection(p0, p1, q0, q1, out, t, u) == 5);
    EXPECT(Near(t, 0.5f) && Near(u, 0.5f));
    EXPECT(Near(out.X, 2.0f) && Near(out.Y, 0.0f));
    EXPECT(Point2D<float>::lineIntersection(p0, p1, q0, q1, out) == 5);

    // t = 1.25 (outside), u = 0.5 (inside): code 4.
    const Point2D<float> r0{5.0f, -1.0f};
    const Point2D<float> r1{5.0f, 1.0f};
    EXPECT(Point2D<float>::lineIntersection(p0, p1, r0, r1, out, t, u) == 4);
    EXPECT(Near(t, 1.25f) && Near(u, 0.5f));

    // t = 0.5 (inside), u = -0.5 (outside): code 3.
    const Point2D<float> s0{2.0f, 1.0f};
    const Point2D<float> s1{2.0f, 3.0f};
    EXPECT(Point2D<float>::lineIntersection(p0, p1, s0, s1, out, t, u) == 3);
    EXPECT(Near(t, 0.5f) && Near(u, -0.5f));

    // t = 1.25 and u = -0.5 (both outside): code 2.
    const Point2D<float> w0{5.0f, 1.0f};
    const Point2D<float> w1{5.0f, 3.0f};
    EXPECT(Point2D<float>::lineIntersection(p0, p1, w0, w1, out, t, u) == 2);
    EXPECT(Near(t, 1.25f) && Near(u, -0.5f));

    // Parallel and not collinear: 0. Parallel and collinear: 1.
    const Point2D<float> v0{0.0f, 1.0f};
    const Point2D<float> v1{4.0f, 1.0f};
    out = Point2D<float>{-1.0f, -1.0f};
    EXPECT(Point2D<float>::lineIntersection(p0, p1, v0, v1, out) == 0);
    EXPECT(out.X == -1.0f && out.Y == -1.0f);  // not written in the parallel case
    const Point2D<float> c0{0.0f, 0.0f};
    const Point2D<float> c1{4.0f, 0.0f};
    EXPECT(Point2D<float>::lineIntersection(p0, p1, c0, c1, out) == 1);
}

// ---- PFInnerTest_BasicIdentity ------------------------------------------------------------------------------------

void TestBasicIdentity() {
    alignas(PFInnerTest_BasicIdentity) unsigned char storage[sizeof(PFInnerTest_BasicIdentity)];
    std::memset(storage, 0, sizeof storage);
    PFInnerTest_BasicIdentity* test = reinterpret_cast<PFInnerTest_BasicIdentity*>(storage);

    const int a = 0;
    const int b = 0;
    const PFGInnerNode* nodeA = reinterpret_cast<const PFGInnerNode*>(&a);
    const PFGInnerNode* nodeB = reinterpret_cast<const PFGInnerNode*>(&b);
    test->unk_4 = nodeA;
    EXPECT(test->PFInnerTest_BasicIdentity::operator()(nodeA));
    EXPECT(!test->PFInnerTest_BasicIdentity::operator()(nodeB));
    EXPECT(!test->PFInnerTest_BasicIdentity::operator()(nullptr));
}

// ---- PolyStat ----------------------------------------------------------------------------------------------------

void TestPolyStatDestructor() {
    alignas(PolyStat) unsigned char storage[sizeof(PolyStat)];
    std::memset(storage, 0, sizeof storage);
    PolyStat* stat = reinterpret_cast<PolyStat*>(storage);

    // A null begin and a begin that points back at the object are not freed. Both must return without touching the heap.
    stat->unk_00 = nullptr;
    stat->unk_14 = nullptr;
    stat->~PolyStat();
    stat->unk_14 = stat;
    stat->~PolyStat();

    // Real heap blocks: one of 0x40 bytes (the node-allocator branch, CustomFree stands in) and one of 0x200 bytes.
    char* small = static_cast<char*>(std::malloc(0x40));
    EXPECT(small != nullptr);
    if (small != nullptr) {
        stat->unk_14 = small;
        stat->unk_00 = small + 0x40;
        stat->~PolyStat();
    }
    char* large = static_cast<char*>(std::malloc(0x200));
    EXPECT(large != nullptr);
    if (large != nullptr) {
        stat->unk_14 = large;
        stat->unk_00 = large + 0x200;
        stat->~PolyStat();
    }
}

// ---- Script_ActivateProjectileTrap and Script_DeactivateProjectileTrap -------------------------------------------

void ResetScriptStorage() {
    std::memset(g_managerStorage, 0, sizeof g_managerStorage);
    std::memset(g_trapStorage, 0, sizeof g_trapStorage);
    std::memset(g_doorStorage, 0, sizeof g_doorStorage);
    std::memset(g_activateStorage, 0, sizeof g_activateStorage);
    std::memset(g_deactivateStorage, 0, sizeof g_deactivateStorage);
    std::memset(g_activateRecord, 0, sizeof g_activateRecord);
    std::memset(g_deactivateRecord, 0, sizeof g_deactivateRecord);
    g_found = nullptr;
    g_lookupName = nullptr;
    g_lookupFlags = 0;
    g_lookupActive = true;
    g_lookupType = nullptr;
}

void TestActivateTrap() {
    ResetScriptStorage();
    ProjectileTrap* trap = reinterpret_cast<ProjectileTrap*>(g_trapStorage);
    trap->m_goId = static_cast<ObjectBase::GO_IDS>(17);
    trap->m_active = false;

    Structs::ActivateProjectileTrap* record = reinterpret_cast<Structs::ActivateProjectileTrap*>(g_activateRecord);
    record->Target = const_cast<char*>("TrapA");
    Script_ActivateProjectileTrap* cmd = reinterpret_cast<Script_ActivateProjectileTrap*>(g_activateStorage);
    cmd->m_args = record;

    // A trap (type code 17) is found: m_trap is set and its flag goes on. The lookup uses the record name and the module.
    g_found = trap;
    cmd->Script_ActivateProjectileTrap::Execute(false, 7);
    EXPECT(cmd->m_trap == trap);
    EXPECT(trap->m_active);
    EXPECT(g_lookupName != nullptr && std::strcmp(g_lookupName, "TrapA") == 0);
    EXPECT(g_lookupFlags == 7);
    EXPECT(g_lookupActive == false);
    EXPECT(g_lookupType == nullptr);

    // An object of another type code is found: m_trap is cleared and nothing is set.
    ObjectBase* door = reinterpret_cast<ObjectBase*>(g_doorStorage);
    door->m_goId = ObjectBase::GO_DOOR;
    trap->m_active = false;
    g_found = door;
    cmd->m_trap = trap;
    cmd->Script_ActivateProjectileTrap::Execute(false, 7);
    EXPECT(cmd->m_trap == nullptr);
    EXPECT(!trap->m_active);

    // Nothing is found: m_trap is cleared.
    g_found = nullptr;
    cmd->m_trap = trap;
    cmd->Script_ActivateProjectileTrap::Execute(false, 7);
    EXPECT(cmd->m_trap == nullptr);

    EXPECT(cmd->Script_ActivateProjectileTrap::IsBlocking() == false);
}

void TestDeactivateTrap() {
    ResetScriptStorage();
    ProjectileTrap* trap = reinterpret_cast<ProjectileTrap*>(g_trapStorage);
    trap->m_goId = static_cast<ObjectBase::GO_IDS>(17);
    trap->m_active = true;

    Structs::DeactivateProjectileTrap* record =
        reinterpret_cast<Structs::DeactivateProjectileTrap*>(g_deactivateRecord);
    record->Target = const_cast<char*>("TrapB");
    Script_DeactivateProjectileTrap* cmd = reinterpret_cast<Script_DeactivateProjectileTrap*>(g_deactivateStorage);
    cmd->m_args = record;

    // A trap is found: m_trap is set and its flag is cleared.
    g_found = trap;
    cmd->Script_DeactivateProjectileTrap::Execute(false, 3);
    EXPECT(cmd->m_trap == trap);
    EXPECT(!trap->m_active);
    EXPECT(g_lookupName != nullptr && std::strcmp(g_lookupName, "TrapB") == 0);
    EXPECT(g_lookupFlags == 3);

    // Another type code is found: m_trap is cleared and the trap keeps its flag.
    ObjectBase* door = reinterpret_cast<ObjectBase*>(g_doorStorage);
    door->m_goId = ObjectBase::GO_DOOR;
    trap->m_active = true;
    g_found = door;
    cmd->m_trap = trap;
    cmd->Script_DeactivateProjectileTrap::Execute(false, 3);
    EXPECT(cmd->m_trap == nullptr);
    EXPECT(trap->m_active);

    // Nothing is found: m_trap is cleared.
    g_found = nullptr;
    cmd->m_trap = trap;
    cmd->Script_DeactivateProjectileTrap::Execute(false, 3);
    EXPECT(cmd->m_trap == nullptr);

    EXPECT(cmd->Script_DeactivateProjectileTrap::IsBlocking() == false);
}

}  // namespace

// ---- Symbols the batch source references (stubs; the integrator's build links the real ones) ----------------------

DebugSwitches DebugSwitches::s_inst;
DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) { return false; }

static ObjectManager* g_test_dword_99F764 = reinterpret_cast<ObjectManager*>(g_managerStorage);
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}

ObjectHandle ObjectManager::GetObjectByName(char const* name, int flags, bool active, char const* type) {
    g_lookupName = name;
    g_lookupFlags = flags;
    g_lookupActive = active;
    g_lookupType = type;
    return ObjectHandle();
}

ObjectBase* ObjectHandle::GetObject(bool) {
    return g_found;
}

bool PFObject::CanPathOn(PFFloor*) const {
    return false;
}

void ScriptCmdImpl::Init() {}
void ScriptCmdImpl::Update() {}
ScriptCmdImpl::~ScriptCmdImpl() {}

int main() {
    TestNormalize();
    TestLineIntersection();
    TestBasicIdentity();
    TestPolyStatDestructor();
    TestActivateTrap();
    TestDeactivateTrap();

    if (g_failures != 0) {
        std::printf("g1-game-world-pack3-ce4c1f-0: %d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-world-pack3-ce4c1f-0: all tests passed\n");
    return 0;
}
