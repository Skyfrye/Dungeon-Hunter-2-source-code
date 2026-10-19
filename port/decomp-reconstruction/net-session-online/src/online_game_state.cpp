#include "net-session-online/online_game_state.hpp"
#include "dh2/global/net_singletons.hpp"

#include "net-session-online/c_online.hpp"
#include "net-session-online/tb/online_singleton.hpp"

namespace {
// The original compares the elapsed time with 90000 ms.
constexpr std::int32_t kTimeOutMs = 90000;
}  // namespace

// 0x43f9c4 _ZN15OnlineGameStateD1Ev
// Partial, see the header. The original's order (asm 0x43f9c4): store the vtable, destroy the
// std::vector<tRoomInfo> member at +0x50, store the OnlineSingleton base vtable, free the handler list node
// by node (each node links its successor -- or moves the tail -- into the slot that held it, then is freed),
// and clear the enabled flag at +0x04. The state machine member is left untouched by this destructor.
//
// Deviation: a C++ destructor body always runs before the member destructors, so the handler list is freed
// here first and the vector member is destroyed afterwards, i.e. the reverse of the binary. The two are
// independent allocations, so nothing observable depends on the order.
OnlineGameState::~OnlineGameState() {
    while (handlerHead_ != nullptr) {
        HandlerNode* node = handlerHead_;
        HandlerNode* next = node->next;
        if (next != nullptr) {
            next->tailBefore = node->tailBefore;
        } else {
            handlerTail_ = node->tailBefore;
        }
        *node->tailBefore = next;
        delete node;
    }
    handlersEnabled_ = false;
}

// 0x4a00a0 _ZN15OnlineGameState11timevaldiffEP7timevalS1_
std::int32_t OnlineGameState::timevaldiff(const Timeval* from, const Timeval* to) const {
    return (to->tv_sec - from->tv_sec) * 1000 + (to->tv_usec - from->tv_usec) / 1000;
}

// 0x4a0388 _ZN15OnlineGameState7DestroyEv
// Acts on OnlineSingleton<OnlineGameState>::GetInstance() (the binary ignores this) and runs the state
// machine's destroyStateMachine on it. The binary's tail is `B destroyStateMachine`, so its return word is
// whatever free() left in r0 -- not a value the source produces. Nothing reads it.
void OnlineGameState::Destroy() {
    OnlineSingleton<OnlineGameState>::GetInstance()->stateMachine_.destroyStateMachine();
}

// 0x4a039c _ZN15OnlineGameState6UpdateEv
// In order (asm 0x4a03a4..0x4a03d8): while the online-game flag is set (*(GetOnline() + 5), COnline::IsOnlineGame),
// processEvents() on OnlineSingleton<OnlineGameState>::GetInstance(); the flag is read again, and while it is set
// processMessages() on the same instance; then the instance's state machine (+0x14) runs.
// Deviation: the original returns runStateMachine's result (the last state callback's r0); runStateMachine is void in
// this port and no caller reads the value.
void OnlineGameState::Update() {
    if (GetOnline()->IsOnlineGame()) {
        OnlineSingleton<OnlineGameState>::GetInstance()->processEvents();
    }
    if (GetOnline()->IsOnlineGame()) {
        OnlineSingleton<OnlineGameState>::GetInstance()->processMessages();
    }
    OnlineSingleton<OnlineGameState>::GetInstance()->stateMachine_.runStateMachine();
}

// 0x4a02f8 _ZN15OnlineGameState32GlliveRoomCreationTimeOutExpiredEv
bool OnlineGameState::GlliveRoomCreationTimeOutExpired() const {
    Timeval now{};
    GetTimeOfDay(&now);
    return timevaldiff(&roomCreation_, &now) > kTimeOutMs;
}

// 0x4a0340 _ZN15OnlineGameState29GlliveStartGameTimeOutExpiredEv
bool OnlineGameState::GlliveStartGameTimeOutExpired() const {
    Timeval now{};
    GetTimeOfDay(&now);
    return timevaldiff(&startGame_, &now) > kTimeOutMs;
}
