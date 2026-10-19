// Functions rebuilt or finished by the engine unification wave (u1-video): the canonical IVideoDriver / ITexture / IBuffer /
// IRenderTarget / CLight / CVideoModeList / CTextureManager / C2DDriver behaviours that no earlier test reached. The video
// driver is the null driver (nothing is drawn); the draw3DLines slot is overridden to record what the helpers send.
#include <cstdio>
#include <cstring>
#include <set>
#include <tuple>
#include <type_traits>
#include <vector>

#include "glitch-video/c2d_driver.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/light.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/pixel_format.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/texture_loaders.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_mode_list.hpp"
#include "video_test_types.hpp"

using namespace glitch::video;

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

namespace {

// A null driver that records the immediate-mode line batches.
class RecordingDriver : public CNullDriver {
public:
    explicit RecordingDriver() : CNullDriver(static_cast<glitch::IDevice*>(nullptr)) {}
    void draw3DLines(glitch::core::vector3d<float>* positions, uint16_t* indices, SColor* colors, uint32_t count,
                     uint32_t primitiveCount) override {
        ++calls;
        vertexCount = count;
        lineCount = primitiveCount;
        positionsSeen.assign(positions, positions + count);
        indicesSeen.assign(indices, indices + 2 * primitiveCount);
        colorsSeen.assign(colors, colors + count);
    }
    int calls = 0;
    uint32_t vertexCount = 0;
    uint32_t lineCount = 0;
    std::vector<glitch::core::vector3d<float>> positionsSeen;
    std::vector<uint16_t> indicesSeen;
    std::vector<SColor> colorsSeen;
};

// A shader that reports its driver, to see ~IShader tell the driver.
class DriverShader : public IShader {
public:
    explicit DriverShader(IVideoDriver* driver) : IShader(7, "s", driver) {}
    void releaseDriverSpecificResources() override {}
};

}  // namespace

