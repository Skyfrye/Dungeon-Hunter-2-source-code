// OnlineGameState: the online game state. The original object is an
// OnlineSingleton<OnlineGameState> with the state machine at +0x14. The state machine,
// the timeout checks, Destroy/Update, the message-handler list, processMessages and Init
// are modelled here (partial, see each row). processEvents and the singleton template are not.
//
// Layout (original 32-bit offsets, kept as comments):
//   +0x04 handler-list enabled flag (byte)   +0x08 handler-list head   +0x0c handler-list tail link
//   +0x10 handler context pointer (passed to every handler)
//   +0x14 state machine (MultiplayerStateMachine)
//   +0x24..+0x28 five flag bytes (see the members below)   +0x30 and +0x38 menu-name pointers   +0x34 mode word
//   +0x3c start-game timeval (sec, usec)   +0x44 room-creation timeval (sec, usec)
//   +0x4c, +0x4d, +0x4e flag bytes
//   +0x50 std::vector<tRoomInfo> (begin, end, capacity; zeroed by the ctor, freed by the dtor)
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "net-session-online/deps/time_of_day.hpp"
#include "net-session-online/multiplayer_state_machine.hpp"
#include "net-session-online/t_room_info.hpp"

class OnlineGameState {
public:
    // 0x49ffe0 / 0x4a0040 _ZN15OnlineGameStateC1Ev, _ZN15OnlineGameStateC2Ev. Partial. The handler list
    // at +0x04..+0x10 starts empty with the enabled flag at +0x04 set to 1 (member default below). The
    // tRoomInfo vector at +0x50 starts empty. The flag bytes (+0x24..+0x28, +0x4c..+0x4e) start at zero (the
    // binary's ctor zeroes only +0x28, +0x4d and +0x4e; the extra zeroes are deterministic and harmless
    // because the original reads the others only through its flag tests).
    // The state machine at +0x14 has no initialiser in the binary's ctor: it is stored only by
    // initStateMachine in Init, and never read before then. The port's member initialisers give it
    // state_ = -1 and empty list, which is the value Init stores anyway.
    OnlineGameState() = default;
    // 0x43f9c4 _ZN15OnlineGameStateD1Ev. Partial. Frees the handler list (in list order, unlinking each
    // node as the original does) and clears the enabled flag at +0x04. Deviation: a destructor body runs
    // before the member destructors, so the tRoomInfo vector at +0x50 is destroyed after this body while
    // the binary destroys it first; the two allocations are independent. The state machine member is not
    // freed here, as in the binary -- its entries belong to Destroy (0x4a0388), and
    // MultiplayerStateMachine's destructor is deliberately empty so that the owner's D1 does not free them.
    ~OnlineGameState();

    // 0x4a0388 _ZN15OnlineGameState7DestroyEv. Acts on OnlineSingleton<OnlineGameState>::GetInstance() as the
    // original does (which ignores this) and calls destroyStateMachine on the instance's state machine at +0x14.
    // The binary's apparent return is free()'s leftover r0 (the asm tail is B destroyStateMachine, whose last
    // call is free), i.e. not a value the source could have produced; nothing here returns it.
    void Destroy();
    // 0x4a039c _ZN15OnlineGameState6UpdateEv. Partial: the processMessages call under the online-game gate is
    // reproduced; processEvents (0x49db80) is skipped, so its call cannot be made, and the state machine's
    // handler result is not returned (runStateMachine is void in this port, while the binary's Update returns
    // its r0, which the last state callback leaves there).
    void Update();
    // 0x49fb0c _ZN15OnlineGameState15processMessagesEv. Partial: the message-type dispatch over the
    // handler list is reconstructed. The block that the original runs while the byte at +0x24 is set
    // (NetPlayerMgr, event 3145728, PlayerJoined handler) is not. The original returns the last handler
    // result; no caller in the Hex-Rays corpus reads it, so this port returns nothing.
    void processMessages();
    // 0x49db80 _ZN15OnlineGameState13processEventsEv: the matching layer's output events (0x4xxxxx), the sign-in events, the
    // GL Live internal events and the host change of the net player manager, turned into menu calls and state changes.
    // The original returns the last callee's value; nothing reads it, so this is void.
    void processEvents();
    // The inline push of a status line onto MenuMessageManager<OnlineStatusMsg, 1> queue 0 (processEvents,
    // HandlePlayerJoined): the start function runs when the queue then holds one line.
    static void PostStatusMessage(const std::string& text);
    // 0x4a04c0 _ZN15OnlineGameState4InitEi. Partial: see the .cpp. Builds the state table and the
    // handler list, then sets the state to 100. The matching-provider switch on the mode and the
    // GameCenter/PlayerSavegame branches are not reconstructed. Returns this (the original returns the
    // singleton).
    OnlineGameState* Init(int mode);

