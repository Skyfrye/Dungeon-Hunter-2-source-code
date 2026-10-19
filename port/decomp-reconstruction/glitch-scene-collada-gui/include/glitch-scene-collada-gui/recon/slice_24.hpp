// Slice 24 reconstruction declarations (glitch init steps). (The two CGUIComboBox setters of the slice are in gui/CGUIComboBox.hpp.)
#pragma once

#include <cstdint>
#include <vector>


namespace glitch {

// 0x6a0f08 _ZN6glitch22getInitializationStepsEv
std::vector<void (*)(bool)>* getInitializationSteps();

// Global init nesting counter (glitch::InitializationCount); defined in src/recon/slice_24.cpp.
extern int InitializationCount;

// 0x6a0f90 _ZN6glitch4exitEv
bool exit();
// 0x6a1024 _ZN6glitch4initEv
char* init();
// 0x6a10b0 _ZN6glitch16registerInitStepEPFvbE
int registerInitStep(void (*step)(bool));

}  // namespace glitch
