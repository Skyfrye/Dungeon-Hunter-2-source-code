#include "net-session-online/c_matching_gl_live_observers.hpp"
#include "net-transport/data_packet.hpp"

#include <ctime>

#include "net-session-online/c_matching_gl_live.hpp"

// ---- CMatchingGLLiveFriendObserver ----

// 0x821254 _ZN29CMatchingGLLiveFriendObserverC2Ev (C1 at 0x821280 is the same body)
CMatchingGLLiveFriendObserver::CMatchingGLLiveFriendObserver() = default;

// 0x8212ac _ZN29CMatchingGLLiveFriendObserverD2Ev (D1 at 0x8212b0 is the same empty body)
CMatchingGLLiveFriendObserver::~CMatchingGLLiveFriendObserver() = default;

// 0x8212b4 _ZN29CMatchingGLLiveFriendObserver14OnNetworkErrorEv
void CMatchingGLLiveFriendObserver::OnNetworkError() {}

// 0x8212b8 _ZN29CMatchingGLLiveFriendObserver16OnRequestTimeoutEi
void CMatchingGLLiveFriendObserver::OnRequestTimeout(std::int32_t /*requestId*/) {}

// 0x8212bc _ZN29CMatchingGLLiveFriendObserver16OnRequestSuccessEiPci
void CMatchingGLLiveFriendObserver::OnRequestSuccess(std::int32_t code, char* /*text*/,
                                                    std::int32_t /*length*/) {
    if (code == 0x3d) {
        flag_ = true;
    }
}

// 0x8212cc _ZN29CMatchingGLLiveFriendObserver16OnRequestFailureEii
void CMatchingGLLiveFriendObserver::OnRequestFailure(std::int32_t /*code*/, std::int32_t /*detail*/) {}

// ---- CMatchingGLLiveMessageObserver ----

// 0x8241d4 _ZN30CMatchingGLLiveMessageObserver14OnNetworkErrorEv
void CMatchingGLLiveMessageObserver::OnNetworkError() {}

// 0x8241d8 _ZN30CMatchingGLLiveMessageObserver16OnRequestTimeoutEi
void CMatchingGLLiveMessageObserver::OnRequestTimeout(std::int32_t /*requestId*/) {}

// 0x8241dc _ZN30CMatchingGLLiveMessageObserver16OnRequestFailureEii
void CMatchingGLLiveMessageObserver::OnRequestFailure(std::int32_t /*code*/, std::int32_t /*detail*/) {}

// 0x8241e0 _ZN30CMatchingGLLiveMessageObserver16OnRequestSuccessEiPci
// Codes 0x6f (111) and 0x70 (112) set the byte at +0x6c02 of the CMatching singleton (CMatching::Get,
// which the original calls without using the result). Partial: the singleton is treated as the
// CMatchingGLLive that owns this observer (the observer is its messageObserver_). The port
// checks that the singleton exists and is a CMatchingGLLive, the original does not: with another provider the
// byte would lie outside the object.
void CMatchingGLLiveMessageObserver::OnRequestSuccess(std::int32_t code, char* /*text*/,
                                                     std::int32_t /*length*/) {
    if (static_cast<std::uint32_t>(code - 111) <= 1u) {
        if (auto* live = dynamic_cast<CMatchingGLLive*>(CMatching::Get())) {
            live->unk_6c02 = 1;
        }
    }
}

// ---- CMatchingGLLiveLobbyObserver ----

// 0x8212f8 _ZN28CMatchingGLLiveLobbyObserver30OnMPEstablishConnectionSuccessEv
void CMatchingGLLiveLobbyObserver::OnMPEstablishConnectionSuccess() {
    lastResult_ = 0;
    connected_ = true;
}

// 0x82130c _ZN28CMatchingGLLiveLobbyObserver16OnMPLoginSuccessEP10DataPacket
void CMatchingGLLiveLobbyObserver::OnMPLoginSuccess(DataPacket* /*packet*/) {
    lastResult_ = 0;
    loggedIn_ = true;
    state_ = 3;
}

// 0x821328 _ZN28CMatchingGLLiveLobbyObserver24OnMPKickOutPlayerSuccessEv
void CMatchingGLLiveLobbyObserver::OnMPKickOutPlayerSuccess() { lastResult_ = 0; }

// 0x822538 _ZN28CMatchingGLLiveLobbyObserverC2Ev (C1 at 0x8225b8 has the same body)
// Reconstructed: the scalars, the empty room list (+0x18), member list (+0x24) and name map (+0x30)
// are the default members. The original leaves +0x14 (state) unset; the port initialises it to 0.
CMatchingGLLiveLobbyObserver::CMatchingGLLiveLobbyObserver() = default;

