// glitch::ELOG_LEVEL, glitch::ILogger, glitch::os::Printer and glitch::os::Timer. Canonical header of the
// engine unification wave (u1-core); video's deps/os_logging.hpp and scene's platform_stubs.hpp (Printer,
// ELOG_LEVEL, ILogger) are retired in favour of it. Printer forwards to a global logger object (a static
// pointer, null when none is installed). Timer keeps its virtual-time state in statics.
#pragma once

#include <cstdarg>
#include <cstdint>

#include "glitch-core-io/core/reference_counted.hpp"

namespace glitch {

// glitch::ELOG_LEVEL (not glitch::os::ELOG_LEVEL: every mangled signature spells NS_10ELOG_LEVELE under glitch).
enum ELOG_LEVEL { ELL_DEBUG = 0, ELL_INFORMATION = 1, ELL_WARNING = 2, ELL_ERROR = 3, ELL_NONE = 4 };

// glitch::ILogger (_ZTVN6glitch7ILoggerE, 48 bytes): an IReferenceCounted with seven pure slots after
// the reference-counted base's three. CLogger (glitch-scene-collada-gui, 0x6a08b4..0x6a0c0c) implements
// them; its vtable names every slot (tools/decomp_vtable.py glitch::CLogger).
class ILogger : public IReferenceCounted {
public:
    virtual ELOG_LEVEL getLogLevel() const = 0;                                          // +0x0c
    virtual void setLogLevel(ELOG_LEVEL level) = 0;                                      // +0x10
    virtual void log(const char* text, ELOG_LEVEL level) = 0;                            // +0x14
    virtual void log(const char* text, const char* hint, ELOG_LEVEL level) = 0;          // +0x18
    virtual void log(const wchar_t* text, const wchar_t* hint, ELOG_LEVEL level) = 0;    // +0x1c
    virtual void log(const wchar_t* text, ELOG_LEVEL level) = 0;                         // +0x20
    // +0x24: Printer::logf calls it with the level, the format and the variadic area (a va_list here).
    virtual void vlogf(ELOG_LEVEL level, const char* format, std::va_list args) = 0;
    // 0x6a0a48 _ZN6glitch7ILogger4logfENS_10ELOG_LEVELEPKcz: non-virtual; the listing is a tail call to
    // slot +0x24 with the level, the format and the variadic area.
    void logf(ELOG_LEVEL level, const char* format, ...) {
        std::va_list args;
        va_start(args, format);
        vlogf(level, format, args);
        va_end(args);
    }
};

}  // namespace glitch

namespace glitch::os {

// The spellings the port used before the unification (glitch::os::ELOG_LEVEL, glitch::os::ILogger) keep working.
using glitch::ELOG_LEVEL;
using glitch::ELL_DEBUG;
using glitch::ELL_INFORMATION;
using glitch::ELL_WARNING;
using glitch::ELL_ERROR;
using glitch::ELL_NONE;
using glitch::ILogger;

// glitch::os::Printer: static forwarders to the global logger (_ZN6glitch2os7Printer6LoggerE, a pointer, null
// when none is installed).
class Printer {
public:
    static ILogger* Logger;  // _ZN6glitch2os7Printer6LoggerE

    static void setLogLevel(ELOG_LEVEL level);                        // 0x60ad80
    static ELOG_LEVEL getLogLevel();                                  // 0x60adc0 (ELL_NONE with no logger)
    static void log(const char* text, ELOG_LEVEL level);              // 0x60aca0
    static void log(const char* text, const char* hint, ELOG_LEVEL level);  // 0x60ace8
    static void log(const wchar_t* text, ELOG_LEVEL level);           // 0x60ad38
    // 0x60b26c: vprintf to stdout, then a newline.
    static void vprint(const char* format, std::va_list args);
    // 0x60b280: variadic form of vprint.
    static void print(const char* format, ...);
    // 0x60afd4 and 0x60b034: forward the format and the variadic arguments to the logger's
    // vlogf (slot +0x24) with ELL_INFORMATION (0x60afd4) or the given level (0x60b034).
    static void logf(const char* format, ...);
    static void logf(ELOG_LEVEL level, const char* format, ...);
};

class Timer {
public:
    // Virtual timer state; initial values come from the original's static
    // initialisation and are not recovered.
    static float VirtualTimerSpeed;            // _ZN6glitch2os5Timer17VirtualTimerSpeedE
    static int VirtualTimerStopCounter;        // _ZN6glitch2os5Timer23VirtualTimerStopCounterE
    // Real-time bookkeeping (32-bit milliseconds, as in the original).
    static std::uint32_t StaticTime;           // _ZN6glitch2os5Timer10StaticTimeE
    static std::uint32_t StartRealTime;        // _ZN6glitch2os5Timer13StartRealTimeE
    static std::uint32_t LastVirtualTime;      // _ZN6glitch2os5Timer15LastVirtualTimeE
    static std::uint32_t TickCount;            // _ZN6glitch2os5Timer9TickCountE

    static float getSpeed();                   // 0x60ae9c
    static bool isStopped();                   // 0x60aebc
    static std::uint32_t getTime();            // 0x60aee4
    static void stopTimer();                   // 0x60af68
    static std::int64_t getMicroSeconds();     // 0x60b094
    static void initVirtualTimer();            // 0x60b10c
    static void initTimer();                   // 0x60b144 (tail branch to initVirtualTimer)
    static void setTime(std::uint32_t time);   // 0x60b148
    static void setSpeed(float speed);         // 0x60b194
    static void startTimer();                  // 0x60b1dc
    static void tick();                        // 0x60b22c
    // Milliseconds of wall-clock time, 32-bit (0x60b0cc). Not in the queue; a helper.
    static std::uint32_t getRealTime();
};

}  // namespace glitch::os
