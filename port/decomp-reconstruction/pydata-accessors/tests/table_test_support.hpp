#pragma once

// Shared helpers of the element-table tests (array_strides_test.cpp, array_strides_02_test.cpp,
// struct_tables_test.cpp). Header only; CMake compiles tests/*.cpp, so this file is not a test itself.
//
// What the tests prove (NOTES.md, "Element tables"):
//  - A pydata table is read from a PACKED sequence of fields (a count word, then each element's own fields one
//    value at a time). There is no 32-bit stride in the file: for example one Structs::Projectile is 59 bytes in the
//    file, 72 bytes in the original's memory and 80 bytes in a 64-bit host object.
//  - The block header keeps the original 32-bit stride word (the Hex-Rays constant) and the count, and the host
//    elements are real objects at sizeof(Elem): each element holds exactly what its own fields decoded to, so no
//    element overlaps its neighbour, whatever sizeof(Elem) is.
#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

#include "pydata-accessors/deps/stream_reader.hpp"
#include "read_bytes_stream.hpp"
#include "pydata-accessors/element_table.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// A stream over a fixed byte buffer; counts what was consumed.
class BufferStream : public ReadBytesStream {
public:
    std::vector<unsigned char> bytes;
    std::size_t pos = 0;
    bool ReadBytes(void* dst, std::size_t n) override {
        if (pos + n > bytes.size()) {
            std::memset(dst, 0, n);
            return false;
        }
        std::memcpy(dst, bytes.data() + pos, n);
        pos += n;
        return true;
    }
    // Packed little-endian writers (the file layout: no padding, no stride).
    BufferStream& u8(unsigned v) { bytes.push_back(static_cast<unsigned char>(v)); return *this; }
    BufferStream& i16(int v) { return put(&v, 2); }
    BufferStream& i32(std::int32_t v) { return put(&v, 4); }
    BufferStream& u32(std::uint32_t v) { return put(&v, 4); }
    BufferStream& f32(float v) { return put(&v, 4); }
    BufferStream& str(const char* s) { for (; *s; ++s) bytes.push_back(static_cast<unsigned char>(*s)); return *this; }

private:
    BufferStream& put(const void* p, std::size_t n) {
        const auto* c = static_cast<const unsigned char*>(p);
        bytes.insert(bytes.end(), c, c + n);
        return *this;
    }
};

// A stream that invents the bytes of any record: a 4-byte read yields 3 + (k mod 13) (so every integer field of
// every element differs from its neighbours and string lengths and element counts stay small), a 2-byte read the
// same value as an int16, a 1-byte read alternates 0/1, and longer reads (string bodies) are filled with letters.
// `first_count` answers the very first 4-byte read, which is the table's count word.
class CounterStream : public ReadBytesStream {
public:
    explicit CounterStream(std::uint32_t first_count, bool has_count = true)
        : first_count_(first_count), pending_count_(has_count) {}
    std::size_t pos = 0;
    bool ReadBytes(void* dst, std::size_t n) override {
        auto* out = static_cast<unsigned char*>(dst);
        if (n == 4) {
            std::uint32_t v = 3 + static_cast<std::uint32_t>(k_ % 13);
            if (pending_count_) {
                v = first_count_;
                pending_count_ = false;
            } else {
                ++k_;
            }
            std::memcpy(out, &v, 4);
        } else if (n == 2) {
            const std::uint16_t v = static_cast<std::uint16_t>(3 + (k_++ % 13));
            std::memcpy(out, &v, 2);
        } else if (n == 1) {
            out[0] = static_cast<unsigned char>(k_++ % 2);
        } else {
            for (std::size_t i = 0; i < n; ++i) out[i] = static_cast<unsigned char>('a' + (k_ + i) % 26);
            ++k_;
        }
        pos += n;
        return true;
    }

private:
    std::uint32_t first_count_;
    bool pending_count_;
    std::uint64_t k_ = 0;
};

