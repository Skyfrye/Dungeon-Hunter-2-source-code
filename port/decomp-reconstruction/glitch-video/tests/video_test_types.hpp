// Concrete test doubles for the abstract canonical video classes (IBuffer, ITexture, IShader, IShaderCode, IImageWriter,
// IImageLoader::ITextureDataLoading). The classes have pure slots in the binary, so a test builds them through these
// subclasses, which implement the slots with the simplest answers and record the calls the tests look at.
#pragma once

#include <cstdint>

#include "glitch-video/buffer.hpp"
#include "glitch-video/image_loaders.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/shader_code.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/texture_loaders.hpp"

namespace glitch::video::test {

// An IBuffer with no driver: mapImpl returns `sentinel` and records the access, getMappedPtr returns `sentinel`.
class TestBuffer : public IBuffer {
public:
    TestBuffer() : IBuffer(0, 0, 0, nullptr, 0) { referenceCounter = 1; }
    TestBuffer(E_BUFFER_TYPE type, E_BUFFER_USAGE usage, uint32_t size, void* data, uint8_t flags)
        : IBuffer(type, usage, size, data, flags) {
        referenceCounter = 1;
    }
    void bindImpl(bool) override {}
    void unbindImpl() override {}
    uint8_t* mapImpl(uint32_t access) const override {
        lastAccess = static_cast<int32_t>(access);
        ++mapImplCalls;
        return sentinel;
    }
    void unmapImpl() const override { ++unmapImplCalls; }
    uint8_t* getMappedPtr() const override {
        ++mappedPtrCalls;
        return sentinel;
    }
    boost::intrusive_ptr<IBuffer> cloneImpl() const override {
        return boost::intrusive_ptr<IBuffer>(new TestBuffer(m_type, m_usage, m_size, m_data, m_flags12 & kFlagOwnsData), true);
    }

    uint8_t* sentinel = nullptr;
    mutable int32_t lastAccess = -1;
    mutable int mapImplCalls = 0;
    mutable int unmapImplCalls = 0;
    mutable int mappedPtrCalls = 0;
};

// An ITexture with no driver, built through the real constructor: a width x height two-dimensional texture of pixel
// format 5 with a mip chain of `mips` levels requested only when mips > 1. The tests then overwrite the words they
// exercise. The destructor puts the constructor's level table back, so a test may point m_levelSizes at its own array.
class TestTexture : public ITexture {
public:
    explicit TestTexture(uint32_t width = 4, uint32_t height = 4, bool mipChain = false)
        : ITexture("test", nullptr, makeDesc(width, height, mipChain)), originalLevels(m_levelSizes) {
        referenceCounter = 1;  // a stack object holds its own use, so a pointer taking another use never frees it
    }
    ~TestTexture() override {
        m_levelSizes = originalLevels;
        m_data = nullptr;
    }
    bool bindImpl(bool) override { return false; }
    void unbindImpl() override {}
    uint8_t* mapImpl(uint8_t, E_TEXTURE_CUBE_MAP_FACE, uint8_t) override { return nullptr; }
    void unmapImpl() const override { ++unmapImplCalls; }
    uint8_t* getMappedPtr() const override { return nullptr; }
    void generateMipmapsImpl() override {}

    int32_t* originalLevels = nullptr;
    mutable int unmapImplCalls = 0;

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

// An IShader with no driver: the one pure slot does nothing.
class TestShader : public IShader {
public:
    explicit TestShader(uint16_t id = 0, const char* name = "test") : IShader(id, name, nullptr) { referenceCounter = 1; }
    void releaseDriverSpecificResources() override {}
};

// An IShaderCode with empty attribute slots.
class TestShaderCode : public IShaderCode {
public:
    explicit TestShaderCode(const char* name) : IShaderCode(name) {}
    void serializeAttributes(io::IAttributes*) const override {}
    void deserializeAttributes(io::IAttributes*) override {}
};

// An IImageWriter that accepts every extension and writes nothing.
class TestImageWriter : public IImageWriter {
public:
    bool isAWriteableFileExtension(const char*) const override { return true; }
    bool writeImage(io::IWriteFile*, const boost::intrusive_ptr<CImage>&, uint32_t) const override { return false; }
};

// An ITextureDataLoading whose process slots do nothing.
class TestTextureDataLoading : public IImageLoader::ITextureDataLoading {
public:
    int32_t preprocess() override { return 0; }
    int32_t process(E_TEXTURE_CUBE_MAP_FACE, uint8_t) override { return 0; }
};

}  // namespace glitch::video::test
