// IsMultiplayerGame() (<global>) and the PlayerManager global it reads.
#pragma once

class PlayerManager;

// The PlayerManager instance (ELF 0x99f76c, unnamed in the symbols; a pointer, read as dword_99F76C). Its
// definition belongs to the globals batch.
extern PlayerManager*& dword_99F76C;  // a reference to Singleton<Application>::s_inst.m_playerManager (+0x40), defined in game-app/src/link1_ApplicationWords.cpp (link-1)

bool IsMultiplayerGame();  // 0x3a42f4
