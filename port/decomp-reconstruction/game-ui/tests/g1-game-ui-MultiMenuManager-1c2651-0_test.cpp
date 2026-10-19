// Checks the value tables and the array shift of batch g1-game-ui-MultiMenuManager-1c2651-0 that run without the engine:
// the pop return-id switch (PopMenu, 0x438c14 and 0x439270), the sheet-menu list (PushMenu, 0x438278) and the gameswf
// array remove that PopMenu and UnloadSWFFile inline (dh2/global/multi_menu_manager.hpp). The MultiMenuManager
// translation unit itself is not linked: its vtable pulls in MenuFX and RenderFX virtuals from other batches.
#include <cstdint>
#include <cstdio>
#include <cstring>

#include "dh2/global/multi_menu_manager.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

void TestPopReturnId() {
    // Outside the game (inGame false).
    Check(MultiMenuManagerPopReturnId(4, false) == 1, "id 4 returns to 1");
    Check(MultiMenuManagerPopReturnId(6, false) == 4, "id 6 outside the game returns to 4");
    Check(MultiMenuManagerPopReturnId(14, false) == 6, "id 14 outside the game returns to 6");
    Check(MultiMenuManagerPopReturnId(3, false) == 1, "id 3 outside the game returns to 1");
    Check(MultiMenuManagerPopReturnId(5, false) == 10, "id 5 returns to 10");
    Check(MultiMenuManagerPopReturnId(12, false) == 9, "id 12 returns to 9");
    Check(MultiMenuManagerPopReturnId(15, false) == 4, "id 15 returns to 4");

    // In the game (inGame true): the three ids that depend on it.
    Check(MultiMenuManagerPopReturnId(6, true) == 10, "id 6 in the game returns to 10");
    Check(MultiMenuManagerPopReturnId(14, true) == 5, "id 14 in the game returns to 5");
    Check(MultiMenuManagerPopReturnId(3, true) == 10, "id 3 in the game returns to 10");
    Check(MultiMenuManagerPopReturnId(5, true) == 10, "id 5 returns to 10 in the game too");
    Check(MultiMenuManagerPopReturnId(15, true) == 4, "id 15 returns to 4 in the game too");

    // Ids with no case keep their value, in and out of the game.
    const int unmatched[] = {0, 1, 2, 7, 8, 9, 10, 11, 13, 16, 17, 18, 19};
    for (int id : unmatched) {
        Check(MultiMenuManagerPopReturnId(id, false) == id, "unmatched id keeps its value outside the game");
        Check(MultiMenuManagerPopReturnId(id, true) == id, "unmatched id keeps its value in the game");
    }
}

void TestSheetMenu() {
    const char* sheets[] = {
        "menu_CharacterMenu",     "menu_CharacterSheetNew", "menu_CharacterSheetStats", "menu_InventorySheetMain",
        "menu_SkillTreeSheetNew", "menu_FaerySheet",        "menu_QuestLogSheetNEW",    "menu_MapSheet",
    };
    for (const char* sheet : sheets) {
        Check(MultiMenuManagerIsSheetMenu(sheet), "every listed sheet menu is a sheet menu");
    }
    Check(!MultiMenuManagerIsSheetMenu("menu_Help"), "menu_Help is not a sheet menu");
    Check(!MultiMenuManagerIsSheetMenu("menu_MainMenu"), "menu_MainMenu is not a sheet menu");
    Check(!MultiMenuManagerIsSheetMenu("menu_CharacterMenu "), "a trailing space makes the name differ");
    Check(!MultiMenuManagerIsSheetMenu("menu_mapsheet"), "the comparison is case sensitive");
    Check(!MultiMenuManagerIsSheetMenu(""), "the empty name is not a sheet menu");
}

void TestArrayRemove() {
    // Remove from the front: the tail moves down.
    int a[3] = {1, 2, 3};
    int* pa = a;
    std::int32_t na = 3;
    MultiMenuManagerArrayRemove(pa, na, 0);
    Check(na == 2 && a[0] == 2 && a[1] == 3, "removing index 0 of three shifts the tail down");

    // Remove the last element: the count drops and the rest keeps its order.
    int b[3] = {1, 2, 3};
    int* pb = b;
    std::int32_t nb = 3;
    MultiMenuManagerArrayRemove(pb, nb, 2);
    Check(nb == 2 && b[0] == 1 && b[1] == 2, "removing the last element keeps the others in order");

    // Remove from the middle.
    int c[3] = {1, 2, 3};
    int* pc = c;
    std::int32_t nc = 3;
    MultiMenuManagerArrayRemove(pc, nc, 1);
    Check(nc == 2 && c[0] == 1 && c[1] == 3, "removing index 1 keeps the order of the rest");

    // A count of 1 clears the array without moving anything.
    int d[1] = {7};
    int* pd = d;
    std::int32_t nd = 1;
    MultiMenuManagerArrayRemove(pd, nd, 0);
    Check(nd == 0, "removing the only element leaves an empty array");

    // Pointer elements, as the movie stack holds them.
    int x = 0;
    int y = 0;
    int* stack[2] = {&x, &y};
    int** ps = stack;
    std::int32_t ns = 2;
    MultiMenuManagerArrayRemove(ps, ns, 0);
    Check(ns == 1 && stack[0] == &y, "pointer elements shift like the others");
}

}  // namespace

int main() {
    TestPopReturnId();
    TestSheetMenu();
    TestArrayRemove();
    if (g_failures == 0) {
        std::printf("MultiMenuManager batch test: all checks passed\n");
        return 0;
    }
    std::printf("MultiMenuManager batch test: %d failure(s)\n", g_failures);
    return 1;
}
