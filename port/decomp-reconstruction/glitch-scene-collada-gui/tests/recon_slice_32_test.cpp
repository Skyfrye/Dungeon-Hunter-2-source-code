#include "glitch-scene-collada-gui/recon/slice_32.hpp"

#include <cstdio>
#include <cstdint>

using namespace glitch::collada::recon_32;

// The tests only pass references to objects they never touch, so a suitably aligned
// buffer stands in for the incomplete class instances.
static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {
alignas(16) unsigned char storage[256];
}

int main() {
    auto& db = *reinterpret_cast<const glitch::collada::CColladaDatabase*>(storage);

    // Null entries return nullptr before the factory is touched.
    CHECK(CColladaDatabase_constructCoronas(db, nullptr, static_cast<glitch::collada::SCoronas*>(nullptr), nullptr,
                                            nullptr) == nullptr);
    CHECK(CColladaDatabase_constructEmitter(db, nullptr, static_cast<glitch::collada::SEmitter*>(nullptr), nullptr,
                                            nullptr, nullptr) == nullptr);
    CHECK(CColladaDatabase_constructGNPSEmitter(db, nullptr, static_cast<glitch::collada::SGNPSEmitter*>(nullptr),
                                                nullptr, nullptr, nullptr) == nullptr);

    std::printf("%s\n", failures ? "recon_slice_32: FAILED" : "recon_slice_32: ok");
    return failures != 0;
}
