// Test doubles for the bitmap_info_ogl tests: an ITexture and an IRenderTarget with no GL behind them, and a null driver
// that records the calls bitmap_info_ogl makes (setOption, createRenderTarget). The classes the glitch tree leaves
// abstract get the simplest answers. Not a test by itself.
#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "glitch-core-io/io/memory_read_file.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/render_target.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace bio_test {

using namespace glitch::video;

// An ITexture built through the real constructor: a two-dimensional texture of pixel format 5 whose size and mip chain are
// the arguments. A heap texture starts with one use (the "manager's"), like a texture a manager hands out.
class TestTexture : public ITexture {
public:
    explicit TestTexture(uint32_t width = 4, uint32_t height = 4, bool mipChain = false)
        : ITexture("test", nullptr, makeDesc(width, height, mipChain)), originalLevels(m_levelSizes) {
        referenceCounter = 1;
    }
    ~TestTexture() override {
        m_levelSizes = originalLevels;
        m_data = nullptr;
    }
    bool bindImpl(bool) override { return false; }
    void unbindImpl() override {}
    uint8_t* mapImpl(uint8_t, E_TEXTURE_CUBE_MAP_FACE, uint8_t) override { return &mapped[0]; }
    void unmapImpl() const override { ++unmapImplCalls; }
    uint8_t* getMappedPtr() const override { return nullptr; }
    void generateMipmapsImpl() override {}

    int32_t* originalLevels = nullptr;
    mutable int unmapImplCalls = 0;
    uint8_t mapped[16] = {};

private:
    static STextureDesc makeDesc(uint32_t width, uint32_t height, bool mipChain) {
        STextureDesc desc;
        desc.type = 0;
        desc.format = 5;
        desc.width = width;
        desc.height = height;
        desc.depth = 1;
        desc.flag = mipChain ? 1 : 0;
        return desc;
    }
};

// A render target over a texture; bind and unbind do nothing.
class TestRenderTarget : public IRenderTarget {
public:
    TestRenderTarget(IVideoDriver* driver, const glitch::core::dimension2d<int32_t>& size) : IRenderTarget(driver, size) {}
    void bind() override {}
    void unbind() override {}
};

// The null driver with the two driver calls bitmap_info_ogl makes recorded.
class TestDriver : public CNullDriver {
public:
    TestDriver()
        : CNullDriver(static_cast<glitch::IDevice*>(nullptr)),
          ownedTextureManager(m_textureManager),
          ownedMaterialRendererManager(m_materialRendererManager),
          ownedGlobalParameters(m_globalParameters) {}
    // The constructor hands the driver its own managers (state flags 0x10 / 0x20) and ~IVideoDriver deletes them. A test
    // points m_textureManager at a manager on its stack; put the owned ones back so the destructor never deletes a stack object.
    ~TestDriver() override {
        m_textureManager = ownedTextureManager;
        m_materialRendererManager = ownedMaterialRendererManager;
        m_globalParameters = ownedGlobalParameters;
    }
    CTextureManager* ownedTextureManager;
    CMaterialRendererManager* ownedMaterialRendererManager;
    CGlobalMaterialParameterManager* ownedGlobalParameters;

    struct OptionCall {
        uint32_t option;
        bool enable;
    };

    // vtable +0xa0
    void setOption(uint32_t option, bool enable) override {
        optionCalls.push_back({option, enable});
        CNullDriver::setOption(option, enable);
    }
    // vtable +0x84
    boost::intrusive_ptr<IRenderTarget> createRenderTarget(const boost::intrusive_ptr<ITexture>& texture,
                                                           uint32_t flags) override {
        ++renderTargetCalls;
        lastRenderTargetTexture = texture.get();
        lastRenderTargetFlags = flags;
        const glitch::core::dimension2d<int32_t> size{4, 4};
        return boost::intrusive_ptr<IRenderTarget>(new TestRenderTarget(this, size), true);
    }

    std::vector<OptionCall> optionCalls;
    int renderTargetCalls = 0;
    ITexture* lastRenderTargetTexture = nullptr;
    uint32_t lastRenderTargetFlags = 0xdeadu;
};

// ---- CTextureManager doubles ------------------------------------------------------------------------------------
// The texture manager's creation functions are declared in glitch-video/texture_manager.hpp and not reconstructed, so the
// test defines the four that bitmap_info_ogl calls (strong: they win over the link stubs for the same symbols).
// removeTexture(intrusive_ptr&) is the library's own. Every call is recorded in g_manager_log.

