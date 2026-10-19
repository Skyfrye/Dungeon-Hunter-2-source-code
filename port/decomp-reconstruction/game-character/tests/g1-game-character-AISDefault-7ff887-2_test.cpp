// Test for batch g1-game-character-AISDefault-7ff887-2.
//
// The checks run the hooks on zero-filled storage for the AISDefault, the Character it names and the v2Controller.
// The vptrs stay zero, so only direct member calls and the stubs below are reached. The virtual calls the batch makes
// on the target are the two in OnInteract and OnAttack: GameObject::IsCharacter (vtable slot 9, +0x24) and
// GameObject::Interact (slot 38, +0x98). The target storage gets a vtable whose two slots point at fake functions
// that log the call, so those paths run too. The path list (GameObject::m_pfObject.m_path) is constructed in place so
// that empty() is meaningful. The stubs record every callee in order, so each check compares the call sequence with
// the original control flow.

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <list>
#include <new>
#include <string>
#include <vector>

#include "dh2/AISDefault.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/CharStateMachine.hpp"
#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/LuaScript.hpp"
#include "dh2/PFFloor.hpp"
#include "dh2/PFObject.hpp"
#include "dh2/VisualFXManager.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/UserData.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_arrays_02.hpp"
#include "pydata-accessors/w7_structs_5.hpp"

