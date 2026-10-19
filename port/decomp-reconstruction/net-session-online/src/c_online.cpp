#include "net-session-online/c_online.hpp"

#include "net-session-online/deps/matching.hpp"

// 0x7fd588 _ZN7COnline16GetLocalMemberIdEv
std::int32_t COnline::GetLocalMemberId() const {
    if (!isOnlineGame_) {
        return 1;
    }
    return CMatching::Get()->LocalMemberId();
}

// 0x7fd5b4 _ZN7COnline8IsServerEv
bool COnline::IsServer() const {
    if (!isOnlineGame_) {
        return true;
    }
    return CMatching::Get()->IsServer();
}

// 0x7fd5d8 _ZN7COnline12IsTimeSyncedEv
bool COnline::IsTimeSynced() const {
    if (IsServer()) {
        return true;
    }
    return timeSynced_;
}
