// Test for batch g1-game-character-pack8-870e63-0.
//
// Covers the CharMenuTutorialMsg constructors, the CharPropTextField name parse (charproptext_internal::ParsePropName) and
// constructor, the mode dispatch (charproptext_internal::UpdatePropText, including the 'b' colour steps and the text path for
// values above 1000), the fetch in CharPropTextField::Update, and the flag, probe and registration logic of CSSpawn (OnEvent,
// OnBlur, OnFocus, OnInit) and CSStunned (OnBlur, OnUpdate, OnInit). CSStunned::OnFocus is not run: it calls the IsPlayer
// virtual on the Character, and the test has no Character vtable.
//
// The engine functions the batch links to are stubs in this file. They record their calls and return the values the test sets.
// Characters, controllers, visual and physical objects, the Application and its managers, the gameswf text characters and the
// CharAnim row are zero-filled storage; the code under test reads and writes their named data members only.

#include <cstdarg>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/Application.hpp"
#include "dh2/CSSpawn.hpp"
#include "dh2/CSStunned.hpp"
#include "dh2/CharMenuTutorialMsg.hpp"
#include "dh2/CharPropTextField.hpp"
#include "dh2/Character.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/PhysicalObject.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/RenderFX.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/VisualObject.hpp"
#include "dh2/global/charai_ai.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/v2Controller.hpp"
#include "gameswf/gameswf_character.h"
#include "pydata-accessors/structs_records.hpp"
#include "pydata-accessors/w7_pydata12.hpp"

namespace charproptext_internal {
void ParsePropName(const char* name, int& propId, int& kind);
void UpdatePropText(RenderFX* renderFx, Character* localCharacter, int propId, int kind, gameswf::character* target);
}  // namespace charproptext_internal

