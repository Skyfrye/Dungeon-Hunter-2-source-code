// Combat formula state and CF_SetCombatants (<global>). The state is file-static in the original (ELF local
// symbols in .bss, 0x9a29bc to 0x9a29d3). The CF_ batches read and write it, so it is declared here and defined
// once: s_attacker, s_defender, s_element, s_offHanded and s_isSkill in
// game-app/src/g1-game-app-global-f216b6-2.cpp; s_ad_dlevel, s_da_dlevel, s_isBlocked and s_isCritical in
// game-app/src/g1-game-app-global-f216b6-3.cpp.
#pragma once

class Character;

extern Character* s_attacker;   // 0x9a29bc, attacker of the last CF_SetCombatants
extern Character* s_defender;   // 0x9a29c0
extern int s_ad_dlevel;         // 0x9a29c4, attacker minus defender level difference
extern int s_da_dlevel;         // 0x9a29c8, defender minus attacker level difference (the negation)
extern int s_element;           // 0x9a29cc
extern bool s_offHanded;        // 0x9a29d0 (one byte in the original)
extern bool s_isSkill;          // 0x9a29d1
extern bool s_isBlocked;        // 0x9a29d2
extern bool s_isCritical;       // 0x9a29d3

// 0x3b059c CF_SetCombatants(Character*, Character*, int, bool, bool)
int CF_SetCombatants(Character* attacker, Character* defender, int element, bool offHanded, bool isSkill);
