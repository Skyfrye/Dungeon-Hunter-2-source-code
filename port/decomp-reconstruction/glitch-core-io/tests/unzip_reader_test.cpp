// CUnZipReader (folder archive): the folder reader finds nothing when the folder holds no such file.
#include "glitch-core-io/io/unzip_reader.hpp"

#include <cstdio>

#define CHECK(c)                                                       \
    do {                                                               \
        if (!(c)) {                                                    \
            std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c);   \
            ++failures;                                                \
        }                                                              \
    } while (0)

int main() {
    int failures = 0;
    glitch::io::CUnZipReader reader(nullptr, "assets", false, true);
    CHECK(reader.folderName == "assets/");  // the constructor appends a separator when the name has none
    glitch::io::CUnZipReader slashed(nullptr, "assets\\", false, true);
    CHECK(slashed.folderName == "assets\\");  // a trailing backslash is kept as it is
    CHECK(reader.getFileCount() == 0);
    CHECK(reader.getFileCount() == 0);
    reader.buildDirectory();
    CHECK(reader.findFile("missing.txt") == -1);
    CHECK(reader.openFile("missing.txt") == nullptr);
    if (failures == 0) std::printf("unzip_reader_test: all checks passed\n");
    return failures == 0 ? 0 : 1;
}
