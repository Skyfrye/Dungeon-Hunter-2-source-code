// Batch r1-glitch-core-io-pack1-a5bb77-0: the pak directory scan (scanLocalHeader, extractFilename,
// the constructor sort and findFile), deletePathFromFilename, the XML element parser and text reader
// (parseOpeningXMLElement, readFile, the destructor) and the memory file's name accessors.
#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-core-io/io/pak_reader.hpp"
#include "glitch-core-io/io/read_file.hpp"
#include "glitch-core-io/io/xml_reader.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <string>
#include <utility>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

#include "io_stub_files.hpp"

using namespace glitch::io;

namespace {

// An in-memory read file. read() copies what is left and reports the count.
class MemFile : public glitch::io::testing::StubReadFile {
public:
    explicit MemFile(std::vector<unsigned char> bytes) : data(std::move(bytes)) {}
    std::int32_t read(void* buffer, std::uint32_t count) override {
        std::uint32_t i = 0;
        for (; i < count && position < static_cast<long>(data.size()); ++i, ++position) {
            static_cast<unsigned char*>(buffer)[i] = data[static_cast<std::size_t>(position)];
        }
        return static_cast<std::int32_t>(i);
    }
    bool seek(long offset, bool relative) override {
        const long target = relative ? position + offset : offset;
        if (target < 0 || target > static_cast<long>(data.size())) return false;
        position = target;
        return true;
    }
    long getPos() const override { return position; }

    std::vector<unsigned char> data;
    long position = 0;
};

struct Record {
    const char* name;
    std::uint32_t offset;
    std::uint32_t size;
};

void put32(std::vector<unsigned char>& bytes, std::size_t at, std::uint32_t value) {
    for (std::size_t k = 0; k < 4; ++k) bytes[at + k] = static_cast<unsigned char>((value >> (8 * k)) & 0xFFu);
}

// 12-byte header (signature in bytes 0..1, directory offset at +4, directory size at +8), then 64-byte records.
std::vector<unsigned char> makePak(char sig0, char sig1, const std::vector<Record>& records) {
    std::vector<unsigned char> image(12 + records.size() * 64, 0);
    image[0] = static_cast<unsigned char>(sig0);
    image[1] = static_cast<unsigned char>(sig1);
    image[2] = 'K';
    put32(image, 4, 12);
    put32(image, 8, static_cast<std::uint32_t>(records.size() * 64));
    for (std::size_t i = 0; i < records.size(); ++i) {
        const std::size_t base = 12 + i * 64;
        std::memcpy(&image[base], records[i].name, std::strlen(records[i].name));  // names are under 56 bytes
        put32(image, base + 56, records[i].offset);
        put32(image, base + 60, records[i].size);
    }
    return image;
}

// Text for CXMLReaderImpl::readFile: the callback fills the buffer with the text.
struct TextCallBack : IFileReadCallBack {
    explicit TextCallBack(std::string s) : text(std::move(s)) {}
    int read(void* buffer, int size) override {
        std::memcpy(buffer, text.data(), static_cast<std::size_t>(size));
        return size;
    }
    long getSize() const override { return static_cast<long>(text.size()); }
    std::string text;
};

using CharReader = glitch::io::CXMLReaderImpl<char, glitch::IReferenceCounted>;

}  // namespace

