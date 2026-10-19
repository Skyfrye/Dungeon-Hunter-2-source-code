// Checks the FlashAnimManager bodies of batch g1-game-ui-FlashAnimManager-797a71-0 that run without the engine:
// the constructor's reset of the contexts, the context searches (FindAvailableAnimContextID, StopFlashAnim,
// StopAllFlashAnim), ResetScanForAnims, PlayFlashAnim when every clone of the style is already in use (so no clone is
// created), and GetStyleIdFromName over the name map.
//
// The translation unit also refers to engine code (RenderFX, Application, DebugSwitches, GameSWFUtils, the gameswf
// string and root code). The definitions below are stubs for that code. None of the tested paths calls them.
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/Application.hpp"
#include "dh2/DebugSwitches.hpp"
#include "dh2/FlashAnimManager.hpp"
#include "dh2/GameSWFUtils.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/global/scene_nodes.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sprite.h"

// ---- stubs for the engine code the translation unit refers to (never reached by the tested paths) ----

extern int gAssertLevel;
int gAssertLevel = 0;

Level* Application::GetCurrentLevel() const { return nullptr; }
int Application::GetDt() { return 0; }
Application& ApplicationGetInstance() { std::abort(); }

DebugSwitches::DebugSwitches() {}
DebugSwitches::~DebugSwitches() {}
DebugSwitches DebugSwitches::s_inst;
void DebugSwitches::load() {}
bool DebugSwitches::GetSwitch(const std::string&) { return false; }

void FlashAnimContext::SetText(const char*) {}
void FlashAnimContext::SetTextToNumber(int) {}

float GameSWFUtils::GetInvPixelScaleX(gameswf::root*) { return 1.0f; }
float GameSWFUtils::GetInvPixelScaleY(gameswf::root*) { return 1.0f; }
int GetScreenPosFromWorldPos(const glitch::core::vector3d<float>&, glitch::core::position2d<int>&) { return 0; }

gameswf::character* RenderFX::GetFlashRoot() const { return nullptr; }
gameswf::root* RenderFX::GetRoot() const { return nullptr; }
RenderFX::CharacterArray* RenderFX::FindCharacters(gameswf::character*, const char*, int) { return nullptr; }
gameswf::character* RenderFX::Find(const char*, gameswf::character*) { return nullptr; }
void RenderFX::BeginDisplay() {}
void RenderFX::EndDisplay() {}
void RenderFX::SetPosition(gameswf::character*, int, int) {}
void RenderFX::GotoFrame(gameswf::character*, int, bool) {}
int RenderFX::SetColorTransform(gameswf::character*, unsigned int, unsigned int) { return 0; }
void RenderFX::SetTextBufferingEnabled(bool) {}
void RenderFX::FormatHTML(gameswf::character*, const char*, ...) {}

float gameswf::root::get_frame_rate() const { return 30.0f; }
int gameswf::sprite_instance::get_highest_depth() { return 0; }

// gameswf string and log code that the inline tu_string constructor and the gameswf headers refer to.
void tu_string::resize(int) {}
int tu_string::utf8_char_count(const char*, int) { return 0; }
bool tu_string::operator==(const tu_string&) const { return false; }
void tu_string::operator+=(const tu_string&) {}
void tu_string::operator+=(const char*) {}
namespace gameswf {
bool get_verbose_action() { return false; }
void log_msg(const char*, ...) {}
ref_counted::ref_counted() {}
ref_counted::~ref_counted() {}
}  // namespace gameswf

// ---- checks ----

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// A MenuFX address that is only compared, never dereferenced.
MenuFX* FakeMenu(int tag) {
    static int storage[4];
    return reinterpret_cast<MenuFX*>(&storage[tag]);
}

void TestConstructorResetsContexts() {
    FlashAnimManager fam;
    bool allReset = true;
    for (int i = 0; i < 12; ++i) {
        const FlashAnimContext& c = fam.m_contexts[i];
        allReset = allReset && c.m_flags == 0 && c.m_styleId == -1 && c.m_cloneId == 0 && c.m_text[0] == '\0';
    }
    Check(allReset, "ctor: every context is idle with style -1");
    Check(fam.m_animMenuFxRoot == nullptr, "ctor: no menu");
    Check(fam.m_swfDataInstances.empty(), "ctor: no style table");
    Check(fam.FindAvailableAnimContextID() == 0, "ctor: context 0 is free");
}

