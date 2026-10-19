// SortModuleByDistance: std sort comparator over Module pointers. It orders the modules by their distance from
// the reference module, read from the three position floats at Module +0x160, +0x164 and +0x168.
// Original 32-bit size 0x4: one Module* at +0x00.
// Reconstructed from libDungeonHunter2.so pseudocode (operator() 0x341bcc).
#pragma once

class Module;

class SortModuleByDistance {
public:
    bool operator()(const Module* a, const Module* b);                  // 0x341bcc

    // Layout (4 bytes in the original).
    Module* m_origin;                                                   // +0x00 reference module the distances are measured from
};
