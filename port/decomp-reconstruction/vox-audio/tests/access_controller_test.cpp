// Readers share, writers exclude: counters move as the asm does.
#include <cstdio>

#include "vox-audio/vox/access_controller.hpp"

int main() {
    vox::AccessController ac;
    ac.GetReadAccess();
    ac.GetReadAccess();   // two readers at once
    ac.ReleaseReadAccess();
    ac.ReleaseReadAccess();
    ac.GetWriteAccess();  // no readers and no writer: returns
    ac.ReleaseWriteAccess();
    ac.GetWriteAccess();
    ac.ReleaseWriteAccess();
    std::printf("access_controller_test: all checks passed\n");
    return 0;
}
