// DebugSwitches: a singleton of named debug switches and module flags, persisted in the
// "DebugSwitches.savegame" file through the application's file system.
// Original 32-bit size 0x2c (44): two std::map<std::string, bool> trees, switches at +0x00 and modules at +0x18.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x335f94, GetInstance 0x330740).
#pragma once

#include <cstdint>
#include <map>
#include <string>

// The savegame stream. The listing passes the glitch IFileStream straight to StreamReader and calls its
// vtable slots +0x08 (size), +0x20 (seek) and +0x24 (tell), which are IStreamBase's slots, so the stream is
// taken as IStreamBase here. Confirm when glitch IFileStream is declared.
class IStreamBase;

class DebugSwitches {
public:
    static DebugSwitches* GetInstance();                            // 0x330740 loads the file on first use

    DebugSwitches();                                                // 0x335f94 / 0x335fcc
    ~DebugSwitches();                                               // 0x33688c (D1), 0x3368f4 (D2)

    void SetModule(const std::string& name, bool enabled);          // 0x337404
    bool GetModule(const std::string& name);                        // 0x337ec8
    void SetSwitch(const std::string& name, bool value);            // 0x337ddc
    bool GetSwitch(const std::string& name);                        // 0x337a88
    void DelSwitch(const std::string& name);                        // 0x337f90

    void load();                                                    // 0x337888
    void save();                                                    // 0x337d54

public:
    void _loadSwitches(IStreamBase* stream);                        // 0x3374e4
    void _saveSwitches(IStreamBase* stream);                        // 0x337b4c

    // Switch tree, STLport rb-tree layout (header node and count) in +0x00 .. +0x13.
    std::map<std::string, bool> m_switches;                         // +0x00 header and node count
    uint8_t pad_14[4];                                              // +0x14 not touched by the ctor or dtor
    // Module tree, same layout in +0x18 .. +0x2b. Read by GetModule and SetModule.
    std::map<std::string, bool> m_modules;                          // +0x18

    // Statics, not part of the instance layout.
    static DebugSwitches s_inst;                                    // DebugSwitches::s_inst
    static uint8_t s_loaded;                                        // DebugSwitches::s_loaded, one-byte guard set before file access
};
