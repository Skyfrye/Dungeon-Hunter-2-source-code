// IBuffer::map (access overload), CBufferBase construction, the shadow-state defaults and
// CRenderTargetBase::getTargetCount.
#include "glitch-video/buffer.hpp"
#include "glitch-video/ccommon_gl_driver.hpp"
#include "glitch-video/deps/gl_function_table.hpp"
#include "glitch-video/programmable_gl_driver.hpp"
#include "video_test_types.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// CRenderTargetBase is abstract (IMultipleRenderTarget's bind, unbind and attachment slots are pure and not
// reconstructed for it). The test only needs the getters, so this helper supplies no-op overrides.
struct TestRenderTarget : glitch::video::CCommonGLDriverBase::CRenderTargetBase {
    using CRenderTargetBase::CRenderTargetBase;
    void bind() override {}
    void unbind() override {}
    void addTarget(E_ATTACHMENT_TYPE, const boost::intrusive_ptr<glitch::video::IRenderBuffer>&) override {}
    void addTarget(E_ATTACHMENT_TYPE, const boost::intrusive_ptr<glitch::video::ITexture>&,
                   glitch::video::E_TEXTURE_CUBE_MAP_FACE, uint32_t) override {}
    void setTarget(E_ATTACHMENT_TYPE, const boost::intrusive_ptr<glitch::video::IRenderBuffer>&, uint32_t) override {}
    void setTarget(E_ATTACHMENT_TYPE, const boost::intrusive_ptr<glitch::video::ITexture>&,
                   glitch::video::E_TEXTURE_CUBE_MAP_FACE, uint32_t, uint32_t) override {}
    void removeTarget(E_ATTACHMENT_TYPE, uint32_t) override {}
};



struct TestBufferDriver : glitch::video::CProgrammableGLDriver {};

