// Bodies of glitch::collada::CTimelineController (canonical class: collada/CTimelineController.hpp). This file replaces the
// timeline bodies of src/collada_misc.cpp and src/tb_scene-collada-gui-glitch_collada_CTimelineController-0.cpp, and the
// recon_22::CTimelineController free-function stand-ins of src/recon/slice_22.cpp (getClipLength, getCurrentClipLength,
// setClip(const char*), getClipIndex).
//
// The comment before each function is `// 0xADDR symbol`. A function whose comment contains PARTIAL is ledgered partial.
#include "glitch-scene-collada-gui/collada/CTimelineController.hpp"

#include <cctype>
#include <cmath>

namespace glitch::collada {

namespace {

// The original converts an int to float, divides by the double literal 1000.0 and stores the result as float: (float)ms / 1000.0.
float msToSeconds(std::int32_t ms) {
    return static_cast<float>(static_cast<float>(ms) / 1000.0);
}

// LC_API_STRCASECMP_0: nonzero when the strings differ, ignoring case.
int caseInsensitiveCompare(const char* a, const char* b) {
    for (;; ++a, ++b) {
        const int ca = std::tolower(static_cast<unsigned char>(*a));
        const int cb = std::tolower(static_cast<unsigned char>(*b));
        if (ca != cb) return ca - cb;
        if (ca == 0) return 0;
    }
}

}  // namespace

// 0x666e40 _ZN6glitch7collada19CTimelineControllerC1Ev
// 0x666db8 _ZN6glitch7collada19CTimelineControllerC2Ev (the VTT form)
// The member words are the default member initialisers (+0x04 0, +0x08 0, +0x18 1, +0x20 0, +0x24 0, +0x2c 0.0,
// +0x30 1.0, +0x34 0, +0x38 0, +0x3c 0, +0x3d 0), checked against both forms. The virtual-base words (vptr +0x40, count 1 at
// +0x44) and the vtable stores of the three base classes are emitted by the compiler. +0x0c, +0x10 and +0x14 are left
// indeterminate in both forms, as in the original.
CTimelineController::CTimelineController() = default;

// 0x666efc _ZN6glitch7collada19CTimelineControllerD2Ev (empty)
// 0x666f00 _ZN6glitch7collada19CTimelineControllerD1Ev (empty); D0 0x667088 is skipped
CTimelineController::~CTimelineController() = default;

// 0x666c20 _ZN6glitch7collada19CTimelineController8setScaleEf
// The original returns this in r0; C++ returns void.
void CTimelineController::setScale(float value) {
    scale = value;  // +0x30
}

// 0x666c18 _ZNK6glitch7collada19CTimelineController8getScaleEv
float CTimelineController::getScale() const {
    return scale;
}

// 0x666c28 _ZN6glitch7collada19CTimelineController7setLoopEb
void CTimelineController::setLoop(bool enabled) {
    loop = enabled;  // +0x18
}

// 0x666c30 _ZNK6glitch7collada19CTimelineController7getLoopEv
bool CTimelineController::getLoop() const {
    return loop;  // +0x18
}

// 0x666c38 _ZN6glitch7collada19CTimelineController8setRangeEiib
// The original returns r0 here: a float from the jumpTo call when apply is set, otherwise the range length or this (depending on
// clipTable). C++ returns void.
void CTimelineController::setRange(std::int32_t startMs, std::int32_t endMs, bool apply) {
    if (clipTable == nullptr) {  // +0x34 is zero
        rangeStartMs = startMs;                         // +0x10
        rangeEndMs = endMs;                             // +0x14
        rangeStartSec = msToSeconds(startMs);           // +0x20
        rangeLengthSec = msToSeconds(endMs - startMs);  // +0x24
    }
    if (apply) {
        jumpTo(rangeStartMs);  // vtable +0x0c, the float result is not used here
    }
}

// 0x666cc4 _ZNK6glitch7collada19CTimelineController12getClipCountEv
// Returns 0 when there is no clip table.
std::int32_t CTimelineController::getClipCount() const {
    return clipTable ? clipTable->count : 0;
}

// 0x666cd4 _ZNK6glitch7collada19CTimelineController12getClipStartEi
// Unchecked index, as in the original.
std::uint32_t CTimelineController::getClipStart(std::int32_t index) const {
    return clipTable->clips[index].start;
}

// 0x666cec _ZNK6glitch7collada19CTimelineController10getClipEndEi
std::uint32_t CTimelineController::getClipEnd(std::int32_t index) const {
    return clipTable->clips[index].end;
}

// 0x666d04 _ZNK6glitch7collada19CTimelineController13getClipLengthEi
// getClipEnd(index) - getClipStart(index), both through the vtable (+0x24 and +0x20).
std::uint32_t CTimelineController::getClipLength(std::int32_t index) const {
    const std::uint32_t end = getClipEnd(index);
    return end - getClipStart(index);
}

// 0x666d3c _ZNK6glitch7collada19CTimelineController19getCurrentClipStartEv
std::uint32_t CTimelineController::getCurrentClipStart() const {
    return getClipStart(currentClipIndex);  // vtable +0x20
}

// 0x666d54 _ZNK6glitch7collada19CTimelineController17getCurrentClipEndEv
std::uint32_t CTimelineController::getCurrentClipEnd() const {
    return getClipEnd(currentClipIndex);  // vtable +0x24
}

// 0x666d6c _ZNK6glitch7collada19CTimelineController20getCurrentClipLengthEv
// getClipLength(currentClipIndex) through the vtable (+0x28).
std::uint32_t CTimelineController::getCurrentClipLength() const {
    return getClipLength(currentClipIndex);
}

// 0x666d9c _ZNK6glitch7collada19CTimelineController19getCurrentClipIndexEv
std::int32_t CTimelineController::getCurrentClipIndex() const {
    return currentClipIndex;  // +0x38
}

// 0x666d84 _ZNK6glitch7collada19CTimelineController11getClipNameEi
const char* CTimelineController::getClipName(std::int32_t index) const {
    return clipTable->clips[index].name;
}

// 0x6670a4 _ZNK6glitch7collada19CTimelineController12getClipIndexEPKc
// Walks the clip table (12-byte records) and returns the index of the first clip whose name matches, ignoring case; -1 when
// none does. The original reads the table without a null test.
std::int32_t CTimelineController::getClipIndex(const char* clipName) const {
    if (clipTable == nullptr) {
        return -1;
    }
    for (std::int32_t i = 0; i < clipTable->count; ++i) {
        if (caseInsensitiveCompare(clipTable->clips[i].name, clipName) == 0) {
            return i;
        }
    }
    return -1;
}

// 0x666f04 _ZN6glitch7collada19CTimelineController4initEii
void CTimelineController::init(std::int32_t startMs, std::int32_t endMs) {
    rangeStartMs = startMs;  // +0x10
    rangeEndMs = endMs;      // +0x14
}

// 0x666f10 _ZN6glitch7collada19CTimelineController6jumpToEi
float CTimelineController::jumpTo(std::int32_t timeMs) {
    currentTimeMs = timeMs;  // +0x04
    const float seconds = msToSeconds(timeMs);
    started = false;         // +0x3d
    currentSec = seconds;    // +0x2c
    endReported = false;     // +0x3c
    return seconds;
}

// 0x666f7c _ZN6glitch7collada19CTimelineController7setClipEi
float CTimelineController::setClip(std::int32_t clipIndex) {
    currentClipIndex = clipIndex;  // +0x38
    started = false;               // +0x3d
    endReported = false;           // +0x3c
    rangeStartMs = static_cast<std::int32_t>(getCurrentClipStart());  // vtable +0x2c
    rangeEndMs = static_cast<std::int32_t>(getCurrentClipEnd());      // vtable +0x30
    rangeStartSec = msToSeconds(rangeStartMs);
    const float length = msToSeconds(rangeEndMs - rangeStartMs);
    currentTimeMs = rangeStartMs;            // +0x04
    rangeLengthSec = length;                 // +0x24
    currentSec = msToSeconds(rangeStartMs);  // +0x2c
    return length;
}

// 0x666f44 _ZN6glitch7collada19CTimelineController7setClipEPKc
// The index from getClipIndex(name) (vtable +0x18); when it is not negative the clip is selected with setClip(index) (+0x10).
// Returns the index.
std::int32_t CTimelineController::setClip(const char* clipName) {
    const std::int32_t index = getClipIndex(clipName);
    if (index >= 0) {
        setClip(index);
    }
    return index;
}

// 0x667104 _ZN6glitch7collada19CTimelineController6updateEi
std::int32_t CTimelineController::update(std::int32_t timeMs) {
    const float v3 = msToSeconds(timeMs);
    float v5 = 0.0f;       // step of this update (seconds)
    float v6 = 0.0f;       // new position (seconds)
    float v8 = 0.0f;       // end reference for the wrap test (seconds)
    float v10 = 0.0f;      // wrap base (seconds)
    bool reverse = false;  // the original's early exit for a negative step
    bool wrap = false;     // the original's jump to LABEL_5

    if (started) {
        v5 = (v3 - prevTimeSec) * scale;   // v13
        v6 = v5 + currentSec;              // v14
        prevTimeSec = v3;
        currentSec = v6;
        if (v5 < 0.0f) {
            const float startSec = msToSeconds(rangeStartMs);
            v8 = startSec;
            v10 = rangeStartSec + rangeLengthSec;
            lastStep = std::fabs(v5);      // the original stores the sign-cleared bit pattern
            reverse = true;
            wrap = !(v6 >= startSec);      // goto LABEL_14 when v6 >= startSec
        }
    } else {
        v6 = currentSec;                   // v4
        started = true;
        v5 = 0.0f;
        prevTimeSec = v3;
        currentSec = v6;
    }

    if (!reverse) {
        const float endSec = msToSeconds(rangeEndMs);
        v8 = endSec;
        lastStep = v5;
        v10 = rangeStartSec;
        wrap = v6 > endSec;
    }

    if (wrap) {
        const auto callbackFn = callback;
        if (loop) {
            const float v11 = (rangeLengthSec == 0.0f) ? 0.0f : std::fmod(currentSec - v8, rangeLengthSec);
            currentSec = v10 + v11;
            if (callbackFn != nullptr) {
                callbackFn(this, callbackData);
            }
        } else {
            currentSec = v8;
            if (!endReported) {
                endReported = true;
                if (callbackFn != nullptr) {
                    callbackFn(this, callbackData);
                }
            }
        }
    }

    const std::int32_t result = static_cast<std::int32_t>(static_cast<float>(currentSec * 1000.0));
    currentTimeMs = result;  // +0x04
    return result;
}

}  // namespace glitch::collada
