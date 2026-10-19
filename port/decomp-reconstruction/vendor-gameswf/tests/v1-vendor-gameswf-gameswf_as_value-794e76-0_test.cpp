// Test for batch v1-vendor-gameswf-gameswf_as_value-794e76-0 (gameswf::as_value).
//
// The strings are the real tu_string (container.cpp, utf8.cpp and the tu_string batch). The test supplies the callees that
// are outside this batch; they count calls or do nothing:
//   ref_counted::add_ref / drop_ref (ref_counted batch)   count the calls and record the object address
//   gameswf::get_builtin (gameswf_player.cpp)             records the table id and the name
//   gameswf::as_property (gameswf_value.cpp)              constructor counts; get and set count and record the target
//   gameswf::as_c_function constructor (pack21)           counts (the object's base is not built)
//   gameswf::as_object::is_instance_of, the as_global_*_ctor functions, string_to_number   minimal stand-ins
// The object-valued branches that go through the as_object vtable (to_string, to_number, to_bool, _typeof, get_member of a
// real object) need a constructed as_object and are not run here.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp

#include <cmath>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>

#include "core-platform/deps/swf_types.hpp"
#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_as_classes/as_boolean.h"
#include "gameswf/gameswf_as_classes/as_number.h"
#include "gameswf/gameswf_as_classes/as_string.h"
#include "gameswf/gameswf_function.h"
#include "gameswf/gameswf_object.h"
#include "gameswf/gameswf_value.h"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/permanent_string.hpp"

namespace {

int g_failures = 0;
int g_add_ref = 0;
int g_drop_ref = 0;
int g_property_ctor = 0;
int g_property_get = 0;
int g_property_set = 0;
int g_c_function_ctor = 0;
int g_builtin_calls = 0;
int g_builtin_id = -1;
std::string g_builtin_name;
const void* g_last_add_ref = nullptr;
const void* g_last_drop_ref = nullptr;
const void* g_last_property_target = nullptr;

void check(bool ok, const char* what) {
	if (!ok) {
		++g_failures;
		std::fprintf(stderr, "FAIL: %s\n", what);
	}
}

}  // namespace

// Doubles for the callees the batch reaches.
namespace gameswf {

void ref_counted::add_ref() const {
	++g_add_ref;
	g_last_add_ref = this;
}

void ref_counted::drop_ref() {
	++g_drop_ref;
	g_last_drop_ref = this;
}

bool get_builtin(builtin_object id, const tu_stringi& name, as_value*) {
	++g_builtin_calls;
	g_builtin_id = static_cast<int>(id);
	g_builtin_name = name.c_str();
	return g_builtin_name == "toString";
}

bool string_to_number(double* result, const char* str) {
	char* tail = nullptr;
	*result = std::strtod(str, &tail);
	return !(tail == str || *tail != 0);
}

bool as_object::is_instance_of(const as_function*) const {
	return false;
}

void as_global_boolean_ctor(const fn_call&) {}
void as_global_number_ctor(const fn_call&) {}
void as_global_string_ctor(const fn_call&) {}
void as_global_object_ctor(const fn_call&) {}

void as_property::get(as_object* target, as_value*) const {
	++g_property_get;
	g_last_property_target = target;
}

void as_property::get(const as_value&, as_value*) const {
	++g_property_get;
}

void as_property::set(as_object* target, const as_value&) {
	++g_property_set;
	g_last_property_target = target;
}

}  // namespace gameswf

// gameswf::as_property::as_property(as_value const&, as_value const&), complete-object constructor: counts the call.
void as_property_ctor_double(void*, const void*, const void*)
    __asm__("_ZN7gameswf11as_propertyC1ERKNS_8as_valueES3_");
void as_property_ctor_double(void*, const void*, const void*) {
	++g_property_ctor;
}

// gameswf::as_c_function::as_c_function(player*, void (*)(fn_call const&)): counts the call (the base is not built).
void as_c_function_ctor_double(void*, void*, void*)
    __asm__("_ZN7gameswf13as_c_functionC1EPNS_6playerEPFvRKNS_7fn_callEE");
void as_c_function_ctor_double(void*, void*, void*) {
	++g_c_function_ctor;
}

