// Subtitle and skip helpers (<global>): GetSubtitleTimeInfo (0x33931c), GetSkipText (0x339320) and
// GetSubtitleTextToSet (0x33933c). The queue they read, g_SubtitlesQueue and g_CurrentSubtitle, is
// declared in core-platform/w7_global_00.hpp. GetSkipText and GetSubtitleTextToSet have C linkage in
// the original (their ELF names are not mangled).
// Defined in game-app/src/g1-game-app-global-f216b6-1.cpp.
#pragma once

// dh2 skip flag read by GetSkipText. An int in .bss (IDA name g_skip, reached through the GOT slot
// g_skip_ptr). Its definition belongs to the globals wave; this batch only takes its address.
extern int g_skip;

// 0x33931c GetSubtitleTimeInfo(char*, int&, int&). The original body is a single BX LR; the times are not
// written.
void GetSubtitleTimeInfo(char* text, int& startTime, int& endTime);

extern "C" {

// 0x339320 GetSkipText(). Returns the address of g_skip.
int* GetSkipText();

// 0x33933c GetSubtitleTextToSet(int). Pops the subtitle queue up to the given time and returns the
// text to show now, or nullptr when none is due.
char* GetSubtitleTextToSet(int currentTime);

}  // extern "C"
