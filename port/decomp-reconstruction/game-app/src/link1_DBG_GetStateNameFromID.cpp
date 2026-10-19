// 0x47f6c8 DBG_GetStateNameFromID and its name table s_DBGquestStateIDToName (link-1).
#include "dh2/global/quest_state_names.hpp"

// 0x999848, 56 bytes (.data): the 14 v2QuestState names, in state order. The pointers are read from the binary and
// the strings from .rodata (0x8c93a0, 0x8ce3d0, 0x8ce380, 0x8ce370, 0x8ce3c0, 0x8ce360, 0x8bf2f0, 0x8ce3b0, 0x8ce350,
// 0x8cdb38, 0x8ce3a0, 0x8ce340, 0x8cbd80, 0x8ce390).
const char* s_DBGquestStateIDToName[14] = {
    "Locked",    "PostLocked", "PreAvailable", "Available",     "PostAvailable", "PreActive",  "Active",
    "PostActive", "PreCompleted", "Completed", "PostCompleted", "PreClosed",     "Closed",     "PostClosed",
};

// 0x47f6c8 _Z22DBG_GetStateNameFromIDi
// A value above 13 (compared as unsigned, so a negative value too) gives "unknown".
const char* DBG_GetStateNameFromID(int state) {
    if (static_cast<unsigned int>(state) > 0xD) {
        return "unknown";
    }
    return s_DBGquestStateIDToName[state];
}
