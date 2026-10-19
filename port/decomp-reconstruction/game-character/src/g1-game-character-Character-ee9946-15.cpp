// Batch g1-game-character-Character-ee9946-15 (part 16 of 20 of Character): the savegame wrappers of Character.
// Each SG_* method reads m_savegame (the PlayerSavegame at +0x14e8). A null savegame makes a getter return its
// fallback (0, -1 or false) and a setter do nothing. A difficulty argument of -1 is replaced by the static
// PlayerSavegame::m_difficultyLevel before the call. The two quest section handlers are thunks: the binary is one
// branch to the PlayerSavegame handler with the arguments unchanged. Declarations come from dh2/Character.hpp and
// dh2/PlayerSavegame.hpp. The ledger rows in game-character/ledger.d/g1-game-character-Character-ee9946-15.csv
// repeat the status notes.

#include <cstdint>

#include "dh2/Character.hpp"
#include "dh2/IFileStream.hpp"
#include "dh2/PlayerSavegame.hpp"

namespace {

// The original's "-1 means the current difficulty" argument rule:
//   if (difficulty == -1) difficulty = PlayerSavegame::m_difficultyLevel;
int ResolveDifficulty(int difficulty) {
    return difficulty == -1 ? PlayerSavegame::m_difficultyLevel : difficulty;
}

}  // namespace

// 0x3bb98c Character::SG_GetCurrentFaerieId(int) const
// Returns m_currentFaery[difficulty] (PlayerSavegame +0xac, one word per difficulty). A null savegame returns 0.
int Character::SG_GetCurrentFaerieId(int difficulty) const {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return 0;
    }
    return save->m_currentFaery[ResolveDifficulty(difficulty)];
}

// 0x3bb9d8 Character::SG_SetCurrentFaerie(unsigned int, int)
// Stores the faery id in m_currentFaery[difficulty] (PlayerSavegame +0xac).
void Character::SG_SetCurrentFaerie(unsigned int faery, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->m_currentFaery[ResolveDifficulty(difficulty)] = static_cast<std::int32_t>(faery);
    }
}

// 0x3bba20 Character::SG_GetFaerieCount(int)
// Returns m_faeryCount[difficulty] (PlayerSavegame +0xa0, one count per difficulty). A null savegame returns -1.
int Character::SG_GetFaerieCount(int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return -1;
    }
    return static_cast<int>(save->m_faeryCount[ResolveDifficulty(difficulty)]);
}

// 0x3bba70 Character::SG_UnlockAllFastTravels()
void Character::SG_UnlockAllFastTravels() {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_UnlockAllFastTravels();
    }
}

// 0x3bba84 Character::SG_SetFastTravelIdUnlocked(char const*, bool, int)
void Character::SG_SetFastTravelIdUnlocked(const char* name, bool unlocked, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_SetFastTravelIdUnlocked(name, unlocked, ResolveDifficulty(difficulty));
    }
}

// 0x3bbad0 Character::SG_GetFastTravelIdUnlocked(char const*, int)
bool Character::SG_GetFastTravelIdUnlocked(const char* name, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return false;
    }
    return save->SG_GetFastTravelIdUnlocked(name, ResolveDifficulty(difficulty));
}

// 0x3bbb08 Character::SG_GetFastTravelIdUnlocked(int, int)
bool Character::SG_GetFastTravelIdUnlocked(int id, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return false;
    }
    return save->SG_GetFastTravelIdUnlocked(id, ResolveDifficulty(difficulty));
}

// 0x3bbb40 Character::__SaveQuests(IFileStream*, void*)
// Thunk: the binary is one branch to PlayerSavegame::__SaveQuests(IStreamBase*, void*) with r0 and r1 unchanged (asm checked). IFileStream is an IStreamBase (dh2/IFileStream.hpp), so
// the argument converts to the base without changing the pointer.
void Character::__SaveQuests(IFileStream* stream, void* user) {
    PlayerSavegame::__SaveQuests(stream, user);
}