int main() {
    static_assert(std::is_base_of_v<glitch::IReferenceCounted, IVideoDriver>);
    static_assert(std::is_abstract_v<IVideoDriver>);
    static_assert(std::is_abstract_v<IMultipleRenderTarget>);
    static_assert(std::is_base_of_v<IRenderTarget, IMultipleRenderTarget>);
    static_assert(std::is_base_of_v<glitch::IReferenceCounted, C2DDriver>);
    static_assert(std::is_base_of_v<IVideoDriver, CNullDriver>);

    // ---- IVideoDriver: draw3DTriangle and draw3DBox send the edge lists (0x5a8bdc, 0x5a9990) ----
    {
        RecordingDriver driver;
        SColor color;
        color.color = 0xff112233u;
        glitch::core::triangle3d<float> triangle;
        triangle.A = {1.0f, 2.0f, 3.0f};
        triangle.B = {4.0f, 5.0f, 6.0f};
        triangle.C = {7.0f, 8.0f, 9.0f};
        driver.draw3DTriangle(triangle, color);
        CHECK(driver.calls == 1 && driver.vertexCount == 3 && driver.lineCount == 3);
        CHECK(driver.positionsSeen[0].X == 1.0f && driver.positionsSeen[1].Y == 5.0f && driver.positionsSeen[2].Z == 9.0f);
        const uint16_t edges[6] = {0, 1, 1, 2, 2, 0};
        CHECK(std::memcmp(driver.indicesSeen.data(), edges, sizeof edges) == 0);
        CHECK(driver.colorsSeen.size() == 3 && driver.colorsSeen[2].color == 0xff112233u);

        glitch::core::aabbox3d<float> box;
        box.MinEdge = {0.0f, 0.0f, 0.0f};
        box.MaxEdge = {1.0f, 2.0f, 3.0f};
        driver.draw3DBox(box, color);
        CHECK(driver.calls == 2 && driver.vertexCount == 8 && driver.lineCount == 12);
        const uint16_t boxEdges[24] = {5, 1, 1, 3, 3, 7, 7, 5, 0, 2, 2, 6, 6, 4, 4, 0, 1, 0, 3, 2, 7, 6, 5, 4};
        CHECK(std::memcmp(driver.indicesSeen.data(), boxEdges, sizeof boxEdges) == 0);
        std::set<std::tuple<float, float, float>> corners;
        for (const auto& p : driver.positionsSeen) corners.insert({p.X, p.Y, p.Z});
        CHECK(corners.size() == 8);  // the eight distinct corners of the box
    }

    // ---- IVideoDriver: default dynamic light (0x5a8ae8), render target stack (0x5ab6d4, 0x5a953c), shader notice (0x5e49e8) ----
    {
        RecordingDriver driver;
        CLight* light = driver.m_defaultDynamicLight.get();
        CHECK(light != nullptr && light->m_type == kLightTypeDefaultDynamic);
        light->m_type = 0;
        light->m_radius = 5.0f;
        light->m_castShadows = 1;
        light->m_attenuation.X = 9.0f;
        driver.resetDefaultDynamicLight();
        CHECK(light->m_type == 3 && light->m_radius == 0.0f && light->m_castShadows == 0 && light->m_attenuation.X == 1.0f);
        CHECK(light->m_attenuation.Y == 0.0f && light->m_ambientColor.a == 0.0f && light->m_diffuseColor.r == 0.0f);

        CHECK(driver.m_renderTargets.size() == 1);  // the screen framebuffer of initDriver
        // With a single target popRenderTarget returns it and leaves the stack alone.
        boost::intrusive_ptr<IRenderTarget> top = driver.popRenderTarget();
        CHECK(top && driver.m_renderTargets.size() == 1);
        top = nullptr;

        boost::intrusive_ptr<IRenderTarget> target(
            new CNullDriver::CFramebuffer(&driver, glitch::core::dimension2d<int32_t>{16, 8}), true);
        CHECK(target->referenceCounter == 1 && target->m_width == 16 && target->m_height == 8);
        CHECK(target->viewport().LowerRightCorner.X == 16 && target->viewport().LowerRightCorner.Y == 8);
        driver.pushRenderTarget(target);
        CHECK(driver.m_renderTargets.size() == 2 && driver.m_renderTargets.back().get() == target.get());
        CHECK((driver.m_stateFlags & 4u) == 0);
        // setViewport clamps to the size, then hands the rectangle to the driver because this is the current target.
        target->setViewport(glitch::core::rect<int32_t>{-5, -6, 100, 100});
        CHECK(target->viewport().UpperLeftCorner.X == 0 && target->viewport().UpperLeftCorner.Y == 0);
        CHECK(target->viewport().LowerRightCorner.X == 16 && target->viewport().LowerRightCorner.Y == 8);
        boost::intrusive_ptr<IRenderTarget> popped = driver.popRenderTarget();
        CHECK(popped.get() == target.get() && driver.m_renderTargets.size() == 1);

        // ~IShader tells the driver (onShaderDestroyed clears the cached shader).
        boost::intrusive_ptr<DriverShader> shader(new DriverShader(&driver), true);
        driver.m_shaderF4 = shader.get();
        CHECK(shader->referenceCounter == 1);
        shader = nullptr;
        CHECK(driver.m_shaderF4 == nullptr);
    }

    // ---- CNullDriver: buffers, transforms, textures ----
    {
        RecordingDriver driver;
        uint8_t payload[8] = {1, 2, 3, 4, 5, 6, 7, 8};
        boost::intrusive_ptr<IBuffer> buffer = driver.createBuffer(0, 0, 8, payload, false);
        CHECK(buffer && buffer->referenceCounter == 1 && buffer->m_data == payload && buffer->m_size == 8);
        CHECK(buffer->m_flags12 == IBuffer::kFlagHasData);
        // A buffer that does not own its data clones to a buffer that shares the pointer (IBuffer::clone, 0x5a1c80).
        boost::intrusive_ptr<IBuffer> clone = buffer->clone();
        CHECK(clone && clone.get() != buffer.get() && clone->m_data == payload && clone->m_size == 8);
        CHECK((clone->m_flags12 & IBuffer::kFlagOwnsData) == 0);
        // An owning source: copy() runs on the clone only when the clone does not already own the pointer.
        uint8_t* owned = new uint8_t[8]();
        test::TestBuffer source(0, 0, 8, owned, 0);
        source.copy();  // a private copy, owns bit set
        delete[] owned;
        CHECK((source.m_flags12 & IBuffer::kFlagOwnsData) != 0 && source.m_data != owned);

        glitch::core::CMatrix4<float> matrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);
        matrix.M[5] = 2.0f;
        matrix.M[12] = 7.0f;
        driver.setTransform(1, matrix);
        CHECK(driver.getTransform(1).M[5] == 2.0f && driver.getTransform(1).M[12] == 7.0f);
        CHECK(driver.getTransform(0).M[5] == 1.0f && driver.getTransform(2).M[0] == 1.0f);

        // ITexture constructor (0x5fe404): an 8 x 4 two-dimensional texture of format 5 with a mip chain.
        STextureDesc desc;
        desc.type = 0;
        desc.format = 5;
        desc.width = 8;
        desc.height = 4;
        desc.depth = 1;
        desc.flag = 1;
        boost::intrusive_ptr<ITexture> texture = driver.createTextureImpl("tex", desc);
        CHECK(texture && texture->referenceCounter == 1 && texture->m_name == "tex");
        CHECK(texture->m_width == 8 && texture->m_height == 4 && texture->m_depth == 1);
        CHECK(texture->m_mipCount3e == 4);  // floor(log2(8)) + 1
        CHECK(texture->m_dirtyFlags40 == 8189 && texture->m_id == 0xffff && texture->m_anisotropy == 1.0f);
        CHECK(texture->m_maxLod == 3.0f && texture->m_data == nullptr && texture->m_driver == &driver);
        CHECK(texture->m_flags38 == (0x3000u | 0x8000u | (5u << 4)));  // mip filter 3, mag filter 1, format 5
        CHECK(texture->m_levelSizes[0] == 0 && texture->m_levelSizes[1] > 0 && texture->m_levelSizes[4] > texture->m_levelSizes[3]);
        CHECK(texture->getDriverType() == driver.getDriverType());
        CHECK(texture->getPitch(0) == pixel_format::computePitch(5, 8));
        CHECK(texture->getPitch(1) == pixel_format::computePitch(5, 4));
        CHECK(texture->getPitch(9) == pixel_format::computePitch(5, 1));

        // ITexture::map (0x5fe0d4) allocates the CPU copy, counts re-maps of the same level and unmap releases them.
        uint8_t* base = texture->lock(false);
        CHECK(base != nullptr && texture->m_data == base);
        CHECK(texture->m_lockCount42 == (32 * 5 + 1) && (texture->m_flags3f & ITexture::kFlagLocked) != 0);
        CHECK(texture->map(5, 0, 0) == base && texture->m_lockCount42 == (32 * 5 + 2));
        CHECK(texture->map(5, 0, 1) == nullptr);  // another level while one is mapped
        texture->unlock();
        CHECK(texture->m_lockCount42 == (32 * 5 + 1));
        texture->unmap();
        CHECK(texture->m_lockCount42 == 0 && (texture->m_flags3f & ITexture::kFlagLocked) == 0 && texture->m_lockFlags43 == 0);
        // The next level starts at the second level offset.
        uint8_t* level1 = texture->map(5, 0, 1);
        CHECK(level1 == base + texture->m_levelSizes[1]);
        texture->unmap();
    }

    // ---- CLight: detach and setAbsoluteTransformation (0x5846f8, 0x59fc00) ----
    {
        STransformationSource* slot = nullptr;
        boost::intrusive_ptr<CLight> light = CLight::allocate(&slot);
        CHECK(light && light->m_refCount == 1 && slot == &light->m_transformationSource && slot->attached);
        glitch::core::CMatrix4<float> matrix(glitch::core::CMatrix4<float>::EM4CONST_IDENTITY);
        matrix.M[13] = 3.0f;
        CHECK(light->setAbsoluteTransformation(matrix) == 0);  // refused while attached
        slot->detach();
        CHECK(!slot->attached && slot->matrix != nullptr && slot->matrix->M[0] == 1.0f && slot->matrix->M[13] == 0.0f);
        CHECK(light->setAbsoluteTransformation(matrix) == 1 && slot->matrix->M[13] == 3.0f);
        boost::intrusive_ptr<CLight> copy = light->clone(nullptr);
        CHECK(copy && copy->m_refCount == 1 && copy.get() != light.get() && !copy->m_transformationSource.attached);
    }

    // ---- CVideoModeList::setDesktop (0x6dab5c) ----
    {
        CVideoModeList list;
        CHECK(list.referenceCounter == 1);
        list.setDesktop(32, glitch::core::dimension2d<uint32_t>{800, 480});
        CHECK(list.getDesktopDepth() == 32 && list.getDesktopResolution().Width == 800 && list.getDesktopResolution().Height == 480);
    }

    // ---- CTextureManager: loader accounting of addExternalImageLoader (0x5e90e0) and the destructor (0x5ea050) ----
    {
        boost::intrusive_ptr<IImageLoader> loader(createImageLoaderPNG());  // born with count 1
        {
            CTextureManager manager;
            manager.addExternalImageLoader(loader);
            CHECK(loader->referenceCounter == 3);  // the local, the explicit grab, the vector's copy
        }
        CHECK(loader->referenceCounter == 1);  // the destructor gave both manager uses back
    }

    // ---- C2DDriver: reference counted (0x59efb4) ----
    {
        C2DDriver helper(nullptr);
        CHECK(helper.referenceCounter == 1 && helper.m_driver == nullptr);
    }

    if (failures == 0) std::printf("video_unification: ok\n");
    return failures == 0 ? 0 : 1;
}