void TestContextSearch() {
    FlashAnimManager fam;
    for (int i = 0; i < 12; ++i) {
        fam.m_contexts[i].m_flags = 1;
    }
    Check(fam.FindAvailableAnimContextID() == -1, "search: all twelve busy gives -1");
    fam.StopFlashAnim(5);
    Check(fam.m_contexts[5].m_flags == 0, "stop: clears the flags of context 5");
    Check(fam.FindAvailableAnimContextID() == 5, "search: context 5 is the first free one");
    fam.StopAllFlashAnim();
    bool allClear = true;
    for (int i = 0; i < 12; ++i) {
        allClear = allClear && fam.m_contexts[i].m_flags == 0;
    }
    Check(allClear, "stop all: every context is cleared");
}

void TestResetScanForAnims() {
    FlashAnimManager fam;
    MenuFX* menu = FakeMenu(0);
    fam.m_animMenuFxRoot = menu;
    fam.m_swfDataInstances.resize(2);
    fam.m_contexts[3].m_flags = 3;

    fam.ResetScanForAnims(FakeMenu(1));  // a different menu: nothing changes
    Check(fam.m_animMenuFxRoot == menu, "reset: other menu leaves the root");
    Check(fam.m_swfDataInstances.size() == 2, "reset: other menu leaves the style table");
    Check(fam.m_contexts[3].m_flags == 3, "reset: other menu leaves the contexts");

    fam.ResetScanForAnims(menu);  // the owning menu: root cleared, table emptied, contexts stopped
    Check(fam.m_animMenuFxRoot == nullptr, "reset: owning menu clears the root");
    Check(fam.m_swfDataInstances.empty(), "reset: owning menu empties the style table");
    Check(fam.m_contexts[3].m_flags == 0, "reset: owning menu stops the contexts");
}

void TestPlayFlashAnimWithFullStyle() {
    FlashAnimManager fam;
    // One style whose eight clones are all in use with a character already set: FindAnimInstance then picks
    // slot 7 without creating a clone.
    fam.m_swfDataInstances.resize(1);
    gameswf::character* existing = reinterpret_cast<gameswf::character*>(&fam);
    for (int c = 0; c < 8; ++c) {
        fam.m_swfDataInstances[0].m_clones[c].m_character = existing;
        fam.m_swfDataInstances[0].m_clones[c].m_inUse = true;
    }

    FlashAnimContext* ctx = fam.PlayFlashAnim(0, 10, 20, 4, 2);
    Check(ctx == &fam.m_contexts[0], "play: first free context is used");
    if (ctx) {
        Check(ctx->m_styleId == 0, "play: style id stored");
        Check(ctx->m_cloneId == 7, "play: all clones busy, so slot 7 is taken");
        Check(ctx->m_x == 10 && ctx->m_y == 20, "play: position stored");
        Check(ctx->m_frame == 4, "play: frame stored");
        Check(ctx->m_elapsed == 0, "play: elapsed time reset");
        Check(ctx->m_flags == 3, "play: flags are the argument with the active bit");
    }
    Check(fam.FindAvailableAnimContextID() == 1, "play: context 0 is now busy");

    for (int i = 1; i < 12; ++i) {
        fam.m_contexts[i].m_flags = 1;
    }
    Check(fam.PlayFlashAnim(0, 0, 0, 0, 0) == nullptr, "play: no free context gives null");
}

void TestGetStyleIdFromName() {
    FlashAnimManager fam;
    fam.m_styleIdByName["menu_anim_hit"] = 4;
    Check(fam.GetStyleIdFromName("menu_anim_hit") == 4, "name: known name gives its style id");
    Check(fam.GetStyleIdFromName("menu_anim_unknown") == 0, "name: unknown name gives 0");
}

}  // namespace

int main() {
    TestConstructorResetsContexts();
    TestContextSearch();
    TestResetScanForAnims();
    TestPlayFlashAnimWithFullStyle();
    TestGetStyleIdFromName();
    if (g_failures == 0) {
        std::printf("FlashAnimManager tests passed\n");
        return 0;
    }
    std::printf("%d FlashAnimManager check(s) failed\n", g_failures);
    return 1;
}
