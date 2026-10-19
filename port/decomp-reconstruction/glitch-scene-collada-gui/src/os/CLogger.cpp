// Bodies of glitch::CLogger (canonical class: os/CLogger.hpp). This file replaces the CLogger bodies of platform_stubs.cpp.
//
// A comment `// 0xADDR symbol` precedes each function.
#include "glitch-scene-collada-gui/os/CLogger.hpp"

#include <cstdio>

#include "glitch-core-io/core/strings.hpp"

namespace glitch {

namespace {

// The receiver is offered the text as an EET_LOG_TEXT_EVENT (type 3: the text at +0x08, the level at +0x0c).
bool offerToReceiver(IEventReceiver* receiver, const char* text, ELOG_LEVEL level) {
    SEvent event;
    event.EventType = EET_LOG_TEXT_EVENT;
    event.LogEvent.Text = text;
    event.LogEvent.Level = level;
    return receiver->onEvent(event);
}

}  // namespace

// 0x6a08f0 _ZN6glitch7CLoggerC1EPNS_14IEventReceiverE (C2 0x6a08b4)
CLogger::CLogger(IEventReceiver* receiverArg) : receiver(receiverArg) {}

// 0x6a0944 _ZN6glitch7CLoggerD1Ev
CLogger::~CLogger() = default;

// 0x6a092c _ZNK6glitch7CLogger11getLogLevelEv
ELOG_LEVEL CLogger::getLogLevel() const {
    return level;
}

// 0x6a0934 _ZN6glitch7CLogger11setLogLevelENS_10ELOG_LEVELE
void CLogger::setLogLevel(ELOG_LEVEL value) {
    level = value;
}

// 0x6a093c _ZN6glitch7CLogger11setReceiverEPNS_14IEventReceiverE
void CLogger::setReceiver(IEventReceiver* value) {
    receiver = value;
}

// 0x6a0990 _ZN6glitch7CLogger5vlogfENS_10ELOG_LEVELEPKcSt9__va_list
// Below the minimum level nothing happens. With a receiver the message is formatted into a 4000-byte buffer (3998 characters at most), the
// receiver is offered it, and when the receiver consumes it that is all; otherwise the message is printed from the format and the arguments.
// Host deviation, named: the arguments are used twice (formatted, then printed), which a host va_list only allows through a copy.
void CLogger::vlogf(ELOG_LEVEL logLevel, const char* format, std::va_list args) {
    if (logLevel < level) {
        return;
    }
    if (receiver != nullptr) {
        char* buffer = new char[4000];
        std::va_list copy;
        va_copy(copy, args);
        std::vsnprintf(buffer, 3998, format, copy);
        va_end(copy);
        const bool consumed = offerToReceiver(receiver, buffer, logLevel);
        delete[] buffer;
        if (consumed) {
            return;
        }
    }
    os::Printer::vprint(format, args);
}

// 0x6a0a7c _ZN6glitch7CLogger3logEPKcS2_NS_10ELOG_LEVELE
// "text: hint" through logf.
void CLogger::log(const char* text, const char* hint, ELOG_LEVEL logLevel) {
    logf(logLevel, "%s: %s", text, hint);
}

// 0x6a0aac _ZN6glitch7CLogger3logEPKcNS_10ELOG_LEVELE
// Below the minimum level nothing happens. Otherwise the receiver (when there is one) is offered the text; a text it does not consume is
// printed. Host deviation, named: the original passes the text itself as the format of Printer::print; the port prints it as "%s" so a text
// with a percent sign cannot read missing arguments.
void CLogger::log(const char* text, ELOG_LEVEL logLevel) {
    if (logLevel < level) {
        return;
    }
    if (receiver == nullptr || !offerToReceiver(receiver, text, logLevel)) {
        os::Printer::print("%s", text);
    }
}

// 0x6a0b0c _ZN6glitch7CLogger3logEPKwNS_10ELOG_LEVELE
// A wide text is narrowed and logged through the narrow slot.
void CLogger::log(const wchar_t* text, ELOG_LEVEL logLevel) {
    if (logLevel < level) {
        return;
    }
    const std::string narrow = core::stringw2stringc(text);
    log(narrow.c_str(), logLevel);
}

// 0x6a0ba8 _ZN6glitch7CLogger3logEPKwS2_NS_10ELOG_LEVELE
// Both texts are narrowed and logged as "text: hint".
void CLogger::log(const wchar_t* text, const wchar_t* hint, ELOG_LEVEL logLevel) {
    if (logLevel < level) {
        return;
    }
    const std::string narrowText = core::stringw2stringc(text);
    const std::string narrowHint = core::stringw2stringc(hint);
    logf(logLevel, "%s: %s", narrowText.c_str(), narrowHint.c_str());
}

}  // namespace glitch
