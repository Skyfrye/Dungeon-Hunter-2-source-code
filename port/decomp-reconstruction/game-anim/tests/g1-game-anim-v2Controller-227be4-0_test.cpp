// Test for batch g1-game-anim-v2Controller-227be4-0 (part 1 of 2 of v2Controller).
//
// Covers the block gate of the gated Cmd_* (the +0x09 override, the global s_blocked and the per-controller +0x08
// block), the argument forwarding to the v2Controllable slots, and the two ungated forwards (Cmd_Kill, Cmd_OpenIGM).
//
// Test-only stubs: the v2Controller constructor, the v2Controllable constructor and destructor, and the Ctrl_* members
// belong to other batches. The Ctrl_* stubs append a record to g_log, so the test links alone.

#include <cstdint>
#include <cstdio>
#include <string>
#include <vector>

#include "dh2/v2Controllable.hpp"
#include "dh2/v2Controller.hpp"

namespace {

std::vector<std::string> g_log;
int g_failures = 0;

void Log(const std::string& record) { g_log.push_back(record); }

std::string Vec(const Point3D<float>& p) {
    return std::to_string(p.X) + "," + std::to_string(p.Y) + "," + std::to_string(p.Z);
}

std::string Obj(const GameObject* target) {
    return std::to_string(reinterpret_cast<std::uintptr_t>(target));
}

std::string Flag(bool b) { return b ? "1" : "0"; }

// Expects exactly one record, equal to want, and clears the log.
void ExpectOne(const std::string& want, const char* what) {
    bool ok = g_log.size() == 1 && g_log[0] == want;
    if (!ok) {
        std::printf("FAIL %s: want '%s', got %zu record(s)\n", what, want.c_str(), g_log.size());
        for (const std::string& s : g_log) std::printf("  got '%s'\n", s.c_str());
        ++g_failures;
    }
    g_log.clear();
}

// Expects no record, and clears the log.
void ExpectNone(const char* what) {
    if (!g_log.empty()) {
        std::printf("FAIL %s: %zu record(s), want none\n", what, g_log.size());
        ++g_failures;
    }
    g_log.clear();
}

}  // namespace

// ---- Test-only definitions of code owned by other batches ----

v2Controller::v2Controller(v2Controllable* controllable)
    : m_controllable(controllable), m_blocked(false), unk_009(false), unk_00a(false), m_character(nullptr) {}

v2Controllable::v2Controllable() : m_controller(nullptr) {}
v2Controllable::~v2Controllable() {}

void v2Controllable::Ctrl_Click(const Point3D<float>& pos, bool held) { Log("Click " + Vec(pos) + " " + Flag(held)); }
void v2Controllable::Ctrl_RotateBy(float angle) { Log("RotateBy " + std::to_string(angle)); }
void v2Controllable::Ctrl_LookAt(const Point3D<float>& pos) { Log("LookAt " + Vec(pos)); }
void v2Controllable::Ctrl_LookAt(GameObject* target) { Log("LookAtObj " + Obj(target)); }
void v2Controllable::Ctrl_WarpTo(const Point3D<float>& pos) { Log("WarpTo " + Vec(pos)); }
void v2Controllable::Ctrl_HeadTowards(const Point3D<float>& pos) { Log("HeadTowards " + Vec(pos)); }
void v2Controllable::Ctrl_HeadTowards(GameObject* target) { Log("HeadTowardsObj " + Obj(target)); }
void v2Controllable::Ctrl_HeadTo(const Point3D<float>& pos) { Log("HeadTo " + Vec(pos)); }
void v2Controllable::Ctrl_HeadTo(GameObject* target) { Log("HeadToObj " + Obj(target)); }
void v2Controllable::Ctrl_MoveTo(const Point3D<float>& pos) { Log("MoveTo " + Vec(pos)); }
void v2Controllable::Ctrl_MoveTo(GameObject* target) { Log("MoveToObj " + Obj(target)); }
void v2Controllable::Ctrl_Stop() { Log("Stop"); }
void v2Controllable::Ctrl_Attack(GameObject* target) { Log("Attack " + Obj(target)); }
void v2Controllable::Ctrl_BeginSkill(unsigned int skill) { Log("BeginSkill " + std::to_string(skill)); }
void v2Controllable::Ctrl_EndSkill(unsigned int skill) { Log("EndSkill " + std::to_string(skill)); }
void v2Controllable::Ctrl_BeginCast(bool primary) { Log("BeginCast " + Flag(primary)); }
void v2Controllable::Ctrl_EndCast(bool primary) { Log("EndCast " + Flag(primary)); }
void v2Controllable::Ctrl_UsePotion() { Log("UsePotion"); }
void v2Controllable::Ctrl_UseOOI(GameObject* target) { Log("UseOOI " + Obj(target)); }
void v2Controllable::Ctrl_DropObject() { Log("DropObject"); }
void v2Controllable::Ctrl_Kill(GameObject* killer, bool silent) { Log("Kill " + Obj(killer) + " " + Flag(silent)); }
void v2Controllable::Ctrl_OpenIGM() { Log("OpenIGM"); }
void v2Controllable::Ctrl_Zoom(float amount) { Log("Zoom " + std::to_string(amount)); }
void v2Controllable::Ctrl_ResetZoom() { Log("ResetZoom"); }
void v2Controllable::Ctrl_TranslateMapCam(float dx, float dy) {
    Log("TranslateMapCam " + std::to_string(dx) + " " + std::to_string(dy));
}

