// Screen size globals (<global>), declarations only. Batch g1-game-ui-pack3-9e17e4-0 reads both: the MenuFlash2DCamera
// constructor halves them for the camera centre. Width_Screen is also declared in global/MenuManagerGlobals.hpp (same
// symbol, same type); the two declarations agree. The definitions belong to the category that owns the values and are
// not in the tree yet.
#pragma once

// Symbol Width_Screen, 4 bytes (.data, 0x99b114): the screen width that the menu code compares with 854, 960 and 800.
extern int Width_Screen;

// Symbol Height_Screen, 4 bytes (.data, 0x99b118): the screen height, the word after Width_Screen.
extern int Height_Screen;

// Port addition (UI2, 2026-10-17). DOCUMENTED DEVIATION from the original's stretch (TRACK-B.md decision 15): the original only knew 800/854/960 wide screens and otherwise 1280x720; the menu movies (4:3 stage with
// non-uniform authored scales) and the level camera (aspect 1.6677) are designed for a 16:9 screen and the binary stretches them to
// whatever the surface is. On a surface of another aspect (21:9 phone, square foldable) that stretches everything. These helpers give the
// 16:9 design area and the factor that keeps the 3D cameras undistorted (vertical field of view unchanged, more or less world at the sides).
// Port settings (core-platform/port_settings.hpp, written by the Java session dialog): "screenfit" 0 = the binary's stretch, 1 = the fit
// (default); "hudscale" HUD size in percent, 0 = automatic. Defined in core-platform/src/port_settings.cpp; applied on the game thread.
extern int g_dh2ScreenFitMode;
extern int g_dh2HudScalePercent;

#if defined(__ANDROID__) || defined(DH2_HOST_RUNNER)
inline bool ScreenUsesAspectFit() {
    return g_dh2ScreenFitMode != 0 && Width_Screen > 0 && Height_Screen > 0 && Width_Screen != 800 && Width_Screen != 854 &&
           Width_Screen != 960;
}
// real aspect / 16:9; 1.0 on a 16:9 surface and on the original's own screens
inline float ScreenAspectScale() {
    return ScreenUsesAspectFit() ? (static_cast<float>(Width_Screen) / static_cast<float>(Height_Screen)) * (9.0f / 16.0f) : 1.0f;
}
#else
inline bool ScreenUsesAspectFit() { return false; }
inline float ScreenAspectScale() { return 1.0f; }
#endif

// Offset (surface pixels) of the centred 16:9 Flash box that MenuFlash2DCamera::Update fits the movies into; 0 when the fit is off or the
// surface is 16:9. Code that converts between surface pixels and stage coordinates by hand (3D panes inside the movies, world-anchored Flash
// clips) adds / subtracts it: the original stretched the stage over the whole surface, where the offset is 0.
inline int ScreenFitOffsetX() {
    return (ScreenUsesAspectFit() && Width_Screen * 9 > Height_Screen * 16) ? (Width_Screen - Height_Screen * 16 / 9) / 2 : 0;
}
inline int ScreenFitOffsetY() {
    return (ScreenUsesAspectFit() && Width_Screen * 9 < Height_Screen * 16) ? (Height_Screen - Width_Screen * 9 / 16) / 2 : 0;
}
// Rescales the active 3D camera after a surface resize (game-world/src/g1-game-world-CameraBase-b32e3c-0.cpp).
void ScreenAspectRescaleActiveCamera(float oldScale);

// Port additions (UI5, TRACK-B.md decision 15; game-ui/src/screen_fit_port.cpp). The HUD movie gets its own box: the 16:9 fit scaled by
// HudScalePercent() about the surface centre (bigger buttons on a tablet-shaped screen; the corners are re-anchored to the real edges by
// HudAnchorUpdate), so code that converts surface pixels to stage units must use the box of the movie it writes into, not the menu fit.
int HudScalePercent();                                              // 100 unless the fit is on; the setting, or 125 on a tablet-shaped surface
void SetFlashBoxForRoot(const void* root, int x, int y, int width, int height);  // MenuFlash2DCamera::Update records each movie's box
int FlashBoxOffsetX(const void* root);                              // the box origin of that movie (ScreenFitOffsetX() when unknown)
int FlashBoxOffsetY(const void* root);
int FlashBoxWidth(const void* root);                                // the box size (the fit box when unknown)
int FlashBoxHeight(const void* root);
// True while a menu page covers the HUD (a page of the charmenu/menus movies is up, or the HUD movie shows its own pause page): the
// HUD anchoring is released, so the HUD sits under the page as on the original's stretched screen.
bool HudCoveredByPage();
// The HUD movie shows one of its own pages (the pause menu): the HUD movie is then stretched over the surface like the menus.
bool HudMoviePageUp();

// Port addition (UI4, TRACK-B.md decision 15): HUD corner anchoring and the stick touch zone, both only where the 16:9 fit applies.
// HudAnchorUpdate (game-ui/.../HUDControls) moves the HUD movie's elements toward the real screen edges by the surface margin of the fit;
// it returns true while it does.
class MenuFX;
bool HudAnchorUpdate(MenuFX* hud, bool release);
// The virtual stick may be grabbed from the bottom-left quarter of the surface (RenderFX::UpdateCursor, HUD movie only). One switch for
// the zone: it is on wherever the fit is, so the original's own screen sizes keep the original stick.
inline bool ScreenUsesStickZone() { return ScreenUsesAspectFit(); }
namespace gameswf { class character; }
class RenderFX;
// The stick character when a pointer at surface pixel (x, y) of movie `fx`, whose normal hit is `hit`, should grab the virtual stick (see HUDControls), else null.
gameswf::character* HudStickZoneTarget(const RenderFX* fx, float x, float y, gameswf::character* hit);

// Port addition (UI6, not in the original; game-ui/.../HUDControls): per-element HUD size on the HUD customise page. A press on a layout
// element selects it; two medallions (+ / -, port art under data/port/) beside it change its size in steps of 10% (50..200%), kept in the
// port settings as hudelem.<HUDStyle>.<index>; Reset puts every element back to 100%. The sizes apply on every screen, fit or not.
// Port deviation (UI12; game-ui/src/screen_fit_pages.cpp): the menus are stretched over the surface as in the original; on a screen
// ratio with a section in data/port/ui_layouts.txt the hand-listed clips of each visible page get their 16:9 shape back. Called by
// MenuManager::Draw for every movie after its camera update. Inert when the fit is off or no section matches (16:9 included).
void MenuPageLayoutUpdate(MenuFX* movie, bool hudMovie);
void MenuPageLayoutForCursor(const RenderFX* fx);  // RenderFX::UpdateCursor: lay the movie out again before the hit test
bool MenuClipSurfaceCenter(const char* path, int* x, int* y);  // host runner: centre of a named menu clip in surface pixels
bool HudCustomizing();                                                     // the HUD customise page is up (false before HUDControls exists)
void HudCustomizeOverlayDraw();                                            // MenuManager::Draw, after the HUD movie, while customising
bool HudCustomizeOverlayHit(const RenderFX* fx, float x, float y, bool justPressed);  // RenderFX::UpdateCursor: true = the pointer is on a medallion (swallowed)

