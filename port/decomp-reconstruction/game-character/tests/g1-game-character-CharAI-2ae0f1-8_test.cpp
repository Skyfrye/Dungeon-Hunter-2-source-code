// Test for batch g1-game-character-CharAI-2ae0f1-8.
//
// The batch source calls functions of other batches (Character queries, CharStateMachine and CharAnimator
// transitions, CharProperties counters, CharAISkillScript hooks, the CharAI target and spell helpers). They are stubbed
// below so the executable links. The checks run the skill and spell loops, the callbacks, the cleanup and reload
// paths, and the usability and begin/end logic that does not reach the trophy or the Character virtuals.
//
// Neither CharAI nor Character is constructed: the storage is zero-filled (an empty std::vector is all zeros), and
// the skill and faery rows are zero-filled buffers whose named fields are written through the typed record class.
// The private members are reached through explicit instantiations (the usual access trick).

#include <cstdio>
#include <cstring>
#include <utility>
#include <vector>

#include "dh2/CharAI.hpp"
#include "dh2/CharAISkillScript.hpp"
#include "dh2/Character.hpp"
#include "pydata-accessors/structs_records.hpp"

// ---- stub state ---------------------------------------------------------------------------------------------------------

int gAssertLevel = 0;

namespace {

bool g_smUsingSkill = false;
bool g_smCasting = false;
bool g_scriptLoaded = true;
bool g_spellActive = false;
bool g_usable = true;
bool g_activeCheck = true;
int g_faeryId = -1;
int g_slotCount = 0;
int g_reloadCalls = 0;
int g_setSkillsCalls = 0;
int g_setCastCalls = 0;
int g_setSkillCalls = 0;
unsigned int g_lastSkillId = 0;
bool g_lastSkillFlag = false;
int g_stopLoopCalls = 0;
int g_setTargetCalls = 0;
bool g_lastTargetNull = false;
bool g_lastForce = true;
int g_syncCalls = 0;
int g_endSpellCalls = 0;
int g_deletedScripts = 0;

struct LogEntry {
    const void* who;
    char what;
};
std::vector<LogEntry> g_log;

void Log(const void* who, char what) { g_log.push_back(LogEntry{who, what}); }

}  // namespace

// ---- stubs for symbols defined by other batches (only the linker needs them) -------------------------------------------

bool CharStateMachine::SM_IsUsingSkill() const { return g_smUsingSkill; }
bool CharStateMachine::SM_IsCasting() const { return g_smCasting; }
int CharStateMachine::SM_SetCastState(unsigned int, void*, bool) {
    ++g_setCastCalls;
    g_smCasting = true;
    return 0;
}
int CharStateMachine::SM_SetSkillState(unsigned int skillId, bool flag, void*, bool) {
    ++g_setSkillCalls;
    g_lastSkillId = skillId;
    g_lastSkillFlag = flag;
    return 0;
}

void CharAnimator::ANIM_StopLoop(bool) { ++g_stopLoopCalls; }

void CharProperties::PROPS_AddInt(int, int) {}
int CharProperties::PROPS_GetInt(int, bool) const { return 0; }

int Character::SG_GetCurrentFaerieId(int) const { return g_faeryId; }
void Character::SG_ReloadSkills() { ++g_reloadCalls; }
void Character::SG_TellSlots(void (*cb)(int, unsigned int, void*), void* user) {
    for (int i = 0; i < g_slotCount; ++i) {
        cb(0, static_cast<unsigned int>(i), user);
    }
}

// Row storage (filled in by the checks below).
namespace {
alignas(Structs::Skill) unsigned char g_skillRowStorage[4][sizeof(Structs::Skill)];
alignas(Structs::Faery) unsigned char g_faeryRowStorage[sizeof(Structs::Faery)];
const void* g_skillRows[4] = {g_skillRowStorage[0], g_skillRowStorage[1], g_skillRowStorage[2], g_skillRowStorage[3]};
}  // namespace

const void* Character::GetCharFaery(int) const { return g_faeryRowStorage; }
const void* Character::GetCharSkill(int skill) const { return g_skillRows[skill]; }

void CharAI::AI_SetTarget(GameObject* target, bool force) {
    ++g_setTargetCalls;
    g_lastTargetNull = (target == nullptr);
    g_lastForce = force;
}
void CharAI::AI_SyncLastTarget() { ++g_syncCalls; }
bool CharAI::AI_IsSpellActive() const { return g_spellActive; }
void CharAI::AI_EndSpell(bool) { ++g_endSpellCalls; }
void CharAI::SetSkillsAndSpells() { ++g_setSkillsCalls; }
bool CharAI::IsScriptProcessLoaded() const { return g_scriptLoaded; }

