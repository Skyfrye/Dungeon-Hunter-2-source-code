#include "glitch-video/material.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "video_test_types.hpp"

#include <cstdio>

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

using namespace glitch::video;

int main() {
    // IVideoDriver options: set and clear bits. IVideoDriver is abstract, so the null driver (with no device) stands in;
    // the options, the scene calls and the counters are the base class's.
    CNullDriver nullDriver(static_cast<glitch::IDevice*>(nullptr));
    IVideoDriver& driver = nullDriver;
    const uint32_t initial = driver.getOptionFlags();  // the constructor sets the default options
    driver.setOption(0x3, true);
    CHECK(driver.getOptionFlags() == (initial | 0x3u));
    driver.setOption(0x1, false);
    CHECK(driver.getOptionFlags() == ((initial | 0x3u) & ~0x1u));

    // Scene: beginScene returns true; endScene registers a frame (no crash, returns true).
    CHECK(driver.beginScene());
    CHECK(driver.endScene(1000));
    CHECK(driver.getPrimitiveCountDrawn(0) == 0);

    // Material destroyed: the cached material pointers are cleared.
    CMaterial* m = reinterpret_cast<CMaterial*>(0x1000);
    CMaterial* other = reinterpret_cast<CMaterial*>(0x2000);
    driver.onMaterialDestroyed(other);   // no match: nothing changes
    driver.onMaterialDestroyed(m);       // no match either

    // Render buffer list: unregister is a no-op when absent.
    driver.unregisterRenderBuffer(nullptr);

    // Texture manager: placeholder clears by type, and clearPlaceHolders needs refcount 1.
    CTextureManager manager;
    test::TestTexture a, b;
    a.referenceCounter = 1;
    b.referenceCounter = 2;
    manager.m_placeHolders[1] = &a;
    manager.m_placeHolders[5] = &b;
    manager.clearPlaceHolder(1, &a);
    CHECK(manager.m_placeHolders[1] == nullptr);
    manager.clearPlaceHolders();
    CHECK(manager.m_placeHolders[5] == &b);   // refcount 2: kept
    manager.m_placeHolders[0] = &a;
    manager.clearPlaceHolders();
    CHECK(manager.m_placeHolders[0] == nullptr);

    // Writer registration bumps the reference count.
    boost::intrusive_ptr<IImageWriter> writer(new test::TestImageWriter());  // born with count 1
    manager.addExternalImageWriter(writer.get());
    CHECK(writer->referenceCounter == 2 && manager.m_externalImageWriters.size() == 1);
    manager.addExternalImageWriter(nullptr);
    CHECK(manager.m_externalImageWriters.size() == 1);

    // CMaterial render-state helpers.
    CMaterial material;
    // The renderer is not used by the original body; any reference will do.
    char renderer = 0;
    CHECK(material.getRenderStateBlockSize(*reinterpret_cast<const CMaterialRenderer*>(&renderer)) == 0);

    std::printf("%s\n", failures ? "driver_state: FAILED" : "driver_state: ok");
    return failures != 0;
}
