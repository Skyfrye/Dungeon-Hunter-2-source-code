// FileSystemInterface::CloseFile (0x893ff0): a null file gives -1; otherwise the handle from the
// virtual GetFilePtr (vtable slot +0x18) goes to the close function when it is nonzero, and the
// file is destroyed and 0 is returned.
#include <cstdio>

#include "vox-audio/deps/vox_file_system.hpp"

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

int g_close_calls = 0;
void* g_last_closed = nullptr;

void CountingClose(void* file) {
    ++g_close_calls;
    g_last_closed = file;
}

int g_dummy_handle = 0;
}  // namespace

int main() {
    vox::FileSystemInterface fs;
    vox::g_file_close = CountingClose;

    CHECK(fs.CloseFile(nullptr) == -1);
    CHECK(g_close_calls == 0);

    // A file with a handle: the handle reaches the close function and the object is destroyed.
    auto* with_handle = new vox::FileInterface(&g_dummy_handle);
    CHECK(fs.CloseFile(with_handle) == 0);
    CHECK(g_close_calls == 1);
    CHECK(g_last_closed == &g_dummy_handle);

    // A file with no handle: the close function is not called.
    auto* no_handle = new vox::FileInterface(nullptr);
    CHECK(fs.CloseFile(no_handle) == 0);
    CHECK(g_close_calls == 1);

    vox::g_file_close = nullptr;
    return g_failures == 0 ? 0 : 1;
}
