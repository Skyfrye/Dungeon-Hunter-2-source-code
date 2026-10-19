#include "glitch-video/image_loaders.hpp"
#include "read_file_stub.hpp"

#include <cstdio>
#include <cstring>
#include <string>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// In-memory IReadFile that returns a fixed byte buffer.
class MemoryFile : public glitch::video::test::StubReadFile {
public:
    MemoryFile(const char* bytes, size_t n) : m_bytes(bytes, n) {}
    int32_t read(void* buffer, uint32_t size) override {
        uint32_t n = 0;
        while (n < size && m_pos < m_bytes.size()) {
            static_cast<unsigned char*>(buffer)[n++] = static_cast<unsigned char>(m_bytes[m_pos++]);
        }
        return static_cast<int32_t>(n);
    }
private:
    std::string m_bytes;
    size_t m_pos = 0;
};

}  // namespace

int main() {
    glitch::video::CImageLoaderBMP bmp;
    MemoryFile bmpFile("BM\x00\x00", 4);
    CHECK(bmp.isALoadableFileFormat(&bmpFile));
    MemoryFile notBmp("PNG\x89", 4);
    CHECK(!bmp.isALoadableFileFormat(&notBmp));
    CHECK(bmp.isALoadableFileExtension("art/hero.bmp"));
    CHECK(bmp.isALoadableFileExtension("ART/HERO.BMP"));
    CHECK(!bmp.isALoadableFileExtension("hero.png"));

    glitch::video::CImageLoaderTGA tga;
    CHECK(tga.isALoadableFileExtension("a.tga"));
    CHECK(tga.isALoadableFileExtension("a.TGA"));
    CHECK(!tga.isALoadableFileExtension("a.Tga"));

    glitch::video::CImageWriterTGA writer;
    CHECK(writer.isAWriteableFileExtension("out.tga"));
    CHECK(!writer.isAWriteableFileExtension("out.bmp"));

    std::printf("%s\n", failures ? "image_loaders: FAILED" : "image_loaders: ok");
    return failures != 0;
}
