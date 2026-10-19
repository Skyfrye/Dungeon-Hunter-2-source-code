// Clock helpers. All three read gettimeofday and differ only in their result.
#pragma once

// 0x320550 TimeNow(): milliseconds since the epoch. Only the low 32 bits are
// returned by the original (the high register is not part of the result).
unsigned int TimeNow();

// 0x862bf4 _GetTime(): seconds since the epoch with the microsecond fraction.
double _GetTime();

// 0x89d368 OS_GetTime(): milliseconds since the epoch as a signed int.
int OS_GetTime();