int main() {
    // scanLocalHeader through the constructor: 56-byte names, offsets and sizes, lower-cased paths (ignoreCase),
    // path = text up to and including the last '/', simpleFileName = whole path (ignorePaths clear), entries sorted by name.
    {
        MemFile file(makePak('P', 'A', {{"data/UI/Icon.PNG", 0x200, 42}, {"A/b.txt", 0x300, 7}}));
        CPakReader reader(&file, true, false);
        CHECK(reader.getFileCount() == 2);
        CHECK(reader.directoryOffset == 12 && reader.directorySize == 128);
        CHECK(reader.header[0] == 'P' && reader.header[2] == 'K');
        CHECK(reader.entries[0].pakFileName == "a/b.txt");
        CHECK(reader.entries[0].pos == 0x300 && reader.entries[0].length == 7);
        CHECK(reader.entries[0].path == "a/");
        CHECK(reader.entries[0].simpleFileName == "a/b.txt");
        CHECK(reader.entries[1].pakFileName == "data/ui/icon.png");
        CHECK(reader.entries[1].pos == 0x200 && reader.entries[1].length == 42);
        CHECK(reader.entries[1].path == "data/ui/");
        CHECK(reader.findFile("DATA/UI/ICON.PNG") == 1);
        CHECK(reader.findFile("a/b.txt") == 0);
        CHECK(reader.findFile("missing") == -1);
    }

    // ignorePaths set (and ignoreCase clear): simpleFileName is the file name after the last '/'.
    {
        MemFile file(makePak('P', 'A', {{"data/UI/Icon.PNG", 0x200, 42}}));
        CPakReader reader(&file, false, true);
        CHECK(reader.getFileCount() == 1);
        CHECK(reader.entries[0].pakFileName == "data/UI/Icon.PNG");
        CHECK(reader.entries[0].simpleFileName == "Icon.PNG");
        CHECK(reader.entries[0].path == "data/UI/");
        CHECK(reader.findFile("Icon.PNG") == 0);
        // findFile cuts the key to its base name too (deletePathFromFilename after the flagA step):
        // a full path finds the entry, and a different base name does not.
        CHECK(reader.findFile("data/UI/Icon.PNG") == 0);
        CHECK(reader.findFile("data/UI/Other.PNG") == -1);
    }

    // flagA and flagB together: the key is lower-cased first, then cut to its base name, so a mixed-case
    // full path finds the lower-cased entry name.
    {
        MemFile file(makePak('P', 'A', {{"data/UI/Icon.PNG", 0x200, 42}}));
        CPakReader reader(&file, true, true);
        CHECK(reader.getFileCount() == 1);
        CHECK(reader.entries[0].simpleFileName == "icon.png");
        CHECK(reader.findFile("DATA/UI/ICON.PNG") == 0);
    }

    // flagB clear: the entry name is the whole path and the key is not cut, so only the full path matches.
    {
        MemFile file(makePak('P', 'A', {{"data/UI/Icon.PNG", 0x200, 42}}));
        CPakReader reader(&file, false, false);
        CHECK(reader.findFile("data/UI/Icon.PNG") == 0);
        CHECK(reader.findFile("Icon.PNG") == -1);
    }

    // A header whose signature bytes do not match records no entries.
    {
        MemFile file(makePak('X', 'Z', {{"a.txt", 1, 2}}));
        CPakReader reader(&file, false, false);
        CHECK(reader.getFileCount() == 0);
    }

    // A null file gives an empty directory.
    {
        CPakReader reader(nullptr, false, false);
        CHECK(reader.getFileCount() == 0);
    }

    // deletePathFromFilename: text after the last separator; a separator at index 0 or none leaves it.
    {
        CPakReader reader;
        glitch::core::stringc s = "a/b/c.txt";
        reader.deletePathFromFilename(s);
        CHECK(s == "c.txt");
        s = "dir\\file.bin";
        reader.deletePathFromFilename(s);
        CHECK(s == "file.bin");
        s = "/x";
        reader.deletePathFromFilename(s);
        CHECK(s == "/x");
        s = "plain";
        reader.deletePathFromFilename(s);
        CHECK(s == "plain");
        s = "";
        reader.deletePathFromFilename(s);
        CHECK(s.empty());
        s = "a/";
        reader.deletePathFromFilename(s);
        CHECK(s.empty());
    }

    // extractFilename: only '/' splits; a leading '/' or no '/' leaves path empty and simpleFileName the whole path.
    {
        CPakReader plain;
        SPakFileEntry e;
        e.pakFileName = "dir/sub/file.TXT";
        plain.extractFilename(&e);
        CHECK(e.path == "dir/sub/");
        CHECK(e.simpleFileName == "dir/sub/file.TXT");

        SPakFileEntry leading;
        leading.pakFileName = "/root.txt";
        plain.extractFilename(&leading);
        CHECK(leading.path.empty());
        CHECK(leading.simpleFileName == "/root.txt");

        SPakFileEntry backslash;
        backslash.pakFileName = "a\\b";
        plain.extractFilename(&backslash);
        CHECK(backslash.path.empty());
        CHECK(backslash.simpleFileName == "a\\b");

        CPakReader fileNameOnly(nullptr, false, true);
        SPakFileEntry f;
        f.pakFileName = "dir/sub/file.TXT";
        fileNameOnly.extractFilename(&f);
        CHECK(f.simpleFileName == "file.TXT");
        CHECK(f.path == "dir/sub/");

        CPakReader lower(nullptr, true, false);
        SPakFileEntry g;
        g.pakFileName = "Dir/File.TXT";
        lower.extractFilename(&g);
        CHECK(g.pakFileName == "dir/file.txt");
        CHECK(g.path == "dir/");
        CHECK(g.simpleFileName == "dir/file.txt");
    }

    // parseOpeningXMLElement: name, attributes in order (quoted values, spaces around '='), and the
    // position after '>'.
    {
        CharReader reader;
        const std::string text = "item a='1' b=\"x y\" c = 'z'>tail";
        std::vector<char> buffer(text.begin(), text.end());
        buffer.resize(text.size() + 4, 0);
        reader.textData = buffer.data();
        reader.textLength = static_cast<int>(buffer.size());
        reader.current = buffer.data();
        reader.parseOpeningXMLElement();
        CHECK(std::string(reader.getNodeName()) == "item");
        CHECK(!reader.isEmptyElement());
        CHECK(reader.getNodeType() == 1);
        CHECK(reader.getAttributeCount() == 3);
        CHECK(std::string(reader.getAttributeName(0)) == "a" && std::string(reader.getAttributeValue(0)) == "1");
        CHECK(std::string(reader.getAttributeName(1)) == "b" && std::string(reader.getAttributeValue(1)) == "x y");
        CHECK(std::string(reader.getAttributeName(2)) == "c" && std::string(reader.getAttributeValue(2)) == "z");
        CHECK(reader.current == buffer.data() + text.find('>') + 1);
        CHECK(*reader.current == 't');
    }

    // "name/>" with no attributes: the trailing '/' makes an empty element and is not part of the name.
    {
        CharReader reader;
        std::vector<char> buffer = {'b', 'r', '/', '>', 'r', 'e', 's', 't', 0, 0, 0, 0};
        reader.textData = buffer.data();
        reader.textLength = static_cast<int>(buffer.size());
        reader.current = buffer.data();
        reader.parseOpeningXMLElement();
        CHECK(std::string(reader.getNodeName()) == "br");
        CHECK(reader.isEmptyElement());
        CHECK(reader.getAttributeCount() == 0);
        CHECK(*reader.current == 'r');
    }

    // An attribute followed by "/>" with a space before the slash.
    {
        CharReader reader;
        const std::string text = "img src='a.png' />tail";
        std::vector<char> buffer(text.begin(), text.end());
        buffer.resize(text.size() + 4, 0);
        reader.textData = buffer.data();
        reader.textLength = static_cast<int>(buffer.size());
        reader.current = buffer.data();
        reader.parseOpeningXMLElement();
        CHECK(std::string(reader.getNodeName()) == "img");
        CHECK(reader.isEmptyElement());
        CHECK(reader.getAttributeCount() == 1);
        CHECK(std::string(reader.getAttributeValue(0)) == "a.png");
        CHECK(*reader.current == 't');
    }

    // readFile: no byte order mark, so the text is kept as bytes with four zero bytes after it.
    {
        CharReader reader;
        TextCallBack callback("<root a='b'/>");
        CHECK(reader.readFile(&callback));
        CHECK(reader.textLength == 13 + 4);
        CHECK(reader.getSourceFormat() == 0);
        CHECK(static_cast<void*>(reader.textData) == reader.textOwner);
        CHECK(reader.textData[13] == 0 && reader.textData[16] == 0);
        reader.current = reader.textData + 1;
        reader.parseOpeningXMLElement();
        CHECK(std::string(reader.getNodeName()) == "root");
        CHECK(reader.isEmptyElement());
        CHECK(std::string(reader.getAttributeValue("a")) == "b");
    }

    // The destructor (reached through drop) releases the text buffer; running it must not fault.
    {
        CharReader* heap = new CharReader;
        TextCallBack callback("<x/>");
        CHECK(heap->readFile(&callback));
        heap->drop();
    }

    // CMemoryReadFile: getFileName and getFullPath return the name it was given.
    {
        unsigned char bytes[4] = {1, 2, 3, 4};
        CMemoryReadFile memory(bytes, 4, "a/b.bin", false);
        CHECK(std::string(memory.getFileName()) == "a/b.bin");
        CHECK(std::string(memory.getFullPath()) == "a/b.bin");
        CHECK(memory.getSize() == 4);
    }

    if (failures == 0) std::printf("r1-glitch-core-io-pack1-a5bb77-0: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