int main() {
    v2Controllable ctl;
    v2Controller ctrl(&ctl);
    // A non-null value that is only compared, never dereferenced.
    GameObject* obj = reinterpret_cast<GameObject*>(static_cast<std::uintptr_t>(0x1000));
    const Point3D<float> p = {1.0f, 2.0f, 3.0f};
    const std::string kPos = "1.000000,2.000000,3.000000";

    // Open controller: every gated command forwards its arguments unchanged.
    v2Controller::s_blocked = false;
    ctrl.m_blocked = false;
    ctrl.unk_009 = false;
    ctrl.Cmd_Click(p, true);
    ExpectOne("Click " + kPos + " 1", "open Click");
    ctrl.Cmd_RotateBy(0.5f);
    ExpectOne("RotateBy 0.500000", "open RotateBy");
    ctrl.Cmd_LookAt(p);
    ExpectOne("LookAt " + kPos, "open LookAt(pos)");
    ctrl.Cmd_LookAt(obj);
    ExpectOne("LookAtObj 4096", "open LookAt(obj)");
    ctrl.Cmd_WarpTo(p);
    ExpectOne("WarpTo " + kPos, "open WarpTo");
    ctrl.Cmd_HeadTowards(p);
    ExpectOne("HeadTowards " + kPos, "open HeadTowards(pos)");
    ctrl.Cmd_HeadTowards(obj);
    ExpectOne("HeadTowardsObj 4096", "open HeadTowards(obj)");
    ctrl.Cmd_HeadTo(p);
    ExpectOne("HeadTo " + kPos, "open HeadTo(pos)");
    ctrl.Cmd_HeadTo(obj);
    ExpectOne("HeadToObj 4096", "open HeadTo(obj)");
    ctrl.Cmd_MoveTo(p);
    ExpectOne("MoveTo " + kPos, "open MoveTo(pos)");
    ctrl.Cmd_MoveTo(obj);
    ExpectOne("MoveToObj 4096", "open MoveTo(obj)");
    ctrl.Cmd_Stop();
    ExpectOne("Stop", "open Stop");
    ctrl.Cmd_BeginCast(true);
    ExpectOne("BeginCast 1", "open BeginCast");
    ctrl.Cmd_EndCast(false);
    ExpectOne("EndCast 0", "open EndCast");
    ctrl.Cmd_UsePotion();
    ExpectOne("UsePotion", "open UsePotion");

    // Global block alone: gated commands are dropped.
    v2Controller::s_blocked = true;
    ctrl.Cmd_Click(p, false);
    ExpectNone("global block drops Click");
    ctrl.Cmd_Stop();
    ExpectNone("global block drops Stop");
    ctrl.Cmd_UsePotion();
    ExpectNone("global block drops UsePotion");
    ctrl.Cmd_BeginCast(true);
    ExpectNone("global block drops BeginCast");

    // The +0x09 flag overrides the global block.
    ctrl.unk_009 = true;
    ctrl.Cmd_Stop();
    ExpectOne("Stop", "unk_009 overrides global block");
    ctrl.unk_009 = false;

    // Per-controller block alone (global clear): gated commands are dropped.
    v2Controller::s_blocked = false;
    ctrl.m_blocked = true;
    ctrl.Cmd_HeadTo(obj);
    ExpectNone("controller block drops HeadTo(obj)");
    ctrl.Cmd_MoveTo(p);
    ExpectNone("controller block drops MoveTo(pos)");

    // The +0x09 flag also overrides the per-controller block.
    ctrl.unk_009 = true;
    ctrl.Cmd_MoveTo(p);
    ExpectOne("MoveTo " + kPos, "unk_009 overrides controller block");
    ctrl.unk_009 = false;

    // Both blocks set: gated commands are dropped.
    v2Controller::s_blocked = true;
    ctrl.Cmd_RotateBy(1.0f);
    ExpectNone("both blocks drop RotateBy");

    // Cmd_Kill and Cmd_OpenIGM are not gated: they forward while both blocks are set.
    ctrl.Cmd_Kill(obj, false);
    ExpectOne("Kill 4096 0", "ungated Kill under both blocks");
    ctrl.Cmd_OpenIGM();
    ExpectOne("OpenIGM", "ungated OpenIGM under both blocks");

    // Cmd_Kill forwards the silent flag unchanged.
    v2Controller::s_blocked = false;
    ctrl.m_blocked = false;
    ctrl.Cmd_Kill(obj, true);
    ExpectOne("Kill 4096 1", "open Kill silent");

    // Update is empty in the original, so it must not reach the controllable.
    ctrl.Update();
    ExpectNone("Update is empty");

    v2Controller::s_blocked = false;

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("v2Controller part 1: all checks passed\n");
    return 0;
}
