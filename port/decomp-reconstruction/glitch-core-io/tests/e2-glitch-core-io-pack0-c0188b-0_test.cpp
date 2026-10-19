// Checks the EM4CONST_COPY copy-constructor clones 0x66bf24, 0x66fb64 and 0x6f6f68 (batch e2).
// The Hex-Rays body is a1[64] = 0; memcpy(a1, a2, 65). The definition under test is the e1 one.
#include <cstdio>

#include "glitch-shared/glitch_core.hpp"

using glitch::core::CMatrix4;

static int failures = 0;

static void check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++failures;
    }
}

int main() {
    CMatrix4<float> src{};
    for (int i = 0; i < 16; ++i) src.M[i] = static_cast<float>(i) * 0.5f - 3.0f;

    // Flag clear in the source: the copy must clear it.
    src.flag = false;
    CMatrix4<float> copy(src, CMatrix4<float>::EM4CONST_COPY);
    bool values_ok = true;
    for (int i = 0; i < 16; ++i) values_ok = values_ok && copy.M[i] == src.M[i];
    check(values_ok, "values copied");
    check(copy.flag == false, "flag copied from source (clear)");

    // Flag set in the source: the copy must set it (the pseudocode's flag store is overwritten by the memcpy).
    src.flag = true;
    CMatrix4<float> copy2(src, CMatrix4<float>::EM4CONST_COPY);
    check(copy2.flag == true, "flag copied from source (set)");

    if (failures == 0) std::printf("e2 CMatrix4 copy clones: OK\n");
    return failures == 0 ? 0 : 1;
}
