// Stream cursor, memory buffer, file-backed stream and stdio-shim tests.
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "vox-audio/deps/vox_file_system.hpp"
#include "vox-audio/vox/memory.hpp"
#include "vox-audio/vox/stream.hpp"

namespace {

int g_failures = 0;

#define CHECK(cond)                                                       \
    do {                                                                  \
        if (!(cond)) {                                                    \
            std::fprintf(stderr, "%s:%d: CHECK failed: %s\n", __FILE__,   \
                         __LINE__, #cond);                                \
            ++g_failures;                                                 \
        }                                                                 \
    } while (0)

// In-memory FileInterface over a byte vector, for the file-backed stream.
class FakeFile : public vox::FileInterface {
public:
    explicit FakeFile(const std::vector<std::uint8_t>& data) : data_(data) {}
    int Read(void* dst, std::size_t size, std::size_t count) override {
        std::size_t want = size * count;
        std::size_t left = data_.size() - pos_;
        std::size_t n = want < left ? want : left;
        std::memcpy(dst, data_.data() + pos_, n);
        pos_ += n;
        return static_cast<int>(n);
    }
    int Seek(int offset, int whence) override {
        std::size_t base = whence == 0 ? 0 : whence == 1 ? pos_ : data_.size();
        long target = static_cast<long>(base) + offset;
        if (target < 0 || target > static_cast<long>(data_.size())) return -1;
        pos_ = static_cast<std::size_t>(target);
        return 0;
    }
    int Tell() override { return static_cast<int>(pos_); }

private:
    std::vector<std::uint8_t> data_;
    std::size_t pos_ = 0;
};

// Hands out a fresh handle per OpenFile, as a real file system does.
class FakeFileSystem : public vox::FileSystemInterface {
public:
    explicit FakeFileSystem(const std::vector<std::uint8_t>& data) : data_(data) {}
    vox::FileInterface* OpenFile(const char* name, vox::VoxFileAccessMode mode) override {
        (void)name;
        (void)mode;
        ++opens_;
        return new FakeFile(data_);
    }
    int CloseFile(vox::FileInterface* file) override {
        ++closes_;
        delete file;
        return 0;
    }
    int opens_ = 0;
    int closes_ = 0;

private:
    std::vector<std::uint8_t> data_;
};

void TestMemoryBufferReferenced() {
    const std::uint8_t bytes[] = {10, 20, 30, 40, 50};
    vox::StreamMemoryBufferParams params;
    params.data = bytes;
    params.size = 5;
    vox::StreamMemoryBuffer buf(&params);
    CHECK(buf.GetType() == 0);
    CHECK(buf.Size() == 5);
    CHECK(buf.Data() == bytes);  // borrowed, not copied

    vox::StreamCursorInterface* c = buf.CreateNewCursor();
    CHECK(c != nullptr);
    CHECK(c->IsSeekable());
    CHECK(c->AllowBufferReference());
    CHECK(c->Tell() == 0);
    CHECK(!c->EndOfStream());

    std::uint8_t out[3] = {};
    CHECK(c->Read(out, 3) == 3);
    CHECK(out[0] == 10 && out[1] == 20 && out[2] == 30);
    CHECK(c->Tell() == 3);

    // Asking for more than remains returns what is left.
    std::uint8_t tail[8] = {};
    CHECK(c->Read(tail, 8) == 2);
    CHECK(tail[0] == 40 && tail[1] == 50);
    CHECK(c->EndOfStream());
    CHECK(c->Read(tail, 8) == 0);

    buf.DestroyCursor(c);
}

void TestCursorSeekAndReadRef() {
    const std::uint8_t bytes[] = {1, 2, 3, 4, 5, 6, 7, 8};
    vox::StreamMemoryBufferParams params;
    params.data = bytes;
    params.size = 8;
    vox::StreamMemoryBuffer buf(&params);
    vox::StreamMemoryBufferCursor cur(&buf);

    CHECK(cur.Seek(3, 0) == 0);
    CHECK(cur.Tell() == 3);
    CHECK(cur.Seek(2, 1) == 0);  // relative
    CHECK(cur.Tell() == 5);
    CHECK(cur.Seek(8, 0) == 0);  // position == size is allowed
    CHECK(cur.EndOfStream());
    CHECK(cur.Seek(9, 0) == -1);  // beyond size fails
    CHECK(cur.Tell() == 8);
    CHECK(cur.Seek(-1, 0) == -1);
    // whence 2 is size + ~offset: offset 0 gives size - 1.
    CHECK(cur.Seek(0, 2) == 0);
    CHECK(cur.Tell() == 7);

    CHECK(cur.Seek(6, 0) == 0);
    std::uint8_t* ref = nullptr;
    CHECK(cur.ReadRef(ref, 10) == 2);  // only two bytes remain
    CHECK(ref == bytes + 6);
    CHECK(cur.Tell() == 8);
    CHECK(cur.ReadRef(ref, 1) == 0);
}

void TestEmptyCursorAndNullOwner() {
    vox::StreamMemoryBufferCursor cur(nullptr);
    CHECK(cur.EndOfStream());  // size 0 and position 0
    std::uint8_t b = 0;
    CHECK(cur.Read(&b, 1) == 0);
}

void TestCopiedBufferOwnsData() {
    const std::uint8_t bytes[] = {9, 8, 7};
    vox::StreamMemoryBufferParams params;
    params.data = bytes;
    params.size = 3;
    params.explicit_owns = true;
    params.owns = false;  // caller keeps ownership: the port copies
    vox::StreamMemoryBuffer buf(&params);
    CHECK(buf.Size() == 3);  // size is kept after a successful copy
    CHECK(buf.Data() != nullptr);
    CHECK(buf.Data() != bytes);
}

void TestStdioShims() {
    const std::uint8_t bytes[] = {0x41, 0x42, 0x43, 0x44};
    vox::StreamMemoryBufferParams params;
    params.data = bytes;
    params.size = 4;
    vox::StreamMemoryBuffer buf(&params);
    vox::StreamCursorInterface* c = buf.CreateNewCursor();
    CHECK(c != nullptr);

    CHECK(fgetc(c) == 0x41);
    CHECK(ftell(c) == 1);
    std::uint8_t two[2] = {};
    CHECK(fread(two, 1, 2, c) == 2);
    CHECK(two[0] == 0x42 && two[1] == 0x43);
    CHECK(ftell(c) == 3);
    CHECK(fseek(c, 0, 0) == 0);
    CHECK(ftell(c) == 0);
    CHECK(fread(two, 2, 1, c) == 1);  // element count is bytes / size
    CHECK(fseek(static_cast<vox::StreamCursorInterface*>(nullptr), 0, 0) == -1);
    CHECK(ftell(static_cast<vox::StreamCursorInterface*>(nullptr)) == -1);
    CHECK(fread(two, 1, 1, static_cast<vox::StreamCursorInterface*>(nullptr)) == 0);
    CHECK(fclose(c) == 0);
    buf.DestroyCursor(c);
}

void TestFileBackedStream() {
    // 0x8000 + 100 bytes forces a refill of the 32 KiB read-ahead window.
    std::vector<std::uint8_t> data(0x8000 + 100);
    for (std::size_t i = 0; i < data.size(); ++i) {
        data[i] = static_cast<std::uint8_t>(i * 7 + 3);
    }
    FakeFileSystem fs(data);
    vox::SetFileSystemInstanceForTests(&fs);

    vox::StreamCFile stream("sound.bin");
    CHECK(stream.GetType() == 1);
    stream.Init();
    CHECK(stream.Size() == static_cast<int>(data.size()));
    CHECK(fs.opens_ == 2 && fs.closes_ == 2);  // the ctor with a path runs Init (0x888c68), then the explicit Init: each opens and closes

    vox::StreamCursorInterface* c = stream.CreateNewCursor();
    CHECK(c != nullptr);
    c->Init();
    CHECK(c->IsSeekable());
    CHECK(!c->EndOfStream());

    // Read across the window boundary and compare every byte.
    std::vector<std::uint8_t> got(data.size());
    int total = 0;
    while (total < static_cast<int>(data.size())) {
        int n = c->Read(got.data() + total, 1000);
        if (n <= 0) break;
        total += n;
    }
    CHECK(total == static_cast<int>(data.size()));
    CHECK(std::memcmp(got.data(), data.data(), data.size()) == 0);
    CHECK(c->EndOfStream());

    CHECK(c->Seek(0x7ff0, 0) == 0);
    CHECK(c->Tell() == 0x7ff0);
    std::uint8_t one = 0;
    CHECK(c->Read(&one, 1) == 1);
    CHECK(one == data[0x7ff0]);

    stream.DestroyCursor(c);
    vox::SetFileSystemInstanceForTests(nullptr);
}

}  // namespace

int main() {
    TestMemoryBufferReferenced();
    TestCursorSeekAndReadRef();
    TestEmptyCursorAndNullOwner();
    TestCopiedBufferOwnsData();
    TestStdioShims();
    TestFileBackedStream();
    if (g_failures == 0) {
        std::printf("stream_test: all checks passed\n");
        return 0;
    }
    std::printf("stream_test: %d failures\n", g_failures);
    return 1;
}