namespace {

using gameswf::as_value;

bool is_nan(double d) {
	return d != d;
}

void test_undefined_and_number() {
	as_value n(42);
	check(std::strcmp(n._typeof(), "number") == 0, "number _typeof");
	as_value u;
	check(std::strcmp(u._typeof(), "undefined") == 0, "undefined _typeof");
	check(u == u, "undefined == undefined");
	check(!(n == u), "number is not undefined");
	check(!(u == n), "undefined is not number");
	check(n != u, "operator!=");
	check(!(n != n), "operator!= on equal values");
}

void test_numbers() {
	as_value a(7), b(7), c(8);
	check(a == b, "7 == 7");
	check(!(a == c), "7 is not 8");
	as_value nan;
	nan.set_nan();
	check(nan.is_number(), "a NaN number is still a number (is_number tests the type only)");
	check(is_nan(nan.to_number()), "set_nan gives NaN");
}

void test_null_object() {
	as_value null_obj(static_cast<gameswf::as_object*>(nullptr));
	check(std::strcmp(null_obj._typeof(), "null") == 0, "null _typeof");
	as_value u;
	check(null_obj == u, "null == undefined");
	check(u == null_obj, "undefined == null");
	as_value n(0);
	check(!(null_obj == n), "null is not a number");
	check(!(n == null_obj), "number is not null");
	check(g_add_ref == 0, "a null object takes no reference");
	check(!null_obj.to_bool(), "null is false");
	check(is_nan(null_obj.to_number()), "null is NaN");
	tu_string buf;
	check(std::strcmp(null_obj.to_string(buf).c_str(), "null") == 0, "null text");
}

void test_object_reference() {
	alignas(8) char dummy[16];
	auto* obj = reinterpret_cast<gameswf::as_object*>(dummy);
	g_add_ref = 0;
	g_drop_ref = 0;
	{
		as_value v(obj);
		check(g_add_ref == 1, "an object takes one reference");
		check(g_last_add_ref == static_cast<const void*>(dummy),
		      "the reference goes to the object's ref_counted base (same address)");
		check(v == v, "an object equals itself");
		v.set_as_object(obj);
		check(g_add_ref == 1, "setting the same object again changes nothing");
		check(g_drop_ref == 0, "setting the same object again drops nothing");
	}
	check(g_drop_ref == 1, "destruction drops the object reference once");
	check(g_last_drop_ref == static_cast<const void*>(dummy),
	      "the drop goes to the object's ref_counted base (same address)");
}

void test_property() {
	as_value getter, setter;
	g_add_ref = 0;
	g_drop_ref = 0;
	g_property_ctor = 0;
	{
		as_value p(getter, setter);
		check(g_property_ctor == 1, "the property is built once");
		check(g_add_ref == 1, "the property takes one reference");
		check(p.is_property(), "a property value has type 6");
		check(p.get_property_target() == nullptr, "a fresh property has no target");

		alignas(8) char dummy[16];
		auto* target = reinterpret_cast<gameswf::as_object*>(dummy);
		p.set_property_target(target);
		check(g_add_ref == 2, "a property target takes one reference");
		check(p.get_property_target() == target, "the target is stored");

		g_property_set = 0;
		p.set_property(as_value(3));
		check(g_property_set == 1, "set_property goes to the as_property");
		check(g_last_property_target == static_cast<const void*>(dummy), "with this value's target");
		g_drop_ref = 0;
	}
	check(g_drop_ref == 2, "destruction releases the property and its target");
}

void test_flags() {
	as_value v(1);
	check(v.get_flags() == 0, "flags start at 0");
	check(v.is_enum() && !v.is_readonly() && !v.is_protected(), "no flag set");
	v.set_flags(as_value::DONT_ENUM | as_value::READ_ONLY);
	check(!v.is_enum(), "DONT_ENUM");
	check(v.is_readonly(), "READ_ONLY");
	check(!v.is_protected(), "DONT_DELETE is separate");
	as_value copy;
	copy = v;
	check(copy.get_flags() == (as_value::DONT_ENUM | as_value::READ_ONLY), "operator= copies the flags");
	as_value undef;
	copy = undef;
	check(copy.get_flags() == 0, "an undefined source clears the flags");
	check(copy.is_undefined(), "and the type");
}

void test_strings() {
	as_value s("hello");
	check(s.is_string(), "string type");
	check(std::strcmp(s.to_string(), "hello") == 0, "to_string() is the c string of to_tu_string()");
	check(std::strcmp(s._typeof(), "string") == 0, "string _typeof");
	check(s.to_bool(), "non-empty string is true");
	as_value empty("");
	check(!empty.to_bool(), "empty string is false");

	// A number has no string of its own: to_tu_string() is a shared empty string, to_string(buf) converts.
	as_value n(2.5);
	check(n.to_tu_string().c_str()[0] == 0, "to_tu_string of a number is empty");
	check(&n.to_tu_string() == &as_value(7).to_tu_string(), "the empty string is shared");
	check(std::strcmp(n.to_string(), "") == 0, "to_string() of a number is empty");
	tu_string buf;
	check(std::strcmp(n.to_string(buf).c_str(), "2.5") == 0, "number text");
	check(std::strcmp(as_value(100).to_string(buf).c_str(), "100") == 0, "integer text");
	check(std::strcmp(as_value(true).to_string(buf).c_str(), "true") == 0, "true text");
	check(std::strcmp(as_value(false).to_string(buf).c_str(), "false") == 0, "false text");
	check(std::strcmp(as_value().to_string(buf).c_str(), "undefined") == 0, "undefined text");
	check(&s.to_string(buf) == &s.to_tu_string(), "a string returns the held string, not buf");

	// Copies: an owned string is copied into a new block, equal text, a different object.
	as_value copy;
	copy = s;
	check(copy == s, "copied strings are equal");
	check(&copy.to_tu_string() != &s.to_tu_string(), "an owned string is copied (new tu_string)");

	// An interned string is borrowed: the same object, no copy.
	gameswf::permanent_string interned(tu_string("borrowed"));
	as_value b;
	b.set_tu_string(interned);
	check(&b.to_tu_string() == &interned, "an interned string is borrowed, not copied");
	as_value b2;
	b2 = b;
	check(&b2.to_tu_string() == &interned, "a borrowed string stays borrowed through operator=");
	check(b == b2, "equal borrowed strings");

	// The same owned string object again changes nothing.
	as_value own("same");
	const tu_string* before = &own.to_tu_string();
	own.set_tu_string(*before);
	check(&own.to_tu_string() == before, "set_tu_string with the held string keeps it");

	// set_string on an owned string overwrites in place.
	as_value text("one");
	const tu_string* held = &text.to_tu_string();
	text.set_string("two");
	check(&text.to_tu_string() == held, "set_string overwrites an owned string in place");
	check(std::strcmp(text.to_string(), "two") == 0, "with the new text");

	// Changing type drops the string.
	text.set_double(5);
	check(text.is_number() && text.to_number() == 5.0, "set_double");
	text.set_bool(true);
	check(text.is_bool() && text.to_bool(), "set_bool");
}

void test_conversions() {
	check(is_nan(as_value().to_number()), "undefined is NaN");
	check(as_value(true).to_number() == 1.0, "true is 1");
	check(as_value(false).to_number() == 0.0, "false is 0");
	check(as_value("12").to_number() == 12.0, "\"12\" is 12");
	check(is_nan(as_value("abc").to_number()), "an unparsable string is NaN");
	check(is_nan(as_value("").to_number()), "an empty string is NaN");
	check(as_value(0).to_bool() == false, "0 is false");
	check(as_value(3).to_bool() == true, "3 is true");
	as_value nan;
	nan.set_nan();
	check(nan.to_bool(), "NaN is true (compared with != 0)");
	check(as_value().to_bool() == false, "undefined is false");
	check(as_value(9.7).to_int() == 9, "to_int truncates");
	as_value d(10);
	d /= 4;
	check(d.to_number() == 2.5, "operator/=");
	d += 1;
	check(d.to_number() == 3.5, "operator+=");
}

void test_equality() {
	check(as_value(true) == as_value(true), "true == true");
	check(!(as_value(true) == as_value(false)), "true != false");
	check(as_value(true) == as_value(5), "true == 5 (boolean against number through to_bool)");
	check(as_value(true) == as_value("1"), "true == \"1\"");
	check(as_value(5) == as_value("5"), "5 == \"5\"");
	check(as_value("5") == as_value(5), "\"5\" == 5");
	check(as_value("a") == as_value("a"), "\"a\" == \"a\"");
	check(!(as_value("a") == as_value("b")), "\"a\" != \"b\"");
	check(!(as_value("a") == as_value()), "a string is not undefined");
}

void test_builtin_lookup() {
	tu_string name("toString");
	as_value out;
	g_builtin_calls = 0;
	as_value b(true);
	check(b.get_member(name, &out), "boolean member found through the table");
	check(g_builtin_id == gameswf::BUILTIN_BOOLEAN_METHOD && g_builtin_name == "toString", "boolean asks table 3");
	as_value n(1);
	n.get_member(name, &out);
	check(g_builtin_id == gameswf::BUILTIN_NUMBER_METHOD, "number asks table 2");
	as_value s("x");
	s.get_member(name, &out);
	check(g_builtin_id == gameswf::BUILTIN_STRING_METHOD, "string asks table 4");
	check(g_builtin_calls == 3, "one lookup each");
	g_builtin_calls = 0;
	as_value u;
	check(!u.get_member(name, &out), "undefined has no members");
	check(!as_value(static_cast<gameswf::as_object*>(nullptr)).get_member(name, &out), "null has no members");
	check(g_builtin_calls == 0, "and asks no table");
}

void test_c_function() {
	g_c_function_ctor = 0;
	g_add_ref = 0;
	g_drop_ref = 0;
	{
		as_value f;
		f.set_as_c_function(gameswf::as_global_number_ctor);
		check(g_c_function_ctor == 1, "set_as_c_function makes one as_c_function");
		check(f.is_object(), "stored as an object value");
		check(g_add_ref == 1, "which takes one reference");
	}
	check(g_drop_ref == 1, "and releases it");
}

}  // namespace

int main() {
	test_undefined_and_number();
	test_numbers();
	test_null_object();
	test_object_reference();
	test_property();
	test_flags();
	test_strings();
	test_conversions();
	test_equality();
	test_builtin_lookup();
	test_c_function();
	if (g_failures != 0) {
		std::printf("%d failure(s)\n", g_failures);
		return 1;
	}
	std::printf("v1-vendor-gameswf-gameswf_as_value-794e76-0 test: ok\n");
	return 0;
}
