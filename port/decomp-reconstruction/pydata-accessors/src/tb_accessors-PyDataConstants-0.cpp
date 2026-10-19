// PyDataConstants, batch e1-pydata-accessors-PyDataConstants-0 (Track B, category pydata-accessors).
// Declarations: include/pydata-accessors/w7_pydata12.hpp (class PyDataConstants, shared with the wave-7 slice).

#include "pydata-accessors/w7_pydata12.hpp"

#include <cstdio>
#include <string>

#include "core-platform/filesystem_base.hpp"

namespace {

// Load() cases 0..26, in order. Case k opens "pydata/<name>", calls reloadData(stream, "<name>") when the
// open succeeds, and releases the stream. The error text says "PyData Arrays" in the original too (copied
// from the Arrays loader). Case 27 returns 1 without advancing.
const char* const kConstantsLoadFiles[] = {
    "ai_pycst.bin",                    // case 0
    "animations_pycst.bin",            // case 1
    "character_classes_pycst.bin",     // case 2
    "character_properties_pycst.bin",  // case 3
    "design_pycst.bin",                // case 4
    "dialogs_pycst.bin",               // case 5
    "effects_pycst.bin",               // case 6
    "engine_core_pycst.bin",           // case 7
    "faeries_pycst.bin",               // case 8
    "fonts_pycst.bin",                 // case 9
    "game_objects_pycst.bin",          // case 10
    "item_powers_pycst.bin",           // case 11
    "levels_pycst.bin",                // case 12
    "loot_audiovisual_pycst.bin",      // case 13
    "loot_table_pycst.bin",            // case 14
    "multiplayer_pycst.bin",           // case 15
    "projectiles_pycst.bin",           // case 16
    "scripts_pycst.bin",               // case 17
    "skills_pycst.bin",                // case 18
    "sounds_pycst.bin",                // case 19
    "specs_pycst.bin",                 // case 20
    "trophies_pycst.bin",              // case 21
    "v2conditions_pycst.bin",          // case 22
    "v2eventmanager_pycst.bin",        // case 23
    "v2quests_pycst.bin",              // case 24
    "worldmap_pycst.bin",              // case 25
    "common_text_pycst.bin",           // case 26
};
constexpr int kConstantsLoadDoneState = 27;
static_assert(sizeof(kConstantsLoadFiles) / sizeof(kConstantsLoadFiles[0]) == kConstantsLoadDoneState,
              "Load has 27 file states before the terminal state");

}  // namespace

// 0x4c36b8 _ZN15PyDataConstantsC1EP19DataReloaderManager
// Complete-object constructor. Same body as the C2 constructor at 0x4c3668, which is defined in
// w7_pydata12.cpp; one definition covers both, so no body is repeated here. The listing's zeroed state
// word (this+32) is the m_state default member initializer.

// 0x4c3708 _ZN15PyDataConstants4LoadEv
// Loads one file per call. The listing is a switch on this+32 (the state). States 0..26 open, reload and
// release one pydata file, then advance. State 27 returns 1 without advancing. Any other state only
// advances. The loader is PyDataFileSystem(), shared with PyDataArrays::Load (dword_99F73C + 52
// in the listing).
int PyDataConstants::Load() {
    const int state = m_state;
    if (state == kConstantsLoadDoneState) return 1;

    if (state >= 0 && state < kConstantsLoadDoneState) {
        const char* const name = kConstantsLoadFiles[state];
        const std::string path = std::string("pydata/") + name;
        FileSystemBase* const loader = PyDataFileSystem();
        IFileStream* stream = loader != nullptr ? loader->openResource(path.c_str()) : nullptr;  // vtable +144; host guard
        if (stream != nullptr) {
            reloadData(stream, name);  // vtable +8 in the listing
            loader->closeFile(stream);  // vtable +120 in the listing; clears the slot
        } else {
            std::printf("[PyData Arrays] : ERROR LOADING \"%s\"\n", path.c_str());
        }
    }
    // The listing's default branch (states below 0 or above 27) also falls through to the advance.
    m_state = m_state + 1;
    return 0;
}

// 0x4c4bdc _ZNK15PyDataConstants11getConstantEPKcS1_
// Two lookups: the class in the outer map, then the constant in that class's inner map. Either miss
// returns 0. The listing does not check the class name for null, and neither does the port.
int PyDataConstants::getConstant(const char* className, const char* constantName) const {
    const auto cls = m_classes.find(std::string(className));
    if (cls == m_classes.end()) return 0;
    const auto constant = cls->second.find(std::string(constantName));
    if (constant == cls->second.end()) return 0;
    return constant->second;
}
