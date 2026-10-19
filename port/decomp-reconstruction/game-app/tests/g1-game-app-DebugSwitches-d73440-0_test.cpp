// Test for the DebugSwitches batch g1-game-app-DebugSwitches-d73440-0. It drives the switch and module tables through
// the public API. The savegame stream path (_loadSwitches, _saveSwitches) is not reached here. The StreamReader
// functions that batch references are defined below as stubs that abort if called, only so the batch links without
// the engine. Returns non-zero on failure.
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <string>

#include "dh2/DebugSwitches.hpp"
#include "dh2/IStreamBase.hpp"
#include "dh2/StreamReader.hpp"

// Defined by core-platform/src/memory.cpp in the engine build.
int gAssertLevel = 0;

// Link-only stubs. The state checks below never reach the stream path.
template <>
int StreamReader::readAs<int>(IStreamBase*) {
    std::abort();
}

template <>
unsigned char StreamReader::readAs<unsigned char>(IStreamBase*) {
    std::abort();
}

bool StreamReader::readString(IStreamBase*, char*, std::uint64_t) {
    std::abort();
}

template <>
void StreamReader::writeAs<int>(IStreamBase*, int) {
    std::abort();
}

template <>
void StreamReader::writeAs<unsigned char>(IStreamBase*, unsigned char) {
    std::abort();
}

bool StreamReader::writeString(IStreamBase*, const char*, std::uint64_t) {
    std::abort();
}

namespace {

int g_failures = 0;

#define EXPECT(cond)                                                                       \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "%s:%d: EXPECT failed: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                                                  \
        }                                                                                  \
    } while (0)

}  // namespace

int main() {
    DebugSwitches* sw = DebugSwitches::GetInstance();
    EXPECT(sw != nullptr);
    EXPECT(sw == DebugSwitches::GetInstance());

    // load() forces the three deactivation switches to false. The connect switches are read, which stores them as false.
    EXPECT(!sw->GetSwitch("IsDeactivatingFlashMenus"));
    EXPECT(!sw->GetSwitch("IsDeactivatingFlashMenusUpdate"));
    EXPECT(!sw->GetSwitch("IsDeactivatingFlashMenusRender"));
    EXPECT(!sw->GetSwitch("ConnectToAlphaServer"));
    EXPECT(!sw->GetSwitch("ConnectToBetaServer"));

    // A switch that was never set reads as false.
    EXPECT(!sw->GetSwitch("ProbeUnknown"));

    // SetSwitch changes the value, and an unchanged value leaves it as it is.
    sw->SetSwitch("ProbeA", true);
    EXPECT(sw->GetSwitch("ProbeA"));
    sw->SetSwitch("ProbeA", true);
    EXPECT(sw->GetSwitch("ProbeA"));
    sw->SetSwitch("ProbeA", false);
    EXPECT(!sw->GetSwitch("ProbeA"));

    // A second GetInstance does not run load() again, so the values set above are kept.
    sw->SetSwitch("ProbeKept", true);
    EXPECT(DebugSwitches::GetInstance()->GetSwitch("ProbeKept"));

    // DelSwitch erases a present switch, so the next read gives the default false.
    sw->SetSwitch("ProbeB", true);
    sw->DelSwitch("ProbeB");
    EXPECT(!sw->GetSwitch("ProbeB"));

    // DelSwitch on a missing name is harmless and leaves it false.
    sw->DelSwitch("ProbeMissing");
    EXPECT(!sw->GetSwitch("ProbeMissing"));

    // A new module is stored as enabled, whatever SetModule was given.
    sw->SetModule("ModA", false);
    EXPECT(sw->GetModule("ModA"));

    // An existing module takes the given value.
    sw->SetModule("ModA", false);
    EXPECT(!sw->GetModule("ModA"));
    sw->SetModule("ModA", true);
    EXPECT(sw->GetModule("ModA"));

    // GetModule on a missing module reports true and keeps the module.
    EXPECT(sw->GetModule("ModNew"));
    sw->SetModule("ModNew", false);
    EXPECT(!sw->GetModule("ModNew"));

    // The module table is separate from the switch table: a module created by SetModule is not a switch.
    sw->SetModule("OnlyModule", false);
    EXPECT(!sw->GetSwitch("OnlyModule"));

    if (g_failures != 0) {
        std::fprintf(stderr, "%d check(s) failed\n", g_failures);
        return 1;
    }
    return 0;
}
