// Test for batch v1-vendor-gameswf-gameswf_image_alpha-621a91-0 (gameswf::image_alpha).
//
// The test supplies the callees that belong to other batches, so the pixel, hash, comparison and
// allocation logic can run on its own:
//   gameswf::image_base constructor and destructor (0x7b5224, 0x7b5a08): store the fields; the destructor
//       frees m_data through free_internal and clears it, as the listing does
//   gameswf::free_internal (0x752b38): counted, then free()
//   gameswf::scanline, both overloads (0x7b526c, 0x7b527c): m_data + m_pitch * y, the listing's arithmetic
//   operator new[](size, swf::MemHint) (0x752ba4): malloc(), with the last size recorded
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//     port/decomp-reconstruction/vendor-gameswf/src/v1-vendor-gameswf-gameswf_image_alpha-621a91-0.cpp

#include <cstddef>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <new>
#include <vector>

#include "core-platform/deps/swf_types.hpp"
#include "vendor-gameswf/image_alpha.hpp"

namespace {

int g_failures = 0;
int g_free_calls = 0;
int g_new_calls = 0;
std::size_t g_last_new_size = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::printf("FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++g_failures;                                              \
        }                                                              \
    } while (0)

// The hash step of the binary, applied to an explicit byte sequence in the order the test expects.
unsigned int fold(const std::vector<std::uint8_t>& bytes) {
    unsigned int h = 5381;
    for (std::uint8_t b : bytes) {
        h = (33u * h) ^ b;
    }
    return h;
}

// Clears the pixel buffer. operator new[] (0x752ba4) does not zero memory.
void zero(gameswf::image_alpha& img) {
    std::memset(img.m_data, 0, static_cast<std::size_t>(img.m_pitch) * static_cast<std::size_t>(img.m_height));
}

}  // namespace

namespace gameswf {

void free_internal(void* p, unsigned int size);

image_base::image_base(std::uint8_t* data, int width, int height, int pitch, id_image type)
    : m_type(type), m_data(data), m_width(width), m_height(height), m_pitch(pitch) {}

image_base::~image_base() {
    if (m_data != nullptr) {
        free_internal(m_data, 0);
        m_data = nullptr;
    }
}

void free_internal(void* p, unsigned int) {
    ++g_free_calls;
    std::free(p);
}

std::uint8_t* scanline(image_base* surf, int y) {
    return surf->m_data + surf->m_pitch * y;
}

const std::uint8_t* scanline(const image_base* surf, int y) {
    return surf->m_data + surf->m_pitch * y;
}

}  // namespace gameswf

void* operator new[](std::size_t size, swf::MemHint) {
    ++g_new_calls;
    g_last_new_size = size;
    return std::malloc(size);
}

int main() {
    // 1. Constructor: base fields and the buffer. Width 3, height 2 gives pitch 3 and 6 bytes.
    {
        const int new_before = g_new_calls;
        gameswf::image_alpha a(3, 2);
        CHECK(g_new_calls == new_before + 1);
        CHECK(g_last_new_size == 6);
        CHECK(a.m_width == 3);
        CHECK(a.m_height == 2);
        CHECK(a.m_pitch == 3);
        CHECK(a.m_type == gameswf::image_base::ALPHA);
        CHECK(a.m_data != nullptr);
    }

    // 2. Destructor: the base destructor frees m_data once when the object goes out of scope.
    {
        const int free_before = g_free_calls;
        {
            gameswf::image_alpha b(2, 2);
            CHECK(g_free_calls == free_before);
        }
        CHECK(g_free_calls == free_before + 1);
    }

    // 3. Heap object: delete runs the deleting destructor (compiler), which frees m_data then the object.
    {
        const int free_before = g_free_calls;
        gameswf::image_alpha* p = new gameswf::image_alpha(1, 1);
        delete p;
        CHECK(g_free_calls == free_before + 1);
    }

    // 4. set_pixel stores at row y, column x: row y starts at m_pitch * y.
    {
        gameswf::image_alpha c(3, 2);
        for (int i = 0; i < 6; ++i) {
            c.m_data[i] = 0;
        }
        c.set_pixel(2, 1, 0x7f);
        CHECK(c.m_data[1 * 3 + 2] == 0x7f);
        int others = 0;
        for (int i = 0; i < 6; ++i) {
            if (i != 5 && c.m_data[i] != 0) {
                ++others;
            }
        }
        CHECK(others == 0);
        c.set_pixel(0, 0, 0x11);
        CHECK(c.m_data[0] == 0x11);
    }

    // 5. compute_hash: width bytes (descending), then height bytes (descending), then each row descending.
    {
        // 1 x 1 image with pixel 0x41: width 1 -> 00 00 00 01, height 1 -> 00 00 00 01, row -> 41.
        gameswf::image_alpha one(1, 1);
        one.m_data[0] = 0x41;
        const unsigned int expect_one = fold({0, 0, 0, 1, 0, 0, 0, 1, 0x41});
        CHECK(one.compute_hash() == expect_one);

        // 2 x 2 image: row 0 is (10, 20), row 1 is (30, 40). Each row is fed from its last byte down:
        // 20, 10 then 40, 30.
        gameswf::image_alpha two(2, 2);
        two.set_pixel(0, 0, 10);
        two.set_pixel(1, 0, 20);
        two.set_pixel(0, 1, 30);
        two.set_pixel(1, 1, 40);
        const unsigned int expect_two = fold({0, 0, 0, 2, 0, 0, 0, 2, 20, 10, 40, 30});
        CHECK(two.compute_hash() == expect_two);

        // Changing one pixel changes the hash.
        gameswf::image_alpha two_b(2, 2);
        two_b.set_pixel(0, 0, 10);
        two_b.set_pixel(1, 0, 20);
        two_b.set_pixel(0, 1, 30);
        two_b.set_pixel(1, 1, 41);
        CHECK(two_b.compute_hash() != two.compute_hash());
    }

    // 6. operator==: equal contents compare equal. A different pixel, width or height does not. The
    //    buffer from operator new[] is not zeroed, so each image is cleared before it is compared.
    {
        gameswf::image_alpha a(2, 2);
        gameswf::image_alpha b(2, 2);
        zero(a);
        zero(b);
        a.set_pixel(1, 1, 9);
        b.set_pixel(1, 1, 9);
        CHECK(a == b);
        CHECK(b == a);

        b.set_pixel(0, 0, 1);
        CHECK(!(a == b));

        gameswf::image_alpha wide(3, 2);
        zero(wide);
        CHECK(!(a == wide));

        gameswf::image_alpha tall(2, 3);
        zero(tall);
        CHECK(!(a == tall));

        // A single-row image compares only that row.
        gameswf::image_alpha r1(4, 1);
        gameswf::image_alpha r2(4, 1);
        zero(r1);
        zero(r2);
        r1.set_pixel(3, 0, 5);
        r2.set_pixel(3, 0, 5);
        CHECK(r1 == r2);
        r2.set_pixel(2, 0, 6);
        CHECK(!(r1 == r2));
    }

    if (g_failures == 0) {
        std::printf("image_alpha test: all checks passed\n");
        return 0;
    }
    std::printf("image_alpha test: %d failure(s)\n", g_failures);
    return 1;
}
