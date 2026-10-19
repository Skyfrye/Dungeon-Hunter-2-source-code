// Runtime support (<global>): the Lua allocator hooks, the operator new overloads that take a
// MemoryHintState, the profiling markers and the save and config path helpers.
// The two operator new overloads and the Lua hooks forward to core-platform's CustomAlloc and CustomFree.
#pragma once

#include <cstddef>

#include "core-platform/memory.hpp"

void* LuaAlloc(unsigned int size);                     // 0x3104fc
void LuaFree(void* p);                                 // 0x310448
void* LuaAllocator(void* ud, void* ptr, unsigned int osize, unsigned int nsize);  // 0x310500: the lua_Alloc hook
void PushProfilingContext(const char* name);           // 0x3136b4
void PopProfilingContext(const char* name);            // 0x3136b8
void GetConfigFilePath(char* out, const char* name);   // 0x31f4ec
void GetSaveFilePath(char* out, const char* name);     // 0x31f4f0

void* operator new(std::size_t size, MemoryHintState hint);     // 0x310570
void* operator new[](std::size_t size, MemoryHintState hint);   // 0x31056c
