// MenuMinimap: the "menu_MapSheet" map page, a HUDMinimap singleton (GetInstance builds it as a function-local
// static). It adds no members and no new virtual slots. Its vtable is HUDMinimap's with the overrides listed
// below. Original 32-bit size is HUDMinimap's, at least 0x41c (1052); see HUDMinimap.hpp for the members.
// Reconstructed from libDungeonHunter2.so pseudocode (ctors 0x4350d8 / 0x43519c, dtors 0x435054 / 0x435088 /
// 0x4350a4, GetInstance 0x435118, Show 0x435308, RegisterDisplayCallback 0x43500c, RegisterToMenuManager 0x43503c,
// InitAll 0x434dc0, CreateMapCamera 0x434e38, DisableMapCamera 0x434df8, RenderMap 0x4353e4, vtable _ZTV11MenuMinimap).
#pragma once

#include "dh2/HUDMinimap.hpp"

class CameraBase;

namespace gameswf {
class render_state;
}  // namespace gameswf

class MenuMinimap : public HUDMinimap {
public:
    MenuMinimap();                                          // 0x4350d8 (C1), 0x43519c (C2): HUDMinimap("menu_MapSheet")
    ~MenuMinimap() override;                                // +0x00, +0x04 dtor slots: 0x435054 (D1), 0x435088 (D0), 0x4350a4 (D2)

    static MenuMinimap* GetInstance();                      // 0x435118: function-local static, hides HUDMinimap::GetInstance

    // Overrides of HUDMinimap slots, in vtable order. Every other slot (+0x08 .. +0x4c MenuBase, +0x50 .. +0x98
    // HUDMinimap) is inherited unchanged.
    void Show() override;                                   // +0x0c 0x435308
    void RegisterDisplayCallback() override;                // +0x78 0x43500c: "RenderMap" with this as the user pointer
    void RegisterToMenuManager() override;                  // +0x7c 0x43503c
    void InitAll() override;                                // +0x80 0x434dc0
    void CreateMapCamera() override;                        // +0x84 0x434e38
    CameraBase* DisableMapCamera() override;                // +0x90 0x434df8

    // Display callback registered as "RenderMap" by RegisterDisplayCallback. Hides HUDMinimap::RenderMap.
    static void RenderMap(gameswf::render_state& render, void* menu);   // 0x4353e4

    // No members of its own. The layout is HUDMinimap's (+0x00 .. +0x41b), so the object is exactly the base layout.
};