CharAISkillScript::CharAISkillScript(Character*, const char*, unsigned int) {}
CharAISkillScript::~CharAISkillScript() { ++g_deletedScripts; }
bool CharAISkillScript::OnPreSkill() {
    Log(this, 'R');
    return true;
}
bool CharAISkillScript::OnSkillCheck_Usable() { return g_usable; }
bool CharAISkillScript::OnSkillCheck_Active() { return g_activeCheck; }
void CharAISkillScript::OnSkillUpdate() { Log(this, 'U'); }
void CharAISkillScript::OnSkillCleanUp() { Log(this, 'C'); }
void CharAISkillScript::OnPostSkill() { Log(this, 'P'); }
int CharAISkillScript::OnSkill() {
    Log(this, 'E');
    return 0;
}

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

struct TagSkills { using type = std::vector<CharAISkillScript*> CharAI::*; friend type get(TagSkills); };
struct TagSpells { using type = std::vector<CharAISkillScript*> CharAI::*; friend type get(TagSpells); };
struct TagCurSkill { using type = int CharAI::*; friend type get(TagCurSkill); };
struct TagStepBegun { using type = bool CharAI::*; friend type get(TagStepBegun); };
struct TagStepEnded { using type = bool CharAI::*; friend type get(TagStepEnded); };
struct TagSticky { using type = bool CharAI::*; friend type get(TagSticky); };
struct TagCharacter { using type = Character* CharAI::*; friend type get(TagCharacter); };
struct TagSkillEvent { using type = void (CharAI::*)(); friend type get(TagSkillEvent); };
struct TagSkillBlur { using type = void (CharAI::*)(); friend type get(TagSkillBlur); };
struct TagSpellEvent { using type = void (CharAI::*)(); friend type get(TagSpellEvent); };
struct TagSpellBlur { using type = void (CharAI::*)(); friend type get(TagSpellBlur); };
struct TagSkillCleanUp { using type = void (CharAI::*)(); friend type get(TagSkillCleanUp); };
struct TagSpellCleanUp { using type = void (CharAI::*)(); friend type get(TagSpellCleanUp); };
struct TagClearSticky { using type = void (CharAI::*)(); friend type get(TagClearSticky); };

template struct Rob<TagSkills, &CharAI::m_skillScripts>;
template struct Rob<TagSpells, &CharAI::m_spellScripts>;
template struct Rob<TagCurSkill, &CharAI::m_curSkill>;
template struct Rob<TagStepBegun, &CharAI::m_skillStepBegun>;
template struct Rob<TagStepEnded, &CharAI::m_skillStepEnded>;
template struct Rob<TagSticky, &CharAI::m_stickyTarget>;
template struct Rob<TagCharacter, &CharAI::m_character>;
template struct Rob<TagSkillEvent, &CharAI::_SkillEvent>;
template struct Rob<TagSkillBlur, &CharAI::_SkillBlur>;
template struct Rob<TagSpellEvent, &CharAI::_SpellEvent>;
template struct Rob<TagSpellBlur, &CharAI::_SpellBlur>;
template struct Rob<TagSkillCleanUp, &CharAI::_SkillCleanUp>;
template struct Rob<TagSpellCleanUp, &CharAI::_SpellCleanUp>;
template struct Rob<TagClearSticky, &CharAI::_ClearNonStickyTarget>;

alignas(CharAI) unsigned char g_aiStorage[sizeof(CharAI)];
alignas(Character) unsigned char g_ownerStorage[sizeof(Character)];

CharAI* g_ai = nullptr;

void ResetState() {
    g_smUsingSkill = false;
    g_smCasting = false;
    g_scriptLoaded = true;
    g_spellActive = false;
    g_usable = true;
    g_activeCheck = true;
    g_faeryId = -1;
    g_slotCount = 0;
    g_reloadCalls = 0;
    g_setSkillsCalls = 0;
    g_setCastCalls = 0;
    g_setSkillCalls = 0;
    g_stopLoopCalls = 0;
    g_setTargetCalls = 0;
    g_lastTargetNull = false;
    g_lastForce = true;
    g_syncCalls = 0;
    g_endSpellCalls = 0;
    g_log.clear();
    for (auto& row : g_skillRowStorage) {
        std::memset(row, 0, sizeof(row));
    }
    std::memset(g_faeryRowStorage, 0, sizeof(g_faeryRowStorage));
    auto* ai = g_ai;
    ai->*get(TagSkills{}) = std::vector<CharAISkillScript*>{};
    ai->*get(TagSpells{}) = std::vector<CharAISkillScript*>{};
    ai->*get(TagCurSkill{}) = -1;
    ai->*get(TagStepBegun{}) = false;
    ai->*get(TagStepEnded{}) = false;
    ai->*get(TagSticky{}) = true;
    ai->*get(TagCharacter{}) = reinterpret_cast<Character*>(g_ownerStorage);
}

