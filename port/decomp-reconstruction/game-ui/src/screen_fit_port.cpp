// Port additions (UI5, TRACK-B.md decision 15; not in the original): the per-movie Flash box table, the HUD scale and the
// "a page covers the HUD" test declared in dh2/global/screen_size.hpp. Everything here is inert on the original's own screen
// sizes and when the port setting "screenfit" is 0 (ScreenUsesAspectFit() false).
#include <cstdio>
#include <cstdlib>
#include <cstring>

#include "dh2/Application.hpp"
#include "dh2/Level.hpp"
#include "dh2/MenuFX.hpp"
#include "dh2/MenuManager.hpp"
#include "dh2/MultiMenuManager.hpp"
#include "dh2/global/screen_size.hpp"

namespace {

struct FlashBox {
    const void* root;
    int x, y, w, h;
};
FlashBox g_boxes[8] = {};

const FlashBox* FindBox(const void* root) {
    if (root == nullptr) {
        return nullptr;
    }
    for (const FlashBox& b : g_boxes) {
        if (b.root == root) {
            return &b;
        }
    }
    return nullptr;
}

}  // namespace

int HudScalePercent() {
    if (!ScreenUsesAspectFit()) {
        return 100;
    }
    if (g_dh2HudScalePercent >= 50) {
        return g_dh2HudScalePercent > 200 ? 200 : g_dh2HudScalePercent;
    }
    // Automatic: a tablet-shaped surface (the Fold's inner screen, 2184x1968) gets 125%; a phone-shaped one the authored size.
    const int w = Width_Screen, h = Height_Screen;
    const int longSide = w > h ? w : h;
    const int shortSide = w > h ? h : w;
    return (shortSide >= 1200 && longSide * 10 < shortSide * 14) ? 125 : 100;
}

void SetFlashBoxForRoot(const void* root, int x, int y, int width, int height) {
    if (root == nullptr) {
        return;
    }
    FlashBox* slot = nullptr;
    for (FlashBox& b : g_boxes) {
        if (b.root == root) {
            slot = &b;
            break;
        }
        if (slot == nullptr && b.root == nullptr) {
            slot = &b;
        }
    }
    if (slot == nullptr) {
        slot = &g_boxes[0];
    }
    slot->root = root;
    slot->x = x;
    slot->y = y;
    slot->w = width;
    slot->h = height;
}

int FlashBoxOffsetX(const void* root) {
    const FlashBox* b = FindBox(root);
    return b != nullptr ? b->x : ScreenFitOffsetX();
}

int FlashBoxOffsetY(const void* root) {
    const FlashBox* b = FindBox(root);
    return b != nullptr ? b->y : ScreenFitOffsetY();
}

int FlashBoxWidth(const void* root) {
    const FlashBox* b = FindBox(root);
    return b != nullptr ? b->w : Width_Screen - 2 * ScreenFitOffsetX();
}

int FlashBoxHeight(const void* root) {
    const FlashBox* b = FindBox(root);
    return b != nullptr ? b->h : Height_Screen - 2 * ScreenFitOffsetY();
}

bool HudCoveredByPage() {
    MenuManager* manager = MenuManager::GetInstance();
    if (manager == nullptr || manager->m_multiMenuManager == nullptr) {
        return false;
    }
    MultiMenuManager* mm = manager->m_multiMenuManager;
    // A page is open when the menus root (slot 2) has pages on its stack: MenuManager::Draw skips the HUD on that test, and the charmenu
    // pages are pushed through the same root. (A movie's "current state" is no test: the root keeps menu_Loading as its state all
    // through a level.)
    for (int slot = 0; slot < 3; ++slot) {
        MenuFX* movie = mm->m_menuFX[slot];
        if (movie != nullptr && movie->m_stack.m_size != 0) {
            if (std::getenv("DH2_FIT_DEBUG") != nullptr) {
                static int lastSlot = -1, lastSize = -1;
                if (lastSlot != slot || lastSize != movie->m_stack.m_size) std::fprintf(stderr, "FITDBG covered: slot %d stack %d state %s\n", slot, movie->m_stack.m_size,
                                            movie->GetCurrentState() ? movie->GetCurrentState()->m_name : "(none)");
                lastSlot = slot; lastSize = movie->m_stack.m_size;
            }
            return true;
        }
    }
    return HudMoviePageUp();
}

bool HudMoviePageUp() {
    MenuManager* manager = MenuManager::GetInstance();
    if (manager == nullptr || manager->m_multiMenuManager == nullptr) {
        return false;
    }
    MenuFX* hud = manager->m_multiMenuManager->m_menuFX[3];
    if (hud != nullptr) {
        // The HUD movie's own pages: the in-game pause menu ("menu_Ingame") and the HUD customise page cover the stage with a dim
        // background; the HUD states ("menu_HUD_<style>") and the overlays (dialogs, tutorials, cut-scene bars) show the world.
        if (const MenuFX::State* state = hud->GetCurrentState()) {
            if (state->m_name[0] != '\0' && std::strncmp(state->m_name, "menu_HUD_", 9) != 0 &&
                std::strcmp(state->m_name, "menu_DebugHUD") != 0) {
                return true;
            }
        }
    }
    return false;
}
