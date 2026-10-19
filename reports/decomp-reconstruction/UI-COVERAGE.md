# UI coverage (owner UI1, windowed runner, 1200x540, screenshots under build/own-ui1/r*/ and build/own-ui1/s/montage*.png)

| screen | status | evidence |
| --- | --- | --- |
| title / tap to continue | works | r1/a0 |
| main menu (start, options, info) | works | r1/a2, r6/f2 |
| single player / multiplayer / achievements | works; MP and achievements show the "no internet connection" dialog (as the original offline) | r6/f3, r7/* |
| new game: name keyboard (type, backspace), class select (warrior/rogue/mage) | works | r14-r16 |
| options (volumes, controls, HUD style, language, orientation) | works, language switch redraws, values persist after restart | r3-r5 |
| information: help (controls, classes, magic, stats, other stats, items, options, MP), about, twitter | works | r8-r10 |
| HUD (health/mana, potions, skills, pause, minimap-less hub) | works | r11/k00, r23 |
| pause menu (continue, help, options, main menu) | works | r11/k02 |
| hero/stats tab, + attributes | works (points spent, stats change) | r11/k04, r22 |
| inventory, weapon list, item compare | works | r11/k10, r12/m* |
| skills tab, upgrade confirm | works | r22/l2-l6 |
| faeries, quest journal, map tabs | render and respond | r11/k12-k14 |
| fast-travel panel, world map (drag) | works | r18-r20 |
| level-up banner, death skull screen, respawn | works | r43 |
| merchant: buy (gold deducted, item moves to inventory, list shrinks), sell (gold added, item removed), confirm dialog | works after fix 1 | r31, r42 |
| transmute, achievements online, MP lobby (needs network) | not reachable offline / not driven | - |

## Bugs fixed
1. `NativeGetParsedString` (game-app/src/g1-game-app-global-f216b6-13.cpp): string arguments of the parse list were pointers into a per-iteration `as_value` that died at the end of the loop. The buy dialog showed garbage ("Buy t color='#D49AFF'>... for LOBAL_THOUSANDS_GROUP_AT gold?"), nondeterministically. Strings are now copied into storage that lives for the whole call; the dialog reads "Buy Mercenary Armor for 2,300 gold?" in repeated runs.

## Closed against the binary (AS bytecode of dqcharmenu.swf, dumped with a small AS2 disassembler)
- Selling the equipped item: refused. The merchant script sets `btn_Action` to its `disabled` frame when the selected item has ItemEquipped / ItemEquippedOtherHand, so the SELL button does nothing. Ours behaves the same; no change needed (r38, r42).
- Merchant list rows: the list is a `ButtonsList` whose onButtonPress/onButtonRelease are empty defaults and the merchant script never overrides them; rows are selected only by scrolling (drag, or the up/down arrows). RenderFX::UpdateCursor with input behaviour 132 additionally focuses on hover only when the pointer moved. A bare tap not selecting a row matches the original. No change.
- Transmute (inventory slot list, non-equipped item): button shows value 170, confirm dialog "Transmute Mercenary Armor into gold?", gold +170, item removed (r46, r47). Drop button shown beside it.
- Level-up: banner shown, attribute points spent with + (points 6 -> 0, strength 10 -> 13, r22); quest journal shows Prison Break with description and Make Active (r48); map, faeries, stats tabs render.
- Text check over all captured screens: no KEY_NAME strings, no "#!SNL!#"/"#!WTF!#" in any log, numbers use the thousands separator, no overlapping or wrong glyphs seen (Russian/Italian/Ukrainian options pages included).

## Notes
- Merchant lists scroll and select by drag or arrows, as in the original.
