// CZipReader::deletePathFromFilename: the directory part is removed up to the last
// separator, but a separator at index 0 leaves the name unchanged (the listing's
// backward scan stops there without removing it).
#include <cstdio>
#include <string>

#include "vox-audio/deps/vox_file_system.hpp"

int main() {
    vox::CZipReader reader("zip_path_strip_test_missing.zip", false, false);
    struct Case {
        const char* in;
        const char* out;
    };
    const Case cases[] = {
        {"a/b/c.txt", "c.txt"}, {"c.txt", "c.txt"},  {"/a", "/a"},
        {"/a/b", "b"},          {"dir\\file.wav", "file.wav"}, {"a/", ""},
        {"", ""},
    };
    int failures = 0;
    for (const Case& c : cases) {
        vox::VoxString name = c.in;
        reader.deletePathFromFilename(name);
        if (name != c.out) {
            std::fprintf(stderr, "deletePathFromFilename(\"%s\") gave \"%s\", want \"%s\"\n",
                         c.in, name.c_str(), c.out);
            ++failures;
        }
    }
    if (failures != 0) {
        return 1;
    }
    std::printf("zip_path_strip_test: ok\n");
    return 0;
}