namespace {

int g_failures = 0;

void Expect(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Zero-filled storage for the engine objects. None of them is constructed.
alignas(16) unsigned char g_charStorage[sizeof(Character)];
alignas(16) unsigned char g_ctrlStorage[sizeof(v2Controller)];
alignas(16) unsigned char g_visStorage[sizeof(VisualObject)];
alignas(16) unsigned char g_physStorage[sizeof(PhysicalObject)];
alignas(16) unsigned char g_renderStorage[sizeof(RenderFX)];
alignas(16) unsigned char g_switchStorage[sizeof(DebugSwitches)];
alignas(16) unsigned char g_animRow[sizeof(Structs::CharAnim)];
alignas(16) unsigned char g_pydataStorage[64];
alignas(16) unsigned char g_appStorage[sizeof(Application)];
alignas(16) unsigned char g_playerMgrStorage[sizeof(PlayerManager)];
alignas(16) unsigned char g_playerInfoStorage[sizeof(PlayerInfo)];
alignas(16) unsigned char g_stringMgrStorage[sizeof(StringManager)];
// Four gameswf text characters, used as the sources and targets of the CharPropTextField tests.
alignas(16) unsigned char g_textStorage[4][sizeof(gameswf::character)];

// Call log and return values set by each scenario.
std::vector<std::string> g_switchProbes;
int g_loads = 0;
int g_initPhysical = 0;
int g_cancelSneaking = 0;
int g_setIdle = 0;
bool g_setIdleArg = true;
int g_pin = 0;
int g_unpin = 0;
int g_aiSetTarget = 0;
const void* g_aiTargetArg = nullptr;
bool g_aiForceArg = true;
int g_aiSync = 0;
int g_animSet = 0;
int g_animArg = -1;
int g_fadeCalls = 0;
float g_fadeSeconds = -1.0f;
int g_stance = 7;        // GetAnimStance return
int g_constant = 0;      // PyDataConstants::getConstant return
std::string g_lastConstantName;
int g_propValue = 0;     // CharProperties::PROPS_GetIntWithBonus return
bool g_isBonus = false;  // CharProperties::PROPS_IsBonus return
std::vector<int> g_propIdQueries;
std::vector<int> g_isBonusQueries;
std::vector<std::string> g_nameLookups;
int g_gotoCalls = 0;
int g_gotoFrame = -1;
std::vector<std::string> g_htmlFormats;
std::vector<int> g_htmlValues;
int g_colourCalls = 0;
gameswf::character* g_colourTarget = nullptr;
unsigned int g_colourFirst = 0;
unsigned int g_colourSecond = 0;
int g_setTextCalls = 0;
std::string g_setText;
bool g_setTextFlag = false;
int g_parseCalls = 0;
std::string g_parseFormat;
int g_parseValue = 0;
int g_customCtorCalls = 0;
int g_localPlayerCalls = 0;
int g_localPlayerId = -1;
bool g_localPlayerFlag = false;
Character* g_localCharacter = nullptr;  // what the stubbed PlayerManager::GetLocalPlayer returns in its PlayerInfo

struct RegCall {
    int state;
    int event;
    int next;
    int handler;  // 0 null, 1 CSM_Injured, 2 CSM_Interrupted, 3 other
};
std::vector<RegCall> g_regs;

int HandlerCode(bool (Character::*h)(int, void*, int, int&)) {
    if (h == nullptr) {
        return 0;
    }
    if (h == &Character::CSM_Injured) {
        return 1;
    }
    if (h == &Character::CSM_Interrupted) {
        return 2;
    }
    return 3;
}

void ResetLog() {
    g_switchProbes.clear();
    g_loads = 0;
    g_initPhysical = 0;
    g_cancelSneaking = 0;
    g_setIdle = 0;
    g_pin = 0;
    g_unpin = 0;
    g_aiSetTarget = 0;
    g_aiTargetArg = nullptr;
    g_aiForceArg = true;
    g_aiSync = 0;
    g_animSet = 0;
    g_animArg = -1;
    g_fadeCalls = 0;
    g_fadeSeconds = -1.0f;
    g_gotoCalls = 0;
    g_gotoFrame = -1;
    g_htmlFormats.clear();
    g_htmlValues.clear();
    g_propIdQueries.clear();
    g_isBonusQueries.clear();
    g_nameLookups.clear();
    g_colourCalls = 0;
    g_setTextCalls = 0;
    g_setText.clear();
    g_parseCalls = 0;
    g_parseFormat.clear();
    g_customCtorCalls = 0;
    g_localPlayerCalls = 0;
    g_regs.clear();
}

// A zero-filled Character with its controller, visual and physical objects attached.
Character* MakeCharacter(unsigned int flags) {
    std::memset(g_charStorage, 0, sizeof(g_charStorage));
    std::memset(g_ctrlStorage, 0, sizeof(g_ctrlStorage));
    auto* c = reinterpret_cast<Character*>(g_charStorage);
    c->m_controller = reinterpret_cast<v2Controller*>(g_ctrlStorage);
    c->m_visualObject = reinterpret_cast<VisualObject*>(g_visStorage);
    c->m_physicalObject = reinterpret_cast<PhysicalObject*>(g_physStorage);
    c->unk_1440 = 2.5f;
    c->m_stateFlags = flags;
    c->m_statusFlags = 0;
    return c;
}

// A zero-filled gameswf text character whose name is `name` (the object the CharPropTextField ctor reads through +0x44).
gameswf::character* MakeText(int slot, const tu_string& name) {
    std::memset(g_textStorage[slot], 0, sizeof(g_textStorage[slot]));
    auto* text = reinterpret_cast<gameswf::character*>(g_textStorage[slot]);
    text->m_name = &name;
    return text;
}

// The Application singleton's PlayerManager, as the stubbed ApplicationGetInstance returns it.
void SetupApplication() {
    std::memset(g_appStorage, 0, sizeof(g_appStorage));
    reinterpret_cast<Application*>(g_appStorage)->m_playerManager = reinterpret_cast<PlayerManager*>(g_playerMgrStorage);
}

Structs::CharAnim* AnimRow() {
    std::memset(g_animRow, 0, sizeof(g_animRow));
    return reinterpret_cast<Structs::CharAnim*>(g_animRow);
}

char kInteractive[] = "is_interactive";
char kOther[] = "something_else";

}  // namespace

// ---- stubs for the engine functions the batch links to ----------------------------------------------------------------

CharState::~CharState() {}

DebugSwitches* DebugSwitches::GetInstance() { return reinterpret_cast<DebugSwitches*>(g_switchStorage); }
void DebugSwitches::load() { ++g_loads; }
bool DebugSwitches::GetSwitch(const std::string& name) {
    g_switchProbes.push_back(name);
    return false;
}

void Character::InitPhysicalObject() { ++g_initPhysical; }
void Character::CancelSneaking() { ++g_cancelSneaking; }
const Structs::CharAnim* Character::GetCharAnimTable() const {
    return reinterpret_cast<const Structs::CharAnim*>(g_animRow);
}
int Character::GetAnimStance() const { return g_stance; }
bool Character::CSM_Injured(int, void*, int, int&) { return false; }
bool Character::CSM_Interrupted(int, void*, int, int&) { return false; }

void CharStateMachine::SM_RegisterEvent(int stateId, int eventId, int nextState,
                                        bool (Character::*handler)(int, void*, int, int&)) {
    g_regs.push_back(RegCall{stateId, eventId, nextState, HandlerCode(handler)});
}
int CharStateMachine::SM_SetIdleState(bool flag) {
    ++g_setIdle;
    g_setIdleArg = flag;
    return 0;
}

void CharAnimator::ANIM_Set(int animId) {
    ++g_animSet;
    g_animArg = animId;
}

void CharAI::AI_SetTarget(GameObject* target, bool force) {
    ++g_aiSetTarget;
    g_aiTargetArg = target;
    g_aiForceArg = force;
}
void CharAI::AI_SyncLastTarget() { ++g_aiSync; }

void VisualObject::StartFadeIn(float seconds) {
    ++g_fadeCalls;
    g_fadeSeconds = seconds;
}

void PhysicalObject::pin() { ++g_pin; }
void PhysicalObject::unpin() { ++g_unpin; }

PyDataConstants* ApplicationGetPyDataConstants() { return reinterpret_cast<PyDataConstants*>(g_pydataStorage); }
int PyDataConstants::getConstant(const char*, const char* constantName) const {
    g_lastConstantName = constantName;
    return g_constant;
}

Application& ApplicationGetInstance() { return *reinterpret_cast<Application*>(g_appStorage); }
PlayerInfo* PlayerManager::GetLocalPlayer(int localId, bool flag) {
    ++g_localPlayerCalls;
    g_localPlayerId = localId;
    g_localPlayerFlag = flag;
    auto* info = reinterpret_cast<PlayerInfo*>(g_playerInfoStorage);
    info->unk_660 = g_localCharacter;
    return info;
}

StringManager* ApplicationGetStringManager() { return reinterpret_cast<StringManager*>(g_stringMgrStorage); }
int StringManager::parse(std::string& out, const char* format, ...) {
    va_list args;
    va_start(args, format);
    const int value = va_arg(args, int);
    va_end(args);
    ++g_parseCalls;
    g_parseFormat = format;
    g_parseValue = value;
    out.append("V").append(std::to_string(value));
    return 0;
}

int CharProperties::PROPS_GetIntWithBonus(int propId, bool) const {
    g_propIdQueries.push_back(propId);
    return g_propValue;
}
bool CharProperties::PROPS_IsBonus(int propId) const {
    g_isBonusQueries.push_back(propId);
    return g_isBonus;
}
int CharProperties::GetPropIDFromName(const char* name) {
    g_nameLookups.push_back(name);
    if (std::strcmp(name, "Life") == 0) {
        return 42;
    }
    if (std::strcmp(name, "Gold") == 0) {
        return 7;
    }
    return -1;
}

void RenderFX::FormatHTML(gameswf::character*, const char* format, ...) {
    va_list args;
    va_start(args, format);
    const int value = va_arg(args, int);
    va_end(args);
    g_htmlFormats.push_back(format);
    g_htmlValues.push_back(value);
}
int RenderFX::SetColorTransform(gameswf::character* character, unsigned int first, unsigned int second) {
    ++g_colourCalls;
    g_colourTarget = character;
    g_colourFirst = first;
    g_colourSecond = second;
    return 0;
}
void RenderFX::SetText(gameswf::character*, const char* text, bool flag) {
    ++g_setTextCalls;
    g_setText = text;
    g_setTextFlag = flag;
}

int GameSWFUtils::GotoFrame(gameswf::character*, int frame) {
    ++g_gotoCalls;
    g_gotoFrame = frame;
    return 0;
}

// The gameswf colour transform and its custom block. The engine's identity initialiser (gameswf_types.cpp) sets the
// multiplier of each channel to 1 and the addend to 0. The custom constructor body is not in the vendored tree; the members
// it default-constructs are stubbed here.
gameswf::cxform::cxform() {
    for (int channel = 0; channel < 4; ++channel) {
        m_[channel][0] = 1;
        m_[channel][1] = 0;
    }
}
gameswf::cxform gameswf::cxform::identity;
gameswf::matrix::matrix() {}
gameswf::character::custom::custom() { ++g_customCtorCalls; }

// The short-string path of tu_string. Every name the tests build fits the inline buffer (14 characters plus the NUL), so
// resize only sets the inline length. The heap release used by the destructor is forwarded to free, and no test string uses it.
void tu_string::resize(int new_size) {
    m_union.m_local.m_length_plus_one = static_cast<char>(new_size + 1);
    m_union.m_local.m_buffer[new_size] = 0;
}
namespace gameswf {
void free_internal(void* p, unsigned int) { std::free(p); }
}  // namespace gameswf

// ---- checks -------------------------------------------------------------------------------------------------------------

namespace {

void TestCharMenuTutorialMsg() {
    std::string frame = "frame_a";
    std::string menu = "menu_b";
    CharMenuTutorialMsg msg(42, frame, menu);
    Expect(msg.m_stringId == 42, "CharMenuTutorialMsg ctor sets the id");
    Expect(msg.m_frame == "frame_a", "CharMenuTutorialMsg ctor copies the frame");
    Expect(msg.m_menu == "menu_b", "CharMenuTutorialMsg ctor copies the menu");

    CharMenuTutorialMsg copy(msg);
    Expect(copy.m_stringId == 42 && copy.m_frame == "frame_a" && copy.m_menu == "menu_b",
           "CharMenuTutorialMsg copy ctor copies all three fields");
    msg.m_frame = "changed";
    Expect(copy.m_frame == "frame_a", "CharMenuTutorialMsg copy does not follow later changes to the source");
}

// ParsePropName: the first '_' splits the name, name[2] is the mode, and the text after the '_' is the property name.
void ParseCase(const char* name, int expectedId, int expectedKind, const char* expectedLookup, const char* what) {
    int propId = -1;
    int kind = '_';
    ResetLog();
    charproptext_internal::ParsePropName(name, propId, kind);
    const bool lookupOk = g_nameLookups.size() == 1 && g_nameLookups[0] == expectedLookup;
    Expect(propId == expectedId && kind == expectedKind && lookupOk, what);
}

void TestParsePropName() {
    ParseCase("txb_Life", 42, 'b', "Life", "name[2] 'b' is the bonus mode and the text after '_' is the property");
    ParseCase("txi_Gold", 7, 'i', "Gold", "name[2] 'i' is the goto-frame mode");
    ParseCase("txp_Gold", 7, 'p', "Gold", "name[2] 'p' is the percent mode");
    ParseCase("txq_Gold", 7, '_', "Gold", "a letter other than i, p or b gives the plain mode");
    ParseCase("tb_Life", 42, '_', "Life", "name[2] is the underscore here, so the mode is plain");
    ParseCase("xx_a_b", -1, '_', "a_b", "the first '_' is the split point, and the lookup keeps later underscores");
    ParseCase("a_", -1, '_', "", "a name ending at its underscore looks up the empty text");
    ParseCase("_", -1, '_', "", "a lone underscore looks up the empty text and keeps the plain mode");

    int propId = 99;
    int kind = 'p';
    ResetLog();
    charproptext_internal::ParsePropName("txbLife", propId, kind);
    Expect(propId == 99 && kind == 'p' && g_nameLookups.empty(), "a name without '_' leaves both outputs alone");
}

void TestCharPropTextFieldCtor() {
    tu_string bonusName("txb_Life");
    gameswf::character* source = MakeText(0, bonusName);

    ResetLog();
    CharPropTextField field(source, nullptr);
    Expect(field.m_propId == 42 && field.m_kind == 'b', "CharPropTextField ctor parses the source name into the property id and mode");
    Expect(field.m_target == source, "CharPropTextField target defaults to the source when null");
    Expect(g_nameLookups.size() == 1 && g_nameLookups[0] == "Life", "CharPropTextField ctor looks up the text after the '_'");

    gameswf::character* target = MakeText(1, bonusName);
    CharPropTextField explicitTarget(source, target);
    Expect(explicitTarget.m_target == target && explicitTarget.m_propId == 42, "CharPropTextField keeps an explicit target");

    tu_string plainName("Life");
    gameswf::character* plainSource = MakeText(2, plainName);
    CharPropTextField none(plainSource, nullptr);
    Expect(none.m_propId == -1 && none.m_kind == '_' && none.m_target == plainSource,
           "CharPropTextField with a name that has no '_' keeps the defaults");
}

void TestCharPropTextFieldUpdate() {
    SetupApplication();
    auto* renderFx = reinterpret_cast<RenderFX*>(g_renderStorage);
    std::memset(g_renderStorage, 0, sizeof(g_renderStorage));

    tu_string name("txb_Life");
    gameswf::character* source = MakeText(0, name);
    CharPropTextField field(source, nullptr);

    // No local player: the fetch still happens (GetLocalPlayer(0, true)) and nothing is written.
    ResetLog();
    g_localCharacter = nullptr;
    field.Update(renderFx);
    Expect(g_localPlayerCalls == 1 && g_localPlayerId == 0 && g_localPlayerFlag,
           "CharPropTextField::Update fetches GetLocalPlayer(0, true)");
    Expect(g_htmlValues.empty() && g_colourCalls == 0 && g_customCtorCalls == 0 && g_propIdQueries.empty(),
           "CharPropTextField::Update writes nothing without a local character");

    // A local character with Life = 7 (not a bonus): the value prints and the source takes the identity colour transform.
    g_localCharacter = MakeCharacter(0);
    g_propValue = 7;
    g_isBonus = false;
    ResetLog();
    field.Update(renderFx);
    Expect(g_propIdQueries.size() == 1 && g_propIdQueries[0] == 42, "CharPropTextField::Update queries the property id from the name");
    Expect(g_htmlFormats.size() == 1 && g_htmlFormats[0] == "%d" && g_htmlValues.size() == 1 && g_htmlValues[0] == 7,
           "CharPropTextField::Update prints the value with %d");
    Expect(source->m_custom != nullptr && source->m_cxform_changed && source->m_local_cxform == &source->m_custom->m_cxform,
           "CharPropTextField::Update gives the source its colour block and sets the changed flag");
}

void TestUpdatePropTextDispatch() {
    auto* renderFx = reinterpret_cast<RenderFX*>(g_renderStorage);
    tu_string name("Life");
    gameswf::character* target = MakeText(3, name);
    Character* local = MakeCharacter(0);

    ResetLog();
    g_propValue = 5;
    charproptext_internal::UpdatePropText(renderFx, local, 10, '_', target);
    Expect(g_htmlFormats.size() == 1 && g_htmlFormats[0] == "%d" && g_htmlValues[0] == 5, "mode '_' prints the value with %d");

    ResetLog();
    g_propValue = 50;
    charproptext_internal::UpdatePropText(renderFx, local, 10, 'p', target);
    Expect(g_htmlFormats.size() == 1 && g_htmlFormats[0] == "%d%%" && g_htmlValues[0] == 50, "mode 'p' prints the value with %d%%");

    ResetLog();
    g_propValue = 3;
    charproptext_internal::UpdatePropText(renderFx, local, 10, 'i', target);
    Expect(g_gotoCalls == 1 && g_gotoFrame == 3 && g_htmlValues.empty(), "mode 'i' goes to the frame with the value");

    ResetLog();
    g_propValue = -1;
    charproptext_internal::UpdatePropText(renderFx, local, 10, 'i', target);
    Expect(g_gotoCalls == 0, "mode 'i' with value -1 does not move the frame");

    // Mode 'b', not a bonus: the target gets the identity colour block (allocated on first use) and the value prints.
    ResetLog();
    g_propValue = 7;
    g_isBonus = false;
    charproptext_internal::UpdatePropText(renderFx, local, 10, 'b', target);
    Expect(g_isBonusQueries.size() == 1 && g_isBonusQueries[0] == 10, "mode 'b' asks PROPS_IsBonus for the property");
    Expect(g_colourCalls == 0, "mode 'b' without a bonus does not call SetColorTransform");
    Expect(g_customCtorCalls == 1 && target->m_custom != nullptr && target->m_cxform_changed &&
               target->m_local_cxform == &target->m_custom->m_cxform,
           "mode 'b' without a bonus allocates the custom block and points the local transform at it");
    Expect(std::memcmp(&target->m_custom->m_cxform, &gameswf::cxform::identity, sizeof(gameswf::cxform)) == 0,
           "mode 'b' without a bonus copies the identity colour transform");
    Expect(g_htmlFormats.size() == 1 && g_htmlValues[0] == 7, "mode 'b' without a bonus still prints the value");

    // A second 'b' update reuses the block: no new allocation.
    gameswf::character::custom* block = target->m_custom;
    ResetLog();
    charproptext_internal::UpdatePropText(renderFx, local, 10, 'b', target);
    Expect(g_customCtorCalls == 0 && target->m_custom == block, "mode 'b' reuses an existing custom block");

    // Mode 'b', a bonus: SetColorTransform(target, 0xFF000000, FontTextColors/propBonus), then the value prints.
    ResetLog();
    g_propValue = 9;
    g_isBonus = true;
    g_constant = 0x00ABCDEF;
    charproptext_internal::UpdatePropText(renderFx, local, 10, 'b', target);
    Expect(g_colourCalls == 1 && g_colourTarget == target && g_colourFirst == 0xFF000000u && g_colourSecond == 0x00ABCDEFu,
           "mode 'b' bonus calls SetColorTransform with 0xFF000000 and the propBonus colour");
    Expect(g_lastConstantName == "propBonus", "mode 'b' bonus reads the propBonus constant");
    Expect(g_htmlFormats.size() == 1 && g_htmlValues[0] == 9, "mode 'b' bonus still prints the value");
    g_isBonus = false;
    g_constant = 0;

    // Values above 1000 take the text path: the string manager formats "^d" and the value is set as text.
    ResetLog();
    g_propValue = 1500;
    charproptext_internal::UpdatePropText(renderFx, local, 10, '_', target);
    Expect(g_parseCalls == 1 && g_parseFormat == "^d" && g_parseValue == 1500, "a value above 1000 formats with the \"^d\" pattern");
    Expect(g_setTextCalls == 1 && g_setText == "V1500" && g_setTextFlag, "a value above 1000 sets the formatted text");
    Expect(g_htmlValues.empty(), "a value above 1000 does not print with FormatHTML");

    ResetLog();
    charproptext_internal::UpdatePropText(renderFx, local, 10, 'x', target);
    Expect(g_htmlValues.empty() && g_gotoCalls == 0 && g_colourCalls == 0, "unknown mode returns without output");

    ResetLog();
    g_propValue = 5;
    charproptext_internal::UpdatePropText(renderFx, local, -1, '_', target);
    Expect(g_htmlValues.empty() && g_propIdQueries.empty(), "property id -1 returns without output");

    ResetLog();
    charproptext_internal::UpdatePropText(renderFx, nullptr, 10, '_', target);
    Expect(g_htmlValues.empty() && g_propIdQueries.empty(), "null local character returns without output");
}

void TestCSSpawnEventsAndBlur() {
    CSSpawn spawn;

    // Event 40 with "is_interactive" sets the interactive bit and runs InitPhysicalObject.
    Character* c = MakeCharacter(0);
    ResetLog();
    spawn.OnEvent(1, c, c, 40, kInteractive);
    Expect((c->m_stateFlags & 0x2000u) != 0 && g_initPhysical == 1, "CSSpawn event 40 sets 0x2000 and runs InitPhysicalObject");

    // Other data or other event ids leave the character alone.
    c = MakeCharacter(0);
    ResetLog();
    spawn.OnEvent(1, c, c, 40, kOther);
    spawn.OnEvent(1, c, c, 41, kInteractive);
    Expect(c->m_stateFlags == 0 && g_initPhysical == 0, "CSSpawn ignores other data and other events");

    // OnBlur runs InitPhysicalObject only when the interactive bit is clear.
    c = MakeCharacter(0);
    ResetLog();
    spawn.OnBlur(1, c, c, 2);
    Expect(g_initPhysical == 1 && !g_switchProbes.empty() && g_switchProbes[0] == "isTracingCharState",
           "CSSpawn::OnBlur probes the switch and runs InitPhysicalObject when clear");

    c = MakeCharacter(0x2000u);
    ResetLog();
    spawn.OnBlur(1, c, c, 2);
    Expect(g_initPhysical == 0, "CSSpawn::OnBlur skips InitPhysicalObject when the interactive bit is set");
}

void TestCSSpawnFocus() {
    CSSpawn spawn;
    Structs::CharAnim* row = AnimRow();
    row->Spawn = 42;
    row->Stunned = 43;

    // Focus from another state: flags become 0x241, the interactive bit is dropped, no stance (constant 0).
    Character* c = MakeCharacter(0x2000u);
    ResetLog();
    g_constant = 0;
    spawn.OnFocus(1, c, c, 3, 9, nullptr);
    Expect(c->m_stateFlags == 0x241u, "CSSpawn::OnFocus sets 0x241 and drops the interactive bit from state 3");
    Expect(g_animSet == 1 && g_animArg == 42, "CSSpawn::OnFocus sets the CharAnim m_w32 animation");
    Expect(g_aiSetTarget == 1 && g_aiTargetArg == nullptr && g_aiForceArg == false && g_aiSync == 1,
           "CSSpawn::OnFocus clears the AI target and syncs the last target");
    Expect(g_cancelSneaking == 1, "CSSpawn::OnFocus cancels sneaking");
    Expect(g_fadeCalls == 1 && g_fadeSeconds == 2.5f, "CSSpawn::OnFocus fades in the visual with unk_1440");
    Expect(g_switchProbes.size() == 2 && g_switchProbes[0] == "isTracingCharState" && g_switchProbes[1] == "isTracingCSSpawn",
           "CSSpawn::OnFocus probes the two switches in order");

    // Focus from PreSpawn (17) keeps the interactive bit.
    c = MakeCharacter(0x2000u);
    ResetLog();
    spawn.OnFocus(1, c, c, 17, 9, nullptr);
    Expect(c->m_stateFlags == 0x2241u, "CSSpawn::OnFocus from state 17 keeps the interactive bit");

    // Stance: the constant's bit 0 adds the character's stance to the animation.
    c = MakeCharacter(0);
    ResetLog();
    g_constant = 1;
    spawn.OnFocus(1, c, c, 3, 9, nullptr);
    Expect(g_animArg == 42 + 7, "CSSpawn::OnFocus adds GetAnimStance when the stance bit is set");
    g_constant = 0;

    // No visual object: no fade.
    c = MakeCharacter(0);
    c->m_visualObject = nullptr;
    ResetLog();
    spawn.OnFocus(1, c, c, 3, 9, nullptr);
    Expect(g_fadeCalls == 0, "CSSpawn::OnFocus skips the fade without a visual object");
}

void TestCSSpawnInit() {
    CSSpawn spawn;
    Character* c = MakeCharacter(0);
    ResetLog();
    spawn.OnInit(17, c, c);
    const std::vector<RegCall> expected = {
        {17, 34, 3, 0}, {17, 50008, 12, 0}, {17, 50010, 11, 1}, {17, 50011, 10, 2}, {17, 50012, 9, 2},
    };
    bool same = g_regs.size() == expected.size();
    for (std::size_t i = 0; same && i < expected.size(); ++i) {
        same = g_regs[i].state == expected[i].state && g_regs[i].event == expected[i].event &&
               g_regs[i].next == expected[i].next && g_regs[i].handler == expected[i].handler;
    }
    Expect(same, "CSSpawn::OnInit registers the five events in order");
}

void TestCSStunned() {
    CSStunned stun;
    Character* c = MakeCharacter(0);

    // OnBlur: clears the controller block, pins the physical object, probes the switch.
    c->m_controller->m_blocked = true;
    ResetLog();
    stun.OnBlur(1, c, c, 2);
    Expect(!c->m_controller->m_blocked && g_pin == 1 && g_unpin == 0, "CSStunned::OnBlur unblocks the controller and pins");
    Expect(!g_switchProbes.empty() && g_switchProbes[0] == "isTracingCharState", "CSStunned::OnBlur probes the switch");

    // OnUpdate: with the stunned status bit clear, the stun ends (idle state, flag 0). With it set, nothing happens.
    c = MakeCharacter(0);
    c->m_statusFlags = 0;
    ResetLog();
    stun.OnUpdate(1, c, c);
    Expect(g_setIdle == 1 && g_setIdleArg == false, "CSStunned::OnUpdate sets the idle state when not stunned");
    Expect(!g_switchProbes.empty() && g_switchProbes[0] == "isTracingCSStunned", "CSStunned::OnUpdate probes isTracingCSStunned");

    c = MakeCharacter(0);
    c->m_statusFlags = 2;
    ResetLog();
    stun.OnUpdate(1, c, c);
    Expect(g_setIdle == 0 && g_switchProbes.empty(), "CSStunned::OnUpdate does nothing while stunned");

    // OnInit: three events.
    c = MakeCharacter(0);
    ResetLog();
    stun.OnInit(20, c, c);
    const std::vector<RegCall> expected = {{20, 50008, 12, 0}, {20, 50010, 11, 1}, {20, 50011, 10, 2}};
    bool same = g_regs.size() == expected.size();
    for (std::size_t i = 0; same && i < expected.size(); ++i) {
        same = g_regs[i].state == expected[i].state && g_regs[i].event == expected[i].event &&
               g_regs[i].next == expected[i].next && g_regs[i].handler == expected[i].handler;
    }
    Expect(same, "CSStunned::OnInit registers the three events in order");
}

}  // namespace

int main() {
    TestCharMenuTutorialMsg();
    TestParsePropName();
    TestCharPropTextFieldCtor();
    TestCharPropTextFieldUpdate();
    TestUpdatePropTextDispatch();
    TestCSSpawnEventsAndBlur();
    TestCSSpawnFocus();
    TestCSSpawnInit();
    TestCSStunned();
    if (g_failures == 0) {
        std::printf("all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
