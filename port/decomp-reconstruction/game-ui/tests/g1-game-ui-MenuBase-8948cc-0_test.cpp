// Checks the MenuBase bodies of batch g1-game-ui-MenuBase-8948cc-0 that run without the engine:
// the constant FS handlers and the global controller block set by the "All" branches.
// The definitions at the top exist only so the test links; the real ones live in other categories.
#include <cstdio>

#include "dh2/MenuBase.hpp"
#include "dh2/v2Controller.hpp"
#include "pydata-accessors/member_names.hpp"

// Link-only definitions (v2Controller in game-app, the name tables in pydata-accessors).
bool v2Controller::s_blocked = false;
pydata::NameTable Arrays::CharacterTable::m_memberNames;
pydata::NameTable Arrays::LevelList::m_memberNames;

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    Check(!MenuBase::FS_PauseGameplay("", "", nullptr), "FS_PauseGameplay returns false");
    Check(!MenuBase::FS_ResumeGameplay("", "", nullptr), "FS_ResumeGameplay returns false");
    Check(MenuBase::FS_LaunchTwitter("", "", nullptr), "FS_LaunchTwitter returns true");

    v2Controller::s_blocked = false;
    Check(MenuBase::FS_LockCharacter("", "All", nullptr), "FS_LockCharacter(All) returns true");
    Check(v2Controller::s_blocked, "FS_LockCharacter(All) sets the global block");
    Check(MenuBase::FS_UnlockCharacter("", "All", nullptr), "FS_UnlockCharacter(All) returns true");
    Check(!v2Controller::s_blocked, "FS_UnlockCharacter(All) clears the global block");

    if (g_failures == 0) {
        std::printf("MenuBase batch g1-game-ui-MenuBase-8948cc-0: all checks passed\n");
    }
    return g_failures == 0 ? 0 : 1;
}
