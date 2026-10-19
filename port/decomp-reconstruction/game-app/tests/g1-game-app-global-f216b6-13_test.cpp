// Test for batch g1-game-app-global-f216b6-13. Covers the language resolution of NativeSetOptions (ResolveLanguageOption)
// and the save-slot time format of NativeGetSaveSlotDetails (SaveSlotTimeFormat), both in
// dh2/global/native_player_info_options.hpp. The natives themselves are PARTIAL and need the gameswf value API, so they
// are not called here. Exit status 0 means every check passed.
#include <cstdio>
#include <cstring>

#include "dh2/global/native_player_info_options.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void CheckLanguage(int requested, bool korean, int langKor, int langCurr, int expected, const char* what) {
    Check(ResolveLanguageOption(requested, korean, langKor, langCurr) == expected, what);
}

void CheckFormat(int language, const char* expected, const char* what) {
    Check(std::strcmp(SaveSlotTimeFormat(language), expected) == 0, what);
}

}  // namespace

int main() {
    // Non-Korean build, lang_curr unset (-1): the requested value is stored unchanged.
    CheckLanguage(1, false, 0, -1, 1, "unset lang_curr keeps language 1");
    CheckLanguage(2, false, 0, -1, 2, "unset lang_curr keeps language 2");
    CheckLanguage(3, false, 0, -1, 3, "unset lang_curr keeps language 3 (no flag)");
    CheckLanguage(6, false, 0, -1, 6, "unset lang_curr keeps language 6 (no current language 3/4/6 rule)");

    // Requested 6 with the current language 3 or 4 maps to 4 or 5.
    CheckLanguage(6, false, 0, 3, 4, "requested 6 while current 3 -> 4");
    CheckLanguage(6, false, 0, 4, 5, "requested 6 while current 4 -> 5");

    // Requested 3 with the current language 6 or 5 maps to 5 or 4.
    CheckLanguage(3, false, 0, 6, 5, "requested 3 while current 6 -> 5");
    CheckLanguage(3, false, 0, 5, 4, "requested 3 while current 5 -> 4");

    // The flag rules need the requested value 6 (current 3 or 4) and the other rules need the requested value 3.
    CheckLanguage(3, false, 0, 3, 3, "requested 3 while current 3 keeps 3 (flag is off)");
    CheckLanguage(4, false, 0, 4, 4, "requested 4 while current 4 keeps 4 (flag is off)");
    CheckLanguage(6, false, 0, 5, 6, "requested 6 while current 5 keeps 6");
    CheckLanguage(6, false, 0, 6, 6, "requested 6 while current 6 keeps 6");

    // Korean build: lang_kor 0 forces the value to 5 and lang_kor 5 forces it to 0.
    CheckLanguage(2, true, 0, 2, 5, "Korean lang_kor 0 forces 5");
    CheckLanguage(2, true, 0, -1, 5, "Korean lang_kor 0 with unset lang_curr forces 5");
    CheckLanguage(2, true, 5, 2, 0, "Korean lang_kor 5 forces 0");

    // Korean build with another lang_kor: the flag comes from the requested value, as in the non-Korean build.
    CheckLanguage(6, true, 1, 3, 4, "Korean lang_kor 1, requested 6, current 3 -> 4");
    CheckLanguage(3, true, 2, 5, 4, "Korean lang_kor 2, requested 3, current 5 -> 4");
    CheckLanguage(3, true, 0, 6, 5, "Korean lang_kor 0 forces 5 before the current-6 rule (no match, stays 5)");

    // Save-slot time formats follow the language switch of NativeGetSaveSlotDetails.
    CheckFormat(1, "%d/%m     %H:%M", "language 1 is day/month");
    CheckFormat(3, "%d/%m     %H:%M", "language 3 is day/month");
    CheckFormat(7, "%d/%m     %H:%M", "language 7 is day/month");
    CheckFormat(2, "%d.%m.     %H:%M", "language 2 is day.month.");
    CheckFormat(4, "%m.%d.     %H:%M", "language 4 is month.day.");
    CheckFormat(5, "%m.%d.     %H:%M", "language 5 is month.day.");
    CheckFormat(6, "%m.%d.     %H:%M", "language 6 is month.day.");
    CheckFormat(0, "%m/%d     %H:%M", "language 0 uses the default month/day");
    CheckFormat(8, "%m/%d     %H:%M", "language 8 uses the default month/day");
    CheckFormat(-1, "%m/%d     %H:%M", "language -1 uses the default month/day");

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-13 tests: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-global-f216b6-13 tests: %d failure(s)\n", g_failures);
    return 1;
}
