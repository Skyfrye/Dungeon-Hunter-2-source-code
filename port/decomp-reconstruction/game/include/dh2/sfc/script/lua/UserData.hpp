// sfc::script::lua::UserData: base of every object exposed to Lua as userdata.
// Original size 0x4 (vtable pointer only). Vtable at ObjectBase+0: slots 0-1 destructors,
// slot 2 getUDTypeName, slot 3 createBindings (both implemented by UserData itself, so not pure).
#pragma once

namespace sfc { namespace script { namespace lua {

class Binder;

class UserData {
public:
    virtual ~UserData();                                // +0x00 / +0x04 (D1 / D0)
    virtual const char* getUDTypeName() const;          // +0x08
    virtual void createBindings(Binder& binder);        // +0x0c
};

}}} // namespace sfc::script::lua
