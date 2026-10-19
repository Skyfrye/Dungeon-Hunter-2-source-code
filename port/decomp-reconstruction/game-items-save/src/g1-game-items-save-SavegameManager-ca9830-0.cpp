// Batch g1-game-items-save-SavegameManager-ca9830-0 (owner SavegameManager, part 1 of 2).
// The section callbacks of the settings file, saveSettings, the constructor and destructor, the option accessors
// (decOption, incOption, setOption and the getOption* family) and setLanguage. Declarations come from
// dh2/SavegameManager.hpp, which needs no change for this batch.
//
// Shared conventions in this file:
//  * Section callbacks are called by Savegame as (IStreamBase* stream, void* user). The Hex-Rays listing names the first
//    argument `this` and the second `a2`, and a2 is the SavegameManager (the same note as LevelSavegame.cpp).
//  * Stream calls. The original calls the virtual read and write as (buffer, 4, 0): the count is 64 bits, so the trailing 0
//    is its high word. Here they are IStreamBase::read(buffer, count) and write(buffer, count).
//  * Return values. The header declares the section callbacks int. Where the original returns a leftover r0 (the last
//    StreamReader result or the detected language), the function returns 0. Savegame calls these as section callbacks and
//    no caller reads the value. The read and write counts of the Last Slot and Tutorials callbacks are returned as before.
//  * Option rows. Structs::GameOption (Arrays::GameOptionTable, 32 bytes per row in the file) is read through its named
//    members: m_w1 Default, m_w2 Label, m_w3 Max, m_w4 Min, m_w5 Step, m_w6 Type, m_w7 ValueStr (+0x04 .. +0x1c).
//  * Option map. m_options is std::map<std::string, _GameOption, std::less<>>. The original walks its red-black tree in key
//    order, and so does the std::map iteration here, so the settings file keeps the same entry order.

#include <cstdint>
#include <cstring>
#include <string>

#include "dh2/Character.hpp"
#include "dh2/GameObject.hpp"
#include "dh2/IFileStream.hpp"
#include "dh2/ItemObject.hpp"
#include "dh2/TriggerZoneExitLevel.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/ObjectManager.hpp"
#include "dh2/Savegame.hpp"
#include "dh2/SavegameManager.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/StringManager.hpp"
#include "dh2/global/Globals.hpp"
#include "dh2/global/ObjectManagerInstance.hpp"
#include "dh2/global/item_instance.hpp"
#include "dh2/global/savefile_fs.hpp"
#include "dh2/global/savegame_manager_language.hpp"
#include "core-platform/tb/android_jni_bridge.hpp"  // nativeDetectPhoneLang
#include "pydata-accessors/structs_records.hpp"

// 0x46c738 SavegameManager::__loadLastSlot(IStreamBase*, void*)
// Reads the 4-byte last slot into m_lastSlot (+0x08). Returns the count read.
int SavegameManager::__loadLastSlot(IStreamBase* stream, void* user) {
    auto* manager = static_cast<SavegameManager*>(user);
    return static_cast<int>(stream->read(&manager->m_lastSlot, 4));
}

// 0x46c758 SavegameManager::__saveLastSlot(IStreamBase*, void*)
// Writes m_lastSlot (+0x08) as 4 bytes. Returns the count written.
int SavegameManager::__saveLastSlot(IStreamBase* stream, void* user) {
    auto* manager = static_cast<SavegameManager*>(user);
    return static_cast<int>(stream->write(&manager->m_lastSlot, 4));
}

// 0x46c778 SavegameManager::__loadTutorials(IStreamBase*, void*)
// Reads the 14 tutorial flags into m_tutorials (+0x29). Returns the count read.
int SavegameManager::__loadTutorials(IStreamBase* stream, void* user) {
    auto* manager = static_cast<SavegameManager*>(user);
    return static_cast<int>(stream->read(manager->m_tutorials, 14));
}

// 0x46c798 SavegameManager::__saveTutorials(IStreamBase*, void*)
// Writes the 14 tutorial flags from m_tutorials (+0x29). Returns the count written.
int SavegameManager::__saveTutorials(IStreamBase* stream, void* user) {
    auto* manager = static_cast<SavegameManager*>(user);
    return static_cast<int>(stream->write(manager->m_tutorials, 14));
}