    // 0x4a00a0 _ZN15OnlineGameState11timevaldiffEP7timevalS1_
    // Milliseconds from 'from' to 'to'. The original divides the usec difference by 1000
    // in 32-bit arithmetic.
    std::int32_t timevaldiff(const Timeval* from, const Timeval* to) const;
    // 0x4a02f8 _ZN15OnlineGameState32GlliveRoomCreationTimeOutExpiredEv
    // True when more than 90000 ms have passed since the room was created.
    bool GlliveRoomCreationTimeOutExpired() const;
    // 0x4a0340 _ZN15OnlineGameState29GlliveStartGameTimeOutExpiredEv
    // True when more than 90000 ms have passed since the game started.
    bool GlliveStartGameTimeOutExpired() const;

    // The state machine's current state (+0x14, the word at its +0x00).
    std::int32_t GetState() const { return stateMachine_.CurrentState(); }
    // Calls every handler registered for this message key (the loop NativeMultiplayerBack runs inline for key 15, the back button).
    void RunHandlers(std::int32_t key) { runHandlers(key); }
    // The inline store of the game natives (NativeStartMultiplayerGame writes 300 to the word at +0x14).
    void SetState(std::int32_t state) { stateMachine_.SetState(state); }

    // Fields that other code reads and writes inline, at the original offsets (no symbols, so the names are
    // positions; the roles are those seen in the readers). The constructor zeroes only +0x28, +0x4d and +0x4e; the
    // port zeroes all of them. Public, as Track B decision 9 has it.
    bool flag24_ = false;                  // +0x24 online-game gate: createRoom returns 101 when clear; gates the
                                           // CNetPlayerManager block of processMessages; read by PlayerManager
    bool flag25_ = false;                  // +0x25 set to 1 after the join call (createRoom, searchRoom)
    bool flag26_ = false;                  // +0x26 read by HandleMenuBackButton
    bool flag27_ = false;                  // +0x27 read by HandleMenuBackButton
    bool flag28_ = false;                  // +0x28 zeroed by the constructor (roomLobbyUpdate, lobbyUpdate)
    const char* menuName30_ = nullptr;     // +0x30 menu name HandleMenuBackButton dispatches on
    std::int32_t mode_ = 0;                // +0x34 the mode word Init's switch stores; 2 and 3 select the attribute branch
    // joinRoom reads the same +0x30 word as the index of the chosen room in the tRoomInfo list (32-bit word on the target;
    // the low 32 bits of the stored value here).
    std::int32_t roomIndex30() const { return static_cast<std::int32_t>(reinterpret_cast<std::uintptr_t>(menuName30_)); }
    // The tRoomInfo list at +0x50 (read by joinRoom).
    const std::vector<tRoomInfo>& RoomInfos() const { return roomInfos_; }
    const char* menuName38_ = nullptr;     // +0x38
    bool flag4c_ = false;                  // +0x4c
    bool flag4d_ = false;                  // +0x4d zeroed by the constructor; set on the GL Live path of createRoom
    bool flag4e_ = false;                  // +0x4e zeroed by the constructor

    // gettimeofday into the room-creation time (+0x44), inline in MultiplayerCallback::createRoom.
    void StampRoomCreationTime() { GetTimeOfDay(&roomCreation_); }

    // Test seams. Not in the original.
    void SetStartGameTimeForTest(const Timeval& when) { startGame_ = when; }
    void SetRoomCreationTimeForTest(const Timeval& when) { roomCreation_ = when; }

private:
    // Message handler: takes the handler context and returns an int (the original's handler return).
    using MessageHandler = std::int32_t (*)(void*);
    // One entry of the handler list. Malloc'd 0x10 bytes in the original.
    struct HandlerNode {
        std::int32_t key;             // +0x00 message id (0 start game, 2 attack, ... 15 back button)
        MessageHandler handler;       // +0x04
        HandlerNode* next;            // +0x08
        HandlerNode** tailBefore;     // +0x0c the tail link that was current when this node was added
    };

    // Adds the handler for this key, or replaces the handler of the first node with this key.
    void setHandler(std::int32_t key, MessageHandler handler);
    // Calls every handler whose key matches, in list order, with the handler context.
    void runHandlers(std::int32_t key);

    bool handlersEnabled_ = true;                           // +0x04 (the ctor stores 1; the dtor stores 0)
    HandlerNode* handlerHead_ = nullptr;                    // +0x08
    HandlerNode** handlerTail_ = &handlerHead_;             // +0x0c
    void* handlerContext_ = nullptr;                        // +0x10
    MultiplayerStateMachine stateMachine_;                  // +0x14 (16 bytes, through +0x23)
    Timeval startGame_{0, 0};                               // +0x3c
    Timeval roomCreation_{0, 0};                            // +0x44
    std::vector<tRoomInfo> roomInfos_;                      // +0x50 (12-byte vector in the original)
};
