// Free <global> helpers and float constants used by the CharAI AI_* functions (batch g1-game-character-CharAI-2ae0f1-2).
#pragma once

class PyDataConstants;

// dword_99F758: the PyDataConstants pointer of the Application singleton. The original reads it at
// Singleton<Application>::s_inst + 0x2c, which is Application::m_pyDataConstants (Application.hpp +0x2c). The singleton
// object itself (0x99f72c) has no declaration in the tree yet, so the read is declared here as an accessor for the
// integrator to define.
PyDataConstants* ApplicationGetPyDataConstants();

// Float constants of the AI search code, named by their bit patterns in libDungeonHunter2.so.
inline constexpr float kCharAIRadPerDegree = 0.0174532925f;  // 0x3c8efa35: pi/180 as float (Hex-Rays prints 0.017453)
inline constexpr float kCharAIFullCircle = 6.2831853f;        // 0x40c90fdb: 2*pi as float (Hex-Rays prints 6.2832)
