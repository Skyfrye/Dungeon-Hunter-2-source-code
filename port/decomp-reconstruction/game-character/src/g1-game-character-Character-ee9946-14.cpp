// Batch g1-game-character-Character-ee9946-14 (Character, part 15 of 20): two Lua bindings (_MoveTo, _WarpTo) and
// eighteen savegame accessors (SG_*). Declarations are in dh2/Character.hpp, and the PlayerSavegame members come from
// dh2/PlayerSavegame.hpp.
//
// The SG_* accessors are thin wrappers over m_savegame (the PlayerSavegame pointer at Character +0x14e8). Without a
// savegame each one does nothing, or returns -1, false or null. With one, it reads or writes one PlayerSavegame member
// (offsets in the comments). Two points:
//   - SG_SetLevelId and SG_SetLevelEntryPoint take a difficulty. -1 means the static PlayerSavegame::m_difficultyLevel
//     (the difficulty the game runs at). SG_SetUseSpawnPoint always uses the static difficulty.
//   - SG_GetPlayerName returns the word at PlayerSavegame +0x2c (asm 0x3bb7e8: LDR R0, [R0,#0x2C]). That word is the
//     text pointer of the name, which sits 20 bytes into the 24-byte m_name at +0x18. PlayerSavegame::SG_GetPlayerName
//     (slot, 0x468470) reads the same word with strlen and copies the characters. The reconstruction returns
//     m_name.c_str(), the host string's text.
//
// Status: the 18 SG_* accessors are reconstructed. _MoveTo and _WarpTo (batch r2a-game-character-Character-ee9946-8) are
// reconstructed in place from the Hex-Rays listings and the assembly; their argument helpers are in
// dh2/global/character_lua_bindings.hpp.

#include "core-platform/memory.hpp"  // before Character.hpp, which renames MemoryHintState while it includes net-transport
#include "dh2/Character.hpp"
#include "dh2/PlayerSavegame.hpp"
#include "dh2/global/Vec3f_K.hpp"  // Vec3f_K, the (0, 0, 1) up vector of the look-frame point
#include "dh2/global/character_lua_bindings.hpp"
#include "dh2/sfc/script/lua/Arguments.hpp"
#include "dh2/sfc/script/lua/ReturnValues.hpp"
#include "dh2/sfc/script/lua/Value.hpp"
#include "dh2/v2Controller.hpp"
#include "dh2/v2Controllable.hpp"

// 0x3bb728 _ZN9Character10SG_GetSlotEv
// Returns PlayerSavegame +0x04 (m_slot), or -1 without a savegame.
int Character::SG_GetSlot() {
    if (m_savegame) return static_cast<int>(m_savegame->m_slot);
    return -1;
}

// 0x3bb740 _ZN9Character10SG_SetSlotEj
// Stores the slot in PlayerSavegame +0x04 (m_slot).
void Character::SG_SetSlot(unsigned int slot) {
    if (m_savegame) m_savegame->m_slot = slot;
}

// 0x3bb754 _ZN9Character12SG_SetPlayerEPS_
// Writes the owning Character to three places in the savegame: the quest log that is the volatile one (+0x174, the
// m_owner word at the end of m_volatileQuestLog), m_player (+0x10), and the quest log (+0x114, the m_owner word at the
// end of m_questLog). The order is the one in the Hex-Rays listing.
void Character::SG_SetPlayer(Character* player) {
    if (m_savegame) {
        m_savegame->m_volatileQuestLog.m_owner = player;
        m_savegame->m_player = player;
        m_savegame->m_questLog.m_owner = player;
    }
}

// 0x3bb770 _ZN9Character8SG_BlockEb
// Stores the flag in PlayerSavegame +0x0c (m_saveBlocked). SG_Save skips the write while it is set.
void Character::SG_Block(bool blocked) {
    if (m_savegame) m_savegame->m_saveBlocked = blocked;
}

// 0x3bb784 _ZN9Character12SG_IsBlockedEv
// Returns PlayerSavegame +0x0c (m_saveBlocked), or false without a savegame.
bool Character::SG_IsBlocked() {
    if (m_savegame) return m_savegame->m_saveBlocked;
    return false;
}

// 0x3bb798 _ZN9Character19SG_SetUseSpawnPointEb
// Stores the flag in the byte of PlayerSavegame +0x4c for the static difficulty (m_useSpawnPoint[difficulty], which is
// at +0x4c + difficulty). The Hex-Rays listing returns the constant 6812 in this branch. The void signature drops it.
void Character::SG_SetUseSpawnPoint(bool use) {
    if (m_savegame) m_savegame->m_useSpawnPoint[PlayerSavegame::m_difficultyLevel] = use;
}

