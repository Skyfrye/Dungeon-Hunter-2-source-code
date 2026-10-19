// CPakReader lookup: heapsort of the entries by name, findFile with the lower-casing key
// (ignoreCase), and openFile by name returning null for a missing entry.
#include "glitch-core-io/core/sort.hpp"
#include "glitch-core-io/io/pak_reader.hpp"

#include <cstdio>

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

using glitch::io::CPakReader;
using glitch::io::SPakFileEntry;

namespace {

SPakFileEntry makeEntry(const char* name, int offset, int size) {
    SPakFileEntry entry;
    entry.simpleFileName = name;
    entry.pos = offset;
    entry.length = size;
    return entry;
}

}  // namespace

int main() {
    int failures = 0;

    CPakReader reader;  // no archive file: lookups only
    reader.ignoreCase = true;
    reader.entries.push_back(makeEntry("b.txt", 20, 2));
    reader.entries.push_back(makeEntry("a.txt", 10, 1));
    reader.entries.push_back(makeEntry("c.txt", 30, 3));
    CHECK(reader.getFileCount() == 3);

    glitch::core::heapsort(reader.entries.data(), static_cast<int>(reader.entries.size()));
    CHECK(reader.entries[0].simpleFileName == "a.txt");
    CHECK(reader.entries[1].simpleFileName == "b.txt");
    CHECK(reader.entries[2].simpleFileName == "c.txt");

    // With ignoreCase the key is lower-cased before the search.
    CHECK(reader.findFile("B.TXT") == 1);
    CHECK(reader.findFile("c.txt") == 2);
    CHECK(reader.findFile("zz.txt") == -1);
    CHECK(reader.openFile("zz.txt") == nullptr);

    reader.ignoreCase = false;
    CHECK(reader.findFile("B.TXT") == -1);
    CHECK(reader.findFile("b.txt") == 1);

    if (failures == 0) std::printf("pak_find_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
