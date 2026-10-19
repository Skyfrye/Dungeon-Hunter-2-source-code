// glitch::video::CFPSCounter: per-frame FPS and primitive statistics.
// Reconstructed from libDungeonHunter2.so (0x6da95c..0x6da9fc).
#pragma once

#include <cstdint>

namespace glitch::video {

class CFPSCounter {
public:
    CFPSCounter();

    uint32_t getFPS() const;
    uint32_t getPrimitive() const;
    uint32_t getPrimitiveAverage() const;
    uint32_t getPrimitiveTotal() const;
    uint32_t getDrawCalls() const;
    uint32_t getDrawCalls2D() const;
    uint32_t getTextureBindings() const;

    // now: milliseconds timestamp of the frame.
    void registerFrame(uint32_t now, uint32_t primitives, uint32_t drawCalls,
                        uint32_t drawCalls2D, uint32_t textureBindings);

private:
    uint32_t m_fps = 60;                // +0x00, initial value 60
    uint32_t m_primitive = 0;           // +0x04, primitives of the last frame
    uint32_t m_lastTime = 0;            // +0x08, timestamp of last reset
    uint32_t m_frameCount = 0;          // +0x0c, frames since last reset
    uint32_t m_primitiveSum = 0;        // +0x10, primitives since last reset
    uint32_t m_primitiveAverage = 0;    // +0x14
    uint32_t m_primitiveTotal = 0;      // +0x18
    uint32_t m_drawCalls = 0;           // +0x1c
    uint32_t m_drawCalls2D = 0;         // +0x20
    uint32_t m_textureBindings = 0;     // +0x24
};

}  // namespace glitch::video
