// Test for batch g1-game-app-pack13-4d9327-0. Covers the TestUD type names and the UserData base, VectorSet<T>::push_back_unique
// for int and the two pointer instantiations (dedupe, order, growth and capacity), lstr, and the unsigned int and unsigned char
// value reads on an in-memory stream. Returns non-zero on failure.
//
// Link shims: IStreamBase's out-of-line members (dtor, seekWrite, tellWrite) and sfc::script::lua::UserData's out-of-line
// members (dtor, getUDTypeName, createBindings) are defined in other batches. The shims below do only what these tests need.
#include <algorithm>
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <memory>
#include <string>
#include <vector>

#include "dh2/IStreamBase.hpp"
#include "dh2/StreamReader.hpp"
#include "dh2/TestUD.hpp"
#include "dh2/TestUD2.hpp"
#include "dh2/VectorSet.hpp"
#include "dh2/lstr.hpp"

// The StreamReader reads use this global. Zero keeps the ASSERT silent.
int gAssertLevel = 0;

// Link shims for the other batches (see the comment at the top).
IStreamBase::~IStreamBase() {}
void IStreamBase::seekWrite(std::uint64_t pos) { seek(pos); }
std::uint64_t IStreamBase::tellWrite() const { return tell(); }

namespace sfc {
namespace script {
namespace lua {
UserData::~UserData() {}
const char* UserData::getUDTypeName() const { return nullptr; }
void UserData::createBindings(Binder&) {}
}  // namespace lua
}  // namespace script
}  // namespace sfc

namespace {

// A byte-array stream. The cursor advances with every transfer.
class MemoryStream final : public IStreamBase {
public:
    std::vector<unsigned char> bytes;
    std::uint64_t cursor = 0;

    std::uint32_t size() const override { return static_cast<std::uint32_t>(bytes.size()); }
    bool canRead() const override { return cursor < bytes.size(); }
    bool canWrite() const override { return true; }

    std::uint64_t peek(void* dst, std::uint64_t n) const override {
        const std::uint64_t count = std::min(n, Available());
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        return count;
    }

    std::uint64_t read(void* dst, std::uint64_t n) override {
        const std::uint64_t count = std::min(n, Available());
        if (count != 0) {
            std::memcpy(dst, bytes.data() + cursor, static_cast<std::size_t>(count));
        }
        cursor += count;
        return count;
    }

    std::uint64_t write(const void* src, std::uint64_t n) override {
        const std::uint64_t needed = cursor + n;
        if (bytes.size() < needed) {
            bytes.resize(static_cast<std::size_t>(needed));
        }
        if (n != 0) {
            std::memcpy(bytes.data() + cursor, src, static_cast<std::size_t>(n));
        }
        cursor += n;
        return n;
    }

    void seek(std::uint64_t pos) override { cursor = pos; }
    std::uint64_t tell() const override { return cursor; }
    void skip(std::uint64_t n) override { cursor += n; }

private:
    std::uint64_t Available() const {
        const std::uint64_t total = static_cast<std::uint64_t>(bytes.size());
        return cursor < total ? total - cursor : 0;
    }
};

MemoryStream MakeStream(const std::vector<unsigned char>& bytes) {
    MemoryStream stream;
    stream.bytes = bytes;
    return stream;
}

int g_failures = 0;

void Check(bool condition, const char* what) {
    if (!condition) {
        ++g_failures;
        std::printf("FAIL: %s\n", what);
    }
}

// The elements currently in a set, in order.
template <typename T>
std::vector<T> Contents(const VectorSet<T>& set) {
    return std::vector<T>(set.m_start, set.m_finish);
}

// Frees the storage of a set. The set has no destructor in this batch.
template <typename T>
void Release(VectorSet<T>& set) {
    if (set.m_start != nullptr) {
        std::allocator<T>().deallocate(set.m_start, static_cast<std::size_t>(set.m_endOfStorage - set.m_start));
    }
    set.m_start = nullptr;
    set.m_finish = nullptr;
    set.m_endOfStorage = nullptr;
}

std::ptrdiff_t Size(const VectorSet<int>& set) { return set.m_finish - set.m_start; }
std::ptrdiff_t Capacity(const VectorSet<int>& set) { return set.m_endOfStorage - set.m_start; }

}  // namespace

