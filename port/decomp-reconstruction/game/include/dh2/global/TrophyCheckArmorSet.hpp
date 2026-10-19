// Free <global> armor-set trophy checks (batch g1-game-app-global-f216b6-4). ItemInventory::TrophyCheckArmorSet
// calls them in turn. Each one looks at the five equipment slots 3, 4, 8, 0 and 7 of the inventory and returns the
// Arrays::TrophyTable member id of the armor set it matches (Arrays::GetMemberIDByString<Arrays::TrophyTable>),
// or -1 when the set is not complete. The return type is int in the original.
#pragma once

class ItemInventory;

int TrophyCheckArmorSetDecay(ItemInventory* inventory);      // 0x3fc6e8, "gear_necromancer"
int TrophyCheckArmorSetPhantasm(ItemInventory* inventory);   // 0x3fc790, "gear_illusionist"
int TrophyCheckArmorSetShadow(ItemInventory* inventory);     // 0x3fc83c, "gear_assassin"
int TrophyCheckArmorSetMarksman(ItemInventory* inventory);   // 0x3fc8e8, "gear_archer"
int TrophyCheckArmorSetAngelic(ItemInventory* inventory);    // 0x3fc994, "gear_paladin"
int TrophyCheckArmorSetRage(ItemInventory* inventory);       // 0x3fca40, "gear_berserker"
int TrophyCheckArmorSetArchmage(ItemInventory* inventory);   // 0x3fcaec, "gear_mage"
int TrophyCheckArmorSetJester(ItemInventory* inventory);     // 0x3fcc98, "gear_rogue"
int TrophyCheckArmorSetLordly(ItemInventory* inventory);     // 0x3fce48, "gear_warrior"
