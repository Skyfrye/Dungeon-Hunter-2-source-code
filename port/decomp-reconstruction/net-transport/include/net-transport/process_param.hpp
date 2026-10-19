// PROCESSPARAM: the request block of the host lookup thread, as the IDA type of the binary names it
// (0x404 bytes in the 32-bit layout). CAndroidSocket and LCAndroidSocket each hold one after their
// thread handle (m_getHostByNameThreadParam): the flag the worker clears, then the name to look up.
#pragma once

struct PROCESSPARAM {
    volatile int* flagAddress = nullptr;   // +0x00
    char serverName[1024] = {};            // +0x04
};
