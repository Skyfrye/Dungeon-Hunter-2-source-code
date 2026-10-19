// The ObjectManager instance global (ELF 0x99f764, read as dword_99F764 in the listings). Callers look objects up by
// name through it: ObjectManager::GetObjectByName(name, flags, active, type) is a member, called on this pointer.
// Batch g1-game-app-pack10-ec557a-0 (Script_SetStatic, Script_ShowActor). The definition belongs to the ObjectManager
// batches; no translation unit defines it yet.
#pragma once

class ObjectManager;

extern ObjectManager*& dword_99F764;  // dword_99F764, the ObjectManager instance: a reference to Singleton<Application>::s_inst.m_objectManager (+0x38), defined in game-app/src/link1_ApplicationWords.cpp (link-1)
