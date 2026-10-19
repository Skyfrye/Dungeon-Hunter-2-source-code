// Test for batch g1-game-app-Application-b291be-0. Covers the functions whose logic runs without the
// engine: the version string writer and the constant queries. Exit status 0 means every check passed.
#include <cstdio>
#include <cstring>

#include "dh2/Application.hpp"

// Defined by the globals batch in the original. The test defines it so the batch source links alone.
int OPERATOR_PACKAGE_INGAME = 0;

// GSLevel::s_level, GSLevel::s_gsLevel and GSInit::s_inst, read by the state and level queries of the batch source.
// Only addresses are compared, so raw storage under the linker names is enough.
Level* g_gsLevelPtr __asm__("_ZN7GSLevel7s_levelE") = nullptr;
alignas(16) unsigned char g_gsLevelStorage[256] __asm__("_ZN7GSLevel9s_gsLevelE");
alignas(16) unsigned char g_gsInitStorage[256] __asm__("_ZN6GSInit6s_instE");

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

// The functions tested here never read *this, so storage without a constructed Application is enough
// to make the call. Nothing else touches the storage.
Application* PlaceholderApp() {
    alignas(Application) static unsigned char storage[sizeof(Application)];
    return reinterpret_cast<Application*>(storage);
}

void TestVersionStringRetail() {
    char buf[16];
    std::memset(buf, '#', sizeof buf);
    OPERATOR_PACKAGE_INGAME = 0;
    PlaceholderApp()->GetVersionString(buf, sizeof buf, false);
    Check(std::strcmp(buf, "1.0.2") == 0, "retail build writes 1.0.2");
    Check(buf[6] == '#', "retail build stops at its NUL");
}

void TestVersionStringIngame() {
    char buf[16];
    std::memset(buf, '#', sizeof buf);
    OPERATOR_PACKAGE_INGAME = 4;
    PlaceholderApp()->GetVersionString(buf, sizeof buf, true);
    Check(std::strcmp(buf, "01.00.00") == 0, "INGAME build writes 01.00.00");
    Check(buf[9] == '#', "INGAME build writes nothing past its NUL");
}

void TestVersionStringGuards() {
    char buf[16];
    std::memset(buf, '#', sizeof buf);
    OPERATOR_PACKAGE_INGAME = 4;
    PlaceholderApp()->GetVersionString(buf, 0, false);
    Check(buf[0] == '#', "size 0 writes nothing");
    PlaceholderApp()->GetVersionString(buf, -1, false);
    Check(buf[0] == '#', "negative size writes nothing");
    PlaceholderApp()->GetVersionString(nullptr, 16, false);  // must return without touching memory
}

void TestConstantQueries() {
    Application* app = PlaceholderApp();
    Check(app->GetVersionNumber() == 10000, "GetVersionNumber is 10000");
    Check(app->GetDeviceLanguage() == -1, "GetDeviceLanguage is -1");
    Check(app->IsVideoReorienting() == false, "IsVideoReorienting is false");
    Check(app->SetOrientation(1, true) == 0, "SetOrientation returns 0");
    Check(app->IsInIGPOrGameCenter() == false, "IsInIGPOrGameCenter is false");
    Check(app->IsDeviceLanguageSupported(nullptr) == false, "IsDeviceLanguageSupported is false");
}

}  // namespace

int main() {
    TestVersionStringRetail();
    TestVersionStringIngame();
    TestVersionStringGuards();
    TestConstantQueries();
    if (g_failures == 0) {
        std::printf("g1-game-app-Application-b291be-0 test: all checks passed\n");
        return 0;
    }
    return 1;
}
