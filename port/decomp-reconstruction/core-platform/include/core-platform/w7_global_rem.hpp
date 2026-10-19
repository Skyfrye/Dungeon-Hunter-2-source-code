// Declarations for the global_rem slice (w7_global_rem.cpp): the remaining
// <global> rows that are not in the console, global_00..04 or touch slices.
//
// link-1: the stand-ins this slice declared for the game classes (a three-word ObjectHandle, a forward-declared
// ObjectManager and the seam functions around them) are gone. The game classes are reconstructed, so the bodies call
// them directly (dh2/ObjectHandle.hpp, dh2/PlayerManager.hpp, dh2/Application.hpp, ...). The stand-in ObjectHandle had
// the same mangled name as the game class with a different layout. What is left of the stand-ins is the debug-draw
// driver call, which goes through glitch::IDevice members that are not modelled yet.
#pragma once

#include <cstdint>
#include <iostream>
#include <string>

#include "glitch-shared/glitch_core.hpp"

class ObjectHandle;  // dh2/ObjectHandle.hpp; the bodies include the game headers, the callers of this header may not

namespace gameswf {
struct fn_call;
}  // namespace gameswf

// ---- Debug drawing -----------------------------------------------------------
// 0x340154 _Z21DBG_DisplayPointAsBoxRKN6glitch4core8vector3dIfEERKNS_5video6SColorEi
// The call is glitch::video::IVideoDriver::draw3DBox (vtable +0x28), on the driver the
// device holds at +0x10 (Application::m_device->videoDriver, hex dword_99F73C + 0x10).
int DBG_DisplayPointAsBox(const glitch::core::vector3d<float>& point, const glitch::video::SColor& color, int size);

// 0x342478 _ZlsRSoR12ObjectHandle
std::ostream& operator<<(std::ostream& os, ObjectHandle& handle);

// 0x34b170 _ZrsRSiR12ObjectHandle
std::istream& operator>>(std::istream& is, ObjectHandle& handle);

// 0x3ef9fc _Z25DBG_DisplayLoadLevelStatsPKc
int DBG_DisplayLoadLevelStats(const char* nextLevelName);

// 0x41f834 _Z18playerClassAsStrIDi
int playerClassAsStrID(int classId);

// 0x4218e4 _Z16playerClassAsStrv
const char* playerClassAsStr();

// 0x429c10 _Z24DisplayBuildInfoOnSplashv
void DisplayBuildInfoOnSplash();

// 0x429c14 _Z21HideBuildInfoOnSplashv
void HideBuildInfoOnSplash();

// 0x433d00 _Z15ParsePlayerNameRKSs
std::string ParsePlayerName(const std::string& name);

// 0x43a8f0 _Z17UpdateSavedValuesv
void UpdateSavedValues();

// 0x43acb4 _Z21NatvieResumeAllSoundsRKN7gameswf7fn_callE
int NatvieResumeAllSounds(const gameswf::fn_call& call);
