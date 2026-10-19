// Link test for slice 31 reconstructions (see src/recon/slice_31.cpp). The billboard tests moved out with the billboard stand-in
// (the canonical scene::CBillboardSceneNode is covered by its own tests). The external calls the slice makes into other category code
// are stubbed here so the object links.
#include <cstdio>
#include <string>
#include <vector>

#include "glitch-core-io/io/attributes.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-scene-collada-gui/recon/slice_31.hpp"
#include "recon_src/slice_31.cpp"  // the recon body is compiled into this test only: it is a superseded stand-in layer whose placeholders have no definition

using namespace glitch::collada::recon_31;

// ---------------------------------------------------------------------------
// Stubs for calls into other category code (defined elsewhere in the port).
// ---------------------------------------------------------------------------
const char* const glitch::collada::recon_31::AutomaticCullingNames[] = {"none", nullptr};

namespace glitch::collada::recon_31 {
void ISceneNode_serializeAttributes(const ISceneNode*, IAttributes*, SAttributeReadWriteOptions*) {}
void ISceneNode_deserializeAttributes(ISceneNode*, IAttributes*, SAttributeReadWriteOptions*) {}
void CLight_deserializeAttributes(glitch::video::CLight*, IAttributes*, SAttributeReadWriteOptions*) {}
}  // namespace glitch::collada::recon_31

namespace {

int failures = 0;

#define CHECK(cond)                                                                        \
    do {                                                                                   \
        if (!(cond)) {                                                                     \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond);          \
            ++failures;                                                                    \
        }                                                                                  \
    } while (0)

// Attribute fake: records the names of every add call. It derives from the canonical CAttributes so the slots it does not record are the real
// implementation.
class RecordingAttributes : public glitch::io::CAttributes {
public:
    RecordingAttributes() : glitch::io::CAttributes(nullptr) {}
    std::vector<std::string> names;

    void addFloat(const char* n, float, bool) override { names.emplace_back(n); }
    void addColor(const char* n, glitch::video::SColor, bool) override { names.emplace_back(n); }
};

}  // namespace

int main() {
    if (failures != 0) {
        std::fprintf(stderr, "%d failure(s)\n", failures);
        return 1;
    }
    std::printf("slice 31 tests passed\n");
    return 0;
}
