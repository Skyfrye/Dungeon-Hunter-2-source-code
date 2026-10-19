// TestUD2: a Lua test user-data object that extends TestUD. Its createBindings calls TestUD::createBindings
// first, then binds Test2 twice (as a function and as a method). It adds no data members: its object is the 4-byte
// vptr only, like TestUD. Its vtable is 24 bytes, the same four-slot shape as TestUD.
// The base TestUD is evidenced by TestUD2::createBindings calling TestUD::createBindings directly, and by the
// same UserData base chain as TestUD.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x386ae0 / 0x386ae4, createBindings 0x386da4).
#pragma once

#include "dh2/TestUD.hpp"

class TestUD2 : public TestUD {
public:
    ~TestUD2() override;                                                            // 0x386ae0 (D1), 0x386ae4 (D0)
    const char* getUDTypeName() const override;                                     // slot 0x08: 0x386ac4 "TestUD2"
    void createBindings(sfc::script::lua::Binder& binder) override;                 // slot 0x0c: 0x386da4

    // Empty body (asm BX LR). Bound as a function and as a method, and the arguments are ignored.
    static void Test2(const sfc::script::lua::Arguments& args,
                      sfc::script::lua::ReturnValues& ret, void* user);             // 0x386ad4
};
