// Test for batch g1-game-character-CharAI-2ae0f1-5.
//
// The batch source calls functions of other batches (the CharAI skill hooks, CharAnimator and CharStateMachine queries,
// Character::HasComboAttack, GameObject::GetTargetPosition, ObjectHandle and ObjectManager lookups, v2Controller::Cmd_MoveTo).
// They are stubbed below so the executable links. The checks reach only the group map, the target sync and the move
// distance test, which make no virtual call.
//
// Neither CharAI nor Character is constructed: the storage is zero-filled and the std::string members are placement-
// constructed before use. The private members are reached through explicit instantiations (the usual access trick).

#include <cstdio>
#include <cstring>
#include <map>
#include <new>
#include <string>
#include <utility>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/CameraLevel.hpp"
#include "dh2/CharAI.hpp"
#include "dh2/Character.hpp"
#include "dh2/Level.hpp"
#include "dh2/ObjectHandle.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/member_names.hpp"
#include "pydata-accessors/name_table.hpp"

// ---- stub state ---------------------------------------------------------------------------------------------------------

Point3D<float> g_targetPos{0.0f, 0.0f, 0.0f};
float g_meleeRadiusSq = 0.0f;
GameObject* g_moveToTarget = nullptr;
int g_moveCalls = 0;

// ---- stubs for symbols defined by other batches (only the linker needs them) -------------------------------------------

static ObjectManager* g_test_dword_99F764 = nullptr;
ObjectManager*& dword_99F764 = g_test_dword_99F764;  // link-1: the header declares a reference to the Application member (game-app/src/link1_ApplicationWords.cpp)
std::map<std::pair<std::string, int>, CharAI::GroupInfo> CharAI::s_groups;

float CharAI::AI_GetMeleeRadiusSq() const { return g_meleeRadiusSq; }
void CharAI::_SkillEvent() {}
void CharAI::_SpellEvent() {}

int CharAnimator::ANIM_GetStepIndex() const { return 0; }
int CharAnimator::ANIM_GetStepCount() const { return 0; }
int CharStateMachine::SM_GetState() const { return -1; }
bool Character::HasComboAttack() const { return false; }
const Point3D<float>& GameObject::GetTargetPosition() const { return g_targetPos; }

ObjectHandle::ObjectHandle() : m_id(0), m_cached(nullptr), m_generation(0) {}
ObjectHandle::operator Character*() { return nullptr; }
ObjectHandle::operator GameObject*() { return nullptr; }
ObjectHandle ObjectManager::GetObjectByName(char const*, int, bool, char const*) { return ObjectHandle(); }

void v2Controller::Cmd_MoveTo(GameObject* target) {
    g_moveToTarget = target;
    ++g_moveCalls;
}

// Animation, camera and name-table calls of _ParseObjectAnimEvent and _OnAnimStepEnd_SkillSpell. The checks do not reach them.
void CharAnimator::ANIM_StopLoop(bool) {}
void CharAnimator::ANIM_Set(int) {}
Application& ApplicationGetInstance() {
    alignas(Application) static unsigned char storage[sizeof(Application)];
    return *reinterpret_cast<Application*>(storage);
}
Level* Application::GetCurrentLevel() const { return nullptr; }
bool CameraLevel::CanPlayShakeAnim(Character*) const { return false; }
bool CameraLevel::PlayAnim(int, int, bool) { return false; }
int pydata::FindMemberName(const pydata::NameTable&, int, const char*) { return -1; }
pydata::NameTable Arrays::AnimTable::m_memberNames;
pydata::NameTable Arrays::AnimDict::m_memberNames;

// ---- checks ------------------------------------------------------------------------------------------------------------

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                              \
    do {                                                                          \
        if (!(cond)) {                                                            \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);           \
            ++g_failures;                                                         \
        }                                                                         \
    } while (0)

// Access to private members. The explicit instantiation of Rob defines a friend function that returns the
// member's address, so get(Tag{}) yields a pointer to the private member.
template <typename Tag, typename Tag::type M>
struct Rob {
    friend typename Tag::type get(Tag) { return M; }
};

