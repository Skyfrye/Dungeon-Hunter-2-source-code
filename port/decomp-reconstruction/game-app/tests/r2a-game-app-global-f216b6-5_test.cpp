// Test for the pure parts of the natives in ELF 0x43d63c .. 0x44344c that can run without the engine:
//   - PinchZoomStep (NativePinchZoom, 0x43d6f8): the camera zoom step.
//   - ClassifyMultiplayerStart (NativeStartMultiplayerGame, 0x43e308): the mode and started-flag branch.
//   - LoadingProgressPercent (NativeGetLoadingProgress, 0x43fa58): the level and online-mode mapping.
//   - PushNotificationResult (NativeHasPushNotification, 0x440c84): the gate and flag combination.
// The natives themselves need the gameswf argument API, so only these helpers run here. Returns non-zero on failure.
#include <cstdio>

#include "dh2/global/native_player_actions.hpp"
#include "dh2/global/native_stats_inventory_merchant.hpp"

namespace {

int g_failures = 0;

void Check(bool ok, const char* what) {
    if (!ok) {
        std::fprintf(stderr, "FAIL: %s\n", what);
        ++g_failures;
    }
}

}  // namespace

int main() {
    // PinchZoomStep: amount times sensitivity, added to the current zoom request.
    Check(PinchZoomStep(1.0f, 2, 0.5f) == 2.0f, "pinch: 1 + 2 * 0.5 is 2");
    Check(PinchZoomStep(0.0f, -3, 0.25f) == -0.75f, "pinch: 0 + -3 * 0.25 is -0.75");
    Check(PinchZoomStep(5.0f, 0, 0.5f) == 5.0f, "pinch: amount 0 leaves the zoom");
    Check(PinchZoomStep(-1.0f, 4, 0.125f) == -0.5f, "pinch: -1 + 4 * 0.125 is -0.5");

    // ClassifyMultiplayerStart: mode 3 is GLLive, anything else starts the game through NativeStartGame.
    Check(ClassifyMultiplayerStart(0, false) == MultiplayerStartAction::kStartGame, "multiplayer: mode 0 starts a game");
    Check(ClassifyMultiplayerStart(2, true) == MultiplayerStartAction::kStartGame, "multiplayer: mode 2 starts a game");
    Check(ClassifyMultiplayerStart(4, false) == MultiplayerStartAction::kStartGame, "multiplayer: mode 4 starts a game");
    Check(ClassifyMultiplayerStart(3, false) == MultiplayerStartAction::kStartLiveGame,
          "multiplayer: GLLive not started starts the live game");
    Check(ClassifyMultiplayerStart(3, true) == MultiplayerStartAction::kNothing,
          "multiplayer: GLLive already started does nothing");

    // LoadingProgressPercent: the level's percent, or 0 / 100 from the online mode without a level.
    Check(LoadingProgressPercent(true, 42, 3) == 42, "loading: a level gives its percent");
    Check(LoadingProgressPercent(true, 100, 0) == 100, "loading: a level at 100 gives 100");
    Check(LoadingProgressPercent(false, 0, 3) == 0, "loading: no level and mode 3 gives 0");
    Check(LoadingProgressPercent(false, 0, 2) == 100, "loading: no level and mode 2 gives 100");
    Check(LoadingProgressPercent(false, 0, 0) == 100, "loading: no level and mode 0 gives 100");

    // PushNotificationResult: the gate must be open, and then any of the three flags sets the result.
    Check(!PushNotificationResult(false, true, true, true), "push: a closed gate gives false");
    Check(!PushNotificationResult(true, false, false, false), "push: no flag gives false");
    Check(PushNotificationResult(true, true, false, false), "push: flag A gives true");
    Check(PushNotificationResult(true, false, true, false), "push: flag B gives true");
    Check(PushNotificationResult(true, false, false, true), "push: the GameCenter flag gives true");

    if (g_failures == 0) {
        std::printf("r2a-game-app-global-f216b6-5 tests: all passed\n");
        return 0;
    }
    std::fprintf(stderr, "%d failure(s)\n", g_failures);
    return 1;
}
