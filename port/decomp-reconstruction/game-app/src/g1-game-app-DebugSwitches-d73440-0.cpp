// Batch g1-game-app-DebugSwitches-d73440-0 (DebugSwitches, 14 ELF addresses, 12 bodies).
// Bodies follow the Hex-Rays pseudocode of libDungeonHunter2.so. The assembly was checked for the savegame size
// test and the seek (0x3374e4), the readString length (0xFF), the new-module store (0x337404) and the delete path
// (0x337f90). The C1 and C2 constructors and the D1 and D2 destructors have identical bodies, so each pair is one
// C++ definition.
//
// What is reconstructed and what is not:
//   - The switch and module tables, GetSwitch, GetModule, DelSwitch, the trace-switch reads, and the savegame parser
//     and writer (_loadSwitches, _saveSwitches) are complete.
//   - load() and save() are PARTIAL. Both reach the savegame through the file system at dword_99F73C+0x34, which is
//     glitch::IDevice +0x34. That member is not declared in the tree. load() therefore starts from defaults and save()
//     writes nothing. The forced switch values and the connect-switch reads that load() makes after the file read are
//     kept, in the original's order.
//   - SetSwitch and SetModule write through save() when a value changes, so they are PARTIAL for the same reason.
//
// Behaviour kept as the listing shows it:
//   - A module that is not in the table is stored as enabled (1), whatever SetModule was given.
//   - DelSwitch on a missing name stores the name as false. It does not erase anything.
//   - A missing switch is stored as false before the trace lookup of 'isTracingDebugSwitches'.
#include "dh2/DebugSwitches.hpp"

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/IStreamBase.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/global/savefile_fs.hpp"

// Global assert level. core-platform/memory.hpp declares it too; it is not included here, as in the other game-app
// sources.
extern int gAssertLevel;

// The singleton (DebugSwitches::s_inst) and its one-byte load guard (DebugSwitches::s_loaded).
DebugSwitches DebugSwitches::s_inst;
std::uint8_t DebugSwitches::s_loaded = 0;

namespace {

// Savegame layout, little-endian. The magic is the bytes "WSBD".
constexpr int kSwitchFileMagic = 0x44425357;
// Version written by _saveSwitches. Versions from 0x20000 carry a module section. Versions from 0x10000 to 0x1ffff
// do not. Anything below 0x10000 is an invalid savegame.
constexpr int kSwitchFileVersion = 0x20000;
constexpr int kModuleSectionVersion = 0x20000;
constexpr int kMinSwitchFileVersion = 0x10000;
// A stream with 11 bytes or fewer after the current position is not parsed (the listing's "> 0xB" test).
constexpr std::uint64_t kMinParsableBytes = 0xB;
// Length passed to every readString in the parser: the 64-bit argument, R2:R3 = 0xFF:0 (asm 0x337708 and 0x3377BC,
// MOV R2,#0xFF). IDA prints the immediate as elf_hash_bucket+0x23, but elf_hash_bucket is at 0xDC and 0xDC+0x23 = 0xFF.
// readString keeps at most len-1 characters (StreamReader.hpp), so a name keeps up to 254 characters.
constexpr std::uint64_t kNameLength = 0xFF;
// Size of the name buffer in _loadSwitches (v18[256] in the listing).
constexpr std::size_t kNameBufferSize = 256;

// Trace switches. A lookup of a missing key stores it as false, so these reads change the switch table.
constexpr const char kTraceSwitchKey[] = "isTracingDebugSwitches";
constexpr const char kTraceFileKey[] = "isTracingDebugSwitchesFile";

// The original ASSERT for an invalid savegame version. gAssertLevel 2 stops the program (the original stores to
// address 0 to crash). gAssertLevel 1 prints the message to stderr.
void ReportInvalidSavegameVersion() {
    if (gAssertLevel == 2) {
        std::abort();
    } else if (gAssertLevel == 1) {
        std::fprintf(stderr, "ASSERT(%s) FAILED: %s:%d\n",
                     "!\"INVALID SAVEGAME VERSION FOR THE DEBUG SWITCHES\"",
                     "..\\..\\project_vs2005\\Game/..\\..\\sources\\Core\\Console\\DebugSwitches.cpp", 269);
    }
}

// The original's trace read: DebugSwitches::load() on the singleton, then GetSwitch(key) with the result discarded.
// GetInstance() calls load() before it returns the singleton, which is the same sequence.
void ReadTraceSwitch(const char* key) {
    (void)DebugSwitches::GetInstance()->GetSwitch(std::string(key));
}

}  // namespace

