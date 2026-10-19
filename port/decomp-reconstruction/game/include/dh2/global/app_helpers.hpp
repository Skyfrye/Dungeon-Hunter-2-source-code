// Free <global> functions of the application layer that are not gameswf natives (batch
// g1-game-app-global-f216b6-5): the MenuBase name order, the dialog message list and the playable class test.
// Definitions: game-app/src/g1-game-app-global-f216b6-5.cpp.
#pragma once

#include <vector>

#include "dh2/DialogMsg.hpp"

class MenuBase;

// 0x41f548 MenuBaseStar_sortlessthen(MenuBase const*, MenuBase const*): strict name order, null sorts first
bool MenuBaseStar_sortlessthen(const MenuBase* a, const MenuBase* b);
// 0x433f04 GetDialogMsgListById(int, std::vector<DialogMsg, std::allocator<DialogMsg> >&)
bool GetDialogMsgListById(int dialogId, std::vector<DialogMsg>& out);
// 0x439c34 IsPlayableClassID(int): true for the playable class ids 263, 325 and 290
bool IsPlayableClassID(int classId);
