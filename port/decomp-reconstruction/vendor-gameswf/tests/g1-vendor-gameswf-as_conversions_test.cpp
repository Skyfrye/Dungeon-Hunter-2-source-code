// Test (owner G1) for the ActionScript conversion fixes in the vendored gameswf natives, each checked against the binary:
//   String: concat 0x7a61c0 and the constructor 0x7a6408 convert numbers (to_string(tu_string&)); lastIndexOf 0x7a57c4 searches
//   from the start index and keeps the last hit; substr 0x7a6678 leaves the result untouched for a zero length.
//   Number: toString 0x7a3d5c has no NaN text (the %.14g text is used); isNaN 0x7a3ffc is false whenever one argument is given.
//   as_value: to_tu_string() (0x420a84) does not convert; to_string(buf) (0x797b7c) does.
// The natives run on a real as_value and a real stack (as_environment is a stand-in holding only the stack).
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_as_classes/as_string.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_as_classes/as_number.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp

#include <cmath>
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "gameswf/gameswf_action.h"
#include "gameswf/gameswf_as_classes/as_number.h"
#include "gameswf/gameswf_as_classes/as_string.h"
#include "gameswf/gameswf_function.h"
#include "gameswf/gameswf_object.h"
#include "gameswf/gameswf_value.h"
#include "vendor-gameswf/as_value.hpp"

namespace gameswf {

bool string_to_number(double* result, const char* str) {
	char* tail = nullptr;
	*result = std::strtod(str, &tail);
	return !(tail == str || *tail != 0);
}

bool string_to_number(int* result, const char* str) {
	char* tail = nullptr;
	long v = std::strtol(str, &tail, 10);
	*result = static_cast<int>(v);
	return !(tail == str || *tail != 0);
}

as_environment::as_environment(player*) {}
as_environment::~as_environment() {}

}  // namespace gameswf

// Array.split (string_split) builds an as_array; it is not run here.
void as_array_ctor_stub(void*, void*) __asm__("_ZN7gameswf8as_arrayC1EPNS_6playerE");
void as_array_ctor_stub(void*, void*) { std::abort(); }

namespace {

int g_failures = 0;

void check(bool ok, const char* what) {
	if (!ok) {
		++g_failures;
		std::fprintf(stderr, "FAIL: %s\n", what);
	}
}

using gameswf::as_value;
using gameswf::fn_call;

// Runs a native with the given arguments pushed in call order (the first argument is the one the script wrote first).
struct Call {
	gameswf::as_environment env{nullptr};
	as_value result;
	as_value this_value;
	int nargs = 0;
	as_value args[4];

	Call& arg(const as_value& v) {
		args[nargs++] = v;
		return *this;
	}

	void run(void (*native)(const fn_call&)) {
		for (int i = nargs - 1; i >= 0; --i) {
			env.push(args[i]);
		}
		fn_call fn(&result, this_value, &env, nargs, env.get_top_index());
		native(fn);
		env.drop(nargs);
	}
};

bool is_string_value(const as_value& v, const char* text) {
	return v.is_string() && std::strcmp(v.to_string(), text) == 0;
}

void test_value_conversions() {
	as_value n(42);
	as_value t(true);
	as_value s("abc");
	check(std::strcmp(n.to_tu_string().c_str(), "") == 0, "to_tu_string() of a number is empty");
	check(std::strcmp(t.to_tu_string().c_str(), "") == 0, "to_tu_string() of a boolean is empty");
	check(std::strcmp(s.to_tu_string().c_str(), "abc") == 0, "to_tu_string() of a string");
	tu_string buf;
	check(std::strcmp(n.to_string(buf).c_str(), "42") == 0, "to_string(buf) of a number");
	check(std::strcmp(t.to_string(buf).c_str(), "true") == 0, "to_string(buf) of a boolean");
}

void test_string_concat_and_ctor() {
	Call c;
	c.this_value = as_value("ab");
	c.arg(as_value(12)).arg(as_value("x")).arg(as_value(true));
	c.run(gameswf::string_concat);
	check(is_string_value(c.result, "ab12xtrue"), "concat converts number and boolean arguments");

	Call k;
	k.arg(as_value(7));
	k.run(gameswf::as_global_string_ctor);
	check(is_string_value(k.result, "7"), "String(7) is the text 7");

	Call k2;
	k2.arg(as_value(1.5));
	k2.run(gameswf::as_global_string_ctor);
	check(is_string_value(k2.result, "1.5"), "String(1.5) is the text 1.5");

	Call k3;
	k3.run(gameswf::as_global_string_ctor);
	check(is_string_value(k3.result, ""), "String() is empty");
}

void test_string_last_index_of() {
	// The binary starts the search at the start index and keeps the last hit.
	Call a;
	a.this_value = as_value("abcabc");
	a.arg(as_value("bc"));
	a.run(gameswf::string_last_index_of);
	check(a.result.to_number() == 4.0, "lastIndexOf without a start index");

	Call b;
	b.this_value = as_value("abcabc");
	b.arg(as_value("bc")).arg(as_value(2));
	b.run(gameswf::string_last_index_of);
	check(b.result.to_number() == 4.0, "lastIndexOf with start 2 finds the last hit at 4 (r1714 stopped at hits past the start)");

	Call c;
	c.this_value = as_value("abcabc");
	c.arg(as_value("bc")).arg(as_value(5));
	c.run(gameswf::string_last_index_of);
	check(c.result.to_number() == -1.0, "lastIndexOf with start 5 finds nothing");
}

void test_string_substr() {
	Call a;
	a.this_value = as_value("hello");
	a.arg(as_value(1)).arg(as_value(0));
	a.run(gameswf::string_substr);
	check(!a.result.is_string() && !a.result.is_number(), "substr(1, 0) leaves the result undefined");

	Call b;
	b.this_value = as_value("hello");
	b.arg(as_value(1)).arg(as_value(3));
	b.run(gameswf::string_substr);
	check(is_string_value(b.result, "ell"), "substr(1, 3)");
}

void test_number() {
	Call a;
	a.this_value = as_value(std::nan(""));
	a.run(gameswf::as_number_to_string);
	check(a.result.is_string() && std::strcmp(a.result.to_string(), "NaN") != 0, "Number.toString of NaN is not the text NaN");

	Call b;
	b.this_value = as_value(255);
	b.arg(as_value(16));
	b.run(gameswf::as_number_to_string);
	check(is_string_value(b.result, "FF"), "255.toString(16)");

	Call c;
	c.arg(as_value(std::nan("")));
	c.run(gameswf::as_global_isnan);
	check(c.result.to_bool() == false, "isNaN(NaN) is false in the binary");

	Call d;
	d.arg(as_value(3));
	d.run(gameswf::as_global_isnan);
	check(d.result.to_bool() == false, "isNaN(3) is false");

	Call e;
	e.run(gameswf::as_global_isnan);
	check(e.result.to_bool() == true, "isNaN() without an argument is true");
}

}  // namespace

int main() {
	test_value_conversions();
	test_string_concat_and_ctor();
	test_string_last_index_of();
	test_string_substr();
	test_number();
	if (g_failures == 0) {
		std::printf("g1 as conversions test: OK\n");
		return 0;
	}
	return 1;
}
