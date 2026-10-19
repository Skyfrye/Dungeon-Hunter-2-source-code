// IDataReloader: interface of an object that DataReloaderManager::monitorFiles registers to be told when
// its watched files change. Its vtable (_ZTV13IDataReloader, 20 bytes) holds the two destructors and one
// pure virtual at +0x08 whose name is not recovered. The object has no data members.
// Original 32-bit size 0x4 (the vptr only).
// Reconstructed from libDungeonHunter2.so pseudocode (dtor 0x4a37d0 D1, 0x4a37d4 D0).
#pragma once

class IDataReloader {
public:
    // Vtable slots in order.
    virtual ~IDataReloader();                                       // +0x00, +0x04: 0x4a37d0 (D1), 0x4a37d4 (D0)
    virtual void unk_vslot_08() = 0;                                // +0x08 pure. No caller in the recovered code.

    // +0x00 vptr (implicit). No data members.
};
