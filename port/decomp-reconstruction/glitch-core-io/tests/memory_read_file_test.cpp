// CMemoryReadFile: constructors, set(), and clone() sharing an owned block.
#include "glitch-core-io/io/memory_read_file.hpp"

#include <cstdio>
#include <cstring>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using glitch::io::CMemoryReadFile;

int main() {
    char block[8] = "abcdefg";

    CMemoryReadFile empty;
    CHECK(empty.buffer == nullptr && empty.size == 0 && empty.position == 0 && empty.name.empty());
    CHECK(empty.owned == nullptr);

    CMemoryReadFile view(block, 8, "view.bin", false);
    CHECK(view.buffer == block && view.size == 8 && view.name == "view.bin");
    CHECK(view.owned == nullptr);
    CHECK(view.referenceCounter == 1);

    view.position = 5;
    view.set(block, 4, "again.bin");
    CHECK(view.size == 4 && view.position == 0 && view.name == "again.bin");

    view.set(block, 2, nullptr);
    CHECK(view.name.empty());

    // a clone is a new file (refcount 1) over the same block, with the same position
    view.position = 3;
    CMemoryReadFile* copy = view.clone();
    CHECK(copy != &view && copy->referenceCounter == 1);
    CHECK(copy->buffer == block && copy->size == 2 && copy->position == 3 && copy->name.empty());
    delete copy;

    // owning constructor: the block is freed when the last owner goes away
    char* heapByte = new char('x');
    {
        CMemoryReadFile owner(heapByte, 1, "owned.bin", true);
        CHECK(owner.owned.get() == heapByte && owner.owned.use_count() == 1);
        CMemoryReadFile* shared = owner.clone();
        CHECK(shared->owned.use_count() == 2);
        delete shared;
        CHECK(owner.owned.use_count() == 1);
    }

    if (failures == 0) std::printf("memory_read_file_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
