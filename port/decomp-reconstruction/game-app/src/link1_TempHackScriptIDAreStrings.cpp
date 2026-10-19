// 0x47fa34 TempHackScriptIDAreStrings (link-1). Declared in dh2/global/script_ids.hpp.
#include <cstring>

#include "dh2/ScriptManager.hpp"
#include "dh2/global/script_ids.hpp"

// 0x47fa34 _Z26TempHackScriptIDAreStringsPKc
// -1 when name is null or has no '.'; otherwise ScriptManager::GetIDFromName on the text after the first '.' with
// searchAll false, on ScriptManager::s_inst (0x9a5fdc).
int TempHackScriptIDAreStrings(const char* name) {
    if (name) {
        const char* dot = std::strchr(name, '.');
        if (dot != nullptr) {
            return ScriptManager::s_inst.GetIDFromName(dot + 1, false);
        }
    }
    return -1;
}