struct TagTarget { using type = GameObject* CharAI::*; friend type get(TagTarget); };
struct TagLastTarget { using type = GameObject* CharAI::*; friend type get(TagLastTarget); };
struct TagCharacter { using type = Character* CharAI::*; friend type get(TagCharacter); };
struct TagTargetSeeking { using type = bool CharAI::*; friend type get(TagTargetSeeking); };
struct TagGroup { using type = CharAI::GroupInfo* CharAI::*; friend type get(TagGroup); };
struct TagGroupRole { using type = int CharAI::*; friend type get(TagGroupRole); };
struct TagMove { using type = bool (CharAI::*)(); friend type get(TagMove); };

template struct Rob<TagTarget, &CharAI::m_target>;
template struct Rob<TagLastTarget, &CharAI::m_lastTarget>;
template struct Rob<TagCharacter, &CharAI::m_character>;
template struct Rob<TagTargetSeeking, &CharAI::m_targetSeeking>;
template struct Rob<TagGroup, &CharAI::m_group>;
template struct Rob<TagGroupRole, &CharAI::m_groupRole>;
template struct Rob<TagMove, &CharAI::_OnAnimStepBegin_Move>;

// Zero-filled storage for the objects. Only the addresses and plain fields are used.
alignas(CharAI) unsigned char g_aiStorage[sizeof(CharAI)];
alignas(Character) unsigned char g_ownerStorage[sizeof(Character)];
alignas(Character) unsigned char g_otherStorage[sizeof(Character)];
alignas(Character) unsigned char g_thirdStorage[sizeof(Character)];
alignas(Character) unsigned char g_fourthStorage[sizeof(Character)];
alignas(Character) unsigned char g_fifthStorage[sizeof(Character)];
alignas(v2Controller) unsigned char g_controllerStorage[sizeof(v2Controller)];

CharAI* AI() { return reinterpret_cast<CharAI*>(g_aiStorage); }
Character* Other() { return reinterpret_cast<Character*>(g_otherStorage); }

// Zero-fills a Character and gives it a group name, a role name and the key id at +0x64.
Character* MakeMember(unsigned char* storage, const char* group, const char* role, int id) {
    std::memset(storage, 0, sizeof(Character));
    Character* c = reinterpret_cast<Character*>(storage);
    new (&c->m_charGroup) std::string(group);
    new (&c->m_charGroupRole) std::string(role);
    c->unk_64 = id;
    return c;
}

void TestGroupDefaultAndCopy() {
    CharAI::GroupInfo fresh;
    EXPECT(fresh.m_allMembersDead == -1);
    EXPECT(!fresh.m_leadersDead);
    EXPECT(!fresh.m_triggered);
    EXPECT(fresh.m_masterLeaders.empty() && fresh.m_leaders.empty() && fresh.m_members.empty());

    CharAI::GroupInfo source;
    Character* p1 = reinterpret_cast<Character*>(0x1000);
    Character* p2 = reinterpret_cast<Character*>(0x2000);
    Character* p3 = reinterpret_cast<Character*>(0x3000);
    Character* p4 = reinterpret_cast<Character*>(0x4000);
    source.m_masterLeaders.push_back(p1);
    source.m_leaders.push_back(p2);
    source.m_members.push_back(p3);
    source.m_members.push_back(p4);
    source.m_allMembersDead = 5;
    source.m_leadersDead = true;
    source.m_triggered = true;

    // The copy constructor copies all three vectors (the asm shows all three calls) and the three scalars.
    CharAI::GroupInfo copy(source);
    EXPECT(copy.m_masterLeaders.size() == 1 && copy.m_masterLeaders[0] == p1);
    EXPECT(copy.m_leaders.size() == 1 && copy.m_leaders[0] == p2);
    EXPECT(copy.m_members.size() == 2 && copy.m_members[0] == p3 && copy.m_members[1] == p4);
    EXPECT(copy.m_allMembersDead == 5);
    EXPECT(copy.m_leadersDead);
    EXPECT(copy.m_triggered);
    // The copy is independent of the source.
    source.m_members.clear();
    EXPECT(copy.m_members.size() == 2);
}

