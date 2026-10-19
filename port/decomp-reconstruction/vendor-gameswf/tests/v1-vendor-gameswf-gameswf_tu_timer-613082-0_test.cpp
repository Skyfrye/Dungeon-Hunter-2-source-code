// Tests for the DH2 tu_timer bodies in src/v1-vendor-gameswf-gameswf_tu_timer-613082-0.cpp.
// Link with the batch source and the upstream base/tu_timer.cpp, which defines
// profile_ticks_to_seconds(), the target of ticks_to_seconds(). sleep() is not called: the binary's
// body never returns.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_tu_timer-613082-0.cpp
//     port/decomp-reconstruction/vendor-gameswf/upstream/gameswf-r1714/base/tu_timer.cpp

#include <cstdint>
#include <cstdio>
#include <ctime>

#include "base/tu_timer.h"

namespace {

int g_failures = 0;

void check(bool ok, const char* what, int line)
{
	if (!ok) {
		std::printf("FAIL line %d: %s\n", line, what);
		++g_failures;
	}
}

#define CHECK(expr) check((expr), #expr, __LINE__)

// 1000000000 seconds is 2001-09-09 01:46:40 UTC. In any zone from UTC-12 to UTC+14 the local date is
// still in 2001, in September, on the 8th or 9th, and the second is 40.
const uint64 kInstant = 1000000000ULL;

void test_milli()
{
	CHECK(tu_timer::get_milli(0) == 0);
	CHECK(tu_timer::get_milli(kInstant) == 0);
	CHECK(tu_timer::get_milli(0xFFFFFFFFFFFFFFFFULL) == 0);
}

void test_ticks_to_seconds()
{
	const uint64 samples[] = {0ULL, 1ULL, 1000000ULL, 5000000000000ULL};
	for (uint64 s : samples) {
		CHECK(tu_timer::ticks_to_seconds(s) == tu_timer::profile_ticks_to_seconds(s));
	}
}

void test_get_time()
{
	CHECK(tu_timer::get_time(0) == 0);
	CHECK(tu_timer::get_time(kInstant) == 1000000000000LL);
	// Above 2^32: the 64-bit product keeps the high word of the argument.
	CHECK(tu_timer::get_time(0x100000001ULL) == 4294967297000LL);
	// High word all ones: (2^64 - 2^32 + 1e9) * 1000 mod 2^64 = -3294967296000.
	CHECK(tu_timer::get_time(0xFFFFFFFF00000000ULL | kInstant) == -3294967296000LL);
}

void test_date_parts()
{
	std::time_t t = static_cast<std::time_t>(kInstant);
	const std::tm* p = std::localtime(&t);
	CHECK(p != nullptr);
	if (p == nullptr) {
		return;
	}
	const std::tm expect = *p;  // copy: later localtime() calls reuse the static buffer

	CHECK(tu_timer::get_year(kInstant) == expect.tm_year);
	CHECK(tu_timer::get_seconds(kInstant) == expect.tm_sec);
	CHECK(tu_timer::get_minutes(kInstant) == expect.tm_min);
	CHECK(tu_timer::get_month(kInstant) == expect.tm_mon);
	CHECK(tu_timer::get_fullyear(kInstant) == expect.tm_year + 1900);
	CHECK(tu_timer::get_hours(kInstant) == expect.tm_hour);
	CHECK(tu_timer::get_day(kInstant) == expect.tm_wday);
	CHECK(tu_timer::get_date(kInstant) == expect.tm_mday);

	// Zone-independent facts about the instant.
	CHECK(tu_timer::get_fullyear(kInstant) == 2001);
	CHECK(tu_timer::get_month(kInstant) == 8);
	CHECK(tu_timer::get_date(kInstant) == 8 || tu_timer::get_date(kInstant) == 9);
	CHECK(tu_timer::get_seconds(kInstant) == 40);
	CHECK(tu_timer::get_day(kInstant) >= 0 && tu_timer::get_day(kInstant) <= 6);
	CHECK(tu_timer::get_hours(kInstant) >= 0 && tu_timer::get_hours(kInstant) <= 23);
}

void test_high_word_ignored()
{
	// Only the low word reaches localtime(), so the high word does not change any date part.
	const uint64 with_high = 0x1230000000000000ULL | kInstant;
	CHECK(tu_timer::get_year(with_high) == tu_timer::get_year(kInstant));
	CHECK(tu_timer::get_date(with_high) == tu_timer::get_date(kInstant));
	CHECK(tu_timer::get_hours(with_high) == tu_timer::get_hours(kInstant));
	CHECK(tu_timer::get_fullyear(0xFFFFFFFF00000000ULL | kInstant) == 2001);
}

}  // namespace

int main()
{
	test_milli();
	test_ticks_to_seconds();
	test_get_time();
	test_date_parts();
	test_high_word_ignored();
	if (g_failures != 0) {
		std::printf("%d failure(s)\n", g_failures);
		return 1;
	}
	std::printf("tu_timer: all checks passed\n");
	return 0;
}
