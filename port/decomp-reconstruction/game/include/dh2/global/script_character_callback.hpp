// Script_CharacterState_Callback (<global>, batch g1-game-app-global-f216b6-18). Resolves the character or character
// group named by a script command and hands each ObjectBase to a callback. The name "All" (case-insensitive) walks the
// whole object list; any other name is looked up with ObjectManager::GetObjectByName and the single object is passed.
// Callers: Script_MarkCharacterAsScripted (Set and Unset), see dh2/Script_MarkCharacterAsScripted.hpp.
#pragma once

class ObjectBase;

// 0x4594a8 void Script_CharacterState_Callback(char const*, int, void (*)(ObjectBase*))
void Script_CharacterState_Callback(const char* name, int arg, void (*callback)(ObjectBase*));
