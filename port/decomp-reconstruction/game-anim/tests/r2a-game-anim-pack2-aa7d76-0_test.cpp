// Test for batch r2a-game-anim-pack2-aa7d76-0 (redo pass).
//
// Covers the v2Controller base constructor in game-anim/src/r2a-game-anim-pack2-aa7d76-0.cpp: the field stores at
// +0x04 .. +0x0c and the null-controllable path at assert level 0 (no output, construction completes). The assert levels
// 1 and 2 print or stop the program, so they are not run here. The destructor and Update belong to another batch and are
// test doubles, so this test links with the source alone.

#include <cstdint>
#include <cstdio>

#include "dh2/v2Controller.hpp"

// Engine assert level, read by the base constructor.
int gAssertLevel = 0;

// Test doubles for code owned by other batches. The vtable of v2Controller is emitted with its key function, ~v2Controller.
v2Controller::~v2Controller() {}
void v2Controller::Update() {}

namespace {

int g_failures = 0;

void Expect(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL %s\n", what);
        ++g_failures;
    }
}

// The controllable is only compared by address, so a non-null marker value is enough.
v2Controllable* FakeControllable() { return reinterpret_cast<v2Controllable*>(static_cast<std::uintptr_t>(0x3000)); }

void TestStoresFields() {
    gAssertLevel = 0;
    v2Controllable* controllable = FakeControllable();
    v2Controller controller(controllable);
    Expect(controller.m_controllable == controllable, "base constructor stores the controllable at +0x04");
    Expect(!controller.m_blocked, "base constructor clears m_blocked at +0x08");
    Expect(!controller.unk_009, "base constructor clears unk_009 at +0x09");
    Expect(!controller.unk_00a, "base constructor clears unk_00a at +0x0a");
    Expect(controller.m_character == nullptr, "base constructor clears m_character at +0x0c");
}

void TestNullControllableAtLevelZero() {
    // Assert level 0: the null controllable prints nothing, and construction still completes with the same fields.
    gAssertLevel = 0;
    v2Controller controller(nullptr);
    Expect(controller.m_controllable == nullptr, "null controllable is stored as given");
    Expect(!controller.m_blocked && !controller.unk_009 && !controller.unk_00a && controller.m_character == nullptr,
           "null controllable leaves the flags and the character cleared");
}

}  // namespace

int main() {
    TestStoresFields();
    TestNullControllableAtLevelZero();
    if (g_failures == 0) {
        std::printf("r2a-game-anim-pack2-aa7d76-0 tests passed\n");
        return 0;
    }
    std::printf("%d r2a-game-anim-pack2-aa7d76-0 test failure(s)\n", g_failures);
    return 1;
}