// Which 8-byte words of an element are pointers? Two copies of the same element read from identical bytes differ
// exactly in their heap pointers (every other word is a decoded value or zero).
template <class Elem>
std::vector<bool> PointerWords(const Elem& a, const Elem& b) {
    std::vector<bool> is_ptr((sizeof(Elem) + 7) / 8, false);
    for (std::size_t w = 0; w < is_ptr.size(); ++w) {
        const std::size_t off = w * 8;
        const std::size_t len = (off + 8 <= sizeof(Elem)) ? 8 : sizeof(Elem) - off;
        is_ptr[w] = std::memcmp(reinterpret_cast<const unsigned char*>(&a) + off,
                                reinterpret_cast<const unsigned char*>(&b) + off, len) != 0;
    }
    return is_ptr;
}

// Element `got` (inside a table) must hold what the standalone element `want` holds: every non-pointer word
// identical, every pointer word null in both or non-null in both.
template <class Elem>
bool SameDecodedValues(const Elem& got, const Elem& want, const std::vector<bool>& is_ptr) {
    const auto* g = reinterpret_cast<const unsigned char*>(&got);
    const auto* w = reinterpret_cast<const unsigned char*>(&want);
    for (std::size_t word = 0; word < is_ptr.size(); ++word) {
        const std::size_t off = word * 8;
        const std::size_t len = (off + 8 <= sizeof(Elem)) ? 8 : sizeof(Elem) - off;
        if (is_ptr[word]) {
            std::uint64_t a = 0, b = 0;
            std::memcpy(&a, g + off, len);
            std::memcpy(&b, w + off, len);
            if ((a == 0) != (b == 0)) return false;
        } else if (std::memcmp(g + off, w + off, len) != 0) {
            return false;
        }
    }
    return true;
}

// Reads a table of `count` elements through `read_table` (a callable taking the stream) and compares it with
// `count` standalone elements decoded from the same bytes. Returns true when every element matches, the stream
// consumption is identical, and the block header holds `listing_stride` and `count`.
//
// `members`/`size` are the table's statics; `finalize` frees the table afterwards.
template <class Elem, class ReadTable, class Finalize>
bool TableMatchesStandaloneDecode(const char* name, std::uint8_t*& members, std::uint32_t& size,
                                  std::uint32_t listing_stride, std::uint32_t count, ReadTable read_table,
                                  Finalize finalize) {
    bool ok = true;
    auto fail = [&](const char* what) {
        std::printf("FAIL %s (count %u): %s\n", name, count, what);
        ok = false;
    };

    // Two standalone decodes of the same bytes: their difference marks the pointer words.
    CounterStream sa(count, false), sb(count, false);
    std::vector<Elem> want_a(count), want_b(count);
    for (std::uint32_t i = 0; i < count; ++i) want_a[i].read(&sa);
    for (std::uint32_t i = 0; i < count; ++i) want_b[i].read(&sb);

    CounterStream st(count, true);
    read_table(&st);

    if (members == nullptr) {
        fail("members is null after read");
        return false;
    }
    if (size != count) fail("size");
    if (pydata::ElementTableCount(members) != count) fail("count word");
    if (pydata::ElementTableListingStride(members) != listing_stride) fail("stride word is not the 32-bit listing stride");
    if (st.pos != sa.pos + 4) fail("stream consumption differs from the standalone decode");

    const Elem* first = reinterpret_cast<const Elem*>(members);
    for (std::uint32_t i = 0; i < count; ++i) {
        const std::vector<bool> ptr = count ? PointerWords(want_a[i], want_b[i]) : std::vector<bool>();
        if (!SameDecodedValues(first[i], want_a[i], ptr)) {
            std::printf("FAIL %s element %u differs from its standalone decode\n", name, i);
            ok = false;
        }
    }
    finalize();
    if (members != nullptr) fail("finalize left members set");
    // Teardown of the standalone copies as a table does it: finalize every element (which clears the buffer pointers),
    // then destroy. The Item family frees one buffer word in two destructors (the listing does), so it only
    // survives destruction after a finalize.
    for (auto& e : want_a) e.finalize();
    for (auto& e : want_b) e.finalize();
    return ok;
}
