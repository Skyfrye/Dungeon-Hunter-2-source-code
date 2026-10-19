// Heap sort and binary search templates, byteswap, rect::constrainTo, the process
// buffer heap accessors and shared_ptr<char>::reset.
#include "glitch-core-io/boost/shared_count.hpp"
#include "glitch-core-io/core/process_buffer.hpp"
#include "glitch-core-io/core/sort.hpp"
#include "glitch-core-io/deps/glitch_core.hpp"
#include "glitch-core-io/os/byteswap.hpp"

#include <cstdint>
#include <cstdio>
#include <cstring>
#include <vector>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

int main() {
    // heapsort sorts ascending; an empty and a single-element array are left alone.
    int values[] = {5, 1, 4, 2, 3, 9, 0};
    glitch::core::heapsort(values, 7);
    CHECK(values[0] == 0 && values[1] == 1 && values[2] == 2 && values[3] == 3);
    CHECK(values[4] == 4 && values[5] == 5 && values[6] == 9);
    int single[] = {7};
    glitch::core::heapsort(single, 1);
    CHECK(single[0] == 7);
    glitch::core::heapsort(single, 0);
    CHECK(single[0] == 7);

    // heapsink on a 1-based heap: the root sinks below larger children.
    int heap[] = {1, 9, 8, 2, 3, 4, 5};  // max-heap except the root
    glitch::core::heapsink(heap, 1, 8);
    CHECK(heap[0] == 9);

    // binary_search returns the index of an equal element, or -1.
    const std::vector<int> sorted = {1, 3, 5, 7};
    CHECK(glitch::core::binary_search(sorted, 5) == 2);
    CHECK(glitch::core::binary_search(sorted, 1) == 0);
    CHECK(glitch::core::binary_search(sorted, 4) == -1);
    CHECK(glitch::core::binary_search(std::vector<int>{}, 4) == -1);

    // byteswap reverses the four bytes of each float.
    const float one = 1.0f;  // 0x3f800000
    std::uint32_t bits = 0;
    const float swapped = glitch::os::byteswap(one);
    std::memcpy(&bits, &swapped, sizeof bits);
    CHECK(bits == 0x0000803fu);
    const glitch::core::vector3d<float> v = glitch::os::byteswap(glitch::core::vector3d<float>{one, 0.f, 0.f});
    std::memcpy(&bits, &v.X, sizeof bits);
    CHECK(bits == 0x0000803fu && v.Y == 0.f);

    // rect::constrainTo: a rectangle that fits is moved inside the limit; one that does
    // not fit is left alone.
    glitch::core::rect<int> limit{0, 0, 100, 100};
    glitch::core::rect<int> box{90, 95, 110, 105};
    CHECK(box.constrainTo(limit));
    CHECK(box.LowerRightCorner.X == 100 && box.LowerRightCorner.Y == 100 && box.UpperLeftCorner.X == 80 && box.UpperLeftCorner.Y == 90);
    glitch::core::rect<int> huge{0, 0, 200, 10};
    CHECK(!huge.constrainTo(limit) && huge.LowerRightCorner.X == 200);

    // The process buffer heap accessors start from an empty heap with the excess flag set (the static
    // initializer sets byte_9F65C4 = 1).
    CHECK(glitch::core::getProcessBufferHeapSize() == 0);
    CHECK(glitch::core::isProcessBufferHeapExcessEnabled());
    glitch::core::setProcessBufferHeapExcessEnabled(true);
    CHECK(glitch::core::isProcessBufferHeapExcessEnabled());
    glitch::core::setProcessBufferHeapExcessEnabled(false);
    CHECK(!glitch::core::isProcessBufferHeapExcessEnabled());

    // shared_ptr<char>::reset owns the new pointer and releases the old one.
    boost::detail::shared_ptr_char owner;
    char* first = new char('a');
    owner.reset(first);
    CHECK(owner.px == first);
    owner.reset(nullptr);
    CHECK(owner.px == nullptr);

    std::printf("%s\n", failures ? "core_templates: FAILED" : "core_templates: ok");
    return failures != 0;
}
