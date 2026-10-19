// Test for batch g1-game-anim-v2Controller-227be4-1: the Cmd_* forwarders and their block gate.
//
// v2Controller and v2Controllable are built here with test-only definitions of the out-of-line symbols the
// batch reaches: their constructors and destructors, the base Ctrl_* bodies, the static block flag, and
// COnline::GetInstance (which records how often Cmd_DropObject reaches it). The online branches of
// Cmd_BeginSkill, Cmd_EndSkill, Cmd_UseOOI and Cmd_Attack are not rebuilt, so their tests cover the gate
// and the final forward only.

#include <cstdint>
#include <cstdio>

#include "core-platform/deps/game_types.hpp"
#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"
#include "net-session-online/c_online.hpp"
#include "net-session-online/c_online_impl.hpp"

// ---- test-only definitions of out-of-line symbols -------------------------------------------------

bool v2Controller::s_blocked = false;

v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}
v2Controller::~v2Controller() {}
void v2Controller::Update() {}

v2Controllable::v2Controllable() {}
v2Controllable::~v2Controllable() {}
void v2Controllable::Ctrl_Click(const Point3D<float>&, bool) {}
void v2Controllable::Ctrl_RotateBy(float) {}
void v2Controllable::Ctrl_LookAt(const Point3D<float>&) {}
void v2Controllable::Ctrl_LookAt(GameObject*) {}
void v2Controllable::Ctrl_WarpTo(const Point3D<float>&) {}
void v2Controllable::Ctrl_HeadTowards(const Point3D<float>&) {}
void v2Controllable::Ctrl_HeadTowards(GameObject*) {}
void v2Controllable::Ctrl_HeadTo(const Point3D<float>&) {}
void v2Controllable::Ctrl_HeadTo(GameObject*) {}
void v2Controllable::Ctrl_MoveTo(const Point3D<float>&) {}
void v2Controllable::Ctrl_MoveTo(GameObject*) {}
void v2Controllable::Ctrl_Stop() {}
void v2Controllable::Ctrl_Attack(GameObject*) {}
void v2Controllable::Ctrl_BeginSkill(unsigned int) {}
void v2Controllable::Ctrl_EndSkill(unsigned int) {}
void v2Controllable::Ctrl_BeginCast(bool) {}
void v2Controllable::Ctrl_EndCast(bool) {}
void v2Controllable::Ctrl_UsePotion() {}
void v2Controllable::Ctrl_UseOOI(GameObject*) {}
void v2Controllable::Ctrl_DropObject() {}
void v2Controllable::Ctrl_Kill(GameObject*, bool) {}
void v2Controllable::Ctrl_OpenIGM() {}
void v2Controllable::Ctrl_Zoom(float) {}
void v2Controllable::Ctrl_ResetZoom() {}
void v2Controllable::Ctrl_TranslateMapCam(float, float) {}

namespace {

int g_failures = 0;
int g_getInstanceCalls = 0;

#define EXPECT(cond)                                                             \
    do {                                                                         \
        if (!(cond)) {                                                           \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++g_failures;                                                        \
        }                                                                        \
    } while (0)

// Records the Ctrl_* calls the batch forwards.
class FakeControllable : public v2Controllable {
public:
    void Ctrl_Zoom(float amount) override { ++zoom; lastZoom = amount; }
    void Ctrl_ResetZoom() override { ++resetZoom; }
    void Ctrl_TranslateMapCam(float dx, float dy) override { ++translate; lastDx = dx; lastDy = dy; }
    void Ctrl_DropObject() override { ++drop; }
    void Ctrl_UseOOI(GameObject* target) override { ++useOOI; lastObject = target; }
    void Ctrl_BeginSkill(unsigned int skill) override { ++beginSkill; lastSkill = skill; }
    void Ctrl_EndSkill(unsigned int skill) override { ++endSkill; lastSkill = skill; }
    void Ctrl_Attack(GameObject* target) override { ++attack; lastObject = target; }

