// Batch r1-glitch-core-io-pack5-d3217f-0: CLimitReadFile five-argument init and clone (the second
// name is the full name, and clone passes it back), SStreamItrLoader (big-endian element reads, no
// read on the clear path, the stride), and SIDedCollection over IShaderCode (the use-count rule of
// remove, the trailing trim, removeAll's count, and the length kept when every entry is unset).
#include <cstdint>
#include <cstdio>
#include <string>
#include <utility>

#include "glitch-core-io/boost/intrusive_ptr.hpp"
#include "io_stub_files.hpp"
#include "io_video_fakes.hpp"
#include "glitch-core-io/core/sided_collection.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/io/limit_read_file.hpp"
#include "glitch-core-io/io/stream_itr_loader.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

using glitch::io::CLimitReadFile;
using glitch::io::IReadFile;
namespace sc = glitch::core::detail::sidedcollection;

using Codes = glitch::core::detail::SIDedCollection<boost::intrusive_ptr<glitch::video::IShaderCode>,
                                                    std::uint16_t, false, sc::SEmptyProperties, sc::SValueTraits>;

// A read file with a fixed position and full path, to drive CLimitReadFile.
class FakeFile : public glitch::io::testing::StubReadFile {
public:
    FakeFile(long pos, std::string full) : position(pos), fullPath(std::move(full)) {}
    long getPos() const override { return position; }
    bool seek(long offset, bool relative) override {
        position = relative ? position + offset : offset;
        return true;
    }
    const char* getFullPath() const override { return fullPath.c_str(); }
    IReadFile* clone() const override { return new FakeFile(position, fullPath); }

    long position;
    std::string fullPath;
};

// A read file over a byte block that implements read (CMemoryReadFile::read is not reconstructed).
class BufferFile : public glitch::io::testing::StubReadFile {
public:
    BufferFile(const unsigned char* data, unsigned int length) : bytes(data), size(length) {}
    std::int32_t read(void* buffer, std::uint32_t count) override {
        unsigned char* out = static_cast<unsigned char*>(buffer);
        std::uint32_t i = 0;
        for (; i < count && pos < size; ++i) out[i] = bytes[pos++];
        return static_cast<std::int32_t>(i);
    }
    long getPos() const override { return static_cast<long>(pos); }

    const unsigned char* bytes;
    unsigned int size;
    unsigned int pos = 0;
};

// A fresh shader code with one use (born with count 0, so the (ptr, true) form takes the use).
boost::intrusive_ptr<glitch::video::IShaderCode> newCode() {
    return boost::intrusive_ptr<glitch::video::IShaderCode>(new io_test_fakes::FakeShaderCode(), true);
}

// init: the five-argument form takes the second name as the full name; clone copies the full name.
void testSecondNameIsFullName() {
    FakeFile* base = new FakeFile(5, "dir");
    CLimitReadFile lim(base, 7, "a.dat", "window.name");
    CHECK(lim.start == 5 && lim.end == 12 && lim.position == 5);
    CHECK(lim.name == "a.dat");
    CHECK(lim.fullName == "window.name");

    IReadFile* c = lim.clone();
    auto* copy = static_cast<CLimitReadFile*>(c);
    CHECK(copy->name == "a.dat");
    CHECK(copy->fullName == "window.name");
    CHECK(copy->start == 5 && copy->end == 12 && copy->position == 5);
    c->drop();

    // Without a second name the full name is the wrapped path, a slash and the name.
    FakeFile* base2 = new FakeFile(2, "pack");
    CLimitReadFile plain(base2, 4, "p.bin");
    CHECK(plain.fullName == "pack/p.bin");
    IReadFile* c2 = plain.clone();
    CHECK(static_cast<CLimitReadFile*>(c2)->fullName == "pack/p.bin");
    c2->drop();

    base->drop();
    base2->drop();
}

