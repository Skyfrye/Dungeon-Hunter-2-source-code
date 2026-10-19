// Port settings (Track B, not in the original): a handful of player-facing switches that the original game has no option
// for, kept OUTSIDE the game's own option table (Arrays::GameOptionTable, SavegameManager::m_options) so the save data and
// the Flash options page stay exactly the original's. Stored as "key=value" lines in dh2_port.cfg next to the game data
// (Android: the app's files dir; host runner: $DH2_PORT_CFG when set). Environment variables DH2_<KEY> (upper case) override
// the file for one run (runner experiments).
//
// Keys (TRACK-B.md decision 15):
//   screenfit  0 = the binary's behaviour everywhere (the 16:9 UI stretched over the surface), 1 = tailored layout (default):
//              the menus are still stretched over the whole surface, and on a screen ratio listed in data/port/ui_layouts.txt
//              the listed menu elements get their 16:9 shape back (UI12); the HUD is anchored to the real screen edges. Only
//              matters on a surface that is not 16:9.
//   hudscale   HUD size in percent of the fit (100..200); 0 = automatic (125 on a tablet-shaped surface, else 100).
//   enemybar   1 = the targeted enemy's health bar follows the enemy (above its head, back to the HUD slot when off screen), 0 = the
//              original's fixed HUD slot (default 1; InfoHUDManager::FastUpdate).
//   hudelem.<HUDStyle>.<index>  size of one HUD layout element in percent (50..200, HUDControls customise page); any
//              other key of the form [A-Za-z0-9._-]{1,63} is accepted as an int 0..400 and kept in the file.
//
// Set() takes effect at the start of the next game frame (Apply() from appUpdate on the game thread, so the 3D camera can
// be rescaled with the old and new aspect in one place) and is written to the file at once.
#pragma once

namespace dh2port {

void Load();                                  // once at appInit; safe to call again
int Get(const char* key, int fallback);       // current value (applied)
void Set(const char* key, int value);         // from any thread; applied on the game thread by Apply()
bool Apply();                                 // game thread, once per frame: true when a setting changed this frame
int ScreenFitMode();                          // applied "screenfit" (0/1)
int HudScalePercentSetting();                 // applied "hudscale" (0 = auto)

}  // namespace dh2port
