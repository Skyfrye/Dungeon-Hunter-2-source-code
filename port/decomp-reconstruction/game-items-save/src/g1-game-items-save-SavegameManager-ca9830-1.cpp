// Batch g1-game-items-save-SavegameManager-ca9830-1 (owner SavegameManager, part 2 of 2).
// Reconstructed from the Hex-Rays pseudocode and the assembly of libDungeonHunter2.so.
//
// Notes:
//  * Hex-Rays types the owner as the first argument of the static __loadOptions. The demangled symbol takes
//    (IStreamBase*, void*), so the first argument is the stream and the second is the SavegameManager (the section
//    user pointer). Its asm adds 0x10 to the second argument to reach the option tree.
//  * __loadOptions is void. Hex-Rays shows int, but the asm (0x46d8f4) leaves r0 unset on every path (the count-zero
//    path returns the stale value of the first call). Savegame::SectionCallback is void(IStreamBase*, void*).
//  * The option entries are read through Structs::GameOption (pydata-accessors/structs_records.hpp): m_w1 Default,
//    m_w2 Label, m_w3 Max (+0x0c), m_w4 Min (+0x10), m_w5 Step, m_w6 Type (+0x18), m_w7 ValueStr. The schema order
//    Default, Label, Max, Min, Step, Type, ValueStr is the one the other tables check against.
//  * PARTIAL: _initSettings fills m_options from Arrays::GameOptionTable. That table has two declarations in the
//    pydata headers: member_names.hpp declares m_memberNames (the option names) and w7_arrays27.hpp declares members
//    and size (the rows). The two cannot be included in one translation unit, so the fill is not written. The clear
//    and the tutorial flags are written.
//  * handle_cheats_inGame is declared in dh2/global/Globals.hpp. Its definition belongs to the globals batch.
//  * dword_99F778 is Application::m_savegameManager (+0x4c). The Globals.hpp rule is that the singleton member is used,
//    so the code reads ApplicationGetInstance().m_savegameManager.

#include <cstdint>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/Character.hpp"
#include "dh2/ItemInventory.hpp"
#include "dh2/PlayerInfo.hpp"
#include "dh2/PlayerManager.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/IsMultiplayerGame.hpp"
#include "pydata-accessors/arrays.hpp"
#include "pydata-accessors/structs_records.hpp"

// 0x46d378 SavegameManager::isOptionAtMin(char const*) const
bool SavegameManager::isOptionAtMin(const char* name) const {
    const auto it = m_options.find(name);
    return it != m_options.end() && it->second.m_value == 0;
}

// 0x46d3b8 SavegameManager::isOptionAtMax(char const*) const
// Type 2 (+0x18) compares against Max - 1, every other type against Max (+0x0c).
bool SavegameManager::isOptionAtMax(const char* name) const {
    const auto it = m_options.find(name);
    if (it == m_options.end()) return false;
    const Structs::GameOption* def = it->second.m_definition;
    if (def->Type == 2) return it->second.m_value == def->Max - 1;
    return it->second.m_value == def->Max;
}

// 0x46d418 SavegameManager::isOptionToggled(char const*) const
// Type 0 (+0x18) and value equal to Max (+0x0c).
bool SavegameManager::isOptionToggled(const char* name) const {
    const auto it = m_options.find(name);
    if (it == m_options.end()) return false;
    const Structs::GameOption* def = it->second.m_definition;
    return def->Type == 0 && it->second.m_value == def->Max;
}

// 0x46d474 SavegameManager::getOption(char const*) const
int SavegameManager::getOption(const char* name) const {
    const auto it = m_options.find(name);
    if (it == m_options.end()) return -1;
    return it->second.m_value;
}

// 0x46d4a8 SavegameManager::hasOption(char const*) const
bool SavegameManager::hasOption(const char* name) const {
    return m_options.find(name) != m_options.end();
}

// 0x46d4d8 SavegameManager::getAutoReorientation() const
int SavegameManager::getAutoReorientation() const {
    if (hasOption("AutoOrientation")) return getOption("AutoOrientation");
    return m_autoOrientation ? 1 : 0;  // +0x3c
}

// 0x46d514 SavegameManager::getLanguage() const
// A stored "Language" of -1 means the device language.
int SavegameManager::getLanguage() const {
    if (!hasOption("Language")) return m_language;  // +0x38
    const int language = getOption("Language");
    if (language == -1) return ApplicationGetInstance().GetDeviceLanguage();
    return language;
}