// SStreamItrLoader: elements of 2, 4 and 8 bytes are read big-endian and stored in host order when the
// swap flag is set; otherwise (or for size 1) nothing is read; the destination advances by the stride.
void testLoaderSwapAndClearPath() {
    const unsigned char bytes[] = {0x01, 0x02, 0x03, 0x04, 0xAA, 0xBB, 0xCC, 0xDD};
    BufferFile file(bytes, sizeof(bytes));

    std::uint32_t out[2] = {0, 0};
    glitch::io::SStreamItrLoader loader;
    loader.data = reinterpret_cast<std::uint8_t*>(out);
    loader.count = 2;
    loader.elementSize = 4;
    loader.stride = 8;
    loader.loadAndAdvance(&file, true);
    CHECK(out[0] == 0x01020304u);
    CHECK(out[1] == 0xAABBCCDDu);
    CHECK(loader.data == reinterpret_cast<std::uint8_t*>(out) + 8);
    CHECK(file.getPos() == 8);

    // Clear swap flag: no read, the destination still advances by the stride.
    BufferFile untouched(bytes, sizeof(bytes));
    glitch::io::SStreamItrLoader clear;
    clear.data = reinterpret_cast<std::uint8_t*>(out);
    clear.count = 1;
    clear.elementSize = 4;
    clear.stride = 4;
    clear.loadAndAdvance(&untouched, false);
    CHECK(untouched.getPos() == 0);
    CHECK(clear.data == reinterpret_cast<std::uint8_t*>(out) + 4);

    // Element size 1 is not read on the swap path either.
    BufferFile single(bytes, sizeof(bytes));
    glitch::io::SStreamItrLoader one;
    one.data = reinterpret_cast<std::uint8_t*>(out);
    one.count = 1;
    one.elementSize = 1;
    one.stride = 1;
    one.loadAndAdvance(&single, true);
    CHECK(single.getPos() == 0);

    // A two-byte element: big-endian 0x1234 is stored as the host value 0x1234.
    const unsigned char pair[] = {0x12, 0x34};
    BufferFile pairFile(pair, sizeof(pair));
    std::uint16_t value16 = 0;
    glitch::io::SStreamItrLoader two;
    two.data = reinterpret_cast<std::uint8_t*>(&value16);
    two.count = 1;
    two.elementSize = 2;
    two.stride = 2;
    two.loadAndAdvance(&pairFile, true);
    CHECK(value16 == 0x1234);
    CHECK(pairFile.getPos() == 2);
}

// SIDedCollection<IShaderCode>: remove refuses a value with another holder unless forced; removing the
// last entry cuts the trailing unset entries; nextId moves down to the removed id.
void testCodesRemoveRules() {
    Codes codes;
    CHECK(codes.add("a", newCode()) == 0);
    CHECK(codes.add("b", newCode()) == 1);
    CHECK(codes.add("c", newCode()) == 2);
    CHECK(codes.size() == 3);
    CHECK(codes.getNextId() == 3);

    {
        boost::intrusive_ptr<glitch::video::IShaderCode> keep = codes.get(2)->value;  // a second holder
        CHECK(!codes.remove(2, false));  // refused: the use count is not 1
        CHECK(codes.size() == 3);
        CHECK(codes.getId("c") == 2);
    }

    CHECK(codes.remove(2, false));  // the last id: entries cut to the last set one
    CHECK(codes.size() == 2);
    CHECK(codes.getMaxID() == 1);
    CHECK(codes.getNextId() == 2);
    CHECK(codes.getId("c") == 0xffff);

    CHECK(!codes.remove(7, true));  // out of range

    CHECK(codes.remove(0, false));  // entry 0 is unset, entry 1 stays, so nothing is cut
    CHECK(codes.size() == 1);
    CHECK(codes.getMaxID() == 1);
    CHECK(codes.getNextId() == 0);
    CHECK(codes.add("d", newCode()) == 0);  // the freed id is reused
    CHECK(codes.getNextId() == 2);
}

// removeAll(false) walks the names in key order, removes the unused values and returns their count.
// When every entry is unset the vector keeps its length.
void testCodesRemoveAll() {
    Codes codes;
    CHECK(codes.add("x", newCode()) == 0);
    CHECK(codes.add("y", newCode()) == 1);
    CHECK(codes.add("z", newCode()) == 2);

    {
        boost::intrusive_ptr<glitch::video::IShaderCode> keep = codes.get(1)->value;  // y has two holders
        CHECK(codes.removeAll(false) == 2);  // x and z go, y stays
        CHECK(codes.size() == 1);
        CHECK(codes.getId("y") == 1);
        CHECK(codes.getMaxID() == 1);  // z was the trailing entry: entries cut to y
    }

    CHECK(codes.removeAll(false) == 1);  // y is unused now
    CHECK(codes.size() == 0);
    CHECK(codes.getMaxID() == 1);  // all entries unset: the length is kept
    CHECK(codes.removeAll(false) == 0);
}

}  // namespace

int main() {
    testSecondNameIsFullName();
    testLoaderSwapAndClearPath();
    testCodesRemoveRules();
    testCodesRemoveAll();
    if (failures == 0) std::printf("r1-glitch-core-io-pack5-d3217f-0_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
