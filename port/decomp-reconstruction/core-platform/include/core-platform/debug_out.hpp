// Debug text output: _DEBUG_OUT formats a line, prints it and forwards it to
// appDebugLog.
#pragma once

// 0x324114 _Z10_DEBUG_OUTPKcz. The text is limited to a 1 KiB buffer.
void _DEBUG_OUT(const char* format, ...);

// 0x533560 appDebugLog(char const*, char const*). Verified against the listing: one
// __android_log_write(4, tag, text) call (logcat, info priority) and nothing else; the
// non-Android targets write the tag and text to stderr and the write's int result is
// dropped (void), which no caller reads.
void appDebugLog(const char* tag, const char* text);