// 0x330740 DebugSwitches::GetInstance()
// Loads the switches on first use and returns the singleton.
DebugSwitches* DebugSwitches::GetInstance() {
    s_inst.load();
    return &s_inst;
}

// 0x335f94 DebugSwitches::DebugSwitches() (C2 base-object constructor, compiler-generated from the C1 below)
// 0x335fcc DebugSwitches::DebugSwitches() (C1 complete-object constructor)
// Both trees start empty. The original points each tree header at itself, which std::map does when it is built.
// The unused pad at +0x14 is left alone.
DebugSwitches::DebugSwitches() {}

// 0x33688c DebugSwitches::~DebugSwitches() (D1 complete-object destructor)
// 0x3368f4 DebugSwitches::~DebugSwitches() (D2 base-object destructor, compiler-generated from the D1 below)
// Clears the module tree (+0x18) first, then the switch tree (+0x00), as the original does.
DebugSwitches::~DebugSwitches() {
    m_modules.clear();
    m_switches.clear();
}

// 0x337404 DebugSwitches::SetModule(std::string const&, bool)
// A changed value is written through save().
// A module that is not in the table is stored as enabled whatever `enabled` is. The listing stores 1 there
// (asm 0x337404: MOV R3, #1 then STRB), and it does not call save() in that case.
void DebugSwitches::SetModule(const std::string& name, bool enabled) {
    auto it = m_modules.find(name);
    if (it == m_modules.end()) {
        ReadTraceSwitch(kTraceSwitchKey);
        m_modules[name] = true;
        return;
    }
    if (it->second != enabled) {
        it->second = enabled;
        save();
    }
}

// 0x3374e4 DebugSwitches::_loadSwitches(IFileStream *)
// Parses a savegame. The stream is taken as IStreamBase (see the header). The module section is read only for
// versions from 0x20000. The switch section is read for every accepted version.
void DebugSwitches::_loadSwitches(IStreamBase* stream) {
    if (stream == nullptr) {
        return;
    }
    const std::uint64_t remaining = static_cast<std::uint64_t>(stream->size()) - stream->tell();
    if (remaining <= kMinParsableBytes) {
        return;
    }
    if (StreamReader::readAs<int>(stream) != kSwitchFileMagic) {
        ReadTraceSwitch(kTraceFileKey);
        // Step back over the magic that was just read, then stop. Nothing is loaded.
        const std::uint64_t pos = stream->tell();
        stream->seek(pos - 4);
        return;
    }

    const int version = StreamReader::readAs<int>(stream);
    if (version >= kModuleSectionVersion) {
        const int moduleCount = StreamReader::readAs<int>(stream);
        for (int i = 0; i < moduleCount; ++i) {
            char name[kNameBufferSize];
            StreamReader::readString(stream, name, kNameLength);
            const bool enabled = StreamReader::readAs<unsigned char>(stream) != 0;
            SetModule(std::string(name), enabled);
        }
    } else if (version < kMinSwitchFileVersion) {
        ReadTraceSwitch(kTraceFileKey);
        ReadTraceSwitch(kTraceFileKey);
        ReportInvalidSavegameVersion();
        return;
    }

    const int switchCount = StreamReader::readAs<int>(stream);
    for (int i = 0; i < switchCount; ++i) {
        char name[kNameBufferSize];
        StreamReader::readString(stream, name, kNameLength);
        const bool value = StreamReader::readAs<unsigned char>(stream) != 0;
        ReadTraceSwitch(kTraceFileKey);
        SetSwitch(std::string(name), value);
    }
}

// 0x337888 DebugSwitches::load()
// On the first call only, "DebugSwitches.savegame" is opened on the savefile file system (IDevice +0x34), read by _loadSwitches
// and closed. Then the forced switch values and the connect-switch reads follow. The load() calls before each lookup do nothing
// once s_loaded is set, so they are not repeated.
void DebugSwitches::load() {
    if (s_loaded != 0) {
        return;
    }
    s_loaded = 1;

    if (FileSystemWin32* fileSystem = SavefileFileSystemPtr()) {
        if (FileSystemWin32::_FileHandle* handle = fileSystem->openSavefile("DebugSwitches.savegame", false)) {
            _loadSwitches(handle);
            IFileStream* stream = handle;
            fileSystem->closeFile(stream);
        }
    }

    s_inst.SetSwitch("IsDeactivatingFlashMenus", false);
    s_inst.SetSwitch("IsDeactivatingFlashMenusUpdate", false);
    s_inst.SetSwitch("IsDeactivatingFlashMenusRender", false);
    (void)s_inst.GetSwitch("ConnectToAlphaServer");
    (void)s_inst.GetSwitch("ConnectToBetaServer");
}

