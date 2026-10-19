// Track B batch e1-net-session-online-CXPlayerManager-0: CXPlayerManager::Update.
// The other CXPlayerManager bodies are in cxplayer_manager.cpp.

#include <cstdint>
#include <cstdio>

#include "net-session-online/cxplayer_manager.hpp"
#include "net-session-online/glx_player_web_component.hpp"

// 0x52e784 _ZN15CXPlayerManager6UpdateEv
//
// Does nothing until the initialized flag (+0x04) is set. Then it switches on the state
// (+0x14). Some states call Update on one service and finish with the keep-alive check.
// Every other path ends at the common tail: when the state is non-zero, the login's
// keep-alive runs if the login has it enabled.
//
// Services by member:
//   third_ (+0x10): a GLXPlayerSereverConfig, the only object Init stores there. The
//     GLXPlayerWebComponent Update slot (+0x08) is called on it through a static_cast. The
//     member is declared as GLXPlayerComponent*, which has no Update.
//   login_ (+0x08), leaderboard_ (+0x0c): GLXPlayerLogin and GLXPlayerLeaderboard.
//
// Deviations:
//   The state-4 trace prints the user id with %d, as the original does. The original passes the
//   pointer bits from GetUID, so the port prints the low 32 bits of that pointer. The line
//   cannot match on a 64-bit build, and it is only a debug trace.
void CXPlayerManager::Update() {
    if (!initialized_) {
        return;
    }

    // The keep-alive tail (LABEL_9): sends a keep-alive on the login when it is enabled.
    const auto keepAliveTail = [this]() {
        if (login_ != nullptr && login_->KeepAliveEnabled()) {
            login_->KeepAlive();
        }
    };
    // LABEL_15: after a service Update, return when the state is 0, otherwise run the tail.
    const auto finishAfterService = [this, &keepAliveTail]() {
        if (state_ == 0) {
            return;
        }
        keepAliveTail();
    };

    switch (state_) {
        case 0:
            // third_ is a GLXPlayerSereverConfig (a GLXPlayerWebComponent). Its Update is
            // virtual slot +0x08 in the original.
            if (third_ != nullptr) {
                static_cast<GLXPlayerWebComponent*>(third_)->Update();
                finishAfterService();
                return;
            }
            break;

        case 2:
        case 6:
            if (login_ != nullptr) {
                login_->Update();
                finishAfterService();
                return;
            }
            break;

        case 3:
            if (login_ != nullptr) {
                // The original passes the "EN" literal as a char*. A local copy keeps it non-const.
                char languageCode[] = "EN";
                login_->SendLogin(userName_, password_, nullptr, 1, nullptr, languageCode, true);
                SwitchState(4);
            }
            break;

        case 4:
            if (login_ == nullptr) {
                break;
            }
            login_->Update();
            if (!login_->KeepAliveEnabled()) {
                finishAfterService();
                return;
            }
            {
                // GetUID returns the stored id string. The trace prints its value with %d.
                const char* uid = login_->GetUID();
                std::printf("XPlayerManager: logged in UID = %d!\n",
                            static_cast<int>(reinterpret_cast<std::intptr_t>(uid)));
            }
            if (leaderboard_ != nullptr) {
                leaderboard_->SetUID(login_->GetUID());
            }
            SwitchState(8);
            break;

        case 5:
            if (login_ != nullptr) {
                login_->SendLogout();
                SwitchState(6);
            }
            break;

        case 8:
            if (leaderboard_ != nullptr) {
                leaderboard_->SetScoreDataCount(1);
            }
            SwitchState(9);
            break;

        case 9:
            if (leaderboard_ != nullptr) {
                leaderboard_->Update();
            }
            std::printf("XPlayerManager PROCESSSYNCHRONISE: score: %d\n", score_);
            UploadMyScore(score_);
            if (state_ == 9) {
                SwitchState(0x10);
            }
            break;

        case 10:
            if (login_ != nullptr && leaderboard_ != nullptr && login_->KeepAliveEnabled()) {
                std::printf("XPlayerManager SENDINGHIGHSCORE: score: %d\n", score_);
                leaderboard_->sendHighScore(score_, -1, 1);
                SwitchState(11);
            } else {
                SwitchState(0x10);
            }
            break;

        case 11:
        case 13:
        case 15:
            if (leaderboard_ != nullptr) {
                leaderboard_->Update();
                finishAfterService();
                return;
            }
            break;

        case 12:
            if (leaderboard_ != nullptr) {
                leaderboard_->SetScoreDataCount(1);
            }
            SwitchState(13);
            break;

        case 14:
            if (leaderboard_ != nullptr) {
                leaderboard_->SetScoreDataCount(1);
            }
            SwitchState(15);
            break;

        default:
            break;
    }

    // LABEL_8: the common tail. It runs the keep-alive only when the state is non-zero.
    if (state_ != 0) {
        keepAliveTail();
    }
}
