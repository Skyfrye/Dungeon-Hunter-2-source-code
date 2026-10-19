// Test for batch g1-game-character-AISExternal-528ac2-0.
//
// The batch source forwards AI hooks to LuaScript::Call and to AISDefault / CharAIScript. The AISExternal
// constructor is in part 2 of the batch, so the object is never constructed here. Its storage is zero-filled
// and only the callback mask word (CharAIScript::unk_b8, +0xb8) is written. Every call in the checks is
// qualified (AISExternal::Name()), which is a direct call, so the zero vptr is never used. The stubs below
// record the order of the calls, and the checks compare that order with the original control flow.

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <vector>

#include "dh2/AISDefault.hpp"
#include "dh2/AISExternal.hpp"
#include "dh2/CharAIScript.hpp"
#include "dh2/LuaScript.hpp"

// ---- Recorded calls ---------------------------------------------------------------------------------------

namespace {
std::vector<std::string> g_calls;
int g_failures = 0;

void Expect(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// Zero-filled storage for the AISExternal that the test "owns". Only unk_b8 is written.
alignas(AISExternal) unsigned char g_storage[sizeof(AISExternal)];

AISExternal* MakeAI(uint32_t mask) {
    std::memset(g_storage, 0, sizeof(g_storage));
    AISExternal* ai = reinterpret_cast<AISExternal*>(g_storage);
    ai->unk_b8 = mask;  // +0xb8
    return ai;
}

using Calls = std::vector<std::string>;

// One hook: its Lua name, a direct call to the AISExternal override, and its mask bit (0 when it has none).
struct Hook {
    const char* name;
    void (*call)(AISExternal*);
    uint32_t bit;
};

#define HOOK(fn, bit) Hook{#fn, [](AISExternal* a) { a->AISExternal::fn(); }, bit}

const Hook kGated[] = {
    HOOK(OnTargetOutOfRange, 0x004),
    HOOK(OnTargetInRangedRange, 0x008),
    HOOK(OnTargetInCloseRange, 0x010),
    HOOK(OnTargetInMeleeRange, 0x020),
    HOOK(OnMasterOutOfRange, 0x040),
    HOOK(OnMasterInRangedRange, 0x080),
    HOOK(OnMasterInCloseRange, 0x100),
    HOOK(OnMasterInMeleeRange, 0x200),
};

const Hook kUnconditional[] = {
    HOOK(OnTargetInSight, 0),
    HOOK(OnTargetOutOfSight, 0),
    HOOK(OnTargetDied, 0),
    HOOK(OnMasterInSight, 0),
    HOOK(OnMasterOutOfSight, 0),
    HOOK(OnMasterDied, 0),
    HOOK(OnTerminate, 0),
    HOOK(OnInitFinal, 0),
    HOOK(OnInitPost, 0),
};

constexpr uint32_t kAllGatedBits = 0x3FF;

// Runs one hook on a fresh object with the given mask and returns what it recorded.
Calls Run(const Hook& h, uint32_t mask) {
    AISExternal* ai = MakeAI(mask);
    g_calls.clear();
    h.call(ai);
    return g_calls;
}

}  // namespace

// ---- Stubs for symbols defined by other batches (only the linker needs them) ------------------------------

void LuaScript::Call(const char* funcName) {
    g_calls.push_back(std::string("lua:") + funcName);
}

void AISDefault::OnInit() { g_calls.push_back("AISDefault::OnInit"); }
void AISDefault::OnUpdate() { g_calls.push_back("AISDefault::OnUpdate"); }
void AISDefault::OnEndOfAnim() { g_calls.push_back("AISDefault::OnEndOfAnim"); }
void CharAIScript::CallStateUpdate() { g_calls.push_back("CallStateUpdate"); }
void CharAIScript::CallStateConditions() { g_calls.push_back("CallStateConditions"); }

// ---- Checks -----------------------------------------------------------------------------------------------

int main() {
    // Gated hooks: the Lua call runs only when the hook's own bit is set in the mask word.
    for (const Hook& h : kGated) {
        Calls none = Run(h, 0);
        Expect(none.empty(), h.name);  // no bits set: nothing runs

        Calls own = Run(h, h.bit);
        Expect(own == Calls{std::string("lua:") + h.name}, h.name);  // own bit: one Lua call

        Calls others = Run(h, kAllGatedBits & ~h.bit);
        Expect(others.empty(), h.name);  // every other bit set, own bit clear: nothing runs
    }

    // Unconditional hooks: one Lua call whatever the mask holds.
    for (const Hook& h : kUnconditional) {
        Calls none = Run(h, 0);
        Expect(none == Calls{std::string("lua:") + h.name}, h.name);
        Calls all = Run(h, kAllGatedBits);
        Expect(all == Calls{std::string("lua:") + h.name}, h.name);
    }

    // OnInit and OnEndOfAnim: the AISDefault part runs first, then the Lua call, whatever the mask holds.
    {
        Calls c = Run(Hook{"OnInit", [](AISExternal* a) { a->AISExternal::OnInit(); }, 0}, 0);
        Expect(c == Calls{"AISDefault::OnInit", "lua:OnInit"}, "OnInit");
        c = Run(Hook{"OnEndOfAnim", [](AISExternal* a) { a->AISExternal::OnEndOfAnim(); }, 0}, kAllGatedBits);
        Expect(c == Calls{"AISDefault::OnEndOfAnim", "lua:OnEndOfAnim"}, "OnEndOfAnim");
    }

    // OnUpdate: AISDefault::OnUpdate, then Lua "OnUpdate" when bit 0 is set, then the two CharAIScript state calls.
    {
        const Hook update{"OnUpdate", [](AISExternal* a) { a->AISExternal::OnUpdate(); }, 0x001};
        Calls off = Run(update, 0);
        Expect(off == Calls({"AISDefault::OnUpdate", "CallStateUpdate", "CallStateConditions"}), "OnUpdate bit clear");
        Calls on = Run(update, 0x001);
        Expect(on == Calls({"AISDefault::OnUpdate", "lua:OnUpdate", "CallStateUpdate", "CallStateConditions"}),
               "OnUpdate bit set");
        Calls other = Run(update, 0x3FE);  // bit 0 clear, every other bit set
        Expect(other == Calls({"AISDefault::OnUpdate", "CallStateUpdate", "CallStateConditions"}),
               "OnUpdate other bits only");
    }

    if (g_failures == 0) {
        std::printf("AISExternal part 1: all checks passed\n");
        return 0;
    }
    std::printf("AISExternal part 1: %d check(s) failed\n", g_failures);
    return 1;
}
