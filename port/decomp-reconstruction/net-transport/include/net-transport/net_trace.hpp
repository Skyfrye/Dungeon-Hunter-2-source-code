// Host runner only (not in the original): DH2_NET_TRACE=<file> appends one line per DH2_NET_TRACE_LOG call to <file>.<pid>. The header pulls in no
// platform header (socket_platform.hpp includes windows.h, whose GetObject macro renames ObjectHandle::GetObject).
#pragma once

#ifdef DH2_HOST_RUNNER
void Dh2NetTrace(const char* format, ...) __attribute__((format(printf, 1, 2)));
#define DH2_NET_TRACE_LOG(...) Dh2NetTrace(__VA_ARGS__)
#else
#define DH2_NET_TRACE_LOG(...) ((void)0)
#endif
