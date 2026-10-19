// Slice 21 reconstruction: glitch::collada resource file reader forwarders and
// the resource file manager constructor. Members of CResFileReader and
// CResFileManager come from layouts/collada_db.hpp, which declares no methods,
// so the bodies here are free functions (unattached).
#pragma once

#include <cstdint>

#include "glitch-scene-collada-gui/layouts/collada_db.hpp"

namespace glitch::collada::recon_21 {

// Stand-in for glitch::io::IReadFile. The shared headers do not define it and
// the slot table is not modelled, so the forwarders below name the calls only.
class IReadFileStandIn {
public:
    virtual ~IReadFileStandIn() = default;
    virtual int tell() = 0;                    // vtable slot +0x24 in the original
    virtual int read(void* buffer, unsigned size) = 0;  // vtable slot +0x0c
    virtual int seek(long offset, bool relative) = 0;   // vtable slot +0x18
    virtual int getSize() = 0;                 // vtable slot +0x20
};

// 0x657818 _ZN6glitch7collada14CResFileReader4tellEv
int resFileReaderTell(IReadFileStandIn* file);
// 0x657834 _ZN6glitch7collada14CResFileReader4readEPvj
int resFileReaderRead(IReadFileStandIn* file, void* buffer, unsigned size);
// 0x657850 _ZN6glitch7collada14CResFileReader4seekElb
int resFileReaderSeek(IReadFileStandIn* file, long offset, bool relative);
// 0x65786c _ZN6glitch7collada14CResFileReader7getSizeEv
int resFileReaderGetSize(IReadFileStandIn* file);

// 0x657894 and 0x657914 _ZN6glitch7collada19CResFileManagerC1EPNS_7IDeviceE (C2 identical)
// Sets the reference count, the empty file map header, the device, the default
// factory, and the four flags. The singleton slot (static Inst) is not written here.
void initResFileManager(CResFileManager* self, glitch::IDevice* device, CResFactory* defaultFactory);

}  // namespace glitch::collada::recon_21
