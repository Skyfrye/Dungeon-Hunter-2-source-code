// Slice 21 tests: CResFileReader forwarders and CResFileManager constructor fields.
#include <cstdio>

#include "glitch-scene-collada-gui/recon/slice_21.hpp"

namespace {

using glitch::collada::recon_21::IReadFileStandIn;

struct FakeFile : IReadFileStandIn {
    int pos = 0;
    int size = 100;
    int lastRead = -1;
    bool lastRelative = false;
    int tell() override { return pos; }
    int read(void*, unsigned n) override { lastRead = static_cast<int>(n); return static_cast<int>(n); }
    int seek(long offset, bool relative) override {
        lastRelative = relative;
        pos = static_cast<int>(offset);
        return 1;
    }
    int getSize() override { return size; }
};

}  // namespace

int main() {
    int failures = 0;
    FakeFile f;
    f.pos = 7;
    if (glitch::collada::recon_21::resFileReaderTell(&f) != 7) { std::puts("tell"); ++failures; }
    if (glitch::collada::recon_21::resFileReaderGetSize(&f) != 100) { std::puts("getSize"); ++failures; }
    char buf[8];
    if (glitch::collada::recon_21::resFileReaderRead(&f, buf, 5) != 5 || f.lastRead != 5) { std::puts("read"); ++failures; }
    if (glitch::collada::recon_21::resFileReaderSeek(&f, 42, true) != 1 || f.pos != 42 || !f.lastRelative) { std::puts("seek"); ++failures; }

    glitch::collada::CResFileManager mgr;
    glitch::collada::recon_21::initResFileManager(&mgr, nullptr, nullptr);
    if (mgr.refCount != 1 || !mgr.autoUnloadEnabled || mgr.flag_0x29 || !mgr.zipLoadingEnabled ||
        !mgr.disableZipAfterFirstUse) { std::puts("ctor flags"); ++failures; }

    if (failures == 0) std::puts("slice_21 tests passed");
    return failures == 0 ? 0 : 1;
}
