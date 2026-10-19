// Helpers for the gameswf natives that fill an ActionScript object or array (game-app natives, ELF 0x43d2c8 .. 0x44f528). The binary
// writes each property with the object's virtual set_member (vtable +0x1c) on a tu_string name and a freshly built as_value, then
// drops the value; these inline helpers are exactly that sequence.
#pragma once

#include "gameswf/gameswf_as_classes/as_array.h"
#include "gameswf/gameswf_environment.h"
#include "vendor-gameswf/as_value.hpp"

namespace nativeobj {

// obj.name = number (as_value::set_double).
inline void SetNumber(gameswf::as_object* obj, const char* name, double value) {
    gameswf::as_value v;
    v.set_double(value);
    obj->set_member(tu_stringi(name), v);
}

// obj.name = string (as_value::set_string(const char*)).
inline void SetString(gameswf::as_object* obj, const char* name, const char* value) {
    gameswf::as_value v;
    v.set_string(value);
    obj->set_member(tu_stringi(name), v);
}

// obj.name = boolean (as_value::set_bool).
inline void SetBool(gameswf::as_object* obj, const char* name, bool value) {
    gameswf::as_value v;
    v.set_bool(value);
    obj->set_member(tu_stringi(name), v);
}

// A new ActionScript object bound to the player of the call (the binary builds it with operator new(56) and as_object(player)).
inline gameswf::as_object* NewObject(const gameswf::fn_call& call) {
    return new gameswf::as_object(call.get_player());
}

// array.push(object): the value holds a reference to the object (add_ref), is pushed and dropped.
inline void PushObject(gameswf::as_array* array, gameswf::as_object* obj) {
    const gameswf::as_value element(obj);
    array->push(element);
}

}  // namespace nativeobj
