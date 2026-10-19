// Declarations for the global_04 slice: dedicated-server info parsing, the
// debug text log, UTF-16 to UTF-8 conversion, host-name lookup caches and HTML
// text trimming. The PCM channel converters are file-local (internal linkage in
// the original) and are not declared here.
#pragma once

#include <string>

struct _tDedicatedServerInfo;
class DataPacket;
struct hostent;

// 0x8279d8 _Z24ParseDedicatedServerInfoR21_tDedicatedServerInfoP10DataPacket
// Returns false when the packet supplies no host name.
bool ParseDedicatedServerInfo(_tDedicatedServerInfo& info, DataPacket* packet);

// 0x828b64 _Z8_DBG_OUTPKcz
int _DBG_OUT(const char* format, ...);

// 0x82aa10 _Z24ConvertUnicodeToUTF8_OldPcPKt
// Writes UTF-8 for a zero-terminated UTF-16 string. With dst == nullptr returns
// the number of bytes needed, including the terminator.
int ConvertUnicodeToUTF8_Old(char* dst, const unsigned short* src);

// 0x89c6ac _Z26ConvertUnicodeToUTF8_OldLCPcPKt
int ConvertUnicodeToUTF8_OldLC(char* dst, const unsigned short* src);

// The process-wide host caches. The binary has one l_host / l_count pair (for
// threadGetHostByNameProcess) and one l_hostLC / l_countLC pair (for
// threadGetHostByNameProcessLC). Defined in src/w7_global_04.cpp.
extern hostent* l_host[4];
extern int l_count;
extern hostent* l_hostLC[4];
extern int l_countLC;

// 0x841ba8 _Z26threadGetHostByNameProcessPv
hostent* threadGetHostByNameProcess(void* request);

// 0x89f8a0 _Z28threadGetHostByNameProcessLCPv
void threadGetHostByNameProcessLC(void* request);

// 0x843b2c _Z11trimHTMLstrSs
// Decodes the five XML entities, then removes every <...> span.
std::string trimHTMLstr(std::string text);
