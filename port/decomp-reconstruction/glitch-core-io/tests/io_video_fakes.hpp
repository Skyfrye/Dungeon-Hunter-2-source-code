// Test support for the glitch-core-io tests after the U2 unification: the canonical glitch-video classes
// IBuffer, ITexture, IShader and IShaderCode are abstract, and IVideoDriver is too, so the tests derive
// concrete fakes here (the pure slots are no-ops) and use CNullDriver, the canonical null driver, where a
// real driver object is needed.
#pragma once

#include <cstdint>

#include "glitch-core-io/io/interfaces.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/buffer.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/shader_attributes.hpp"
#include "glitch-video/shader_code.hpp"
#include "glitch-video/texture.hpp"

namespace io_test_fakes {

// A buffer over caller memory. owns = true hands the memory to the buffer (it frees it with delete[]).
class FakeBuffer : public glitch::video::IBuffer {
public:
    FakeBuffer() : IBuffer(0, 4, 0, nullptr, 0) {}
    FakeBuffer(std::uint32_t size, void* data, bool owns)
        : IBuffer(0, 4, size, data, static_cast<std::uint8_t>(owns ? 1 : 0)) {}

    void bindImpl(bool) override {}
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint32_t) const override { return m_data; }
    void unmapImpl() const override {}
    std::uint8_t* getMappedPtr() const override { return m_data; }
    boost::intrusive_ptr<glitch::video::IBuffer> cloneImpl() const override { return boost::intrusive_ptr<glitch::video::IBuffer>(); }
};

class FakeTexture : public glitch::video::ITexture {
public:
    FakeTexture() : ITexture("fake", nullptr, glitch::video::STextureDesc()) {}

    bool bindImpl(bool) override { return true; }
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint8_t, glitch::video::E_TEXTURE_CUBE_MAP_FACE, std::uint8_t) override { return nullptr; }
    void unmapImpl() const override {}
    std::uint8_t* getMappedPtr() const override { return nullptr; }
    void generateMipmapsImpl() override {}
};

class FakeShader : public glitch::video::IShader {
public:
    FakeShader() : IShader(0, "fake", nullptr) {}
    void releaseDriverSpecificResources() override {}
};

class FakeShaderCode : public glitch::video::IShaderCode {
public:
    FakeShaderCode() : IShaderCode("fake") {}
    void serializeAttributes(glitch::io::IAttributes*) const override {}
    void deserializeAttributes(glitch::io::IAttributes*) override {}
};

// A CNullDriver over a device with zeroed creation parameters. The driver starts with count 1, as every
// IVideoDriver does, and it stays on the stack for the test's lifetime.
class TestNullDriver {
public:
    TestNullDriver() : device(glitch::SCreationParameters{}), driver(&device) {}
    glitch::video::CNullDriver& get() { return driver; }

private:
    glitch::IDevice device;
    glitch::video::CNullDriver driver;
};

}  // namespace io_test_fakes