int main() {
    using namespace glitch::video;

    uint8_t payload[16] = {};

    // Data present, usage 0: maps to the data pointer and counts the map.
    test::TestBuffer plain(0, 0, 16, payload, 0);
    CHECK(plain.m_flags12 == 2);
    CHECK(plain.map(1) == payload);
    CHECK(plain.m_mapCount13 == 0x21);   // access 1 in bits 5..6, count 1
    CHECK(plain.map(1) == payload);
    CHECK(plain.m_mapCount13 == 0x22);   // count 2, access bits kept
    plain.unmap();
    CHECK((plain.m_mapCount13 & 0x1f) == 1);

    // No data and no flag 8: nothing is mapped and the count stays zero.
    test::TestBuffer noData(0, 0, 16, nullptr, 0);
    CHECK(noData.map(1) == nullptr);
    CHECK(noData.m_mapCount13 == 0);

    // Flag 8 with access up to 3 goes to the driver hook with access (a & 1) | 2.
    test::TestBuffer hooked(0, 0, 16, nullptr, 8);
    hooked.sentinel = payload;
    CHECK(hooked.map(1) == payload);
    CHECK(hooked.lastAccess == 3);
    CHECK(hooked.mapImplCalls == 1);
    CHECK(hooked.m_mapCount13 == 0);

    // Flag 8 with access above 3 and no data: still goes to the hook, with (a & 1) | 2.
    CHECK(hooked.map(5) == payload);
    CHECK(hooked.lastAccess == 3);
    CHECK(hooked.mapImplCalls == 2);

    // Flag 8 with data present and access above 3: maps the data and counts it.
    test::TestBuffer withData(0, 0, 16, payload, 8);
    CHECK(withData.map(5) == payload);
    CHECK(withData.mapImplCalls == 0);
    CHECK(withData.m_mapCount13 == 0xa1);  // access 5 << 5, count 1

    // A counted map with flag 0x20 returns through the getMappedPtr hook.
    test::TestBuffer counted(0, 0, 16, payload, 0x20);
    counted.sentinel = payload + 1;
    CHECK(counted.map(1) == payload);      // first map: plain data pointer
    CHECK(counted.map(1) == payload + 1);  // second map: counted path, hook
    CHECK(counted.mappedPtrCalls == 1);

    // Usage 4 keeps the flags unchanged after a map.
    test::TestBuffer usageFour(0, 4, 16, payload, 0);
    CHECK(usageFour.m_flags12 == 0);
    CHECK(usageFour.map(1) == payload);
    CHECK(usageFour.m_flags12 == 0);

    // CBufferBase: the IBuffer base is set up from the constructor arguments.
    CCommonGLDriver::CBuffer base(nullptr, 0, 0, 16, payload, false);
    CHECK(base.getMappedPtr() == nullptr);
    CHECK(base.map(1) == payload);

    // SCommonShadowState defaults: word +0x18 is 4, the others are zero.
    CCommonGLDriverBase::SCommonShadowState shadow;
    CHECK(shadow.m_words[6] == 4);
    bool othersZero = true;
    for (int i = 0; i < 12; ++i) {
        if (i != 6 && shadow.m_words[i] != 0) {
            othersZero = false;
        }
    }
    CHECK(othersZero);

    // getTargetCount: type 0 returns the count byte, 1 and 2 test the handles,
    // 3 needs both handles equal, anything else is zero.
    TestRenderTarget target(nullptr);
    struct Handle : glitch::IReferenceCounted {};
    Handle handleAObject;
    Handle handleBObject;
    ++handleAObject.referenceCounter;  // the stack objects must outlive the target's references
    ++handleBObject.referenceCounter;
    Handle* handleA = &handleAObject;
    Handle* handleB = &handleBObject;
    target.setTargetStateForTest(nullptr, nullptr, 3);
    CHECK(target.getTargetCount(0) == 3);
    CHECK(target.getTargetCount(1) == 0);
    CHECK(target.getTargetCount(2) == 0);
    CHECK(target.getTargetCount(3) == 0);
    target.setTargetStateForTest(handleA, nullptr, 0);
    CHECK(target.getTargetCount(1) == 1);
    CHECK(target.getTargetCount(2) == 0);
    CHECK(target.getTargetCount(3) == 0);
    target.setTargetStateForTest(handleA, handleA, 0);
    CHECK(target.getTargetCount(3) == 1);
    target.setTargetStateForTest(handleA, handleB, 0);
    CHECK(target.getTargetCount(2) == 1);
    CHECK(target.getTargetCount(3) == 0);
    CHECK(target.getTargetCount(9) == 0);

    // ReloadbufferMap: every entry in key order is bound on its target, uploaded and unbound.
    {
        static uint32_t log[16];
        static int n;
        auto& t = glitch::video::deps::activeGLFunctionTable();
        t.bindBuffer = [](uint32_t target, uint32_t buffer) { log[n++] = 0xB000u | (target & 0xFF); log[n++] = buffer; };
        t.bufferData = [](uint32_t target, int32_t size, const void* data, uint32_t usage) {
            log[n++] = 0xDA00u | (target & 0xFF);
            log[n++] = static_cast<uint32_t>(size) | (data ? 0x100u : 0u);
            log[n++] = usage;
        };
        TestBufferDriver d;
        const char payload[4] = {1, 2, 3, 4};
        // The first argument is the GL buffer name and also the map key (0x5b5be4).
        d.registerBufferMap(70, 0x8892, 0x88E4, 4, payload);
        d.registerBufferMap(30, 0x8893, 0x88E0, 4, payload);
        d.ReloadbufferMap();
        CHECK(n == 14);
        CHECK(log[0] == 0xB093 && log[1] == 30);  // name 30 first: bind (target 0x8893, name 30)
        CHECK(log[2] == 0xDA93 && log[3] == (4u | 0x100u) && log[4] == 0x88E0);
        CHECK(log[5] == 0xB093 && log[6] == 0);
        CHECK(log[7] == 0xB092 && log[8] == 70);  // then name 70
        CHECK(log[11] == 0x88E4 && log[13] == 0);
        t.bindBuffer = nullptr;
        t.bufferData = nullptr;
        d.clearBufferMap();
    }

    std::printf("%s\n", failures ? "buffer_map: FAILED" : "buffer_map: ok");
    return failures != 0;
}
