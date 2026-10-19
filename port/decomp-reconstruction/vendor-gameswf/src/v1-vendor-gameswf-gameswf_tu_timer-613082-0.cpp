// Batch v1-vendor-gameswf-gameswf_tu_timer-613082-0: DH2 bodies for the date and timer helpers,
// binary symbols gameswf::tu_timer::*.
//
// The vendored base/tu_timer.h keeps the global namespace tu_timer, as upstream does, so the bodies
// below are defined there (the same convention as the tu_string batch; see vendor-gameswf/NOTES.md
// and the README's list of gameswf:: namespace differences). The declarations of get_milli through
// get_date are DH2 additions in that header. The upstream sleep() in base/tu_timer.cpp is replaced
// by the body here, and is guarded out there with #if 0.
//
// time_t is 32 bits in the binary. The date functions receive the 64-bit argument in r0:r1, store
// only the low word (r0) in a 4-byte local and pass its address to localtime(). The high word never
// reaches localtime(). This file takes the low word as a signed 32-bit value, which is that time_t.
//
// struct tm offsets as the binary reads them (ARM32): tm_sec +0x00, tm_min +0x04, tm_hour +0x08,
// tm_mday +0x0C, tm_mon +0x10, tm_year +0x14, tm_wday +0x18. localtime() is not checked for NULL,
// as in the binary.

#include <cstdint>
#include <ctime>

#include "base/tu_timer.h"

namespace tu_timer {
namespace {

// The low word of the argument, read as the binary's signed 32-bit time_t.
std::time_t low_word_time(uint64 seconds)
{
	return static_cast<std::time_t>(static_cast<int32_t>(static_cast<uint32_t>(seconds)));
}

// localtime() of the low word. The result points at the C library's static buffer, as in the binary.
std::tm* local_time_of(uint64 seconds)
{
	std::time_t t = low_word_time(seconds);
	return std::localtime(&t);
}

}  // namespace

// 0x7b78e8 gameswf::tu_timer::get_milli(unsigned long long)   (_ZN7gameswf8tu_timer9get_milliEy)
// Binary: MOV R0, #0; BX LR. The argument is not read and the result is always 0.
int get_milli(uint64 /*seconds*/)
{
	return 0;
}

// 0x7b78f0 gameswf::tu_timer::sleep(int)   (_ZN7gameswf8tu_timer5sleepEi)
// Binary: one instruction, B to itself (IDA: noreturn). The function never returns and does not call
// Sleep or usleep. The upstream sleep in base/tu_timer.cpp is not used.
void sleep(int /*milliseconds*/)
{
	for (;;) {
	}
}

// 0x7b791c gameswf::tu_timer::ticks_to_seconds(unsigned long long)   (_ZN7gameswf8tu_timer16ticks_to_secondsEy)
// Binary: B to profile_ticks_to_seconds (0x7b7900), a tail jump. Forwarded to the same function.
double ticks_to_seconds(uint64 ticks)
{
	return profile_ticks_to_seconds(ticks);
}

// 0x7b799c gameswf::tu_timer::get_time(unsigned long long)   (_ZN7gameswf8tu_timer8get_timeEy)
// Binary: localtime() of the low word, result unused. Then the 64-bit product seconds * 1000 (UMULL of
// the low word, MLA of the high word), returned in r0:r1. The product wraps mod 2^64.
int64 get_time(uint64 seconds)
{
	(void)local_time_of(seconds);
	return static_cast<int64>(seconds * 1000u);
}

// 0x7b79d0 gameswf::tu_timer::get_year(unsigned long long)   (_ZN7gameswf8tu_timer8get_yearEy)
// Binary: localtime(&low word)->tm_year (+0x14).
int get_year(uint64 seconds)
{
	return local_time_of(seconds)->tm_year;
}

// 0x7b79f4 gameswf::tu_timer::get_seconds(unsigned long long)   (_ZN7gameswf8tu_timer11get_secondsEy)
// Binary: localtime(&low word)->tm_sec (+0x00).
int get_seconds(uint64 seconds)
{
	return local_time_of(seconds)->tm_sec;
}

// 0x7b7a18 gameswf::tu_timer::get_minutes(unsigned long long)   (_ZN7gameswf8tu_timer11get_minutesEy)
// Binary: localtime(&low word)->tm_min (+0x04).
int get_minutes(uint64 seconds)
{
	return local_time_of(seconds)->tm_min;
}

// 0x7b7a3c gameswf::tu_timer::get_month(unsigned long long)   (_ZN7gameswf8tu_timer9get_monthEy)
// Binary: localtime(&low word)->tm_mon (+0x10). Zero-based, as struct tm.
int get_month(uint64 seconds)
{
	return local_time_of(seconds)->tm_mon;
}

// 0x7b7a60 gameswf::tu_timer::get_fullyear(unsigned long long)   (_ZN7gameswf8tu_timer12get_fullyearEy)
// Binary: localtime(&low word)->tm_year (+0x14), then + 0x76C (1900).
int get_fullyear(uint64 seconds)
{
	return local_time_of(seconds)->tm_year + 1900;
}

// 0x7b7a8c gameswf::tu_timer::get_hours(unsigned long long)   (_ZN7gameswf8tu_timer9get_hoursEy)
// Binary: localtime(&low word)->tm_hour (+0x08).
int get_hours(uint64 seconds)
{
	return local_time_of(seconds)->tm_hour;
}

// 0x7b7ab0 gameswf::tu_timer::get_day(unsigned long long)   (_ZN7gameswf8tu_timer7get_dayEy)
// Binary: localtime(&low word)->tm_wday (+0x18). Day of the week, 0 = Sunday.
int get_day(uint64 seconds)
{
	return local_time_of(seconds)->tm_wday;
}

// 0x7b7ad4 gameswf::tu_timer::get_date(unsigned long long)   (_ZN7gameswf8tu_timer8get_dateEy)
// Binary: localtime(&low word)->tm_mday (+0x0C). Day of the month, 1 to 31.
int get_date(uint64 seconds)
{
	return local_time_of(seconds)->tm_mday;
}

}  // namespace tu_timer
