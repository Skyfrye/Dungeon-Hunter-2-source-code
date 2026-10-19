#include "glitch-video/texture_loaders.hpp"
#include "read_file_stub.hpp"

#include <algorithm>
#include <cstdio>
#include <cstring>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;

// Seekable in-memory file. Matches the vtable slots the probes call.
class SeekFile : public glitch::video::test::StubReadFile {
public:
    explicit SeekFile(std::vector<uint8_t> bytes) : m_bytes(std::move(bytes)) {}
    int32_t read(void* buffer, uint32_t size) override {
        size_t avail = m_pos < m_bytes.size() ? m_bytes.size() - m_pos : 0;
        size_t n = std::min<size_t>(avail, size);
        if (n) std::memcpy(buffer, m_bytes.data() + m_pos, n);
        m_pos += n;
        return static_cast<int32_t>(n);
    }
    bool seek(long position, bool relative) override {
        m_pos = static_cast<size_t>(relative ? static_cast<long>(m_pos) + position : position);
        return true;
    }
    long getSize() const override { return static_cast<long>(m_bytes.size()); }
    long getPos() const override { return static_cast<long>(m_pos); }

private:
    std::vector<uint8_t> m_bytes;
    size_t m_pos = 0;
};

int main() {
    // Extensions.
    CImageLoaderATC atc;
    CHECK(atc.isALoadableFileExtension("tex.atc"));
    CHECK(atc.isALoadableFileExtension("TEX.ATC"));
    CHECK(!atc.isALoadableFileExtension("tex.Atc"));
    CImageLoaderDDS dds;
    CHECK(dds.isALoadableFileExtension("a.dds"));
    CHECK(!dds.isALoadableFileExtension("a.DDS"));
    CImageLoaderPVR pvr;
    CHECK(pvr.isALoadableFileExtension("a.pvr") && pvr.isALoadableFileExtension("a.btex"));
    CHECK(!pvr.isALoadableFileExtension("a.png"));
    CImageLoaderJPG jpg;
    CHECK(jpg.isALoadableFileExtension("p.jpg") && jpg.isALoadableFileExtension("P.JPG"));

    // DDS magic "DDS ".
    SeekFile ddsFile({'D', 'D', 'S', ' ', 0, 0, 0, 0});
    CHECK(dds.isALoadableFileFormat(&ddsFile));
    SeekFile notDds({'D', 'D', 'S', '!'});
    CHECK(!dds.isALoadableFileFormat(&notDds));
    CHECK(!dds.isALoadableFileFormat(nullptr));

    // ATC: value at offset 4 is 0x8c92 or 0x8c93 (little-endian).
    std::vector<uint8_t> atcBytes(12, 0);
    atcBytes[4] = 0x92;
    atcBytes[5] = 0x8c;
    SeekFile atcOk(atcBytes);
    CHECK(atc.isALoadableFileFormat(&atcOk));
    atcBytes[4] = 0x94;
    SeekFile atcBad(atcBytes);
    CHECK(!atc.isALoadableFileFormat(&atcBad));
    SeekFile atcShort({0x92, 0x8c, 0, 0});
    CHECK(!atc.isALoadableFileFormat(&atcShort));

    // JPG: "JFIF" at offset 6 in either byte order.
    std::vector<uint8_t> jfif(12, 0);
    std::memcpy(jfif.data() + 6, "JFIF", 4);
    SeekFile jfifFile(jfif);
    CHECK(jpg.isALoadableFileFormat(&jfifFile));
    std::vector<uint8_t> jfif2(12, 0);
    std::memcpy(jfif2.data() + 6, "FIFJ", 4);
    SeekFile jfif2File(jfif2);
    CHECK(jpg.isALoadableFileFormat(&jfif2File));
    SeekFile jpgShort({0, 0, 0, 0, 0});
    CHECK(!jpg.isALoadableFileFormat(&jpgShort));

    // PVR: 52-byte header, "PVR!" at 44 with size word 0x34; or "BTEXpvr" at 0.
    std::vector<uint8_t> pvrA(52, 0);
    pvrA[0] = 0x34;
    std::memcpy(pvrA.data() + 44, "PVR!", 4);
    SeekFile pvrFileA(pvrA);
    CHECK(pvr.isALoadableFileFormat(&pvrFileA));
    CHECK(pvrFileA.getPos() == 0);   // position restored
    std::vector<uint8_t> pvrB(52, 0);
    std::memcpy(pvrB.data(), "BTEXpvr", 7);
    SeekFile pvrFileB(pvrB);
    CHECK(pvr.isALoadableFileFormat(&pvrFileB));
    std::vector<uint8_t> pvrC(52, 0);
    SeekFile pvrFileC(pvrC);
    CHECK(!pvr.isALoadableFileFormat(&pvrFileC));

    std::printf("%s\n", failures ? "image_probes: FAILED" : "image_probes: ok");
    return failures != 0;
}