    int zoom = 0;
    int resetZoom = 0;
    int translate = 0;
    int drop = 0;
    int useOOI = 0;
    int beginSkill = 0;
    int endSkill = 0;
    int attack = 0;
    float lastZoom = 0.0f;
    float lastDx = 0.0f;
    float lastDy = 0.0f;
    unsigned int lastSkill = 0;
    GameObject* lastObject = nullptr;
};

// A controller bound to a recording controllable. The global block flag is reset for each fixture.
struct Fixture {
    Fixture() { v2Controller::s_blocked = false; g_getInstanceCalls = 0; }
    ~Fixture() { v2Controller::s_blocked = false; }
    FakeControllable controllable;
    v2Controller controller{&controllable};
};

GameObject* FakeObject(std::uintptr_t address) {
    return reinterpret_cast<GameObject*>(address);  // never dereferenced by the batch
}

// Cmd_Zoom, Cmd_ResetZoom and Cmd_TranslateMapCam are not gated: they forward even while blocked.
void TestUngatedForwards() {
    Fixture f;
    f.controller.m_blocked = true;
    v2Controller::s_blocked = true;

    f.controller.Cmd_Zoom(2.5f);
    EXPECT(f.controllable.zoom == 1);
    EXPECT(f.controllable.lastZoom == 2.5f);

    f.controller.Cmd_ResetZoom();
    EXPECT(f.controllable.resetZoom == 1);

    f.controller.Cmd_TranslateMapCam(1.0f, -4.0f);
    EXPECT(f.controllable.translate == 1);
    EXPECT(f.controllable.lastDx == 1.0f);
    EXPECT(f.controllable.lastDy == -4.0f);
}

// Cmd_DropObject: open when unk_009 is set or when neither block flag is set.
void TestDropObjectGate() {
    {
        Fixture f;
        f.controller.Cmd_DropObject();
        EXPECT(f.controllable.drop == 1);
        EXPECT(g_getInstanceCalls == 1);
    }
    {
        Fixture f;
        f.controller.m_blocked = true;
        f.controller.Cmd_DropObject();
        EXPECT(f.controllable.drop == 0);
        EXPECT(g_getInstanceCalls == 0);
    }
    {
        Fixture f;
        v2Controller::s_blocked = true;
        f.controller.Cmd_DropObject();
        EXPECT(f.controllable.drop == 0);
        EXPECT(g_getInstanceCalls == 0);
    }
    {
        Fixture f;
        f.controller.m_blocked = true;
        f.controller.unk_009 = true;
        f.controller.Cmd_DropObject();
        EXPECT(f.controllable.drop == 1);
        EXPECT(g_getInstanceCalls == 1);
    }
    {
        Fixture f;
        v2Controller::s_blocked = true;
        f.controller.unk_009 = true;
        f.controller.Cmd_DropObject();
        EXPECT(f.controllable.drop == 1);
        EXPECT(g_getInstanceCalls == 1);
    }
}

// Cmd_UseOOI: the gate, then the forward of the target. The online branch is not covered.
void TestUseOOIGate() {
    GameObject* target = FakeObject(0x1000);
    {
        Fixture f;
        f.controller.Cmd_UseOOI(target);
        EXPECT(f.controllable.useOOI == 1);
        EXPECT(f.controllable.lastObject == target);
    }
    {
        Fixture f;
        f.controller.m_blocked = true;
        f.controller.Cmd_UseOOI(target);
        EXPECT(f.controllable.useOOI == 0);
    }
    {
        Fixture f;
        v2Controller::s_blocked = true;
        f.controller.Cmd_UseOOI(target);
        EXPECT(f.controllable.useOOI == 0);
    }
    {
        Fixture f;
        v2Controller::s_blocked = true;
        f.controller.unk_009 = true;
        f.controller.Cmd_UseOOI(target);
        EXPECT(f.controllable.useOOI == 1);
    }
}

// Cmd_EndSkill: the gate, then the forward of the skill id.
void TestEndSkillGate() {
    {
        Fixture f;
        f.controller.Cmd_EndSkill(7u);
        EXPECT(f.controllable.endSkill == 1);
        EXPECT(f.controllable.lastSkill == 7u);
    }
    {
        Fixture f;
        f.controller.m_blocked = true;
        f.controller.Cmd_EndSkill(7u);
        EXPECT(f.controllable.endSkill == 0);
    }
    {
        Fixture f;
        f.controller.m_blocked = true;
        f.controller.unk_009 = true;
        f.controller.Cmd_EndSkill(7u);
        EXPECT(f.controllable.endSkill == 1);
    }
}

// Cmd_BeginSkill: the gate, then the forward of the skill id.
void TestBeginSkillGate() {
    {
        Fixture f;
        f.controller.Cmd_BeginSkill(3u);
        EXPECT(f.controllable.beginSkill == 1);
        EXPECT(f.controllable.lastSkill == 3u);
    }
    {
        Fixture f;
        v2Controller::s_blocked = true;
        f.controller.Cmd_BeginSkill(3u);
        EXPECT(f.controllable.beginSkill == 0);
    }
    {
        Fixture f;
        v2Controller::s_blocked = true;
        f.controller.unk_009 = true;
        f.controller.Cmd_BeginSkill(3u);
        EXPECT(f.controllable.beginSkill == 1);
    }
}

// Cmd_Attack: the gate, then the forward of the target.
void TestAttackGate() {
    GameObject* target = FakeObject(0x2000);
    {
        Fixture f;
        f.controller.Cmd_Attack(target);
        EXPECT(f.controllable.attack == 1);
        EXPECT(f.controllable.lastObject == target);
    }
    {
        Fixture f;
        f.controller.m_blocked = true;
        f.controller.Cmd_Attack(target);
        EXPECT(f.controllable.attack == 0);
    }
    {
        Fixture f;
        f.controller.Cmd_Attack(nullptr);
        EXPECT(f.controllable.attack == 1);
        EXPECT(f.controllable.lastObject == nullptr);
    }
}

}  // namespace

// A real COnlineImpl with the online flag clear, as the original's GetOnline() returns before any game goes
// online. It MUST be a real object: the library's GetOnline() (game-app/src/g1-game-app-global-f216b6-21.cpp) is
// the thunk to this function, and Cmd_UseOOI, Cmd_EndSkill, Cmd_BeginSkill and Cmd_Attack read
// `GetOnline()->IsOnlineGame()` through it (+0x05) WITHOUT testing the pointer first (asm at 0x4057fc: the
// LDRB follows the BL to GetOnline with no null test), so returning null here is a null dereference on those
// paths rather than a short circuit. The call count the checks assert is still recorded. The object is created
// as COnlineImpl, the type the real singleton allocates
// (net-session-online/src/tb_session-online-COnline-0.cpp), the same fix GSFlashMenu-353474-0_test and
// GSEndGame-20f7ca-0_test use.
static COnlineImpl g_testOnline;
COnline* COnline::GetInstance() {
    ++g_getInstanceCalls;
    return &g_testOnline;
}

int main() {
    TestUngatedForwards();
    TestDropObjectGate();
    TestUseOOIGate();
    TestEndSkillGate();
    TestBeginSkillGate();
    TestAttackGate();
    v2Controller::s_blocked = false;
    if (g_failures != 0) {
        std::printf("%d failure(s)\n", g_failures);
        return 1;
    }
    std::printf("g1-game-anim-v2Controller-227be4-1 tests passed\n");
    return 0;
}