int main() {
    // TestUD and TestUD2 type names, dispatched through the UserData base.
    {
        TestUD ud;
        Check(std::strcmp(ud.getUDTypeName(), "TestUD") == 0, "TestUD::getUDTypeName is \"TestUD\"");

        TestUD2 ud2;
        Check(std::strcmp(ud2.getUDTypeName(), "TestUD2") == 0, "TestUD2::getUDTypeName is \"TestUD2\"");

        const TestUD& asTestUD = ud2;
        Check(std::strcmp(asTestUD.getUDTypeName(), "TestUD2") == 0, "getUDTypeName dispatches through TestUD");

        const sfc::script::lua::UserData* asUserData = &ud;
        Check(std::strcmp(asUserData->getUDTypeName(), "TestUD") == 0, "TestUD is a UserData");
    }

    // VectorSet<int>: dedupe, order, and the growth and capacity sequence (2, 4, 8).
    {
        VectorSet<int> set{};
        set.push_back_unique(3);
        Check(Size(set) == 1, "first push adds one element");
        Check(Capacity(set) == 2, "the first growth grants 2 slots (8 bytes after node rounding)");

        set.push_back_unique(1);
        set.push_back_unique(3);
        Check(Size(set) == 2, "a repeat of 3 is not added");

        set.push_back_unique(2);
        Check(Capacity(set) == 4, "growth from 2 grants 4 slots");
        Check(Contents(set) == std::vector<int>({3, 1, 2}), "elements keep first-seen order");

        set.push_back_unique(1);
        set.push_back_unique(2);
        set.push_back_unique(3);
        set.push_back_unique(7);
        Check(Contents(set) == std::vector<int>({3, 1, 2, 7}), "the full set takes a new value into the free slot");
        Check(Capacity(set) == 4, "no growth until the storage is full");

        set.push_back_unique(9);
        Check(Capacity(set) == 8, "growth from 4 grants 8 slots");
        Check(Contents(set) == std::vector<int>({3, 1, 2, 7, 9}), "growth keeps the old elements in order");
        Release(set);
    }

    // VectorSet<int> past 0x80 bytes: 32 slots, then 64 with no node rounding.
    {
        VectorSet<int> set{};
        for (int i = 0; i < 32; ++i) {
            set.push_back_unique(i);
        }
        Check(Capacity(set) == 32, "32 elements fill 32 slots (128 bytes, still on the node allocator)");
        for (int i = 0; i < 32; ++i) {
            set.push_back_unique(i);
        }
        Check(Size(set) == 32, "repeats keep the count at 32");

        set.push_back_unique(32);
        Check(Capacity(set) == 64, "the 33rd element grows to 64 (256 bytes, no rounding)");
        Check(Size(set) == 33, "the 33rd element is added");
        Check(Contents(set).back() == 32 && Contents(set).front() == 0, "order is kept across the growth");
        Release(set);
    }

    // VectorSet<AnimatedFX*> and VectorSet<SWFAnim*>: pointer identity decides a repeat.
    {
        static int slots[3];
        AnimatedFX* fx0 = reinterpret_cast<AnimatedFX*>(&slots[0]);
        AnimatedFX* fx1 = reinterpret_cast<AnimatedFX*>(&slots[1]);
        VectorSet<AnimatedFX*> set{};
        set.push_back_unique(fx0);
        set.push_back_unique(fx1);
        set.push_back_unique(fx0);
        Check(Contents(set) == std::vector<AnimatedFX*>({fx0, fx1}), "AnimatedFX* set keeps first occurrences in order");
        Release(set);
    }
    {
        static int slots[3];
        SWFAnim* anim0 = reinterpret_cast<SWFAnim*>(&slots[0]);
        SWFAnim* anim2 = reinterpret_cast<SWFAnim*>(&slots[2]);
        VectorSet<SWFAnim*> set{};
        set.push_back_unique(anim2);
        set.push_back_unique(anim0);
        set.push_back_unique(anim2);
        Check(Contents(set) == std::vector<SWFAnim*>({anim2, anim0}), "SWFAnim* set keeps first occurrences in order");
        Release(set);
    }

    // lstr: true when the left string sorts first.
    {
        lstr less;
        Check(less("apple", "banana"), "lstr orders apple before banana");
        Check(!less("banana", "apple"), "lstr is false in reverse");
        Check(!less("same", "same"), "lstr is false for equal strings");
    }

    // readAs<unsigned int>: four little-endian bytes, then the cursor advances by four.
    {
        MemoryStream stream = MakeStream({0x78, 0x56, 0x34, 0x12, 0xff});
        Check(StreamReader::readAs<unsigned int>(&stream) == 0x12345678u, "readAs<unsigned int> reads little-endian");
        Check(stream.cursor == 4, "readAs<unsigned int> advances by 4");
    }

    // readAs<unsigned char>: one byte.
    {
        MemoryStream stream = MakeStream({0xff});
        Check(StreamReader::readAs<unsigned char>(&stream) == 0xffu, "readAs<unsigned char> reads one byte");
        Check(stream.cursor == 1, "readAs<unsigned char> advances by 1");
    }

    // Short reads (the count is not the size of T) give the bytes that came, with zeros above them.
    {
        MemoryStream stream = MakeStream({0xbb, 0xcc});
        Check(StreamReader::readAs<unsigned int>(&stream) == 0x0000ccbbu, "a short readAs<unsigned int> keeps the bytes read");
        Check(stream.cursor == 2, "a short readAs<unsigned int> advances by what was read");
    }

    // An empty stream reads zero from both value reads.
    {
        MemoryStream empty;
        Check(StreamReader::readAs<unsigned int>(&empty) == 0u, "an empty stream gives 0 for unsigned int");
        Check(StreamReader::readAs<unsigned char>(&empty) == 0u, "an empty stream gives 0 for unsigned char");
    }

    if (g_failures != 0) {
        std::printf("%d check(s) failed\n", g_failures);
        return 1;
    }
    std::printf("g1-game-app-pack13-4d9327-0 tests passed\n");
    return 0;
}
