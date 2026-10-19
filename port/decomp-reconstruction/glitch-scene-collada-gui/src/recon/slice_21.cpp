// Slice 21 reconstruction (see include/glitch-scene-collada-gui/recon/slice_21.hpp).

#include "glitch-scene-collada-gui/recon/slice_21.hpp"

namespace glitch::collada::recon_21 {

// 0x657818 _ZN6glitch7collada14CResFileReader4tellEv
int resFileReaderTell(IReadFileStandIn* file) {
    return file->tell();
}

// 0x657834 _ZN6glitch7collada14CResFileReader4readEPvj
int resFileReaderRead(IReadFileStandIn* file, void* buffer, unsigned size) {
    return file->read(buffer, size);
}

// 0x657850 _ZN6glitch7collada14CResFileReader4seekElb
int resFileReaderSeek(IReadFileStandIn* file, long offset, bool relative) {
    return file->seek(offset, relative);
}

// 0x65786c _ZN6glitch7collada14CResFileReader7getSizeEv
int resFileReaderGetSize(IReadFileStandIn* file) {
    return file->getSize();
}

// 0x657894 and 0x657914 _ZN6glitch7collada19CResFileManagerC1EPNS_7IDeviceE (C2 identical)
void initResFileManager(CResFileManager* self, glitch::IDevice* device, CResFactory* defaultFactory) {
    self->refCount = 1;                      // +0x04
    self->device = device;                   // +0x20
    self->resFactory = defaultFactory;       // +0x24 (&DefaultResFactory in the original)
    self->autoUnloadEnabled = true;          // +0x28
    self->flag_0x29 = false;                 // +0x29
    self->zipLoadingEnabled = true;          // +0x2a
    self->disableZipAfterFirstUse = true;    // +0x2b
    // The rb-tree header at +0x08..+0x1b is zeroed by the original and then
    // pointed at itself; those words are not named in the layout.
}

}  // namespace glitch::collada::recon_21