// 0x3bbb44 Character::__LoadQuests(IStreamBase*, void*)
// Thunk: one branch to PlayerSavegame::__LoadQuests(IStreamBase*, void*) (asm checked).
void Character::__LoadQuests(IStreamBase* stream, void* user) {
    PlayerSavegame::__LoadQuests(stream, user);
}

// 0x3bbb48 Character::SG_SetFaerieState(unsigned int, int, int)
// Calls PlayerSavegame::SG_SetFaerieState(id, state, difficulty). Hex-Rays types the state as char and the symbol
// types it as int; the symbol is used.
void Character::SG_SetFaerieState(unsigned int faery, int state, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_SetFaerieState(faery, state, ResolveDifficulty(difficulty));
    }
}

// 0x3bbb94 Character::SG_IsFaerieUnlocked(unsigned int, int)
bool Character::SG_IsFaerieUnlocked(unsigned int faery, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return false;
    }
    return save->SG_IsFaerieUnlocked(faery, ResolveDifficulty(difficulty));
}

// 0x3bbbcc Character::SG_SetFaerieLevel(unsigned int, int, int)
// Hex-Rays types the level as __int16 and the symbol as int; the symbol is used. PlayerSavegame stores it in a
// 16-bit field.
void Character::SG_SetFaerieLevel(unsigned int faery, int level, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_SetFaerieLevel(faery, level, ResolveDifficulty(difficulty));
    }
}

// 0x3bbc18 Character::SG_GetFaerieLevel(unsigned int, int)
// A null savegame returns -1.
int Character::SG_GetFaerieLevel(unsigned int faery, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return -1;
    }
    return save->SG_GetFaerieLevel(faery, ResolveDifficulty(difficulty));
}

// 0x3bbc58 Character::SG_SetSaveDate()
// The save time PlayerSavegame::SG_SetSaveDate returns is not used by this wrapper, as in the original.
void Character::SG_SetSaveDate() {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_SetSaveDate();
    }
}

// 0x3bbc6c Character::SG_IsLevelLocked(int, int)
bool Character::SG_IsLevelLocked(int level, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return false;
    }
    return save->SG_IsLevelLocked(level, ResolveDifficulty(difficulty));
}

// 0x3bbca4 Character::SG_SetLevelState(int, int, int)
// Calls PlayerSavegame::SG_SetLevelState(level, state, difficulty), arguments in the same order (the binary passes a2, a3, a4
// through unchanged; a2 is the level id, as the PlayerSavegame assert text shows).
void Character::SG_SetLevelState(int level, int state, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_SetLevelState(level, state, ResolveDifficulty(difficulty));
    }
}

// 0x3bbcf0 Character::SG_GetLevelState(int, int)
// A null savegame returns -1.
int Character::SG_GetLevelState(int level, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return -1;
    }
    return save->SG_GetLevelState(level, ResolveDifficulty(difficulty));
}

// 0x3bbd30 Character::SG_IsMapLocSeen(int, int)
bool Character::SG_IsMapLocSeen(int location, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return false;
    }
    return save->SG_IsMapLocSeen(location, ResolveDifficulty(difficulty));
}

// 0x3bbd68 Character::SG_IsMapLocLocked(int, int)
bool Character::SG_IsMapLocLocked(int location, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save == nullptr) {
        return false;
    }
    return save->SG_IsMapLocLocked(location, ResolveDifficulty(difficulty));
}

// 0x3bbda0 Character::SG_SetMapLocState(int, int, int)
// Calls PlayerSavegame::SG_SetMapLocState(location, state, difficulty), arguments in the same order (a2 is the map
// location id, as the PlayerSavegame assert text shows).
void Character::SG_SetMapLocState(int location, int state, int difficulty) {
    PlayerSavegame* save = m_savegame;
    if (save != nullptr) {
        save->SG_SetMapLocState(location, state, ResolveDifficulty(difficulty));
    }
}
