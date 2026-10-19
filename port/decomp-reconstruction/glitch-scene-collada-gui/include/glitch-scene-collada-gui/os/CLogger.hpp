// glitch::CLogger: the engine logger (an ILogger with a minimum level and an optional event receiver). Canonical header, residue pass ob. It
// replaces the CLogger stand-in of platform_stubs.hpp.
//
// Evidence (libDungeonHunter2.so, ARM, 32-bit layout; constructors 0x6a08b4 (C2) / 0x6a08f0 (C1), destructor 0x6a0944; the vtable names every slot,
// tools/decomp_vtable.py glitch::CLogger): glitch::IReferenceCounted is the primary base (count at +0x04, the constructor stores 1), then
//   +0x08 the minimum level (ELOG_LEVEL, the constructor stores 1 = ELL_INFORMATION)
//   +0x0c the event receiver the log events are offered to (the constructor argument)
// A message below the minimum level is dropped. Otherwise the receiver (when there is one) is offered an EET_LOG_TEXT_EVENT carrying the text
// and the level; a message the receiver does not consume (or any message without a receiver) is printed.
#pragma once

#include <cstdarg>

#include "glitch-core-io/os/event_receiver.hpp"
#include "glitch-core-io/os/logging.hpp"

namespace glitch {

class CLogger : public ILogger {
public:
    // 0x6a08f0 (C1) / 0x6a08b4 (C2): count 1, minimum level ELL_INFORMATION, the receiver stored.
    explicit CLogger(IEventReceiver* receiver);
    // 0x6a0944 (D1): empty. D0 is the compiler's deleting thunk.
    ~CLogger() override;

    ELOG_LEVEL getLogLevel() const override;                                       // K 0x0c, 0x6a092c
    void setLogLevel(ELOG_LEVEL level) override;                                   // K 0x10, 0x6a0934
    // 0x6a093c: stores the receiver (not a virtual slot).
    void setReceiver(IEventReceiver* receiver);
    void log(const char* text, ELOG_LEVEL level) override;                         // K 0x14, 0x6a0aac
    void log(const char* text, const char* hint, ELOG_LEVEL level) override;       // K 0x18, 0x6a0a7c
    void log(const wchar_t* text, const wchar_t* hint, ELOG_LEVEL level) override; // K 0x1c, 0x6a0ba8
    void log(const wchar_t* text, ELOG_LEVEL level) override;                      // K 0x20, 0x6a0b0c
    void vlogf(ELOG_LEVEL level, const char* format, std::va_list args) override;  // K 0x24, 0x6a0990

    ELOG_LEVEL level = ELL_INFORMATION;  // +0x08
    IEventReceiver* receiver = nullptr;  // +0x0c
};

}  // namespace glitch
