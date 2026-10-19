#include "net-transport/net_log.hpp"

CNetLog CNetLog::s_log;

// 0x80f078 _ZN7CNetLog6UpdateEv
// Hex-Rays body is empty (bx lr), so the empty body is the complete reconstruction.
void CNetLog::Update() {}

// 0x80f07c _ZN7CNetLog11GetInstanceEv
CNetLog* CNetLog::GetInstance() {
    return &s_log;
}
