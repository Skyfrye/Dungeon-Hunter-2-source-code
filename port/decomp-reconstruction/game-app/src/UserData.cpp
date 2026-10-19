// sfc::script::lua::UserData: the out-of-line members of the userdata base class (dh2/sfc/script/lua/UserData.hpp).
// Added by the game/engine type unification (u2-gametypes): the value reads StreamReader::readAs<unsigned int> and
// <unsigned char> sit in the same batch as TestUD (g1-game-app-pack13-4d9327-0.cpp), whose vtable needs these three
// members, so any program that reads a stream (the pydata tables, for one) links them in.
#include "dh2/sfc/script/lua/UserData.hpp"

namespace sfc {
namespace script {
namespace lua {

// 0x33dcb0 _ZN3sfc6script3lua8UserDataD1Ev (the complete-object destructor; the body is empty, asm BX LR)
UserData::~UserData() {}

// 0x33dcb4 _ZNK3sfc6script3lua8UserData13getUDTypeNameEv
const char* UserData::getUDTypeName() const {
    return "UserData";
}

// 0x33dcc4 _ZN3sfc6script3lua8UserData14createBindingsERNS1_6BinderE (empty, asm BX LR)
void UserData::createBindings(Binder& binder) {
    (void)binder;
}

// 0x33e2f0 _ZN3sfc6script3lua8UserDataD0Ev: the deleting destructor. Skipped, compiler-generated (it stores the vtable
// pointer and calls CustomFree on the object).

}  // namespace lua
}  // namespace script
}  // namespace sfc