void TestClearGroupInfo() {
    CharAI* self = AI();
    self->ClearGroupInfo();
    CharAI::s_groups.emplace(std::make_pair(std::string("Stale"), 1), CharAI::GroupInfo());
    EXPECT(!CharAI::s_groups.empty());
    self->ClearGroupInfo();
    EXPECT(CharAI::s_groups.empty());
    // Clearing an empty map is a no-op.
    self->ClearGroupInfo();
    EXPECT(CharAI::s_groups.empty());
}

void TestAddAndRemoveGroupMembers() {
    CharAI* self = AI();
    self->ClearGroupInfo();

    const auto groupOf = get(TagGroup{});
    const auto roleOf = get(TagGroupRole{});

    Character* leader = MakeMember(g_ownerStorage, "Pack", "Leader", 7);
    Character* normal = MakeMember(g_otherStorage, "Pack", "Normal", 7);
    Character* master = MakeMember(g_thirdStorage, "Pack", "MasterLeader", 7);
    Character* grouped = MakeMember(g_fourthStorage, "Pack", "Group", 7);

    CharAI::AddToGroup(leader);
    EXPECT(CharAI::s_groups.size() == 1);
    const auto key = std::make_pair(std::string("Pack"), 7);
    auto it = CharAI::s_groups.find(key);
    EXPECT(it != CharAI::s_groups.end());
    if (it == CharAI::s_groups.end()) {
        ++g_failures;
        return;
    }
    CharAI::GroupInfo& group = it->second;
    EXPECT(group.m_leaders.size() == 1 && group.m_leaders[0] == leader);
    EXPECT(static_cast<CharAI*>(leader)->*groupOf == &group);
    EXPECT(static_cast<CharAI*>(leader)->*roleOf == 1);

    CharAI::AddToGroup(normal);
    CharAI::AddToGroup(master);
    CharAI::AddToGroup(grouped);
    EXPECT(group.m_members.size() == 2);
    EXPECT(group.m_members[0] == normal && group.m_members[1] == grouped);
    EXPECT(group.m_masterLeaders.size() == 1 && group.m_masterLeaders[0] == master);
    EXPECT(static_cast<CharAI*>(normal)->*roleOf == 0);
    EXPECT(static_cast<CharAI*>(grouped)->*roleOf == 3);
    EXPECT(static_cast<CharAI*>(master)->*roleOf == 2);
    EXPECT(static_cast<CharAI*>(normal)->*groupOf == &group);

    // An unknown role name, and an empty group name, join nothing.
    Character* stray = MakeMember(g_fifthStorage, "Pack", "Bogus", 7);
    CharAI::AddToGroup(stray);
    EXPECT(group.m_members.size() == 2 && group.m_leaders.size() == 1 && group.m_masterLeaders.size() == 1);
    std::memset(g_fifthStorage, 0, sizeof(g_fifthStorage));
    Character* nameless = MakeMember(g_fifthStorage, "", "Normal", 7);
    CharAI::AddToGroup(nameless);
    EXPECT(CharAI::s_groups.size() == 1);
    EXPECT(group.m_members.size() == 2);

    // A different key id makes a second group.
    Character* other = MakeMember(g_fifthStorage, "Pack", "Normal", 8);
    CharAI::AddToGroup(other);
    EXPECT(CharAI::s_groups.size() == 2);
    auto second = CharAI::s_groups.find(std::make_pair(std::string("Pack"), 8));
    EXPECT(second != CharAI::s_groups.end() && second->second.m_members.size() == 1);

    // RemoveFromGroup on the normal member removes it from m_members; the group pointer stays.
    static_cast<CharAI*>(normal)->RemoveFromGroup();
    EXPECT(group.m_members.size() == 1 && group.m_members[0] == grouped);
    EXPECT(static_cast<CharAI*>(normal)->*groupOf == &group);

    // The leader and the master leader leave their own vectors.
    static_cast<CharAI*>(leader)->RemoveFromGroup();
    EXPECT(group.m_leaders.empty());
    static_cast<CharAI*>(master)->RemoveFromGroup();
    EXPECT(group.m_masterLeaders.empty());

    // A role outside 0..3 does nothing, and a member that is not in the vector is not removed.
    static_cast<CharAI*>(grouped)->*roleOf = 9;
    static_cast<CharAI*>(grouped)->RemoveFromGroup();
    EXPECT(group.m_members.size() == 1 && group.m_members[0] == grouped);
    static_cast<CharAI*>(grouped)->*roleOf = 0;
    static_cast<CharAI*>(normal)->RemoveFromGroup();
    EXPECT(group.m_members.size() == 1);

    self->ClearGroupInfo();
    EXPECT(CharAI::s_groups.empty());
}