// 0x337a88 DebugSwitches::GetSwitch(std::string const&)
// A missing name is stored as false, then 'isTracingDebugSwitches' is read (which may store that key too).
bool DebugSwitches::GetSwitch(const std::string& name) {
    if (m_switches.find(name) == m_switches.end()) {
        m_switches[name] = false;
        ReadTraceSwitch(kTraceSwitchKey);
    }
    return m_switches[name];
}

// 0x337b4c DebugSwitches::_saveSwitches(IFileStream *)
// Writes the magic, the version, the module section, then the switch section. Each switch is preceded by the
// 'isTracingDebugSwitchesFile' lookup, which can add that key to the switch table while the loop runs. The switch
// count is written before the loop, as the listing does, so an added key is written but not counted.
void DebugSwitches::_saveSwitches(IStreamBase* stream) {
    if (stream == nullptr) {
        return;
    }
    StreamReader::writeAs<int>(stream, kSwitchFileMagic);
    StreamReader::writeAs<int>(stream, kSwitchFileVersion);
    StreamReader::writeAs<int>(stream, static_cast<int>(m_modules.size()));
    for (const auto& module : m_modules) {
        StreamReader::writeString(stream, module.first.c_str(), module.first.size());
        StreamReader::writeAs<unsigned char>(stream, static_cast<unsigned char>(module.second ? 1 : 0));
    }
    StreamReader::writeAs<int>(stream, static_cast<int>(m_switches.size()));
    for (auto it = m_switches.begin(); it != m_switches.end(); ++it) {
        ReadTraceSwitch(kTraceFileKey);
        StreamReader::writeString(stream, it->first.c_str(), it->first.size());
        StreamReader::writeAs<unsigned char>(stream, static_cast<unsigned char>(it->second ? 1 : 0));
    }
}

// 0x337d54 DebugSwitches::save()
// Opens "DebugSwitches.savegame" for writing on the savefile file system, writes the switches with _saveSwitches and closes it.
void DebugSwitches::save() {
    if (FileSystemWin32* fileSystem = SavefileFileSystemPtr()) {
        if (FileSystemWin32::_FileHandle* handle = fileSystem->openSavefile("DebugSwitches.savegame", true)) {
            _saveSwitches(handle);
            IFileStream* stream = handle;
            fileSystem->closeFile(stream);
        }
    }
}

// 0x337ddc DebugSwitches::SetSwitch(std::string const&, bool)
// A changed value is written through save().
// A missing name is preceded by the 'isTracingDebugSwitches' lookup and then stored as false. The listing returns
// the address of the stored value (char*). No caller uses it, so the header declares void.
void DebugSwitches::SetSwitch(const std::string& name, bool value) {
    if (m_switches.find(name) == m_switches.end()) {
        ReadTraceSwitch(kTraceSwitchKey);
        m_switches[name] = false;
    }
    bool& current = m_switches[name];
    if (current != value) {
        current = value;
        save();
    }
}

// 0x337ec8 DebugSwitches::GetModule(std::string const&)
// A module that is not in the table is preceded by the 'isTracingDebugSwitches' lookup, stored as enabled, and
// reported as enabled.
bool DebugSwitches::GetModule(const std::string& name) {
    auto it = m_modules.find(name);
    if (it != m_modules.end()) {
        return it->second;
    }
    ReadTraceSwitch(kTraceSwitchKey);
    m_modules[name] = true;
    return true;
}

// 0x337f90 DebugSwitches::DelSwitch(std::string const&)
// Erases the switch when it is present. A missing name is preceded by the 'isTracingDebugSwitches' lookup and then
// stored as false, not erased.
void DebugSwitches::DelSwitch(const std::string& name) {
    auto it = m_switches.find(name);
    if (it == m_switches.end()) {
        ReadTraceSwitch(kTraceSwitchKey);
        m_switches[name] = false;
        return;
    }
    m_switches.erase(it);
}