// 0x46c7b8 SavegameManager::__loadLanguageAndOrientation(IStreamBase*, void*)
// The file part: an unsigned count, then count entries of (name string, int value). The entries named
// "Language" set m_language and "AutoOrientation" sets m_autoOrientation (value != 0). The loop stops after both are found.
// The Korean and Japanese builds set m_language to 5 and 4; the other builds take it from nativeDetectPhoneLang(), the phone language
// index (1..7), mapped 1->2, 2->1, 3->7, 4->3, 5->4, 6->5, 7->6 and any other value to 0. The original's return is the last r0 and is
// not reproduced (see the header note above).
int SavegameManager::__loadLanguageAndOrientation(IStreamBase* stream, void* user) {
    auto* manager = static_cast<SavegameManager*>(user);
    if (stream != nullptr) {
        std::uint32_t count = 0;
        StreamReader::readAs<unsigned int>(stream, &count);
        bool languageFound = false;
        bool orientationFound = false;
        for (std::uint32_t i = 0; i < count; ++i) {
            char name[128];
            if (!StreamReader::readString(stream, name, sizeof(name))) {
                break;
            }
            int value = 0;
            StreamReader::readAs<int>(stream, &value);
            if (std::strcmp(name, "Language") == 0) {
                languageFound = true;
                manager->m_language = value;
            } else if (std::strcmp(name, "AutoOrientation") == 0) {
                orientationFound = true;
                manager->m_autoOrientation = value != 0;
            }
            if (languageFound && orientationFound) {
                break;
            }
        }
    }
    if (isKOREAN_BUILD) {
        manager->m_language = 5;
    } else if (JAPANESE_BUILD) {
        manager->m_language = 4;
    } else {
        switch (nativeDetectPhoneLang()) {
            case 1: manager->m_language = 2; break;
            case 2: manager->m_language = 1; break;
            case 3: manager->m_language = 7; break;
            case 4: manager->m_language = 3; break;
            case 5: manager->m_language = 4; break;
            case 6: manager->m_language = 5; break;
            case 7: manager->m_language = 6; break;
            default: manager->m_language = 0; break;
        }
    }
    return 0;
}

// 0x46ca78 SavegameManager::__saveOptions(IStreamBase*, void*)
// Writes the option count as unsigned int, then each option in key order: the name as a length-prefixed string and the
// current value as int. Returns 0 (see the header note above).
int SavegameManager::__saveOptions(IStreamBase* stream, void* user) {
    auto* manager = static_cast<SavegameManager*>(user);
    const auto count = static_cast<unsigned int>(manager->m_options.size());
    StreamReader::writeAs<unsigned int>(stream, &count);
    for (auto& entry : manager->m_options) {
        StreamReader::writeString(stream, entry.first.data(), entry.first.size());
        StreamReader::writeAs<int>(stream, &entry.second.m_value);
    }
    return 0;
}

// 0x46cb34 SavegameManager::saveSettings()
// When m_settings is set and m_saveBlocked is clear: opens m_settings->m_filename for writing on the device file system
// (slot +0x94), runs __saveOptions and __saveTutorials on the stream (the manager is their user pointer) and closes it (slot +0x78).
void SavegameManager::saveSettings() {
    if (m_settings == nullptr || m_saveBlocked) {
        return;
    }
    FileSystemWin32& fileSystem = SavefileFileSystem();
    IFileStream* stream = fileSystem.openSavefile(m_settings->m_filename.c_str(), true);
    if (stream != nullptr) {
        __saveOptions(stream, this);
        __saveTutorials(stream, this);
        fileSystem.closeFile(stream);
    }
}

// 0x46cc18 SavegameManager::~SavegameManager() (D1, complete object)
// Deletes m_settings through its virtual destructor. The option map and the owner string are destroyed by the members.
SavegameManager::~SavegameManager() {
    delete m_settings;
    m_settings = nullptr;
}

// 0x46cca4 SavegameManager::~SavegameManager() (D0, deleting destructor)
// SKIPPED: the compiler emits the deleting destructor for the virtual ~SavegameManager(). The original body is the D1
// call followed by CustomFree(this), and the compiler generates the same from the definition above.

// 0x46ccc0 SavegameManager::~SavegameManager() (D2, base object)
// Same body as D1 (0x46cc18). The C++ compiler emits this variant from the single definition above.

// 0x46cd4c SavegameManager::SavegameManager() (C1)
// Sets the fields the original constructor sets: m_settings null, m_lastSlot -1 (no slot used yet), unk_0c 0, m_optionsLoaded
// false, m_saveBlocked false, m_language -1 and m_autoOrientation false. The option map and owner string start empty.
// m_tutorials is not set here (the original does not set it, _initSettings does).
SavegameManager::SavegameManager() {
    m_settings = nullptr;
    m_lastSlot = -1;
    unk_0c = 0;
    m_optionsLoaded = false;
    m_saveBlocked = false;
    m_language = -1;
    m_autoOrientation = false;
}

