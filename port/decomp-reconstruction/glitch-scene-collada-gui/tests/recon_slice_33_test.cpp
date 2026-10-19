// Tests for slice 33 reconstructions (see src/recon/slice_33.cpp).
#include <cstdio>
#include <map>
#include <string>
#include <vector>

#include "glitch-scene-collada-gui/recon/slice_33.hpp"

using namespace glitch::collada::recon_33;

namespace {

int failures = 0;

#define CHECK(cond)                                                    \
    do {                                                               \
        if (!(cond)) {                                                 \
            std::fprintf(stderr, "FAIL %s:%d: %s\n", __FILE__, __LINE__, #cond); \
            ++failures;                                                \
        }                                                              \
    } while (0)

// Records the bool and float attributes written by a serializer and serves them back.
class FakeAttributes : public IAttributesStandIn {
public:
    std::map<std::string, bool> bools;
    std::map<std::string, float> floats;

    void addBool(const char* name, bool value) override { bools[name] = value; }
    bool getBool(const char* name) override { return bools[name]; }
    void addInt(const char*, std::int32_t) override {}
    std::int32_t getInt(const char*) override { return 0; }
    void addFloat(const char* name, float value) override { floats[name] = value; }
    float getFloat(const char* name) override { return floats[name]; }
    void addString(const char*, const std::string&) override {}
    std::string getString(const char*) override { return {}; }
    void addEnum(const char*, std::int32_t, const char* const*) override {}
    std::int32_t getEnum(const char*, const char* const*) override { return 0; }
    void addColor(const char*, std::uint32_t) override {}
    std::uint32_t getColor(const char*) override { return 0; }
    void addVector2d(const char*, const glitch::core::position2d<std::int32_t>&) override {}
    glitch::core::position2d<std::int32_t> getVector2d(const char*) override { return {}; }
    void addVector3d(const char*, const glitch::core::vector3d<float>&) override {}
    glitch::core::vector3d<float> getVector3d(const char*) override { return {}; }
    void addRect(const char*, const glitch::core::rect<std::int32_t>&) override {}
    glitch::core::rect<std::int32_t> getRect(const char*) override { return {}; }
    void addQuaternion(const char*, const float[4]) override {}
    void getQuaternion(float out[4], const char*) override { out[0] = out[1] = out[2] = out[3] = 0.0f; }
    void addTexture(const char*, ITextureStandIn*) override {}
    ITextureStandIn* getTexture(const char*) override { return nullptr; }
    const char* attributeNameAt(std::int32_t) override { return nullptr; }
    std::int32_t intAt(std::int32_t) override { return 0; }
    float floatAt(std::int32_t) override { return 0.0f; }
    std::uint32_t colorAt(std::int32_t) override { return 0; }
    glitch::core::vector3d<float> vector3dAt(std::int32_t) override { return {}; }
};

class CountingTechnique : public HardwareSkinTechniqueStandIn {
public:
    int calls = 0;
    void prepareSkinBuffer(SkinBufferStandIn&, MeshBufferStandIn*) override { ++calls; }
};

void testHardwareSkinPrepare() {
    CountingTechnique tech;
    SkinBufferStandIn skin;
    MeshBufferStandIn mesh;
    CHECK(prepareMatrixSkinBuffer(tech, kPrepareBufferStepUpload, nullptr, skin, &mesh) == kPrepareBufferReturnHandled);
    CHECK(tech.calls == 1);
    CHECK(prepareQuatSkinBuffer(tech, 0, nullptr, skin, &mesh) == kPrepareBufferReturnHandled);
    CHECK(tech.calls == 1);
    CHECK(prepareTextureSkinBuffer(tech, kPrepareBufferStepUpload, nullptr, skin, &mesh) == kPrepareBufferReturnHandled);
    CHECK(tech.calls == 2);
}

}  // namespace

int main() {
    testHardwareSkinPrepare();
    
    if (failures == 0) {
        std::printf("slice_33 tests passed\n");
        return 0;
    }
    std::printf("slice_33 tests: %d failure(s)\n", failures);
    return 1;
}