void TestSyncLastTarget() {
    CharAI* self = AI();
    const auto target = get(TagTarget{});
    const auto lastTarget = get(TagLastTarget{});
    self->*target = reinterpret_cast<GameObject*>(0x5000);
    self->*lastTarget = nullptr;
    self->AI_SyncLastTarget();
    EXPECT(self->*lastTarget == reinterpret_cast<GameObject*>(0x5000));
}

void TestTargetSeeking() {
    CharAI* self = AI();
    const auto seeking = get(TagTargetSeeking{});
    const auto character = get(TagCharacter{});
    // Seeking is also gated by bit 0x1000 of the owner's state flags (CharStateMachine::m_stateFlags, +0x24).
    Character* owner = MakeMember(g_ownerStorage, "", "", -1);
    self->*character = owner;
    self->*seeking = false;
    EXPECT(!self->AI_IsTargetSeeking());
    self->*seeking = true;
    EXPECT(self->AI_IsTargetSeeking());
    owner->CharStateMachine::m_stateFlags = 0x1000u;
    EXPECT(!self->AI_IsTargetSeeking());
    owner->CharStateMachine::m_stateFlags = 0;
}

void TestMoveTowardTarget() {
    CharAI* self = AI();
    const auto move = get(TagMove{});
    const auto target = get(TagTarget{});
    const auto character = get(TagCharacter{});
    const auto seeking = get(TagTargetSeeking{});

    Character* owner = MakeMember(g_ownerStorage, "", "", -1);
    owner->m_destination.X = 0.0f;
    owner->m_destination.Y = 0.0f;
    owner->m_destination.Z = 0.0f;
    owner->m_controller = reinterpret_cast<v2Controller*>(g_controllerStorage);

    self->*character = owner;
    self->*target = Other();
    self->*seeking = true;
    g_targetPos.X = 3.0f;
    g_targetPos.Y = 4.0f;
    g_targetPos.Z = 0.0f;  // squared distance 25

    // The melee radius (squared) is 16, less than 25: the character moves.
    g_meleeRadiusSq = 16.0f;
    g_moveCalls = 0;
    g_moveToTarget = nullptr;
    (self->*move)();
    EXPECT(g_moveCalls == 1);
    EXPECT(g_moveToTarget == Other());

    // A radius of 100 covers the target: no move.
    g_meleeRadiusSq = 100.0f;
    g_moveCalls = 0;
    (self->*move)();
    EXPECT(g_moveCalls == 0);

    // Not seeking: no move, even out of range.
    g_meleeRadiusSq = 16.0f;
    self->*seeking = false;
    (self->*move)();
    EXPECT(g_moveCalls == 0);

    // No target: no move.
    self->*seeking = true;
    self->*target = nullptr;
    (self->*move)();
    EXPECT(g_moveCalls == 0);

    owner->m_controller = nullptr;
}

}  // namespace

int main() {
    TestGroupDefaultAndCopy();
    TestClearGroupInfo();
    TestAddAndRemoveGroupMembers();
    TestSyncLastTarget();
    TestTargetSeeking();
    TestMoveTowardTarget();
    if (g_failures) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-character-CharAI-2ae0f1-5 test: all checks passed\n");
    return 0;
}
