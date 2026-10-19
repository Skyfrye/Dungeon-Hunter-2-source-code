// Batch v1-vendor-gameswf-gameswf_as_value-794e76-0: gameswf::as_value (DH2 version).
//
// The class is declared in vendor-gameswf/include/vendor-gameswf/as_value.hpp, which replaces the upstream
// struct in gameswf/gameswf_value.h. This file defines every out-of-line member of it that the binary has
// (the r1714 bodies in gameswf_value.cpp use members that the DH2 layout does not have and are #if 0 there).
// Bodies follow the Hex-Rays pseudocode and the ARM listings. Where the listing and the pseudocode disagree,
// the listing decides.
//
// Value layout (see as_value.hpp): +0x00 m_flags, +0x01 m_type, +0x04 payload union, +0x08 m_owner.
// Types: 0 undefined, 1 boolean, 2 number, 3 borrowed or as_string-owned string, 4 owned string, 5 object, 6 property.
//
// Differences from r1714 that show here: to_tu_string() does not convert (only a held string, else a shared empty
// string); a string that cannot be parsed is NaN; the number type test ignores NaN; there is no m_string cache and
// no find_property.

#include <cstdio>
#include <new>

#include "core-platform/memory.hpp"          // operator new(std::size_t, swf::MemHint), 0x752ba8
#include "gameswf/gameswf_action.h"          // get_builtin, builtin_object
#include "gameswf/gameswf_as_classes/as_boolean.h"  // as_global_boolean_ctor
#include "gameswf/gameswf_as_classes/as_number.h"   // as_global_number_ctor
#include "gameswf/gameswf_as_classes/as_string.h"   // as_global_string_ctor
#include "gameswf/gameswf_function.h"        // as_function, as_c_function
#include "gameswf/gameswf_object.h"          // as_object, as_global_object_ctor
#include "gameswf/gameswf_value.h"           // as_property (upstream); includes vendor-gameswf/as_value.hpp
#include "vendor-gameswf/gameswf_alloc.hpp"  // free_internal(void*, unsigned int), 0x752b38

