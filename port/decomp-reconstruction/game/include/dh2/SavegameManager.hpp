// SavegameManager: the game options and the settings file. loadSettings opens "dh2_settings.savegame" as a
// Savegame and runs its section callbacks: __loadLastSlot, __loadTutorials, __loadLanguageAndOrientation and
// __loadOptions. saveSettings writes __saveOptions and __saveTutorials back. Options live in m_options, a map
// from name to _GameOption. Each option refers to a row of Arrays::GameOptionTable, which holds the default,
// label, range, step, type and value-string ids.
// Original 32-bit size 0x58 (88), the operator new size in class-facts. Vtable _ZTV15SavegameManager is 16
// bytes: two destructor slots and no other virtuals.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x46cd4c C1 / 0x46cdd8 C2, dtors 0x46cc18 D1 /
// 0x46ccc0 D2 / 0x46cca4 D0). The std::string (24 bytes) and std::map (20 bytes) sizes are the 32-bit ones.
#pragma once

#include <cstdint>
#include <functional>
#include <map>
#include <string>

class IStreamBase;
class Savegame;

namespace Structs {
class GameOption;
}  // namespace Structs

class SavegameManager {
public:
    // One option, the mapped value of m_options. Original 32-bit size 0x08. In the map node the key std::string
    // is at node +0x10 (24 bytes), so this value starts at node +0x28.
    struct _GameOption {
        const Structs::GameOption* m_definition;                        // +0x00 (node +0x28) row of Arrays::GameOptionTable; Default, Label, Max, Min, Step, Type, ValueStr are m_w1..m_w7
        std::int32_t m_value;                                           // +0x04 (node +0x2c) current value, set to the row's Default by _initSettings
    };

    SavegameManager();                                                  // 0x46cd4c (C1), 0x46cdd8 (C2)
    virtual ~SavegameManager();                                         // slot 0x00: 0x46cc18 (D1); slot 0x04: 0x46cca4 (D0, deletes); 0x46ccc0 (D2)

    // Section callbacks. These are static: the first argument is the stream, the second is the SavegameManager
    // passed as the section's user pointer.
    static int __loadLastSlot(IStreamBase* stream, void* user);         // 0x46c738: reads 4 bytes into m_lastSlot
    static int __saveLastSlot(IStreamBase* stream, void* user);         // 0x46c758: writes 4 bytes from m_lastSlot
    static int __loadTutorials(IStreamBase* stream, void* user);        // 0x46c778: reads 14 bytes into m_tutorials
    static int __saveTutorials(IStreamBase* stream, void* user);        // 0x46c798: writes 14 bytes from m_tutorials
    static int __loadLanguageAndOrientation(IStreamBase* stream, void* user);  // 0x46c7b8: "Language" and "AutoOrientation" entries, else the device language
    static int __saveOptions(IStreamBase* stream, void* user);          // 0x46ca78: count, then each option's name and value in map order
    static void __loadOptions(IStreamBase* stream, void* user);         // 0x46d8f4: count, then each name and value, stored into the matching option (void: asm leaves r0 unset on every path, and Savegame::SectionCallback is void)

    // Settings file.
    void saveSettings();                                                // 0x46cb34: when m_settings exists and m_saveBlocked is clear, writes the options and tutorials
    void loadSettings(bool languageOnly);                               // 0x46e584: languageOnly reads only the language pair; otherwise the options and tutorials too

    // Option access. Names are looked up in m_options.
    void decOption(const char* name);                                   // 0x46cfd4: types 1 and 2 only; value -= Step, clamped at Min
    void incOption(const char* name);                                   // 0x46d03c: types 1 and 2 only; value += Step, clamped at Max (Max - 1 for type 2)
    void setOption(const char* name, int value);                        // 0x46d0d0: stores value when the option exists
    void toggleOption(const char* name);                                // 0x46d578: type 0 only; swaps the value between Min and Max; LevelUp and GiveGold run their cheat when enabled
    int getOption(const char* name) const;                              // 0x46d474: value, or -1 when missing
    int getOptionType(const char* name) const;                          // 0x46d280: row Type, or -1 when missing
    int getOptionString(const char* name) const;                        // 0x46d2b8: value + row ValueStr, or -1 when missing
    int getOptionLabel(const char* name) const;                         // 0x46d2f8: row Label, or -1 when missing
    int getOptionMax(const char* name) const;                           // 0x46d330: row Max, minus 1 for type 2; -1 when missing
    bool isOptionAtMin(const char* name) const;                         // 0x46d378: present and value == 0
    bool isOptionAtMax(const char* name) const;                         // 0x46d3b8: present and value == Max (Max - 1 for type 2)
    bool isOptionToggled(const char* name) const;                       // 0x46d418: present, type 0 and value == row Max
    bool hasOption(const char* name) const;                             // 0x46d4a8
    int getAutoReorientation() const;                                   // 0x46d4d8: "AutoOrientation" option when present, else m_autoOrientation
    int getLanguage() const;                                            // 0x46d514: "Language" option (device language when -1), else m_language
    // Binary returns int (0x46d104 ends in a returned value, tested for zero by callers). Kept void until the
    int setLanguage(int language);                                   // 0x46d104: sets the "Language" option, refreshes item and character text, then switches the string pack

public:
    void _initSettings(bool languageOnly);                              // 0x46e47c: clears m_options; fills it from Arrays::GameOptionTable unless languageOnly; sets the 14 tutorial flags

    // vptr                                                             // +0x00
    Savegame* m_settings;                                               // +0x04 owned settings file; deleted and replaced by loadSettings; freed by the dtor
    std::int32_t m_lastSlot;                                            // +0x08 last save slot used, -1 by the ctor; read and written by __loadLastSlot and __saveLastSlot
    std::int32_t unk_0c;                                                // +0x0c set to 0 by the ctor, otherwise not touched by the recovered code
    // Option map. Its header node is at +0x10 (color, parent, leftmost, rightmost) and its node count at +0x20; 20 bytes in the original.
    std::map<std::string, _GameOption, std::less<>> m_options;          // +0x10
    uint8_t pad_24[4];                                                  // +0x24
    bool m_optionsLoaded;                                               // +0x28 set at the end of a full loadSettings
    // +0x2b is m_tutorials[2]. Name candidate: cinematic_Tuto_faery (SetFaeryState sets this byte to start that cinematic script).
    uint8_t m_tutorials[14];                                            // +0x29 tutorial flags, all set to 1 by _initSettings, saved and loaded as 14 bytes
    bool m_saveBlocked;                                                 // +0x37 saveSettings skips the write while set; loadSettings sets it when the language is still -1
    std::int32_t m_language;                                            // +0x38 language index, -1 until one is loaded
    bool m_autoOrientation;                                             // +0x3c "AutoOrientation" fallback, false by the ctor
    uint8_t pad_3d[3];                                                  // +0x3d
    std::string unk_40;                                                 // +0x40 std::string (24 bytes in the original); only the ctor and dtor touch it
};