// 0x3bb7d0 _ZN9Character16SG_RedoQuestSyncEv
// Clears PlayerSavegame +0x14 (m_questSynced), so the next quest sync is redone.
void Character::SG_RedoQuestSync() {
    if (m_savegame) m_savegame->m_questSynced = false;
}

// 0x3bb7e8 _ZNK9Character16SG_GetPlayerNameEv
// Returns the player name text, which the original reads from the word at PlayerSavegame +0x2c (see the file comment).
// Returns null without a savegame.
const char* Character::SG_GetPlayerName() const {
    if (m_savegame) return m_savegame->m_name.c_str();
    return nullptr;
}

// 0x3bb7fc _ZNK9Character17SG_GetPlayerClassEv
// Returns PlayerSavegame +0x34 (m_playerClass), or -1 without a savegame.
int Character::SG_GetPlayerClass() const {
    if (m_savegame) return m_savegame->m_playerClass;
    return -1;
}

// 0x3bb814 _ZN9Character17SG_SetPlayerClassEi
// Stores the class index in PlayerSavegame +0x34 (m_playerClass).
void Character::SG_SetPlayerClass(int playerClass) {
    if (m_savegame) m_savegame->m_playerClass = playerClass;
}

// 0x3bb828 _ZN9Character17SG_GetPlayerLevelEv
// Returns PlayerSavegame +0x30 (m_playerLevel), or -1 without a savegame.
int Character::SG_GetPlayerLevel() {
    if (m_savegame) return m_savegame->m_playerLevel;
    return -1;
}

// 0x3bb840 _ZN9Character17SG_SetPlayerLevelEi
// Stores the level in PlayerSavegame +0x30 (m_playerLevel).
void Character::SG_SetPlayerLevel(int playerLevel) {
    if (m_savegame) m_savegame->m_playerLevel = playerLevel;
}

// 0x3bb854 _ZN9Character13SG_SetLevelIdEii
// Stores levelId in the int at PlayerSavegame +0x50 + 4 * difficulty. difficulty -1 means the static difficulty
// (Hex-Rays: "a3 == -1" selects PlayerSavegame::m_difficultyLevel + 20 in 4-byte units). The array is unk_50 in the
// PlayerSavegame header, whose comment says these functions never write it: a layout request asks for a rename.
void Character::SG_SetLevelId(int levelId, int difficulty) {
    if (m_savegame) {
        const int d = (difficulty == -1) ? PlayerSavegame::m_difficultyLevel : difficulty;
        m_savegame->unk_50[d] = levelId;
    }
}

// 0x3bb89c _ZN9Character21SG_SetLevelEntryPointEii
// Stores entry in PlayerSavegame +0x40 + 4 * difficulty (m_levelEntryPoint[difficulty]). difficulty -1 means the static
// difficulty, as in SG_SetLevelId.
void Character::SG_SetLevelEntryPoint(int entryPoint, int difficulty) {
    if (m_savegame) {
        const int d = (difficulty == -1) ? PlayerSavegame::m_difficultyLevel : difficulty;
        m_savegame->m_levelEntryPoint[d] = entryPoint;
    }
}

// 0x3bb8e4 _ZN9Character20SG_GetGameDifficultyEv
// Returns the static difficulty (PlayerSavegame::m_difficultyLevel) when there is a savegame, or -1 without one.
int Character::SG_GetGameDifficulty() {
    if (m_savegame) return PlayerSavegame::m_difficultyLevel;
    return -1;
}

// 0x3bb918 _ZN9Character28SG_GetGameDifficultyUnlockedEv
// Returns PlayerSavegame +0x3c (m_unlockedDifficulty), or -1 without a savegame.
int Character::SG_GetGameDifficultyUnlocked() {
    if (m_savegame) return m_savegame->m_unlockedDifficulty;
    return -1;
}

// 0x3bb930 _ZN9Character28SG_SetGameDifficultyUnlockedEi
// Raises PlayerSavegame +0x3c (m_unlockedDifficulty) to d when d is higher. It never lowers it.
void Character::SG_SetGameDifficultyUnlocked(int d) {
    if (m_savegame && d > m_savegame->m_unlockedDifficulty) m_savegame->m_unlockedDifficulty = d;
}