namespace gameswf {

// 0x439d50 gameswf::as_value::as_value(int)
// +0x00 = 0, +0x01 = 2 (number), +0x04 = (double)val. The binary does not write +0x08 for numbers: m_owner overlays the
// high word of the double, so it must not be written here either.
as_value::as_value(int val) : m_flags(0), m_type(NUMBER), m_number(static_cast<double>(val)) {}

// 0x43a2ac gameswf::as_value::as_value(char const*)
// Type 0, flags 0, then set_string(str).
as_value::as_value(const char* str) : m_flags(0), m_type(UNDEFINED), m_number(0.0) {
	m_owner = nullptr;
	set_string(str);
}

// 0x769540 gameswf::as_value::as_value(gameswf::as_value const&, gameswf::as_value const&)
// Property value. +0x00 = 0, +0x01 = 6 (property), +0x04 = 0 (no target), +0x08 = a new as_property built from
// getter and setter. The binary allocates 0x14 bytes with operator new(size, swf::MemHint 0). This build
// allocates sizeof(as_property) with the same hint, which is the 32-bit size on the target and the host size here.
// The new property takes one reference.
as_value::as_value(const as_value& getter, const as_value& setter)
    : m_flags(0), m_type(PROPERTY), m_object(nullptr) {
	void* mem = operator new(sizeof(as_property), static_cast<swf::MemHint>(0));
	as_property* prop = new (mem) as_property(getter, setter);
	m_owner = prop;
	prop->add_ref();
}

// 0x7babb0 gameswf::as_value::as_value(gameswf::as_object*)
// +0x00 = 0, +0x01 = 5 (object), +0x04 = obj, one reference on a non-null object.
as_value::as_value(as_object* obj) : m_flags(0), m_type(OBJECT), m_object(obj) {
	m_owner = nullptr;
	if (obj != nullptr) {
		obj->add_ref();
	}
}

// 0x797408 gameswf::as_value::as_value(wchar_t const*)  [C1]
// 0x797448 gameswf::as_value::as_value(wchar_t const*)  [C2, same listing]
// The listing stores type 4, then calls set_string("") before +0x04 has been written, and only then
// encodes the wide text into +0x04. In set_string that first call (type 4) assigns through +0x04, which is not
// initialised at that point (the pointer is whatever the stack held). This build allocates the empty string first
// and encodes into it. That first call writes through an uninitialised pointer (undefined in the binary), which is why it is not reproduced. Both symbols share this one definition.
as_value::as_value(const wchar_t* wstr)
    : m_flags(0), m_type(STRING), m_string(nullptr) {
	m_owner = nullptr;
	void* mem = operator new(sizeof(tu_string), static_cast<swf::MemHint>(0));
	m_string = new (mem) tu_string("");
	tu_string::encode_utf8_from_wchar(m_string, wstr);
}

// 0x797124 gameswf::as_value::drop_refs()
// Releases what the current type holds and clears the pointer. The type byte is not changed, as in the binary.
// Type 3 drops its owner (the as_string), type 4 frees its heap text when it has one and then the string block,
// type 5 drops the object, type 6 drops the as_property and then the target.
void as_value::drop_refs() {
	switch (m_type) {
	case STRING_BORROWED:
		if (m_owner != nullptr) {
			m_owner->drop_ref();
			m_owner = nullptr;
		}
		break;
	case STRING:
		if (m_string != nullptr) {
			m_string->~tu_string();	// the binary frees the heap text when the flag byte is 0xff, then the block
			free_internal(m_string, 0);
			m_string = nullptr;
		}
		break;
	case OBJECT:
		if (m_object != nullptr) {
			m_object->drop_ref();
			m_object = nullptr;
		}
		break;
	case PROPERTY:
		if (m_owner != nullptr) {
			m_owner->drop_ref();
			m_owner = nullptr;
		}
		if (m_object != nullptr) {
			m_object->drop_ref();
			m_object = nullptr;
		}
		break;
	default:
		break;
	}
}

// 0x420a84 gameswf::as_value::to_tu_string() const
// Types 3 and 4 return the held string. Every other type returns one shared empty string (a function-local static,
// built on first use). There is no conversion of numbers or booleans here.
const tu_string& as_value::to_tu_string() const {
	if (m_type == STRING_BORROWED || m_type == STRING) {
		return *m_string;
	}
	static const tu_string s_dummy;
	return s_dummy;
}

// 0x796fb4 gameswf::as_value::to_string() const
// The C string of to_tu_string().
const char* as_value::to_string() const {
	return to_tu_string().c_str();
}

// 0x796f5c gameswf::as_value::to_xstring() const
// An object shows its address ("0x%p", a 16-byte function-local buffer); every other type shows to_tu_string().
const char* as_value::to_xstring() const {
	if (m_type == OBJECT) {
		static char buf[16];
		snprintf(buf, sizeof(buf), "0x%p", static_cast<const void*>(m_object));
		return buf;
	}
	return to_tu_string().c_str();
}

// 0x797b7c gameswf::as_value::to_string(gameswf::tu_string&) const
// Undefined, boolean, number, null object and unknown types write their text into buf and return it. Types 3 and 4
// return the held string without touching buf. A non-null object asks itself (vtable +0x0c, as_object::to_string).
// A property reads its value and converts that. Numbers use "%.14g" in a 50-byte buffer, as in the binary.
// The listing types the result char*; every path returns a tu_string*, so this returns const tu_string&.
const tu_string& as_value::to_string(tu_string& buf) const {
	switch (m_type) {
	case UNDEFINED:
		buf = "undefined";
		return buf;
	case BOOLEAN:
		buf = m_bool ? "true" : "false";
		return buf;
	case NUMBER: {
		char s[50];
		snprintf(s, sizeof(s), "%.14g", m_number);
		buf = s;
		return buf;
	}
	case STRING_BORROWED:
	case STRING:
		return *m_string;
	case OBJECT:
		if (m_object != nullptr) {
			buf = m_object->to_string();
		} else {
			buf = "null";
		}
		return buf;
	case PROPERTY: {
		as_value prop;
		get_property(&prop);
		tu_string tmp;
		buf = prop.to_string(tmp);
		return buf;
	}
	default:
		buf = "";
		return buf;
	}
}

// 0x797a54 gameswf::as_value::to_number() const
// Undefined is NaN. Boolean is 1 or 0. A number is itself. A string is parsed with string_to_number and is NaN when
// the whole text is not a number. A non-null object asks itself (vtable +0x10, as_object::to_number), a null object
// is NaN. A property reads its value. Unknown types give 0.
double as_value::to_number() const {
	switch (m_type) {
	case UNDEFINED:
		return get_nan();
	case BOOLEAN:
		return m_bool ? 1.0 : 0.0;
	case NUMBER:
		return m_number;
	case STRING_BORROWED:
	case STRING: {
		double result;
		if (string_to_number(&result, m_string->c_str())) {
			return result;
		}
		return get_nan();
	}
	case OBJECT:
		if (m_object != nullptr) {
			return m_object->to_number();
		}
		return get_nan();
	case PROPERTY: {
		as_value prop;
		get_property(&prop);
		return prop.to_number();
	}
	default:
		return 0.0;
	}
}

// 0x797960 gameswf::as_value::to_bool() const
// Boolean: the byte. Number: not zero (NaN is true). String: not empty. A non-null object asks itself (vtable +0x14,
// as_object::to_bool). A null object, undefined and unknown types are false. A property reads its value.
bool as_value::to_bool() const {
	switch (m_type) {
	case BOOLEAN:
		return m_bool;
	case NUMBER:
		return m_number != 0.0;
	case STRING_BORROWED:
	case STRING:
		return m_string->length() > 0;
	case OBJECT:
		if (m_object != nullptr) {
			return m_object->to_bool();
		}
		return false;
	case PROPERTY: {
		as_value prop;
		get_property(&prop);
		return prop.to_bool();
	}
	default:
		return false;
	}
}

// 0x796bac gameswf::as_value::to_function() const
// The object as an as_function, or null for any other type.
as_function* as_value::to_function() const {
	if (m_type == OBJECT) {
		return cast_to<as_function>(m_object);
	}
	return nullptr;
}

// 0x796b80 gameswf::as_value::is_function() const
bool as_value::is_function() const {
	return m_type == OBJECT && cast_to<as_function>(m_object) != nullptr;
}

// 0x796ab8 gameswf::as_value::to_property() const
as_property* as_value::to_property() const {
	if (m_type == PROPERTY) {
		return static_cast<as_property*>(m_owner);
	}
	return nullptr;
}

// 0x796acc gameswf::as_value::get_property_target() const
// The target object of a property value (debugging), else null.
const as_object* as_value::get_property_target() const {
	if (m_type == PROPERTY) {
		return m_object;
	}
	return nullptr;
}

// 0x796bfc gameswf::as_value::set_property_target(gameswf::as_object*)
// Drops the old target reference and takes one on the new target. The type byte is not changed and the new target
// is not tested for null (the binary calls add_ref on it unconditionally).
void as_value::set_property_target(as_object* new_target) {
	if (m_object != nullptr) {
		m_object->drop_ref();
	}
	m_object = new_target;
	new_target->add_ref();
}

// 0x797644 gameswf::as_value::get_property(gameswf::as_value*) const
// as_property::get on the property object with this value's target.
void as_value::get_property(as_value* val) const {
	static_cast<as_property*>(m_owner)->get(m_object, val);
}

// 0x796b44 gameswf::as_value::get_property(gameswf::as_value const&, gameswf::as_value*) const
// The variant for a primitive "this": as_property::get(const as_value&, as_value*).
void as_value::get_property(const as_value& primitive, as_value* val) const {
	static_cast<as_property*>(m_owner)->get(primitive, val);
}

// 0x797950 gameswf::as_value::set_property(gameswf::as_value const&)
void as_value::set_property(const as_value& val) {
	static_cast<as_property*>(m_owner)->set(m_object, val);
}

// 0x797230 gameswf::as_value::set_bool(bool)
void as_value::set_bool(bool val) {
	drop_refs();
	m_bool = val;
	m_type = BOOLEAN;
}

// 0x797488 gameswf::as_value::set_double(double)
void as_value::set_double(double val) {
	drop_refs();
	m_type = NUMBER;
	m_number = val;
}

// 0x797250 gameswf::as_value::set_as_object(gameswf::as_object*)
// Nothing changes when the value already holds this object. Otherwise the old value is dropped and the object
// (when not null) takes one reference.
void as_value::set_as_object(as_object* obj) {
	if (m_type != OBJECT || m_object != obj) {
		drop_refs();
		m_type = OBJECT;
		m_object = obj;
		if (obj != nullptr) {
			obj->add_ref();
		}
	}
}

// 0x7972a0 gameswf::as_value::set_as_c_function(void (*)(gameswf::fn_call const&))
// A new as_c_function with no player (0x40 bytes, operator new with hint 0), stored as an object value.
void as_value::set_as_c_function(void (*func)(const fn_call& fn)) {
	void* mem = operator new(sizeof(as_c_function), static_cast<swf::MemHint>(0));
	as_c_function* f = new (mem) as_c_function(nullptr, func);
	set_as_object(f);
}

// 0x7972d8 gameswf::as_value::set_tu_string(gameswf::tu_string const&)
// Nothing changes when the value already owns this very string object. Otherwise the old value is dropped. A string
// with the interned flag (bit 0 of byte +0x13) is borrowed: type 3, no owner. Any other string is copied into a new
// 0x14-byte block, type 4.
void as_value::set_tu_string(const tu_string& str) {
	if (m_type != STRING || m_string != &str) {
		drop_refs();
		if (str.is_interned()) {
			m_owner = nullptr;
			m_type = STRING_BORROWED;
			m_string = const_cast<tu_string*>(&str);
		} else {
			m_type = STRING;
			void* mem = operator new(sizeof(tu_string), static_cast<swf::MemHint>(0));
			m_string = new (mem) tu_string(str);
		}
	}
}

// 0x797350 gameswf::as_value::set_string(char const*)
// An owned string (type 4) is overwritten in place: the new text is built in a temporary and assigned. Any other
// type is dropped, and an owned string of the given text is created.
void as_value::set_string(const char* str) {
	if (m_type == STRING) {
		tu_string tmp(str);
		*m_string = tmp;
	} else {
		drop_refs();
		m_type = STRING;
		void* mem = operator new(sizeof(tu_string), static_cast<swf::MemHint>(0));
		m_string = new (mem) tu_string(str);
	}
}

// 0x7971fc gameswf::as_value::set_string(gameswf::as_string*)
// Takes a reference on the as_string first, then drops the old value; type 3 with the as_string as the owner and
// +0x04 pointing at the string inside it (at +0x0c).
void as_value::set_string(as_string* str) {
	str->add_ref();
	drop_refs();
	m_owner = str;
	m_type = STRING_BORROWED;
	m_string = &str->m_string;
}

// 0x79773c gameswf::as_value::operator=(gameswf::as_value const&)
// Copies the flags byte first (an undefined source clears it). Boolean and number copy the payload. A string with an
// owning as_string shares that as_string (set_string(as_string*)); a borrowed string without an owner, and an owned
// string, go through set_tu_string (interned text is borrowed again, other text is copied). An object takes a
// reference. A property with a target is evaluated into this value (get_property); a property without a target is
// copied as such (type 6, the as_property shared, target 0).
void as_value::operator=(const as_value& v) {
	m_flags = v.m_flags;
	switch (v.m_type) {
	case UNDEFINED:
		m_flags = 0;
		drop_refs();
		m_type = UNDEFINED;
		break;
	case BOOLEAN:
		set_bool(v.m_bool);
		break;
	case NUMBER:
		set_double(v.m_number);
		break;
	case STRING_BORROWED:
		if (v.m_owner != nullptr) {
			set_string(static_cast<as_string*>(v.m_owner));
			break;
		}
		set_tu_string(*v.m_string);
		break;
	case STRING:
		set_tu_string(*v.m_string);
		break;
	case OBJECT:
		set_as_object(v.m_object);
		break;
	case PROPERTY:
		drop_refs();
		if (v.m_object != nullptr) {
			v.get_property(this);
		} else {
			m_type = PROPERTY;
			m_owner = v.m_owner;
			m_owner->add_ref();
			m_object = nullptr;
		}
		break;
	default:
		return;
	}
}

// 0x797654 gameswf::as_value::_typeof() const
// Names for types 0 to 4 are fixed. A non-null object asks itself (vtable +0x18, as_object::_typeof), a null object
// is "null". A property asks its current value. Unknown types give nullptr.
const char* as_value::_typeof() const {
	switch (m_type) {
	case UNDEFINED:
		return "undefined";
	case BOOLEAN:
		return "boolean";
	case NUMBER:
		return "number";
	case STRING_BORROWED:
	case STRING:
		return "string";
	case OBJECT:
		if (m_object != nullptr) {
			return m_object->_typeof();
		}
		return "null";
	case PROPERTY: {
		as_value prop;
		get_property(&prop);
		return prop._typeof();
	}
	default:
		return nullptr;
	}
}

// 0x796e0c gameswf::as_value::is_instance_of(gameswf::as_function const*) const
// A boolean, number or string value is an instance of the matching built-in constructor (an as_c_function whose
// function pointer is as_global_boolean_ctor, as_global_number_ctor or as_global_string_ctor) or of Object
// (as_global_object_ctor). An object value asks the object. Anything else is not an instance of anything.
bool as_value::is_instance_of(const as_function* constructor) const {
	const as_c_function* c_function = nullptr;
	switch (m_type) {
	case BOOLEAN:
		c_function = cast_to<as_c_function>(constructor);
		if (c_function == nullptr) {
			return false;
		}
		return c_function->m_func == as_global_boolean_ctor || c_function->m_func == as_global_object_ctor;
	case NUMBER:
		c_function = cast_to<as_c_function>(constructor);
		if (c_function == nullptr) {
			return false;
		}
		return c_function->m_func == as_global_number_ctor || c_function->m_func == as_global_object_ctor;
	case STRING_BORROWED:
	case STRING:
		c_function = cast_to<as_c_function>(constructor);
		if (c_function == nullptr) {
			return false;
		}
		return c_function->m_func == as_global_string_ctor || c_function->m_func == as_global_object_ctor;
	case OBJECT:
		if (m_object == nullptr) {
			return false;
		}
		return m_object->is_instance_of(constructor);
	default:
		return false;
	}
}

// 0x796fd0 gameswf::as_value::get_member(gameswf::tu_string const&, gameswf::as_value*)
// Boolean asks the BOOLEAN builtin table (id 3), number the NUMBER table (id 2), and string (3, 4) the STRING table
// (id 4), each through get_builtin with a temporary copy of the name. A non-null object forwards to its own
// get_member(tu_stringi const&, as_value*) (vtable +0x20). Other types have no members.
bool as_value::get_member(const tu_string& name, as_value* val) {
	switch (m_type) {
	case BOOLEAN:
		return get_builtin(BUILTIN_BOOLEAN_METHOD, tu_stringi(name), val);
	case NUMBER:
		return get_builtin(BUILTIN_NUMBER_METHOD, tu_stringi(name), val);
	case STRING_BORROWED:
	case STRING:
		return get_builtin(BUILTIN_STRING_METHOD, tu_stringi(name), val);
	case OBJECT:
		if (m_object != nullptr) {
			return m_object->get_member(tu_stringi(name), val);
		}
		return false;
	default:
		return false;
	}
}

// 0x797dc0 gameswf::as_value::operator==(gameswf::as_value const&) const
// Abstract equality as the DH2 listing has it. Undefined equals undefined and an empty object. A boolean compares
// with a boolean as bytes, with a number through to_bool(), and with a string through to_number(). The listing
// compares a boolean with a number through to_bool(), not to_number(). That is kept. A number compares numerically
// with numbers, and with strings and booleans through to_number(). Strings compare as tu_strings with other
// strings and numerically with numbers and booleans. An object equals the same object, or undefined when empty.
// A property compares by its current value. Other combinations are not equal.
bool as_value::operator==(const as_value& a2) const {
	switch (m_type) {
	case UNDEFINED:
		if (a2.m_type == UNDEFINED) {
			return true;
		}
		if (a2.m_type == OBJECT) {
			return a2.m_object == nullptr;
		}
		return false;
	case BOOLEAN:
		switch (a2.m_type) {
		case BOOLEAN:
			return m_bool == a2.m_bool;
		case NUMBER:
			return m_bool == a2.to_bool();
		case STRING_BORROWED:
		case STRING:
			return to_number() == a2.to_number();
		default:
			return false;
		}
	case NUMBER:
		switch (a2.m_type) {
		case BOOLEAN:
		case STRING_BORROWED:
		case STRING:
			return a2.to_number() == m_number;
		case NUMBER:
			return m_number == a2.m_number;
		default:
			return false;
		}
	case STRING_BORROWED:
	case STRING:
		switch (a2.m_type) {
		case BOOLEAN:
			return to_number() == a2.to_number();
		case NUMBER:
			return to_number() == a2.m_number;
		case STRING_BORROWED:
		case STRING:
			return *m_string == *a2.m_string;
		default:
			return false;
		}
	case OBJECT:
		if (a2.m_type == OBJECT && m_object == a2.m_object) {
			return true;
		}
		if (m_object != nullptr) {
			return false;
		}
		return a2.m_type == UNDEFINED;
	case PROPERTY: {
		as_value prop;
		get_property(&prop);
		return prop == a2;
	}
	default:
		return false;
	}
}

// 0x798040 gameswf::as_value::operator!=(gameswf::as_value const&) const
// The negation of operator==.
bool as_value::operator!=(const as_value& v) const {
	return !(*this == v);
}

// 0x77eb90 gameswf::as_value::~as_value()  and  0x43a1b8 as_value::to_int()  and  0x7ba984 as_value::operator/=(double)
// Out-of-line copies of the inline members in as_value.hpp (drop_refs(); (int)to_number(); set_double(to_number() / v)).
// 0x439d8c as_value::is_number() is the inline "type == number" of the same header.

}  // namespace gameswf
