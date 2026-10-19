// TestUD: a Lua test user-data object. It derives from sfc::script::lua::UserData, the base of every object exposed
// to Lua as userdata, and has the same vtable shape: two destructors, getUDTypeName and createBindings. The vtable
// symbol is 24 bytes: offset-to-top, typeinfo (zero, the build has no RTTI), then four slots.
// Base evidence: TestMethod and TestFunc pass the object pointer, unchanged, to ReturnValues::pushUserData(UserData*).
// The object is 4 bytes, the vptr only: GSTest::Update allocates each TestUD with a 4-byte CustomAlloc and stores its
// vptr, and no TestUD function reads a member. The earlier unk_04 member was not supported by the binary and is gone.
// createBindings publishes TestFunc and TestStaticMethod as Lua functions and TestMethod as a method.
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x386ad8 / 0x386b18, createBindings 0x386d00).
#pragma once

#include "dh2/sfc/script/lua/UserData.hpp"

namespace sfc {
namespace script {
namespace lua {
class Arguments;
class ReturnValues;
}  // namespace lua
}  // namespace script
}  // namespace sfc

class TestUD : public sfc::script::lua::UserData {
public:
    ~TestUD() override;                                                             // 0x386ad8 (D1), 0x386b18 (D0)
    const char* getUDTypeName() const override;                                     // slot 0x08: 0x386ab4 "TestUD"
    void createBindings(sfc::script::lua::Binder& binder) override;                 // slot 0x0c: 0x386d00

    // The binder calls these as plain functions with (args, ret, user). In the original the first argument is r0,
    // the Hex-Rays "this" of the member form, and the object is never read, so they are static.
    static void TestStaticMethod(const sfc::script::lua::Arguments& args,
                                 sfc::script::lua::ReturnValues& ret, void* user);  // 0x386e08
    static void TestFunc(const sfc::script::lua::Arguments& args,
                         sfc::script::lua::ReturnValues& ret, void* user);          // 0x386ec0

    // A true member: this is the TestUD the method was called on (r0). Bound with bindMethod<TestUD>.
    void TestMethod(const sfc::script::lua::Arguments& args,
                    sfc::script::lua::ReturnValues& ret);                           // 0x386e64

    // Argument count (see the layout request in the ledger): (end - begin) / 112 over the {begin, end} pair that
    // Arguments +0x04 points at. The 112-byte item size is the constant -1227133513 (= 0xB6DB6DB7, the inverse of 7)
    // applied to (end - begin) >> 4, checked in the asm of TestFunc (0x386ec0).
};