struct ManagerLog {
    int createImageCalls = 0;
    E_PIXEL_FORMAT imageFormat = -1;
    glitch::core::dimension2d<int32_t> imageSize{};

    int addTargetCalls = 0;
    glitch::core::dimension2d<int32_t> targetSize{};
    std::string targetName;
    E_PIXEL_FORMAT targetFormat = -1;
    bool targetFlag = false;

    int addImageCalls = 0;
    std::string imageName;
    CImage* imageArg = nullptr;
    bool imageFlag = true;
    E_TEXTURE_LAYOUT imageLayout = -1;
    uint32_t word74AtCall = 0;  // the manager's +0x74 word while addTexture runs
    bool madeTextureHasMips = false;  // the made texture gets a mip chain (to exercise the min-filter mip test)

    int getFileCalls = 0;  // getTexture(IReadFile*, const char*, bool)
    long fileSize = -1;
    std::string fileName;
    std::vector<uint8_t> fileBytes;
    const char* fileNameArg = nullptr;
    bool fileFlag = true;
    bool fileWasAllInMemory = false;

    TestTexture* lastTexture = nullptr;  // the texture the last addTexture or getTexture made
};

inline ManagerLog g_manager_log;

}  // namespace bio_test

namespace glitch::video {

boost::intrusive_ptr<CImage> CTextureManager::createImage(E_PIXEL_FORMAT format,
                                                                                 const core::dimension2d<int32_t>& size) {
    bio_test::g_manager_log.createImageCalls++;
    bio_test::g_manager_log.imageFormat = format;
    bio_test::g_manager_log.imageSize = size;
    CImage* image = new CImage(static_cast<uint32_t>(size.Width), static_cast<uint32_t>(size.Height));  // count 1
    image->m_format = format;
    image->m_data = new uint8_t[static_cast<size_t>(size.Width) * static_cast<size_t>(size.Height) * 4 + 4]();
    return boost::intrusive_ptr<CImage>(image);
}

boost::intrusive_ptr<ITexture> CTextureManager::addTexture(const core::dimension2d<int32_t>& size,
                                                                                  const char* name, E_PIXEL_FORMAT format,
                                                                                  bool flag) {
    bio_test::ManagerLog& log = bio_test::g_manager_log;
    log.addTargetCalls++;
    log.targetSize = size;
    log.targetName = name;
    log.targetFormat = format;
    log.targetFlag = flag;
    log.lastTexture = new bio_test::TestTexture(static_cast<uint32_t>(size.Width), static_cast<uint32_t>(size.Height));
    return boost::intrusive_ptr<ITexture>(log.lastTexture, true);
}

boost::intrusive_ptr<ITexture> CTextureManager::addTexture(const char* name,
                                                                                  const boost::intrusive_ptr<CImage>& image,
                                                                                  bool flag, E_TEXTURE_LAYOUT layout) {
    bio_test::ManagerLog& log = bio_test::g_manager_log;
    log.addImageCalls++;
    log.imageName = name;
    log.imageArg = image.get();
    log.imageFlag = flag;
    log.imageLayout = layout;
    log.word74AtCall = unk_74;
    log.lastTexture = new bio_test::TestTexture(image->m_width, image->m_height, log.madeTextureHasMips);
    return boost::intrusive_ptr<ITexture>(log.lastTexture, true);
}

boost::intrusive_ptr<ITexture> CTextureManager::getTexture(io::IReadFile* file, const char* name,
                                                                                 bool flag) {
    bio_test::ManagerLog& log = bio_test::g_manager_log;
    log.getFileCalls++;
    log.fileSize = file->getSize();
    log.fileName = file->getFileName();
    log.fileNameArg = name;
    log.fileFlag = flag;
    log.fileWasAllInMemory = file->isAllInMemory();
    long position = 0;
    const uint8_t* block = static_cast<const uint8_t*>(file->getBuffer(&position));
    log.fileBytes.assign(block, block + log.fileSize);
    log.lastTexture = new bio_test::TestTexture(4, 4, log.madeTextureHasMips);
    return boost::intrusive_ptr<ITexture>(log.lastTexture, true);
}

}  // namespace glitch::video
