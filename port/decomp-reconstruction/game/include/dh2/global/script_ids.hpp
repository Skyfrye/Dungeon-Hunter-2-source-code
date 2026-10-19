// Free <global> helpers that turn script names into ScriptManager ids (batch g1-game-app-GameEvent-9380de-0).
#pragma once

// 0x47fa34 TempHackScriptIDAreStrings(char const*). Returns -1 when name is null or has no '.'; otherwise the id of
// the text after the first '.' in ScriptManager::s_inst (GetIDFromName with searchAll false). Its core-platform ledger
// row is "skipped" (it needed ScriptManager, which is declared now in dh2/ScriptManager.hpp). No definition is in the
// tree yet; the integrator or the <global> batch that owns it defines it.
int TempHackScriptIDAreStrings(const char* name);