// 0x46cdd8 SavegameManager::SavegameManager() (C2, complete object)
// Same body as C1 (0x46cd4c). The C++ compiler emits this variant from the single definition above.

// 0x46cfd4 SavegameManager::decOption(char const*)
// For an option whose Type is 1 or 2, value -= Step, clamped at Min. Other types and missing names are left alone.
void SavegameManager::decOption(const char* name) {
    const auto it = m_options.find(name);
    if (it == m_options.end()) {
        return;
    }
    const Structs::GameOption* definition = it->second.m_definition;
    const int type = definition->Type;
    if (static_cast<unsigned int>(type - 1) <= 1u) {
        const int value = it->second.m_value - definition->Step;
        it->second.m_value = value < definition->Min ? definition->Min : value;
    }
}

// 0x46d03c SavegameManager::incOption(char const*)
// For an option whose Type is 1, value += Step, clamped at Max. For Type 2 the clamp is Max - 1. Other types and missing
// names are left alone.
void SavegameManager::incOption(const char* name) {
    const auto it = m_options.find(name);
    if (it == m_options.end()) {
        return;
    }
    const Structs::GameOption* definition = it->second.m_definition;
    const int type = definition->Type;
    if (type == 1) {
        const int value = it->second.m_value + definition->Step;
        it->second.m_value = value > definition->Max ? definition->Max : value;
    } else if (type == 2) {
        const int value = it->second.m_value + definition->Step;
        const int max = definition->Max - 1;
        it->second.m_value = value > max ? max : value;
    }
}

// 0x46d0d0 SavegameManager::setOption(char const*, int)
// Stores value as the option's current value when the name exists.
void SavegameManager::setOption(const char* name, int value) {
    const auto it = m_options.find(name);
    if (it != m_options.end()) {
        it->second.m_value = value;
    }
}

// 0x46d104 SavegameManager::setLanguage(int)
// Stores the Language option, refreshes the localized inventory of the player and merchant characters, then walks ObjectManager's
// object map in key order: for each game object (vtable +0x20) an item (GO id 3) updates its localization, and an exit-level
// trigger (GO id 14) clears its fast-travel-shown flag (+0x819). Finally the string pack for the language is switched. The original
// returns the bool from StringManager::switchPack as int; the header keeps void, so the value is dropped.
int SavegameManager::setLanguage(int language) {
    setOption("Language", language);
    for (Character* character : dword_99F764->m_characters) {
        if (character->IsPlayer() || character->IsMerchant()) {
            character->UpdateInventoryLocalization();
        }
    }
    for (const auto& entry : dword_99F764->m_objectMap) {
        ObjectBase* object = entry.second.m_object;
        if (object == nullptr || !object->IsGameObject()) {
            continue;
        }
        GameObject* gameObject = static_cast<GameObject*>(object);
        int goId = gameObject->m_goId;
        if (goId == 3) {
            static_cast<ItemObject*>(gameObject)->UpdateLocalization();
            goId = gameObject->m_goId;
        }
        if (goId == 14) {
            static_cast<TriggerZoneExitLevel*>(gameObject)->m_fastTravelShown = false;
        }
    }
    return ApplicationGetStringManager()->switchPack(static_cast<unsigned int>(language), true);
}

// 0x46d280 SavegameManager::getOptionType(char const*) const
// The option row's Type (m_w6), or -1 when the name is missing.
int SavegameManager::getOptionType(const char* name) const {
    const auto it = m_options.find(name);
    if (it == m_options.end()) {
        return -1;
    }
    return it->second.m_definition->Type;
}

// 0x46d2b8 SavegameManager::getOptionString(char const*) const
// The current value plus the row's ValueStr (m_w7), or -1 when the name is missing.
int SavegameManager::getOptionString(const char* name) const {
    const auto it = m_options.find(name);
    if (it == m_options.end()) {
        return -1;
    }
    return it->second.m_value + it->second.m_definition->ValueStr;
}

// 0x46d2f8 SavegameManager::getOptionLabel(char const*) const
// The row's Label (m_w2), or -1 when the name is missing.
int SavegameManager::getOptionLabel(const char* name) const {
    const auto it = m_options.find(name);
    if (it == m_options.end()) {
        return -1;
    }
    return it->second.m_definition->Label;
}

// 0x46d330 SavegameManager::getOptionMax(char const*) const
// The row's Max (m_w3), minus 1 for Type 2, or -1 when the name is missing.
int SavegameManager::getOptionMax(const char* name) const {
    const auto it = m_options.find(name);
    if (it == m_options.end()) {
        return -1;
    }
    const Structs::GameOption* definition = it->second.m_definition;
    int max = definition->Max;
    if (definition->Type == 2) {
        --max;
    }
    return max;
}
