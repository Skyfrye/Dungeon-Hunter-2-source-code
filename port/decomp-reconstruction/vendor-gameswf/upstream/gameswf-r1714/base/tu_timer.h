// tu_timer.h	-- by Thatcher Ulrich <tu@tulrich.com>

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Utility/profiling timer.


#ifndef TU_TIMER_H
#define TU_TIMER_H

#include <time.h>
#include <stdint.h>
#include "base/tu_types.h"

namespace tu_timer
{
	// General-purpose wall-clock timer.  May not be hi-res enough
	// for profiling.
	exported_module void init_timer();

	// milliseconds since we started playing.
	exported_module Uint32 get_ticks();

	// Sleep the current thread for the given number of
	// milliseconds.  Don't rely on the sleep period being very
	// accurate.
	exported_module void sleep(int milliseconds);
	
	// Hi-res timer for CPU profiling.

	// Return a hi-res timer value.  Time 0 is arbitrary, so
	// generally you want to call this at the start and end of an
	// operation, and pass the difference to
	// profile_ticks_to_seconds() to find out how long the
	// operation took.
	exported_module uint64	get_profile_ticks();

	// Convert a hi-res ticks value into seconds.
	exported_module double	profile_ticks_to_seconds(uint64 profile_ticks);

	exported_module double	profile_ticks_to_milliseconds(uint64 ticks);

	// Return the time as seconds elapsed since midnight, January 1, 1970.
	Uint64 get_systime();
	// DH2: Gameloft additions (binary: gameswf::tu_timer, ActionScript Date support). Global here, as upstream.
	int get_milli(uint64 seconds); // DH2: milliseconds of a Date; the binary always returns 0.
	double ticks_to_seconds(uint64 ticks); // DH2: forwards to profile_ticks_to_seconds().
	int64 get_time(uint64 seconds); // DH2: seconds * 1000 as a 64-bit product (localtime result unused).
	int get_year(uint64 seconds); // DH2: localtime(low word of seconds)->tm_year.
	int get_seconds(uint64 seconds); // DH2: localtime(...)->tm_sec.
	int get_minutes(uint64 seconds); // DH2: localtime(...)->tm_min.
	int get_month(uint64 seconds); // DH2: localtime(...)->tm_mon.
	int get_fullyear(uint64 seconds); // DH2: localtime(...)->tm_year + 1900.
	int get_hours(uint64 seconds); // DH2: localtime(...)->tm_hour.
	int get_day(uint64 seconds); // DH2: localtime(...)->tm_wday.
	int get_date(uint64 seconds); // DH2: localtime(...)->tm_mday.

};


namespace gameswf { struct as_date; }	// DH2: friend below (as_date::get_time reads m_time)

struct tu_datetime
{
	enum part
	{
		YEAR,	// year - 1900
		FULLYEAR,	// a four-digit number, such as 2000
		MON,
		MDAY,	// day of a month
		WDAY,	// day of a week
		HOUR,
		MIN,
		SEC
	};

	exported_module tu_datetime();

	exported_module double get_time() const;
	exported_module void set_time(double t);

	exported_module int get(part part);
	exported_module void set(part part, int val);

	friend struct gameswf::as_date;	// DH2: as_date::get_time (0x79d650) returns m_time (binary +0x38)

private:

	int64_t m_time;	// DH2: 8 bytes at as_date +0x38 in the binary (0x79d650 reads both words); upstream has time_t
};


#endif // TU_TIMER_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
