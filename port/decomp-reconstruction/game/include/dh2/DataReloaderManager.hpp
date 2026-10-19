// DataReloaderManager: keeps the list of monitored data files and their reloaders.
// Original 32-bit size 0x10 (16) at least: vtable pointer at +0x00, vector of monitored files at +0x04 .. +0x0f.
// Reconstructed from libDungeonHunter2.so pseudocode (ctor 0x339094, dtor 0x3391a0).
// Partial: monitorFiles and checkFiles bodies are empty in the original build of this pseudocode, and the
// layout of _MonitoredFiles is only partly recovered (see its comment).
#pragma once

#include <cstdint>
#include <vector>

class IDataReloader;

class DataReloaderManager {
public:
    // One monitored file group. Size not recovered: the dtor reads through +0x30. Partial layout.
    class _MonitoredFiles {
    public:
        ~_MonitoredFiles();                                         // 0x339124

        uint8_t pad_00[4];                                          // +0x00 not touched by the dtor
        char* unk_04;                                               // +0x04 end pointer of the block at +0x18, read by the dtor;
                                                                    //        the address of this field is the inline sentinel the dtor compares with
        uint8_t pad_08[0x10];                                       // +0x08 not touched by the dtor
        char* unk_18;                                               // +0x18 block pointer, freed by the dtor when it is not +0x04
        char* unk_1c;                                               // +0x1c end pointer of the block at +0x30, read by the dtor
        uint8_t pad_20[0x10];                                       // +0x20 not touched by the dtor
        char* unk_30;                                               // +0x30 second block pointer, freed by the dtor when it is not +0x1c
    };

    DataReloaderManager();                                          // 0x339094 / 0x3390c8
    virtual ~DataReloaderManager();                                 // slot +0x00 0x3391a0 (D1), slot +0x04 0x339240 (D0), 0x33925c (D2)

    void monitorFiles(const char* dir, const char* file, IDataReloader* reloader);  // 0x3390fc
    void checkFiles() const;                                        // 0x339100

    // Vector of monitored file groups, STLport layout: begin at +0x04, end at +0x08, end of storage at +0x0c.
    std::vector<_MonitoredFiles*> m_monitoredFiles;                 // +0x04
};
