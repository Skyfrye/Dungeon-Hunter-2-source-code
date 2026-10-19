#include "glitch-core-io/os/logging.hpp"

#include <cstdio>

namespace glitch::os {

ILogger* Printer::Logger = nullptr;
float Timer::VirtualTimerSpeed = 1.0f;  // .data 0x99b804 = 0x3f800000 (STUB-AUDIT: was a 0 placeholder, which froze the virtual clock)
int Timer::VirtualTimerStopCounter = 0;

// 0x60ad80 _ZN6glitch2os7Printer11setLogLevelENS_10ELOG_LEVELE
void Printer::setLogLevel(ELOG_LEVEL level) {
    if (Logger) Logger->setLogLevel(level);
}

// 0x60adc0 _ZN6glitch2os7Printer11getLogLevelEv
ELOG_LEVEL Printer::getLogLevel() {
    return Logger ? Logger->getLogLevel() : ELL_NONE;
}

// 0x60aca0 _ZN6glitch2os7Printer3logEPKcNS_10ELOG_LEVELE
void Printer::log(const char* text, ELOG_LEVEL level) {
    if (Logger) Logger->log(text, level);
}

// 0x60ace8 _ZN6glitch2os7Printer3logEPKcS3_NS_10ELOG_LEVELE
void Printer::log(const char* text, const char* hint, ELOG_LEVEL level) {
    if (Logger) Logger->log(text, hint, level);
}

// 0x60ad38 _ZN6glitch2os7Printer3logEPKwNS_10ELOG_LEVELE
void Printer::log(const wchar_t* text, ELOG_LEVEL level) {
    if (Logger) Logger->log(text, level);
}

// 0x60b26c _ZN6glitch2os7Printer6vprintEPKcSt9__va_list
void Printer::vprint(const char* format, std::va_list args) {
    std::vprintf(format, args);
    std::putchar('\n');
}

// 0x60b280 _ZN6glitch2os7Printer5printEPKcz
void Printer::print(const char* format, ...) {
    std::va_list args;
    va_start(args, format);
    vprint(format, args);
    va_end(args);
}

// 0x60afd4 _ZN6glitch2os7Printer4logfEPKcz
// The listing saves r0..r3 as the variadic area, then calls the logger's slot +0x24 (vlogf) with
// (logger, 1, format, pointer to the variadic area). The pointer is the va_list here.
void Printer::logf(const char* format, ...) {
    if (!Logger) return;
    std::va_list args;
    va_start(args, format);
    Logger->vlogf(ELL_INFORMATION, format, args);
    va_end(args);
}

// 0x60b034 _ZN6glitch2os7Printer4logfENS_10ELOG_LEVELEPKcz
// Same forwarding as the one-level form, with the level argument passed through.
void Printer::logf(ELOG_LEVEL level, const char* format, ...) {
    if (!Logger) return;
    std::va_list args;
    va_start(args, format);
    Logger->vlogf(level, format, args);
    va_end(args);
}

// 0x60ae9c _ZN6glitch2os5Timer8getSpeedEv
float Timer::getSpeed() { return VirtualTimerSpeed; }

// 0x60aebc _ZN6glitch2os5Timer9isStoppedEv
bool Timer::isStopped() { return VirtualTimerStopCounter != 0; }

}  // namespace glitch::os