Structs::Skill* SkillRow(int index) { return reinterpret_cast<Structs::Skill*>(g_skillRowStorage[index]); }
Structs::Faery* FaeryRow() { return reinterpret_cast<Structs::Faery*>(g_faeryRowStorage); }

bool LogIs(std::size_t index, const void* who, char what) {
    return index < g_log.size() && g_log[index].who == who && g_log[index].what == what;
}

void CheckUpdateAllSkills() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    auto* s2 = new CharAISkillScript(nullptr, "s2", 2);
    auto* sp0 = new CharAISkillScript(nullptr, "sp0", 0);
    g_ai->*get(TagSkills{}) = {s0, nullptr, s2};
    g_ai->*get(TagSpells{}) = {sp0};
    g_ai->UpdateAllSkills();
    EXPECT(g_log.size() == 3);
    EXPECT(LogIs(0, s0, 'U'));
    EXPECT(LogIs(1, s2, 'U'));
    EXPECT(LogIs(2, sp0, 'U'));

    ResetState();
    g_smCasting = true;
    g_ai->*get(TagSkills{}) = {s0};
    g_ai->UpdateAllSkills();
    EXPECT(g_log.empty());
}

void CheckUpdateSkills() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    auto* s2 = new CharAISkillScript(nullptr, "s2", 2);
    auto* sp0 = new CharAISkillScript(nullptr, "sp0", 0);
    auto* sp1 = new CharAISkillScript(nullptr, "sp1", 1);
    g_ai->*get(TagSkills{}) = {s0, nullptr, s2};
    g_ai->*get(TagSpells{}) = {sp0, sp1};
    g_slotCount = 3;
    g_faeryId = 1;
    g_ai->UpdateSkills();
    EXPECT(g_log.size() == 3);
    EXPECT(LogIs(0, s0, 'U'));
    EXPECT(LogIs(1, s2, 'U'));
    EXPECT(LogIs(2, sp1, 'U'));
}

void CheckBlurAndEvents() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    auto* s2 = new CharAISkillScript(nullptr, "s2", 2);
    auto* sp0 = new CharAISkillScript(nullptr, "sp0", 0);
    g_ai->*get(TagSkills{}) = {s0, nullptr, s2};
    g_ai->*get(TagSpells{}) = {sp0};

    g_ai->*get(TagCurSkill{}) = 2;
    (g_ai->*get(TagSkillEvent{}))();
    (g_ai->*get(TagSkillBlur{}))();
    EXPECT(g_log.size() == 2);
    EXPECT(LogIs(0, s2, 'E'));
    EXPECT(LogIs(1, s2, 'P'));

    ResetState();
    g_ai->*get(TagSkills{}) = {s0, nullptr, s2};
    g_ai->*get(TagSpells{}) = {sp0};
    g_ai->*get(TagCurSkill{}) = -1;  // no current skill: nothing runs
    (g_ai->*get(TagSkillEvent{}))();
    (g_ai->*get(TagSkillBlur{}))();
    EXPECT(g_log.empty());

    ResetState();
    g_ai->*get(TagSpells{}) = {sp0};
    g_faeryId = 0;
    (g_ai->*get(TagSpellEvent{}))();
    (g_ai->*get(TagSpellBlur{}))();
    EXPECT(g_log.size() == 2);
    EXPECT(LogIs(0, sp0, 'E'));
    EXPECT(LogIs(1, sp0, 'P'));

    ResetState();
    g_ai->*get(TagSpells{}) = {sp0};
    g_faeryId = -1;
    (g_ai->*get(TagSpellEvent{}))();
    (g_ai->*get(TagSpellBlur{}))();
    EXPECT(g_log.empty());
}

