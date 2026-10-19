// Test for batch v1-vendor-gameswf-pack11-4edfaf-0.
//
// Covers:
//   gameswf::dh2::as_array_is_index_text (the text test under as_array::is_index, 0x79806c).
//   gameswf::standard_array_sorter::operator() (0x7986e4) with each option bit, directly and as the comparator of std::sort
//   over an array<as_value> (the way as_array_sort, 0x79b124, uses it).
//
// The values are the real DH2 as_value (the as_value batch) and the real tu_string. The object runtime that the rest of the
// batch reaches (as_object, call_method, the built-in tables) is not exercised: test-support/dh2_as_runtime_stubs.cpp defines
// those symbols as weak functions that abort if they are ever called.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-pack11-4edfaf-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_value-794e76-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/container.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/utf8.cpp
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_string-39e5bd-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_test_support.cpp
//     port/decomp-reconstruction/vendor-gameswf/test-support/dh2_as_runtime_stubs.cpp

#include <cstdio>
#include <cstring>
#include <cstdlib>
#include <algorithm>

#include "base/container.h"
#include "vendor-gameswf/as_value.hpp"
#include "vendor-gameswf/as_array_sorter.hpp"
#include "vendor-gameswf/as_array_dh2_helpers.hpp"

namespace {

int g_failures = 0;

void check(bool ok, const char* what) {
	if (!ok) {
		++g_failures;
		std::fprintf(stderr, "FAIL: %s\n", what);
	}
}

void expect_index(const char* text, bool want) {
	const bool got = gameswf::dh2::as_array_is_index_text(text);
	if (got != want) {
		++g_failures;
		std::fprintf(stderr, "FAIL: is_index('%s') = %d, want %d\n", text, got ? 1 : 0, want ? 1 : 0);
	}
}

void test_is_index() {
	expect_index("", true);
	expect_index("0", true);
	expect_index("7", true);
	expect_index("123", true);
	expect_index("0042", true);
	expect_index("12a", false);
	expect_index("a1", false);
	expect_index("-1", false);
	expect_index(" 1", false);
	expect_index("1 ", false);
	expect_index("1.5", false);
	expect_index("length", false);
}

bool sort_less(int options, const gameswf::as_value& a, const gameswf::as_value& b) {
	gameswf::standard_array_sorter s(options);
	return s(a, b);
}

void test_sorter() {
	// to_tu_string() of a string value is the held string: two different objects even with equal text.
	gameswf::as_value apple("apple");
	gameswf::as_value banana("banana");
	gameswf::as_value upper_banana("Banana");

	// Default: case-sensitive strcmp. "apple" > "Banana" because 'a' (97) > 'B' (66).
	check(sort_less(0, apple, banana), "default: apple < banana");
	check(!sort_less(0, banana, apple), "default: not banana < apple");
	check(!sort_less(0, apple, upper_banana), "default: apple is not before Banana (case-sensitive)");

	// CASEINSENSITIVE (1): compares "apple" with "banana" ignoring case.
	check(sort_less(1, apple, upper_banana), "CASEINSENSITIVE: apple < Banana");
	check(!sort_less(1, upper_banana, apple), "CASEINSENSITIVE: not Banana < apple");

	// DESCENDING (2): negates the order.
	check(!sort_less(2, apple, banana), "DESCENDING: not apple < banana");
	check(sort_less(2, banana, apple), "DESCENDING: banana < apple");

	// CASEINSENSITIVE | DESCENDING (3).
	check(!sort_less(3, apple, upper_banana), "CI|DESC: not apple < Banana");
	check(sort_less(3, upper_banana, apple), "CI|DESC: Banana < apple");

	// NUMERIC (16): numbers compare by value, so 2 < 10 even though "2" > "10" as text.
	gameswf::as_value two(2);
	gameswf::as_value ten(10);
	check(sort_less(16, two, ten), "NUMERIC: 2 < 10");
	check(!sort_less(16, ten, two), "NUMERIC: not 10 < 2");
	check(sort_less(16 | 2, ten, two), "NUMERIC|DESC: 10 before 2");

	// Equal text in different objects: the strcmp branch finds nothing, so the address order decides, and exactly
	// one of the two orders is true.
	gameswf::as_value same_a("same");
	gameswf::as_value same_b("same");
	check(sort_less(0, same_a, same_b) != sort_less(0, same_b, same_a), "equal text: one order wins");
	check(sort_less(2, same_a, same_b) != sort_less(2, same_b, same_a), "equal text, DESC: one order wins");
	check(sort_less(0, same_a, same_b) == (&same_a < &same_b), "equal text: address order");

	// The same object twice: the address order is false both ways.
	check(!sort_less(0, apple, apple), "same object: not before itself");
	check(!sort_less(1, apple, apple), "same object, CI: not before itself");
}

// The way as_array_sort uses it: std::sort over the elements with the comparator.
void test_std_sort() {
	array<gameswf::as_value> items;
	items.push_back(gameswf::as_value("pear"));
	items.push_back(gameswf::as_value("Apple"));
	items.push_back(gameswf::as_value("fig"));
	items.push_back(gameswf::as_value("banana"));
	gameswf::as_value* first = &items[0];
	std::sort(first, first + items.size(), gameswf::standard_array_sorter(0));
	check(std::strcmp(items[0].to_string(), "Apple") == 0, "sorted[0] (case-sensitive)");
	check(std::strcmp(items[1].to_string(), "banana") == 0, "sorted[1]");
	check(std::strcmp(items[2].to_string(), "fig") == 0, "sorted[2]");
	check(std::strcmp(items[3].to_string(), "pear") == 0, "sorted[3]");

	std::sort(first, first + items.size(), gameswf::standard_array_sorter(2));
	check(std::strcmp(items[0].to_string(), "pear") == 0, "descending[0]");
	check(std::strcmp(items[3].to_string(), "Apple") == 0, "descending[3]");

	array<gameswf::as_value> numbers;
	numbers.push_back(gameswf::as_value(10));
	numbers.push_back(gameswf::as_value(9));
	numbers.push_back(gameswf::as_value(100));
	numbers.push_back(gameswf::as_value(1));
	gameswf::as_value* n = &numbers[0];
	std::sort(n, n + numbers.size(), gameswf::standard_array_sorter(16));
	check(numbers[0].to_number() == 1 && numbers[1].to_number() == 9 && numbers[2].to_number() == 10 &&
	      numbers[3].to_number() == 100, "numeric sort");
}

}  // namespace

int main() {
	test_is_index();
	test_sorter();
	test_std_sort();
	if (g_failures != 0) {
		std::fprintf(stderr, "%d failure(s)\n", g_failures);
		return 1;
	}
	std::printf("ok\n");
	return 0;
}
