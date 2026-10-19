// Test for batch g1-game-app-global-f216b6-10: the pure parts of the player-action natives (equipment slot range and
// the NativeInvAutoEquipSlot dispatch). The character bodies need the engine and are not run here.
#include <cstdio>

#include "dh2/global/native_player_actions.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // Slot range: 0 <= slot < numSlots.
    Check(IsEquipmentSlotInRange(0, 3), "slot 0 is in range of 3 slots");
    Check(IsEquipmentSlotInRange(2, 3), "slot 2 is in range of 3 slots");
    Check(!IsEquipmentSlotInRange(3, 3), "slot 3 is out of range of 3 slots");
    Check(!IsEquipmentSlotInRange(-1, 3), "slot -1 is out of range");
    Check(!IsEquipmentSlotInRange(0, 0), "no slots means nothing is in range");

    // Auto-equip dispatch: in range unequips then equips; -1 equips all; other out-of-range values do nothing.
    Check(ClassifyAutoEquipSlot(1, 3) == AutoEquipAction::kUnequipThenEquip, "in-range slot unequips then equips");
    Check(ClassifyAutoEquipSlot(0, 3) == AutoEquipAction::kUnequipThenEquip, "slot 0 unequips then equips");
    Check(ClassifyAutoEquipSlot(-1, 3) == AutoEquipAction::kEquipAll, "slot -1 equips all slots");
    Check(ClassifyAutoEquipSlot(3, 3) == AutoEquipAction::kNone, "slot equal to the count does nothing");
    Check(ClassifyAutoEquipSlot(-2, 3) == AutoEquipAction::kNone, "slot -2 does nothing");
    Check(ClassifyAutoEquipSlot(-1, 0) == AutoEquipAction::kEquipAll, "slot -1 equips all even with no slots");

    if (g_failures == 0) {
        std::printf("g1-game-app-global-f216b6-10 test: all checks passed\n");
        return 0;
    }
    std::printf("g1-game-app-global-f216b6-10 test: %d failure(s)\n", g_failures);
    return 1;
}
