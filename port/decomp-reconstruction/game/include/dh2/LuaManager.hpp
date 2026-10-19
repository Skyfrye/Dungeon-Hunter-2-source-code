// LuaManager: owns the Lua script buffers the game loads through AddFile. Each buffered file is a
// StreamBuffer keyed by its name; the map is an STLport rb-tree whose header sits at +0x04.
// Original 32-bit size 0x1c (28): Application allocates operator new(0x1c) and the ctor fills it.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x379e68 C2, 0x379eb0 C1; dtor 0x37a12c D2).
#pragma once

#include <cstdint>
#include <map>
#include <string>

class LuaScript;
class StreamBuffer;

class LuaManager {
public:
    LuaManager();                                                       // 0x379e68 (C2), 0x379eb0 (C1)

    // Vtable slots in order (_ZTV10LuaManager, 16 bytes).
    virtual ~LuaManager();                                              // +0x00, +0x04: 0x37a0ac (D1), 0x37a110 (D0); body 0x37a12c (D2)

    void FlushBufferedFiles();                                          // 0x379fe8: deletes each buffer, then clears the map
    bool AddFile(LuaScript* script, const char* file);                  // 0x37b23c: loads the file as .luac and buffers it

    // +0x00 vptr (implicit).
    // STLport rb-tree header of file name -> StreamBuffer*: color at +0x04, root +0x08, leftmost +0x0c,
    // rightmost +0x10, node count +0x14 (20 bytes in the original).
    std::map<std::string, StreamBuffer*> m_bufferedFiles;               // +0x04
    std::uint8_t pad_18[4];                                             // +0x18 never touched by the recovered code
};
