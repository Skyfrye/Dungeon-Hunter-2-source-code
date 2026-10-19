#include "core-platform/adevice.hpp"

#include "core-platform/time_util.hpp"

// 0x52eea8 ADevice::currentTime()
// The listing calls gettimeofday and returns usec / 1000 + 1000 * sec in 32-bit
// arithmetic, which is the low word of TimeNow().
int ADevice::currentTime() { return static_cast<int>(TimeNow()); }
