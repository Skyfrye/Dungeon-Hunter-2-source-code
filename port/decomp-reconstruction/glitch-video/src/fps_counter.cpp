#include "glitch-video/fps_counter.hpp"

namespace glitch::video {

namespace {

// Window length in milliseconds before the rate counters are recomputed
// (the original compares against 0x5db, i.e. 1499).
constexpr uint32_t kWindowMs = 0x5db;

uint32_t floatToUInt(float v) {
    return static_cast<uint32_t>(static_cast<double>(v));
}

}  // namespace

// 0x6da980 _ZN6glitch5video11CFPSCounterC1Ev
// 0x6da95c _ZN6glitch5video11CFPSCounterC2Ev
CFPSCounter::CFPSCounter() = default;

// 0x6da9a4 _ZNK6glitch5video11CFPSCounter6getFPSEv
uint32_t CFPSCounter::getFPS() const { return m_fps; }

// 0x6da9ac _ZNK6glitch5video11CFPSCounter12getPrimitiveEv
uint32_t CFPSCounter::getPrimitive() const { return m_primitive; }

// 0x6da9b4 _ZNK6glitch5video11CFPSCounter19getPrimitiveAverageEv
uint32_t CFPSCounter::getPrimitiveAverage() const { return m_primitiveAverage; }

// 0x6da9bc _ZNK6glitch5video11CFPSCounter17getPrimitiveTotalEv
uint32_t CFPSCounter::getPrimitiveTotal() const { return m_primitiveTotal; }

// 0x6da9c4 _ZNK6glitch5video11CFPSCounter12getDrawCallsEv
uint32_t CFPSCounter::getDrawCalls() const { return m_drawCalls; }

// 0x6da9cc _ZNK6glitch5video11CFPSCounter14getDrawCalls2DEv
uint32_t CFPSCounter::getDrawCalls2D() const { return m_drawCalls2D; }

// 0x6da9d4 _ZNK6glitch5video11CFPSCounter18getTextureBindingsEv
uint32_t CFPSCounter::getTextureBindings() const { return m_textureBindings; }

// 0x6da9fc _ZN6glitch5video11CFPSCounter13registerFrameEjjjjj
void CFPSCounter::registerFrame(uint32_t now, uint32_t primitives, uint32_t drawCalls,
                                uint32_t drawCalls2D, uint32_t textureBindings) {
    m_primitive = primitives;
    m_primitiveTotal += primitives;
    m_drawCalls = drawCalls;
    m_drawCalls2D = drawCalls2D;
    m_textureBindings = textureBindings;
    ++m_frameCount;
    m_primitiveSum += primitives;

    const uint32_t elapsed = now - m_lastTime;
    if (elapsed > kWindowMs) {
        const float invElapsed = 1.0f / static_cast<float>(elapsed);
        m_fps = floatToUInt(static_cast<float>(1000u * m_frameCount) * invElapsed);
        m_primitiveAverage = floatToUInt(static_cast<float>(1000u * m_primitiveSum) * invElapsed);
        m_lastTime = now;
        m_primitiveSum = 0;
        m_frameCount = 0;
    }
}

}  // namespace glitch::video