void CheckCleanUp() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    auto* sp0 = new CharAISkillScript(nullptr, "sp0", 0);
    auto* sp1 = new CharAISkillScript(nullptr, "sp1", 1);
    g_ai->*get(TagSkills{}) = {nullptr, s0};
    g_ai->*get(TagSpells{}) = {sp0, sp1};
    (g_ai->*get(TagSkillCleanUp{}))();
    (g_ai->*get(TagSpellCleanUp{}))();
    EXPECT(g_log.size() == 3);
    EXPECT(LogIs(0, s0, 'C'));
    EXPECT(LogIs(1, sp0, 'C'));
    EXPECT(LogIs(2, sp1, 'C'));
}

void CheckReloadSkills() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    auto* s2 = new CharAISkillScript(nullptr, "s2", 2);
    auto* sp0 = new CharAISkillScript(nullptr, "sp0", 0);
    g_ai->*get(TagSkills{}) = {s0, nullptr, s2};
    g_ai->*get(TagSpells{}) = {sp0};
    g_deletedScripts = 0;
    g_ai->AI_ReloadSkills();
    EXPECT(g_deletedScripts == 2);
    EXPECT((g_ai->*get(TagSkills{})).empty());
    EXPECT(g_reloadCalls == 1);
    EXPECT(g_setSkillsCalls == 1);
    // UpdateAllSkills runs after the reload: only the spell script is left to update.
    EXPECT(g_log.size() == 1);
    EXPECT(LogIs(0, sp0, 'U'));
}

void CheckClearNonStickyTarget() {
    ResetState();
    g_ai->*get(TagSticky{}) = false;
    (g_ai->*get(TagClearSticky{}))();
    EXPECT(g_setTargetCalls == 1);
    EXPECT(g_lastTargetNull);
    EXPECT(!g_lastForce);
    EXPECT(g_syncCalls == 1);

    ResetState();
    g_ai->*get(TagSticky{}) = true;
    (g_ai->*get(TagClearSticky{}))();
    EXPECT(g_setTargetCalls == 0);
    EXPECT(g_syncCalls == 0);
}

void CheckSpellAndSkillUsable() {
    ResetState();
    auto* sp0 = new CharAISkillScript(nullptr, "sp0", 0);
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    g_ai->*get(TagSpells{}) = {sp0};
    g_ai->*get(TagSkills{}) = {s0, nullptr};
    g_faeryId = 0;
    EXPECT(g_ai->AI_IsSpellUsable());
    g_usable = false;
    EXPECT(!g_ai->AI_IsSpellUsable());
    g_usable = true;
    g_faeryId = 3;  // past the end of the spell list
    EXPECT(!g_ai->AI_IsSpellUsable());
    g_faeryId = 0;
    g_smCasting = true;
    EXPECT(!g_ai->AI_IsSpellUsable());
    g_smCasting = false;
    g_scriptLoaded = false;
    EXPECT(!g_ai->AI_IsSpellUsable());
    g_scriptLoaded = true;

    EXPECT(g_ai->AI_IsSkillUsable(0));
    EXPECT(!g_ai->AI_IsSkillUsable(1));  // null script
    EXPECT(!g_ai->AI_IsSkillUsable(5));  // past the end
    g_usable = false;
    EXPECT(!g_ai->AI_IsSkillUsable(0));
    g_usable = true;
    g_smCasting = true;
    EXPECT(!g_ai->AI_IsSkillUsable(0));
    g_smCasting = false;
}

void CheckSkillActive() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    auto* s1 = new CharAISkillScript(nullptr, "s1", 1);
    g_ai->*get(TagSkills{}) = {s0, s1};
    g_ai->*get(TagCurSkill{}) = 1;
    g_smUsingSkill = true;
    EXPECT(g_ai->AI_IsSkillActive(1));          // the skill in use
    EXPECT(g_ai->AI_IsSkillActive(0));          // another skill asks its script (active check true)
    g_smUsingSkill = false;
    EXPECT(g_ai->AI_IsSkillActive(0));
    g_activeCheck = false;
    EXPECT(!g_ai->AI_IsSkillActive(0));
    g_activeCheck = true;
    EXPECT(!g_ai->AI_IsSkillActive(7));         // past the end, nothing in use
}

