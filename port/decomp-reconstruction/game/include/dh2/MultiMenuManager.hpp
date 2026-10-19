// MultiMenuManager: the MenuFX driver behind MenuManager. Owns four MenuFX movies (m_menuFX[0..3]), each with a
// Flash 2D camera, keeps the stack of movies in use (m_menuFXStack, top = current) and pushes and pops MenuBase
// pages across them. MenuManager allocates it (operator new(0x164) in its ctor). The root movie is m_menuFX[2]
// and the HUD root is m_menuFX[3].
// Original 32-bit size 0x164 (356). Offsets in comments are original 32-bit ARM offsets (host pointers are wider).
// MenuFX occupies +0x00 .. +0x123; its RenderFX::EventListener subobject sits at +0x100.
#pragma once

#include <cstdint>

#include "dh2/MenuFX.hpp"

class MenuBase;
class MenuFlash2DCamera;

class MultiMenuManager : public MenuFX {
public:
    // gameswf::array<T> as gameswf lays it out: data, size, capacity, static-buffer flag (16 bytes in the original).
    template <typename T>
    struct GameswfArray {
        T* m_data;                                                      // +0x00
        int32_t m_size;                                                 // +0x04
        int32_t m_capacity;                                             // +0x08
        bool m_staticBuffer;                                            // +0x0c
    };

    MultiMenuManager();                                                 // 0x437e24 (C1), 0x437ea4 (C2)
    ~MultiMenuManager() override;                                       // +0x00, +0x04 (0x437f94, 0x4380a4); base-object dtor 0x4380c0

    // Primary vtable slots +0x08 .. +0x30 are MenuFX's and are not overridden here. The four below are new
    // virtuals of this class. The using-declarations keep MenuFX::PushMenu(const char*) and PopMenu() visible.
    using MenuFX::PushMenu;
    using MenuFX::PopMenu;
    virtual void PushMenu(MenuBase* menu);                              // +0x34  0x438278
    virtual void PopMenu(bool repeat);                                  // +0x38  0x438c14; true keeps popping while the top movie has states
    virtual void PopMenu(const char* name, bool flag);                  // +0x3c  0x439270; false takes the search-by-name path (MenuManager::GetMenuByName)
    virtual bool IsStateInStack(MenuFX::State* state);                  // +0x40  0x437924; MenuFX::IsStateInStack is non-virtual and hidden here

    void ResetUpdateCursor();                                           // 0x43799c
    void ResetFonts();                                                  // 0x437a38
    void UnloadSWFFile(int index);                                      // 0x437b3c
    MenuFX* LoadSWFFile(const char* file, int index);                   // 0x437d68

    // Own data starts at +0x124.
    GameswfArray<MenuFX*> m_menuFXStack;                                // +0x124 movies in use, top = current; PushMenu appends, PopMenu removes
    MenuFX* m_menuFX[4];                                                // +0x134 movie slots; [2] is the root, [3] the HUD root
    MenuFlash2DCamera* m_cameras[4];                                    // +0x144 one camera per movie, created by LoadSWFFile
    GameswfArray<void*> unk_154;                                        // +0x154 gameswf::array<smart_ptr<as_object>>; only the ctor and dtor touch it
};
