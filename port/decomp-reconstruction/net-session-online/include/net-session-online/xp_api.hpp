// XP_API_*: the thin platform wrappers that the GLX and lobby code calls instead of
// libc. Most forward one call to the libc function of the same role. Each comment
// names the target. The XP_DEBUG_OUT stand-in lives in deps/.
//
// The pseudocode of several wrappers shows void or a truncated body because the call
// they end in is a tail call. Where the ARM listing passes the callee's r0 back, the
// return type here is the callee's type, and the ledger notes say so.
#pragma once

#include <cstddef>
#include <cstdint>

// 0x82b138 XP_API_GET_TIME (C symbol): gettimeofday as milliseconds, tv_usec / 1000 + 1000 * tv_sec, 32-bit wrap.
extern "C" int XP_API_GET_TIME();

void XP_DEBUG_INIT();       // 0x82a664, no-op
void XP_DEBUG_FINALIZE();   // 0x82a668, no-op

char* XP_API_STRSTR(char* haystack, char* needle);      // 0x82b334 -> strstr
char* XP_API_STRCAT(char* dest, char* src);             // 0x82b338 -> strcat
char* XP_API_STRNCPY(char* dest, char* src, std::size_t n);  // 0x82b33c -> strncpy
char* XP_API_STRCPY(char* dest, char* src);             // 0x82b340 -> strcpy
int XP_API_STRCASECMP(char* s1, char* s2);              // 0x82b344 -> strcasecmp
int XP_API_STRNCMP(char* s1, char* s2, std::size_t n);  // 0x82b348 -> strncmp
int XP_API_STRCMP(char* s1, char* s2);                  // 0x82b34c -> strcmp
void* XP_API_MEMSET(void* s, int c, std::size_t n);     // 0x82b364 -> memset
int XP_API_ATOI(char* text);                            // 0x82b320 -> atoi
double XP_API_ATOF(char* text);                         // 0x82b318 -> strtod(text, nullptr)
std::size_t XP_API_STRLEN(char* s);                     // 0x82afac -> strlen
void* XP_API_MEMCPY(void* dest, void* src, std::size_t n);  // 0x82b350 -> memcpy, returns dest
void* XP_API_MALLOC(std::size_t size);                  // 0x82b9f0 -> malloc
void XP_API_FREE(void* p);                              // 0x82b9e4: free unless null
// 0x82b9a0: a new copy of the string, made with operator new[] and terminated.
// Release it with delete[] (the original pairs it with the wrong free; see NOTES.md).
char* XP_API_STRNEW(char* text);
// 0x82b324: mode 1 searches from the start (strchr); any other mode from the end (strrchr).
char* XP_API_STRCHR(char* s, int c, int mode);
// 0x82b014: removes the leading spaces in place and returns s. Trailing spaces stay.
char* XP_API_STRTRIM(char* s);
// 0x82acdc _Z21XP_API_GetNationalityPc: no-op.
void XP_API_GetNationality(char* out);

// ---- wave 7 additions -------------------------------------------------------

// 0x82a66c: writes value in base (digit table 0-9 then A-Z) to out, NUL-terminated, returns out.
// A zero value gives "0". A negative value gets a leading '-'.
char* XP_API_ITOA(int value, char* out, int base);
// 0x82a610: pointer to the character after the count-th occurrence of target in s, or nullptr
// when fewer than count occurrences are found. count 0 returns s.
char* XP_API_STRCHRFIND(char* s, int target, int count);
// 0x82abd4: copies the field at position index (fields are split by delim) into out and
// returns the source offset of the first copied character, or -1 when nothing was copied.
int XP_API_PARSE_DATA(char* text, char* out, int index, int delim);
// 0x82ace0 (getValue): the same field copy as XP_API_PARSE_DATA, but the return is always 0.
int getValue(char* text, char* out, int index, int delim);
// 0x82ad54: lowercases the ASCII letters of src into dst and NUL-terminates dst.
void XP_API_TOLOWER(const char* src, char* dst);
// 0x82adc0 / 0x82ade8: fwrite to the receive / send debug log.
void XP_DEBUG_SAVE_RECVDATA_LOG(const char* data, int length);
void XP_DEBUG_SAVE_SENDDATA_LOG(const char* data, int length);
// 0x82aeb0 / 0x82aef0: open log_recv.txt / log_send.txt for writing ("wt").
void XP_DEBUG_OPEN_RECVDATA_LOG();
void XP_DEBUG_OPEN_SENDDATA_LOG();
// 0x82ae3c / 0x82ae5c: close the receive / send debug log.
void XP_DEBUG_CLOSE_RECVDATA_LOG();
void XP_DEBUG_CLOSE_SENDDATA_LOG();
// 0x82ae10: fwrite to the file in handle slot (1-based).
void XP_API_FILE_WRITE(const void* data, std::size_t size, std::size_t count, int handle);
// 0x82b1e8: fread from the file in handle slot (1-based).
void XP_API_FILE_READ(void* data, std::size_t size, std::size_t count, int handle);
// 0x82ae7c: closes the file in handle slot and frees the slot.
void XP_API_FILE_CLOSE(int handle);
// 0x82b178: length of the open file in bytes (seeks to the start afterwards).
int XP_API_FILE_GET_LENGTH(int handle);
// 0x82b214: opens RES_PATH + name with mode in the first free slot (8 slots). Returns the
// 1-based handle, or 0 when the file cannot be opened or no slot is free.
int XP_API_FILE_OPEN(const char* name, const char* mode);
// 0x82af30: writes a packed IPv4 address (low byte first) as "a.b.c.d" into out.
char* XP_API_IP_INT2STR(std::uint32_t ip, char* out);
// 0x82b368: parses a dotted IPv4 address into the packed form that IP_INT2STR reads back.
std::uint32_t XP_API_IP_STR2INT(char* text);
// 0x82af78: formats a float with "%f" into out and returns out.
char* XP_API_FTOA(float value, char* out);
// 0x82afb0: reseeds drand48 from the clock, adds the sum of the signed bytes of text (if any)
// to one lrand48 value and returns the result (32-bit, as on ARM).
long XP_API_GET_RANDOM(char* text);
// 0x82b634: copies the field at index into a new[] buffer stored in *out. Returns the source
// offset of the field, or -1 when the field is not found (the buffer is then empty).
int XP_API_PARSE_DATA_NEW(char* text, char** out, int index, int delim);

// Not in the original: test seams for the drand48 generator used by XP_API_GET_RANDOM.
void XP_API_Srand48ForTest(long seed);
long XP_API_Lrand48ForTest();