// 0x46d578 SavegameManager::toggleOption(char const*)
// Type 0 only. The value swaps between Min (+0x10) and Max (+0x0c). With the cheat switch on, the names "LevelUp"
// (the local player's character levels up) and "GiveGold" (0x200000 gold to the local player's inventory) also run.
void SavegameManager::toggleOption(const char* name) {
    const auto it = m_options.find(name);
    if (it == m_options.end()) return;
    const Structs::GameOption* def = it->second.m_definition;
    if (def->Type != 0) return;  // Type 0 only
    if (it->second.m_value == def->Min) {  // value == Min
        it->second.m_value = def->Max;     // -> Max
    } else {
        it->second.m_value = def->Min;     // -> Min
    }
    if (handle_cheats_inGame) {
        if (std::strcmp(name, "LevelUp") != 0) {
            if (std::strcmp(name, "GiveGold") == 0) {
                Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;  // PlayerInfo +0x660
                if (character != nullptr) {
                    static_cast<ItemInventory*>(character)->AddGold(0x200000);  // ItemInventory base at Character +0x37c
                }
            }
        } else {
            Character* character = dword_99F76C->GetLocalPlayer(0, true)->unk_660;
            if (character != nullptr) character->LevelUp(0);
        }
    }
}

// 0x46d8f4 SavegameManager::__loadOptions(IStreamBase*, void*)
// The section user is the SavegameManager. Each entry is a name (at most 127 characters) and an int value. A name that
// is in m_options gets the value stored in its _GameOption; other names are read and dropped. The count is read first.
void SavegameManager::__loadOptions(IStreamBase* stream, void* user) {
    auto* manager = static_cast<SavegameManager*>(user);
    unsigned int count = 0;
    StreamReader::readAs<unsigned int>(stream, &count);
    for (unsigned int i = 0; i < count; ++i) {
        char name[128];
        if (!StreamReader::readString(stream, name, 128)) break;
        int value = 0;
        StreamReader::readAs<int>(stream, &value);
        const auto it = manager->m_options.find(static_cast<const char*>(name));
        if (it != manager->m_options.end()) it->second.m_value = value;
    }
}

// 0x46e47c SavegameManager::_initSettings(bool)
// Clears the option map. Unless languageOnly is set, every row of Arrays::GameOptionTable gets an option named by
// GameOptionTable::m_memberNames[row]: { the row, the row's Default (m_w1) }. The 14 tutorial flags (+0x29 .. +0x36) are set to 1.
void SavegameManager::_initSettings(bool languageOnly) {
    if (!m_options.empty()) m_options.clear();
    if (!languageOnly) {
        const auto* rows = reinterpret_cast<const Structs::GameOption*>(Arrays::GameOptionTable::members);
        for (std::uint32_t i = 0; i < Arrays::GameOptionTable::size; ++i) {
            const char* name = Arrays::GameOptionTable::m_memberNames.names[i];
            const Structs::GameOption* row = &rows[i];
            m_options[name].m_definition = row;
            m_options[name].m_value = row->Default;
        }
    }
    for (int i = 0; i != 14; ++i) {
        m_tutorials[i] = 1;  // +0x29 .. +0x36
    }
}

// 0x46e584 SavegameManager::loadSettings(bool)
// Reopens "dh2_settings.savegame" and reads it. languageOnly reads only the language and orientation entries. Otherwise
// it reads the options and the tutorial flags too. A language still at -1 blocks saving (m_saveBlocked).
// Depends on _initSettings, which is PARTIAL (the option fill is missing).
void SavegameManager::loadSettings(bool languageOnly) {
    if (m_settings != nullptr) {  // +0x04; the original calls the deleting destructor through vtable slot 1
        delete m_settings;
        m_settings = nullptr;
    }
    _initSettings(languageOnly);
    m_settings = new Savegame("dh2_settings.savegame", true);
    ApplicationGetInstance().m_savegameManager->setLanguage(m_language);  // dword_99F778 = Application::m_savegameManager
    if (languageOnly) {
        __loadLanguageAndOrientation(m_settings->m_stream, this);  // Savegame +0x1c
        if (m_language == -1) m_saveBlocked = true;                 // +0x37
        return;
    }
    IStreamBase* stream = m_settings->m_stream;  // Savegame +0x1c
    if (stream == nullptr) return;
    __loadOptions(stream, this);
    __loadTutorials(stream, this);
    if (getLanguage() == -1) {
        setLanguage(0);
        m_saveBlocked = true;  // +0x37
    } else {
        setLanguage(getLanguage());
    }
    m_optionsLoaded = true;  // +0x28
}