// 0x3bb950 _ZN9Character20SG_SetGameDifficultyEi
// Sets the static difficulty (PlayerSavegame::m_difficultyLevel) to d, but only when there is a savegame and d is not
// above its unlocked difficulty (+0x3c).
void Character::SG_SetGameDifficulty(int d) {
    if (m_savegame && d <= m_savegame->m_unlockedDifficulty) PlayerSavegame::m_difficultyLevel = d;
}

// 0x3bada8 _ZN9Character7_MoveToERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Dispatch from the Hex-Rays listing, with the count test and the tag tests checked in the assembly. One argument: a light
// userdata (tag 2) or userdata (tag 7) gives Cmd_MoveTo(target) on the controller (+0x378), target = getUserData(args[0]);
// any other tag does nothing. Two arguments do nothing. Three or more arguments need a number in args 0, 1 or 2. The point is
// (getNumber(args[0]), getNumber(args[1]), getNumber(args[2])). When a fourth argument is a true boolean, the point is the
// look-frame point LookFrameOffset(self m_position, look, Vec3f_K, t, f, u), with look = GameObject::GetLookAtVec(self),
// t, f, u = args 0, 1, 2. Then Cmd_MoveTo(point) runs on the controller.
void Character::_MoveTo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* userData) {
    Character* self = static_cast<Character*>(userData);
    const std::size_t count = LuaArgCount(args);
    if (count == 1) {
        if (!LuaArgHasTag(args, 0, kLuaTagLightUserData) && !LuaArgHasTag(args, 0, kLuaTagUserData)) {
            return;
        }
        GameObject* target = static_cast<GameObject*>(args[0].getUserData());
        self->v2Controllable::m_controller->Cmd_MoveTo(target);
        return;
    }
    if (count <= 2) {
        return;
    }
    if (!LuaArgHasTag(args, 0, kLuaTagNumber) && !LuaArgHasTag(args, 1, kLuaTagNumber) &&
        !LuaArgHasTag(args, 2, kLuaTagNumber)) {
        return;
    }
    Point3D<float> point{0.0f, 0.0f, 0.0f};
    if (count > 3 && LuaArgHasTag(args, 3, kLuaTagBoolean) && args[3].getBool()) {
        Point3D<float> look{0.0f, 0.0f, 0.0f};
        self->GameObject::GetLookAtVec(look);
        point = LookFrameOffset(self->GameObject::m_position, look, Vec3f_K, args[0].getNumber(), args[1].getNumber(),
                                args[2].getNumber());
    } else {
        point = Point3D<float>{args[0].getNumber(), args[1].getNumber(), args[2].getNumber()};
    }
    self->v2Controllable::m_controller->Cmd_MoveTo(point);
}

// 0x3bb268 _ZN9Character7_WarpToERKN3sfc6script3lua9ArgumentsERNS2_12ReturnValuesEPv
// Same dispatch as _MoveTo. Two differences, checked in the assembly (0x3bb268): one argument (a light userdata or userdata)
// gives Cmd_WarpTo(&target->m_position), target = getUserData(args[0]), and the point form gives Cmd_WarpTo(point). The
// look-frame point is LookFrameOffset as in _MoveTo.
void Character::_WarpTo(const sfc::script::lua::Arguments& args, sfc::script::lua::ReturnValues& /*ret*/, void* userData) {
    Character* self = static_cast<Character*>(userData);
    const std::size_t count = LuaArgCount(args);
    if (count == 1) {
        if (!LuaArgHasTag(args, 0, kLuaTagLightUserData) && !LuaArgHasTag(args, 0, kLuaTagUserData)) {
            return;
        }
        GameObject* target = static_cast<GameObject*>(args[0].getUserData());
        self->v2Controllable::m_controller->Cmd_WarpTo(target->m_position);
        return;
    }
    if (count <= 2) {
        return;
    }
    if (!LuaArgHasTag(args, 0, kLuaTagNumber) && !LuaArgHasTag(args, 1, kLuaTagNumber) &&
        !LuaArgHasTag(args, 2, kLuaTagNumber)) {
        return;
    }
    Point3D<float> point{0.0f, 0.0f, 0.0f};
    if (count > 3 && LuaArgHasTag(args, 3, kLuaTagBoolean) && args[3].getBool()) {
        Point3D<float> look{0.0f, 0.0f, 0.0f};
        self->GameObject::GetLookAtVec(look);
        point = LookFrameOffset(self->GameObject::m_position, look, Vec3f_K, args[0].getNumber(), args[1].getNumber(),
                                args[2].getNumber());
    } else {
        point = Point3D<float>{args[0].getNumber(), args[1].getNumber(), args[2].getNumber()};
    }
    self->v2Controllable::m_controller->Cmd_WarpTo(point);
}