namespace {

using Calls = std::vector<std::string>;
using PathList = std::list<const PFGInnerEdge*>;

Calls g_log;
int g_failures = 0;

// Values the stubs return.
bool g_enemy = false;
bool g_seeking = false;
bool g_inRange = false;
bool g_idle = false;
bool g_attacking = false;
bool g_hasHit = false;
bool g_hasMissed = false;

// The target is a character (AI_GetTargetAsCharacter returns it), and the Character flags the stubs return.
bool g_targetIsCharacter = false;
bool g_isMonster = false;
bool g_isMerchant = false;

// Positions the stubs return, and the last point passed to Cmd_MoveTo.
const GameObject* g_target = nullptr;
Point3D<float> g_selfPos{};
Point3D<float> g_targetPos{};
Point3D<float> g_spot{};
Point3D<float> g_lastMove{};

// Zero-filled storage for the objects the batch touches.
alignas(Character) unsigned char g_charStorage[sizeof(Character)];
alignas(AISDefault) unsigned char g_aiStorage[sizeof(AISDefault)];
alignas(v2Controller) unsigned char g_ctrlStorage[sizeof(v2Controller)];
alignas(GameObject) unsigned char g_targetStorage[sizeof(GameObject)];
int g_edgeDummy = 0;

void Expect(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

bool SamePoint(const Point3D<float>& a, const Point3D<float>& b) {
    return a.X == b.X && a.Y == b.Y && a.Z == b.Z;
}

Character* SelfCharacter() { return reinterpret_cast<Character*>(g_charStorage); }
AISDefault* AI() { return reinterpret_cast<AISDefault*>(g_aiStorage); }
GameObject* Target() { return reinterpret_cast<GameObject*>(g_targetStorage); }

// Fake virtual functions for the target. The target storage holds a pointer to g_targetVtable (main fills slots 9 and
// 38). The object is the first argument of each call, as the Itanium C++ ABI passes it, so a free function with the
// same leading parameter is called.
bool FakeIsCharacter(const GameObject*) {
    g_log.push_back("IsCharacter");
    return g_targetIsCharacter;
}

void FakeInteract(GameObject*, GameObject* other) {
    g_log.push_back(std::string("Interact ") + (other == static_cast<GameObject*>(SelfCharacter()) ? "owner" : "other"));
}

void* g_targetVtable[64] = {};

// Sets the path list of the character to empty or to one entry.
void SetPathEmpty(bool empty) {
    PathList& path = SelfCharacter()->m_pfObject.m_path;
    path.clear();
    if (!empty) {
        path.push_back(reinterpret_cast<const PFGInnerEdge*>(&g_edgeDummy));
    }
}

// Builds the fixture: a character with its controller, a target, and the AI that belongs to the character.
// The character storage is zeroed once in main (the path list is constructed there in place); each check only resets
// the fields it reads.
void Setup() {
    std::memset(g_aiStorage, 0, sizeof g_aiStorage);
    std::memset(g_ctrlStorage, 0, sizeof g_ctrlStorage);
    std::memset(g_targetStorage, 0, sizeof g_targetStorage);
    *reinterpret_cast<void***>(g_targetStorage) = g_targetVtable;  // the vptr, written after the zero fill

    g_targetIsCharacter = g_isMonster = g_isMerchant = false;

    Character* self = SelfCharacter();
    self->m_controller = reinterpret_cast<v2Controller*>(g_ctrlStorage);

    AISDefault* ai = AI();
    ai->m_character = self;
    CharAI* cai = self;
    cai->m_target = Target();
    g_target = Target();
    cai->m_targetSeeking = true;

    g_log.clear();
    g_enemy = g_seeking = g_inRange = g_idle = g_attacking = false;
    g_hasHit = g_hasMissed = false;
    g_selfPos = Point3D<float>{1.0f, 2.0f, 3.0f};
    g_targetPos = Point3D<float>{0.5f, 0.0f, -1.0f};
    g_spot = Point3D<float>{7.0f, 8.0f, 9.0f};
    g_lastMove = Point3D<float>{};
    SetPathEmpty(true);
}

}  // namespace

// ---- Stubs for the symbols the batch source calls (defined by other batches in the tree) ------------------------

bool CharAI::AI_IsEnemy(const GameObject*) const {
    g_log.push_back("IsEnemy");
    return g_enemy;
}

bool CharAI::AI_IsTargetSeeking() const {
    g_log.push_back("IsTargetSeeking");
    return g_seeking;
}

bool CharAI::AI_IsInInteractionRange(const GameObject*) const {
    g_log.push_back("IsInRange");
    return g_inRange;
}

void CharAI::AI_SetTarget(GameObject* target, bool force) {
    g_log.push_back(std::string("SetTarget ") + (target ? "obj" : "null") + (force ? " true" : " false"));
}

void CharAI::AI_SyncLastTarget() {
    g_log.push_back("SyncLastTarget");
}

void CharAI::AI_InteractWith(GameObject* obj) {
    g_log.push_back(std::string("InteractWith ") + (obj ? "obj" : "null"));
}

int CharAI::AI_PauseUpdate(unsigned int ms) {
    g_log.push_back("PauseUpdate " + std::to_string(ms));
    return 0;
}

Character* CharAI::AI_GetTargetAsCharacter() {
    return g_targetIsCharacter ? reinterpret_cast<Character*>(g_targetStorage) : nullptr;
}

bool CharStateMachine::SM_IsIdle(bool) const {
    g_log.push_back("SM_IsIdle");
    return g_idle;
}

bool CharStateMachine::SM_IsAttacking() const {
    g_log.push_back("SM_IsAttacking");
    return g_attacking;
}

void v2Controller::Cmd_Stop() {
    g_log.push_back("Stop");
}

void v2Controller::Cmd_Attack(GameObject* target) {
    g_log.push_back(std::string("Attack ") + (target ? "target" : "null"));
}

void v2Controller::Cmd_MoveTo(const Point3D<float>& pos) {
    g_log.push_back("MoveTo");
    g_lastMove = pos;
}

const Point3D<float>& GameObject::GetTargetPosition() const {
    return static_cast<const void*>(this) == static_cast<const void*>(g_target) ? g_targetPos : g_selfPos;
}

Point3D<float> GameObject::GetInteractionSpot() const {
    return g_spot;
}

bool LuaScript::IsInVFTable(const char* funcName) const {
    if (std::strcmp(funcName, "OnTargetHit") == 0) {
        return g_hasHit;
    }
    if (std::strcmp(funcName, "OnTargetMissed") == 0) {
        return g_hasMissed;
    }
    return false;
}

void Character::F_MeleeAttack(AttackResult&, Character*, Character*, bool flag, bool) {
    g_log.push_back(std::string("MeleeAttack ") + (flag ? "true" : "false"));
}
void Character::F_ApplyResult(const AttackResult&, Character*, Character*, bool) {
    g_log.push_back("ApplyResult");
}
bool Character::IsMonster() const {
    g_log.push_back("IsMonster");
    return g_isMonster;
}
bool Character::IsMerchant() const {
    g_log.push_back("IsMerchant");
    return g_isMerchant;
}
Point3D<float> Character::GetLeftFootPosition() const {
    g_log.push_back("LeftFoot");
    return Point3D<float>{};
}
Point3D<float> Character::GetRightFootPosition() const {
    g_log.push_back("RightFoot");
    return Point3D<float>{};
}
int Character::GetFXFootprint() const {
    g_log.push_back("FXFootprint");
    return 5;
}
void VisualFXManager::PlayAnimFXSet(int effectTableId, const Point3D<float>&, const GameObject*, VisualFXManager::AnimFXSetData*) {
    g_log.push_back("PlayFX " + std::to_string(effectTableId));
}

// The Lua argument list (dh2/sfc/script/lua/Arguments.hpp) is only built on the stack here. Each push is logged, and
// LuaScript::Call logs the callback name, so the script hand-off is checked in order.
sfc::script::lua::Arguments::Arguments() {}
sfc::script::lua::Arguments::~Arguments() {}

void sfc::script::lua::Arguments::pushString(const char* value) {
    g_log.push_back(std::string("push string ") + value);
}

void sfc::script::lua::Arguments::pushInteger(int value) {
    g_log.push_back("push int " + std::to_string(value));
}

void sfc::script::lua::Arguments::pushUserData(sfc::script::lua::UserData* value) {
    if (value == static_cast<sfc::script::lua::UserData*>(SelfCharacter())) {
        g_log.push_back("push user self");
    } else if (value == static_cast<sfc::script::lua::UserData*>(reinterpret_cast<Character*>(g_targetStorage))) {
        g_log.push_back("push user target");
    } else {
        g_log.push_back("push user other");
    }
}

void LuaScript::Call(const char* funcName, const sfc::script::lua::Arguments&) {
    g_log.push_back(std::string("Call ") + funcName);
}

// ---- Checks -----------------------------------------------------------------------------------------------------

namespace {

void CheckUpdate() {
    Setup();
    AI()->unk_bc = 199;
    AI()->AISDefault::OnUpdate();
    Expect(AI()->unk_bc == 199 && g_log.empty(), "OnUpdate: counter 199 does nothing");

    Setup();
    AI()->unk_bc = 200;
    AI()->AISDefault::OnUpdate();
    Expect(AI()->unk_bc == 0, "OnUpdate: counter reset above 199");
    Expect(g_log == Calls({"PauseUpdate 1000", "Stop"}), "OnUpdate: pause 1000 ms, then stop");
}

void CheckInitVCB() {
    Setup();
    int r = AI()->AISDefault::InitVCB();
    Expect(r == 0 && AI()->unk_b8 == 0, "InitVCB: no hooks defined");

    Setup();
    g_hasHit = true;
    r = AI()->AISDefault::InitVCB();
    Expect(r == 0 && AI()->unk_b8 == 0x800, "InitVCB: OnTargetHit only");

    Setup();
    g_hasMissed = true;
    r = AI()->AISDefault::InitVCB();
    Expect(r == 0x1000 && AI()->unk_b8 == 0x1000, "InitVCB: OnTargetMissed only");

    Setup();
    g_hasHit = g_hasMissed = true;
    r = AI()->AISDefault::InitVCB();
    Expect(r == 0x1000 && AI()->unk_b8 == 0x1800, "InitVCB: both hooks");
}

void CheckMelee() {
    Setup();
    g_enemy = true;
    AI()->AISDefault::OnTargetInMeleeRange();
    Expect(g_log == Calls({"IsEnemy", "Stop", "Attack target"}), "melee: enemy stops and attacks the target");

    Setup();
    g_inRange = true;
    AI()->AISDefault::OnTargetInMeleeRange();
    Expect(g_log == Calls({"IsEnemy", "IsInRange", "Stop", "InteractWith null"}), "melee: interacts in range");

    Setup();
    AI()->AISDefault::OnTargetInMeleeRange();
    Expect(g_log == Calls({"IsEnemy", "IsInRange"}), "melee: nothing out of range");
}

void CheckCloseRange() {
    // Enemy, not sought: nothing else happens.
    Setup();
    g_enemy = true;
    AI()->AISDefault::OnTargetInCloseRange();
    Expect(g_log == Calls({"IsEnemy", "IsTargetSeeking"}), "close: enemy not sought");

    // Enemy, sought, idle, empty path: back away to 2*self - target, then drop the target.
    Setup();
    g_enemy = g_seeking = g_idle = true;
    AI()->AISDefault::OnTargetInCloseRange();
    Expect(g_log == Calls({"IsEnemy", "IsTargetSeeking", "SM_IsIdle", "MoveTo", "SetTarget null false", "SyncLastTarget"}),
           "close: enemy idle backs away and drops the target");
    Expect(SamePoint(g_lastMove, Point3D<float>{1.5f, 4.0f, 7.0f}), "close: away point is 2*self - target");
    Expect(static_cast<CharAI*>(SelfCharacter())->m_targetSeeking == false, "close: seeking cleared");

    // Enemy, sought, not idle or attacking, path not empty: nothing moves.
    Setup();
    g_enemy = g_seeking = true;
    SetPathEmpty(false);
    AI()->AISDefault::OnTargetInCloseRange();
    Expect(g_log == Calls({"IsEnemy", "IsTargetSeeking", "SM_IsIdle", "SM_IsAttacking"}),
           "close: busy walking does not move");

    // Enemy, sought, attacking, path not empty: moves but keeps the target.
    Setup();
    g_enemy = g_seeking = g_attacking = true;
    SetPathEmpty(false);
    AI()->AISDefault::OnTargetInCloseRange();
    Expect(g_log == Calls({"IsEnemy", "IsTargetSeeking", "SM_IsIdle", "SM_IsAttacking", "MoveTo"}),
           "close: attacking moves while the path is not empty");

    // Not an enemy, in interaction range: stop and interact.
    Setup();
    g_inRange = true;
    AI()->AISDefault::OnTargetInCloseRange();
    Expect(g_log == Calls({"IsEnemy", "IsInRange", "Stop", "InteractWith null"}), "close: neutral in range interacts");

    // Not an enemy, out of range, empty path: walk to the spot, then drop the target.
    Setup();
    AI()->AISDefault::OnTargetInCloseRange();
    Expect(g_log == Calls({"IsEnemy", "IsInRange", "MoveTo", "SetTarget null false", "SyncLastTarget"}),
           "close: neutral walks to the interaction spot");
    Expect(SamePoint(g_lastMove, g_spot), "close: walks to the interaction spot");

    // Not an enemy, out of range, path not empty: nothing.
    Setup();
    SetPathEmpty(false);
    AI()->AISDefault::OnTargetInCloseRange();
    Expect(g_log == Calls({"IsEnemy", "IsInRange"}), "close: neutral with a path does nothing");
}

void CheckSeek(bool ranged) {
    // Enemy branch of the ranged hook: stop and attack.
    if (ranged) {
        Setup();
        g_enemy = true;
        AI()->AISDefault::OnTargetInRangedRange();
        Expect(g_log == Calls({"IsEnemy", "Stop", "Attack target"}), "ranged: enemy stops and attacks");
    }
    const auto run = [&]() {
        if (ranged) {
            AI()->AISDefault::OnTargetInRangedRange();
        } else {
            AI()->AISDefault::OnTargetOutOfRange();
        }
    };
    const char* tag = ranged ? "ranged" : "out-of-range";
    const Calls prefix = ranged ? Calls({"IsEnemy"}) : Calls();

    // Not sought: nothing.
    Setup();
    run();
    Calls expect = prefix;
    expect.push_back("IsTargetSeeking");
    Expect(g_log == expect, tag);

    // Sought, idle, empty path: walk to the spot, then drop the target.
    Setup();
    g_seeking = g_idle = true;
    run();
    expect = prefix;
    expect.insert(expect.end(), {"IsTargetSeeking", "SM_IsIdle", "MoveTo", "SetTarget null false", "SyncLastTarget"});
    Expect(g_log == expect, tag);
    Expect(SamePoint(g_lastMove, g_spot), tag);

    // Sought, neither idle nor attacking, path not empty: nothing.
    Setup();
    g_seeking = true;
    SetPathEmpty(false);
    run();
    expect = prefix;
    expect.insert(expect.end(), {"IsTargetSeeking", "SM_IsIdle", "SM_IsAttacking"});
    Expect(g_log == expect, tag);

    // Sought, attacking, path not empty: walk to the spot and keep the target.
    Setup();
    g_seeking = g_attacking = true;
    SetPathEmpty(false);
    run();
    expect = prefix;
    expect.insert(expect.end(), {"IsTargetSeeking", "SM_IsIdle", "SM_IsAttacking", "MoveTo"});
    Expect(g_log == expect, tag);
}

void CheckAttack() {
    // A target that is not a character is interacted with by the owner.
    Setup();
    AI()->AISDefault::OnAttack(0, 0, true);
    Expect(g_log == Calls({"Interact owner"}), "attack: non-character target is interacted with");

    // A character target is attacked with the flag, and the result is applied.
    Setup();
    g_targetIsCharacter = true;
    AI()->AISDefault::OnAttack(0, 0, true);
    Expect(g_log == Calls({"MeleeAttack true", "ApplyResult"}), "attack: character target is attacked");
}

// OnInteract: the drop at the end is AI_SetTarget(null, false) and AI_SyncLastTarget only. The seeking flag must keep
// its value (the asm has no store to +0x412 on that path), so every case checks it.
void CheckInteract() {
    // No target: nothing happens.
    Setup();
    static_cast<CharAI*>(SelfCharacter())->m_target = nullptr;
    AI()->AISDefault::OnInteract();
    Expect(g_log.empty(), "interact: no target does nothing");

    // A neutral target that is not a character: interact with the owner, then drop the target.
    Setup();
    AI()->AISDefault::OnInteract();
    Expect(g_log == Calls({"IsCharacter", "Interact owner", "IsCharacter", "SetTarget null false", "SyncLastTarget"}),
           "interact: neutral target is interacted with and dropped");
    Expect(static_cast<CharAI*>(SelfCharacter())->m_targetSeeking == true, "interact: seeking flag is left alone");

    // unk_2fa (+0x2fa) set on the target: interacted with, the target is kept.
    Setup();
    Target()->unk_2fa = 1;
    AI()->AISDefault::OnInteract();
    Expect(g_log == Calls({"IsCharacter", "Interact owner"}), "interact: unk_2fa keeps the target");

    // A monster character is not interacted with.
    Setup();
    g_targetIsCharacter = g_isMonster = true;
    AI()->AISDefault::OnInteract();
    Expect(g_log == Calls({"IsCharacter", "IsMonster"}), "interact: monster is not interacted with");

    // A merchant character is interacted with and kept.
    Setup();
    g_targetIsCharacter = g_isMerchant = true;
    AI()->AISDefault::OnInteract();
    Expect(g_log == Calls({"IsCharacter", "IsMonster", "Interact owner", "IsCharacter", "IsMerchant"}),
           "interact: merchant is interacted with and kept");

    // A plain character target is interacted with and dropped.
    Setup();
    g_targetIsCharacter = true;
    AI()->AISDefault::OnInteract();
    Expect(g_log == Calls({"IsCharacter", "IsMonster", "Interact owner", "IsCharacter", "IsMerchant", "SetTarget null false",
                           "SyncLastTarget"}),
           "interact: plain character is interacted with and dropped");
    Expect(static_cast<CharAI*>(SelfCharacter())->m_targetSeeking == true, "interact: character case keeps seeking flag");
}

void CheckCombatResults() {
    Character* self = SelfCharacter();
    Character* other = reinterpret_cast<Character*>(g_targetStorage);
    Character::AttackResult hit{};  // m_resultFlags 0: a hit
    Character::AttackResult miss{};
    miss.m_resultFlags = 0x2u;      // low two bits set: a miss

    // A hit with the hit callback bit calls OnTargetHit, after both characters are pushed.
    Setup();
    AI()->unk_b8 = 0x800u;
    AI()->AISDefault::OnCombatResults(self, other, &hit);
    Expect(g_log == Calls({"push user self", "push user target", "Call OnTargetHit"}), "combat: hit calls OnTargetHit");

    // A miss with the miss callback bit calls OnTargetMissed.
    Setup();
    AI()->unk_b8 = 0x1000u;
    AI()->AISDefault::OnCombatResults(self, other, &miss);
    Expect(g_log == Calls({"push user self", "push user target", "Call OnTargetMissed"}), "combat: miss calls OnTargetMissed");

    // Each result needs its own callback bit: a hit with only the miss bit, or a miss with only the hit bit, calls nothing.
    Setup();
    AI()->unk_b8 = 0x1000u;
    AI()->AISDefault::OnCombatResults(self, other, &hit);
    Expect(g_log == Calls({"push user self", "push user target"}), "combat: hit without its bit calls nothing");

    Setup();
    AI()->unk_b8 = 0x800u;
    AI()->AISDefault::OnCombatResults(self, other, &miss);
    Expect(g_log == Calls({"push user self", "push user target"}), "combat: miss without its bit calls nothing");
}

// The tables and the floor the footstep part reads: one CharEffect row (footsteps allowed unless g_footstepsAllowed is cleared), one
// FootstepEffect row for the material "stone" (effect 9) and a floor whose floortypes string is "stone".
Structs::CharEffect g_charEffectRow[1];
Structs::FootstepEffect g_footstepRow[1];
alignas(PFFloor) unsigned char g_floorStorage[sizeof(PFFloor)];

void SetFootstepWorld(bool allowed, const char* material) {
    g_charEffectRow[0].TriggerFloorFX = allowed;
    g_footstepRow[0].Effect = 9;
    if (g_footstepRow[0].Floortype == nullptr) {
        g_footstepRow[0].Floortype = static_cast<char*>(std::malloc(6));  // the record frees its string buffer in its destructor
        std::strcpy(g_footstepRow[0].Floortype, "stone");
    }
    Arrays::CharEffectTable::members = reinterpret_cast<std::uint8_t*>(g_charEffectRow);
    Arrays::CharEffectTable::size = 1;
    Arrays::FootstepEffectTable::members = reinterpret_cast<std::uint8_t*>(g_footstepRow);
    Arrays::FootstepEffectTable::size = 1;
    if (material == nullptr) {
        SelfCharacter()->m_pfObject.m_floor = nullptr;  // no floor under the character
        return;
    }
    PFFloor* floor = reinterpret_cast<PFFloor*>(g_floorStorage);
    new (&floor->m_floorTypes) std::string(material);  // the floor storage is raw: build the string in place (short names, nothing to free)
    SelfCharacter()->m_pfObject.m_floor = floor;
}

void CheckAnimEvent() {
    // Every event reaches the script with its name and the character's last event data (CharAnimator m_lastEventData).
    Setup();
    SelfCharacter()->m_lastEventData = 7;
    AI()->AISDefault::OnAnimEvent("jump");
    Expect(g_log == Calls({"push string jump", "push int 7", "Call OnAnimEvent"}), "anim: event goes to OnAnimEvent");

    // A left step reads the left foot position after the call (no floor under the character: no footstep material).
    Setup();
    SetFootstepWorld(true, nullptr);
    SelfCharacter()->m_lastEventData = 7;
    AI()->AISDefault::OnAnimEvent("step_left");
    Expect(g_log == Calls({"push string step_left", "push int 7", "Call OnAnimEvent", "LeftFoot", "FXFootprint", "PlayFX 5"}),
           "anim: step_left plays the footprint at the left foot");

    // A right step reads the right foot position.
    Setup();
    SetFootstepWorld(true, nullptr);
    SelfCharacter()->m_lastEventData = 7;
    AI()->AISDefault::OnAnimEvent("step_right");
    Expect(g_log == Calls({"push string step_right", "push int 7", "Call OnAnimEvent", "RightFoot", "FXFootprint", "PlayFX 5"}),
           "anim: step_right plays the footprint at the right foot");

    // With footsteps allowed and a floor material that has a FootstepEffect row, that effect plays as well.
    Setup();
    SetFootstepWorld(true, "stone");
    AI()->AISDefault::OnAnimEvent("step_right");
    Expect(g_log == Calls({"push string step_right", "push int 7", "Call OnAnimEvent", "RightFoot", "FXFootprint", "PlayFX 5", "PlayFX 9"}),
           "anim: a known floor material plays its footstep effect");

    // Footsteps not allowed by the CharEffect row, or an unknown material: only the footprint.
    Setup();
    SetFootstepWorld(false, "stone");
    AI()->AISDefault::OnAnimEvent("step_left");
    Expect(g_log == Calls({"push string step_left", "push int 7", "Call OnAnimEvent", "LeftFoot", "FXFootprint", "PlayFX 5"}),
           "anim: footsteps not allowed");
    Setup();
    SetFootstepWorld(true, "grass");
    AI()->AISDefault::OnAnimEvent("step_left");
    Expect(g_log == Calls({"push string step_left", "push int 7", "Call OnAnimEvent", "LeftFoot", "FXFootprint", "PlayFX 5"}),
           "anim: unknown material");
    SelfCharacter()->m_pfObject.m_floor = nullptr;
}

void CheckScriptTimer() {
    Setup();
    AI()->AISDefault::OnScriptTimer(5u);
    Expect(g_log == Calls({"push int 5", "Call OnTimer"}), "timer: id goes to OnTimer");
}

}  // namespace

int main() {
    // The path list is constructed in place once, before any check uses it.
    std::memset(g_charStorage, 0, sizeof g_charStorage);
    ::new (static_cast<void*>(&SelfCharacter()->m_pfObject.m_path)) PathList();

    // Vtable slots of the virtual calls on the target: GameObject::IsCharacter (+0x24) and GameObject::Interact (+0x98).
    g_targetVtable[9] = reinterpret_cast<void*>(&FakeIsCharacter);
    g_targetVtable[38] = reinterpret_cast<void*>(&FakeInteract);

    CheckUpdate();
    CheckInitVCB();
    CheckMelee();
    CheckCloseRange();
    CheckSeek(true);
    CheckSeek(false);
    CheckAttack();
    CheckInteract();
    CheckCombatResults();
    CheckAnimEvent();
    CheckScriptTimer();

    if (g_failures == 0) {
        std::printf("AISDefault part 3: all checks passed\n");
        return 0;
    }
    std::printf("AISDefault part 3: %d check(s) failed\n", g_failures);
    return 1;
}
