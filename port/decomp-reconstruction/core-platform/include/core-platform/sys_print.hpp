// sys::print family: timestamped console output.
#pragma once

namespace sys {
int printNoFormat(const char* text);        // 0x317848: printf(text), returns its count
int print(const char* fmt, ...);            // 0x31784c: "[HH:MM:SS] " + message, returns the message count
int println(const char* fmt, ...);          // 0x317914: as print plus newline, returns the newline count
}  // namespace sys