void CheckCancelAndEndSkill() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    g_ai->*get(TagSkills{}) = {s0};

    SkillRow(0)->Type = 1;
    g_ai->AI_CancelSkill(0);
    EXPECT(g_log.size() == 1);
    EXPECT(LogIs(0, s0, 'R'));

    ResetState();
    g_ai->*get(TagSkills{}) = {s0};
    SkillRow(0)->Type = 2;
    g_ai->AI_CancelSkill(0);
    EXPECT(g_log.empty());

    // EndSkill: type 2 with the step not begun marks the step ended.
    ResetState();
    g_smUsingSkill = true;
    SkillRow(1)->Type = 2;
    g_ai->AI_EndSkill(1);
    EXPECT(g_ai->*get(TagStepEnded{}));
    EXPECT(g_stopLoopCalls == 0);

    // With the step begun the looping animation stops.
    ResetState();
    g_smUsingSkill = true;
    SkillRow(1)->Type = 2;
    g_ai->*get(TagStepBegun{}) = true;
    g_ai->AI_EndSkill(1);
    EXPECT(g_stopLoopCalls == 1);
    EXPECT(!(g_ai->*get(TagStepEnded{})));

    // Another type does nothing.
    ResetState();
    g_smUsingSkill = true;
    SkillRow(1)->Type = 1;
    g_ai->AI_EndSkill(1);
    EXPECT(g_stopLoopCalls == 0);
    EXPECT(!(g_ai->*get(TagStepEnded{})));
}

void CheckBeginSkillAndUse() {
    ResetState();
    auto* s0 = new CharAISkillScript(nullptr, "s0", 0);
    g_ai->*get(TagSkills{}) = {s0};

    // Already active: the pre-skill hook runs and the call succeeds.
    SkillRow(0)->Type = 1;
    g_smUsingSkill = true;
    g_ai->*get(TagCurSkill{}) = 0;
    EXPECT(g_ai->AI_BeginSkill(0));
    EXPECT(g_log.size() == 1);
    EXPECT(LogIs(0, s0, 'R'));

    // Usability fails: nothing is set.
    ResetState();
    g_ai->*get(TagSkills{}) = {s0};
    SkillRow(0)->Type = 0;
    g_usable = false;
    EXPECT(!g_ai->AI_BeginSkill(0));
    EXPECT(g_ai->*get(TagCurSkill{}) == -1);
    EXPECT(g_setSkillCalls == 0);

    // UseSkill on an active skill runs BeginSkill then EndSkill and reports success.
    ResetState();
    g_ai->*get(TagSkills{}) = {s0};
    SkillRow(0)->Type = 1;
    g_smUsingSkill = true;
    g_ai->*get(TagCurSkill{}) = 0;
    EXPECT(g_ai->AI_UseSkill(0));
    EXPECT(g_log.size() == 1);
    EXPECT(LogIs(0, s0, 'R'));
}

void CheckSpells() {
    ResetState();
    auto* sp0 = new CharAISkillScript(nullptr, "sp0", 0);
    auto* sp1 = new CharAISkillScript(nullptr, "sp1", 1);
    g_ai->*get(TagSpells{}) = {sp0, sp1};
    g_faeryId = 1;

    // Faery already active: pre-skill hook, then CastSpell ends the spell and reports success.
    FaeryRow()->SpellType = 1;
    g_spellActive = true;
    EXPECT(g_ai->AI_BeginSpell(false));
    EXPECT(g_log.size() == 1);
    EXPECT(LogIs(0, sp1, 'R'));
    g_log.clear();
    EXPECT(g_ai->AI_CastSpell());
    EXPECT(g_endSpellCalls == 1);
    EXPECT(g_log.size() == 1);

    // Not active: the cast starts. SM_SetCastState runs and the result is the casting state.
    ResetState();
    g_ai->*get(TagSpells{}) = {sp0, sp1};
    g_faeryId = 0;
    FaeryRow()->SpellType = 0;
    EXPECT(g_ai->AI_BeginSpell(false));
    EXPECT(g_setCastCalls == 1);
    EXPECT(g_endSpellCalls == 0);

    // Not usable: nothing starts.
    ResetState();
    g_ai->*get(TagSpells{}) = {sp0, sp1};
    g_faeryId = 0;
    g_usable = false;
    EXPECT(!g_ai->AI_BeginSpell(false));
    EXPECT(g_setCastCalls == 0);
    EXPECT(!g_ai->AI_CastSpell());
    EXPECT(g_endSpellCalls == 0);
}

}  // namespace

int main() {
    g_ai = reinterpret_cast<CharAI*>(g_aiStorage);
    CheckUpdateAllSkills();
    CheckUpdateSkills();
    CheckBlurAndEvents();
    CheckCleanUp();
    CheckReloadSkills();
    CheckClearNonStickyTarget();
    CheckSpellAndSkillUsable();
    CheckSkillActive();
    CheckCancelAndEndSkill();
    CheckBeginSkillAndUse();
    CheckSpells();
    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("all checks passed\n");
    return 0;
}
