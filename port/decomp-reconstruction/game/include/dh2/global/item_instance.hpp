// Free <global> helpers used by the ItemInstance text code (batch g1-game-items-save-ItemInstance-594b18-1).
#pragma once

class StringManager;

// dword_99F760: the StringManager of the Application singleton (Singleton<Application>::s_inst + 0x34, the word
// Application::m_stringManager at Application.hpp +0x34). The singleton has no accessor in the tree yet; the integrator
// defines this next to ApplicationGetPyDataConstants (dh2/global/charai_ai.hpp).
StringManager* ApplicationGetStringManager();