// 0x821ed8 _ZN28CMatchingGLLiveLobbyObserverD1Ev (D2 at 0x821f7c has the same body)
// Reconstructed: runs Terminate, which destroys the room records. The member and room containers and
// the name map are then released by their own destructors, which stand in for the original's explicit
// vector and map releases.
CMatchingGLLiveLobbyObserver::~CMatchingGLLiveLobbyObserver() { Terminate(); }

// 0x821334 _ZN28CMatchingGLLiveLobbyObserver20OnMPStartGameSuccessEP10DataPacket
void CMatchingGLLiveLobbyObserver::OnMPStartGameSuccess(DataPacket* /*packet*/) {
    lastResult_ = 0;
    state_ = 8;
    gameStarted_ = false;
}

// 0x82134c _ZN28CMatchingGLLiveLobbyObserver16OnMPGetLobbyInfoEP10DataPacket
// When the game-started flag is set: state (+0x14) = 6, then PrintDatapacket (0x8212d0, file-local in the original, so
// each user has its own copy), whose body is getMessageBody (DataPacket vtable +0x64) then getMessageLen (+0x60); the
// original returns that length as a register leftover, the interface here is void.
void CMatchingGLLiveLobbyObserver::OnMPGetLobbyInfo(DataPacket* packet) {
    if (!gameStarted_) {
        return;
    }
    state_ = 6;
    (void)packet->getMessageBody();
    (void)packet->getMessageLen();
}

// 0x821368 _ZN28CMatchingGLLiveLobbyObserver19OnMPSetParamSuccessEi
void CMatchingGLLiveLobbyObserver::OnMPSetParamSuccess(std::int32_t /*value*/) {}

// 0x82136c _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushSetGameParameterEP10DataPacket
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushSetGameParameter(DataPacket* /*packet*/) {
    return 0;
}

// 0x821374 _ZN28CMatchingGLLiveLobbyObserver28OnMPProcessPushSetUserStatusEP10DataPacket
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushSetUserStatus(DataPacket* /*packet*/) {
    return 0;
}

// 0x82137c _ZN28CMatchingGLLiveLobbyObserver31OnMPProcessPushGameserverParamsEP10DataPacket
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushGameserverParams(DataPacket* /*packet*/) {
    return 0;
}

// 0x821384 _ZN28CMatchingGLLiveLobbyObserver28OnMPProcessPushAutomatchUserEP10DataPacket
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushAutomatchUser(DataPacket* /*packet*/) {
    return 0;
}

// 0x821560 _ZN28CMatchingGLLiveLobbyObserver24OnMPProcessPushStartGameEP10DataPacket
// The original also calls CMatching::Get(), whose result is unused here, so it is omitted.
std::int32_t CMatchingGLLiveLobbyObserver::OnMPProcessPushStartGame(DataPacket* /*packet*/) {
    if (gameStarted_) {
        CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(11, nullptr, 0);
    }
    return 0;
}

// 0x8215a4 _ZN28CMatchingGLLiveLobbyObserver17OnMPFunctionErrorEPci
// The original returns the AddEvent result (or this) through the decompiler's return slot.
// Callers in the port ignore it, so the port returns void.
void CMatchingGLLiveLobbyObserver::OnMPFunctionError(char* /*message*/, std::int32_t code) {
    switch (code) {
        case 16398:
            CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(10, nullptr, 0);
            lastResult_ = 16398;
            break;
        case 16399:
            CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(9, nullptr, 0);
            lastResult_ = code;
            break;
        case -2:
            CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(12, nullptr, 0);
            lastResult_ = code;
            break;
        default:
            lastResult_ = code;
            break;
    }
}

// 0x821654 _ZN28CMatchingGLLiveLobbyObserver16OnMPNetworkErrorEi
// As with OnMPFunctionError, the decompiled return value is not used, so the port returns void.
void CMatchingGLLiveLobbyObserver::OnMPNetworkError(std::int32_t error) {
    lastResult_ = error;
    loggedIn_ = false;
    connected_ = false;
    gameStarted_ = false;
    if (error == -2) {
        CMatchingGLLive::s_eventQueueGLLiveInternal.AddEvent(12, nullptr, 0);
    }
}

// 0x821448 _ZN28CMatchingGLLiveLobbyObserver9TerminateEv
// Reconstructed: ClearRoomList (0x8213ec, which destroys and frees the room records), then state
// (+0x14) = 1, lastResult (+0x48) = 0, and the connected (+0x05) and logged-in (+0x04) flags cleared.
void CMatchingGLLiveLobbyObserver::Terminate() {
    ClearRoomList();
    state_ = 1;
    lastResult_ = 0;
    connected_ = false;
    loggedIn_ = false;
}

// 0x821470 _ZN28CMatchingGLLiveLobbyObserver21OnMPDisconnectSuccessEv
// Thunk: the original is a direct tail call to Terminate (0x821448).
void CMatchingGLLiveLobbyObserver::OnMPDisconnectSuccess() { Terminate(); }
