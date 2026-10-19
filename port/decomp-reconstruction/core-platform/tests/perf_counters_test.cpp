#include "core-platform/deps/debug_switches.hpp"
#include "core-platform/perf_counters.hpp"

#include <cstdint>
#include <cstdio>
#include <new>

#include "dh2/Application.hpp"
#include "glitch-core-io/os/device.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/null_driver.hpp"
#include "glitch-video/video_driver.hpp"

static int failures = 0;
#define CHECK(c) do { if (!(c)) { std::printf("FAIL %s:%d %s\n", __FILE__, __LINE__, #c); ++failures; } } while (0)

// ---------------------------------------------------------------------------------------------------------
// Test stand-ins for the three objects PerfCounters::Draw() reaches through
// ApplicationGetInstance().m_device->videoDriver (0x311914, see perf_counters.cpp):
//
//   * the process Application (the real one is defined at integration; the same zero-initialised storage
//     pattern as core-platform/tests/device_test.cpp),
//   * the glitch device, constructed for real: the driver hangs off IDevice::videoDriver (+0x10),
//   * a TestDriver (a CNullDriver, constructed for real): its constructor builds the screen framebuffer and
//     pushes it on the render-target stack, so m_renderTargets.back()->viewport() (the drawing area Draw()
//     reads) exists, and m_materialRendererManager is a real CMaterialRendererManager whose 17-entry
//     renderer-id table the constructor fills with 0xffff.
//
// Draw() then takes the material-renderer path and asks for the material of renderer id 4. The test seeds
// that table entry with a real CMaterialRenderer entry, so the lookup runs in glitch-video's own
// getMaterialInstance (0x5dd0e4) and Draw() completes when that returns.
// ---------------------------------------------------------------------------------------------------------

alignas(Application) static unsigned char g_applicationStorage[sizeof(Application)];
static bool g_applicationBuilt = false;
Application& ApplicationGetInstance() {
    if (!g_applicationBuilt) {
        new (g_applicationStorage) Application();
        g_applicationBuilt = true;
    }
    return *reinterpret_cast<Application*>(g_applicationStorage);
}

// CNullDriver overrides the pure 2D slot draw2DRectangle, but IVideoDriver's own draw2DLine (0x5ac7bc) and
// draw2DLines (0x5ac5b8) are unreconstructed bodies that abort in the port (glitch-video's
// detail::unreconstructed), and Draw() reaches both (draw2DLines for each counter's sample strip, draw2DLine
// for the newest-sample cursor). TestDriver is the seam for them: it counts the calls and returns, so
// everything else in the reconstructed body runs for real.
class TestDriver : public glitch::video::CNullDriver {
public:
    using CNullDriver::CNullDriver;

    void draw2DLine(const glitch::core::position2d<int32_t>& start, const glitch::core::position2d<int32_t>& end,
                    glitch::video::SColor color) override {
        ++lineCalls;
        (void)start;
        (void)end;
        (void)color;
    }
    void draw2DLines(glitch::core::position2d<int32_t>* positions, uint16_t* indices, glitch::video::SColor* colors,
                     uint32_t count, uint32_t indexCount) override {
        ++linesCalls;
        if (count > 0 && positions != nullptr && indices != nullptr && colors != nullptr) {
            lastStripPoints = count;
            lastStripIndices = indexCount;
        }
    }

    int lineCalls = 0;
    int linesCalls = 0;
    uint32_t lastStripPoints = 0;
    uint32_t lastStripIndices = 0;
};

// The second unreconstructed slot Draw() reaches is the three-argument IVideoDriver::setMaterial (0x5ad368),
// which is NOT a virtual slot in this port (the original's call is non-virtual too, so no override seam
// exists) and is also only a link stub here. The test supplies its own definition of that one symbol, kept
// over the stub the same way as createMaterialRenderer below, and only records the call: the real body (the
// technique remap, the attribute binding and the batch-material switch) is not reconstructed, and Draw()
// passes a null attribute map.
static int g_setMaterialCalls = 0;
static uint8_t g_setMaterialTechnique = 0xff;
static bool g_setMaterialWasNull = false;

namespace glitch::video {

void IVideoDriver::setMaterial(const boost::intrusive_ptr<CMaterial>& material, uint8_t technique,
                              const boost::intrusive_ptr<CVertexAttributeMap>* attributes) {
    ++g_setMaterialCalls;
    g_setMaterialTechnique = technique;
    g_setMaterialWasNull = !material;
    (void)attributes;
}

}  // namespace glitch::video

static int g_createMaterialRendererCalls = 0;

namespace glitch::video {

uint16_t CMaterialRendererManager::createMaterialRenderer(E_MATERIAL_TYPE type) {
    ++g_createMaterialRendererCalls;
    boost::intrusive_ptr<CMaterialRenderer> renderer(new CMaterialRenderer(), true);
    return add("perf-test-renderer", renderer);
}

}  // namespace glitch::video

int main() {
    // With the switch off, nothing is recorded.
    DebugSwitches::s_inst.SetSwitch("EnablePerfCounters", false);
    {
        PerfCounters pc;
        pc.AddEntry("fps");
        pc.SetCounterValue("fps", 60.f, 1.f, 2.f);
        CHECK(pc.GetEntry("fps")->value_ == 0.f);
        pc.Update(0.5f);
        CHECK(pc.GetEntry("fps")->history_.empty());
    }

    // With the switch on, values are stored and each Update samples them.
    DebugSwitches::s_inst.SetSwitch("EnablePerfCounters", true);
    {
        PerfCounters pc;
        PerfCounters::CounterEntry& fps = pc.AddEntry("fps");
        (void)fps;
        pc.AddEntry("mem");
        pc.SetCounterValue("fps", 60.f, 1.f, 2.f);
        PerfCounters::CounterEntry* e = pc.GetEntry("fps");
        CHECK(e != nullptr);
        if (e != nullptr) {
            CHECK(e->value_ == 60.f && e->extra1_ == 1.f && e->extra2_ == 2.f);
            CHECK(e->history_.empty());
        }
        // A missing name is appended as a new entry (the listing inserts it), not a null result.
        CHECK(pc.GetEntry("missing") != nullptr);
        pc.SetCounterValue("missing", 5.f, 0.f, 0.f);

        pc.Update(0.5f);
        pc.SetCounterValue("fps", 30.f, 0.f, 0.f);
        pc.Update(0.25f);
        e = pc.GetEntry("fps");
        CHECK(e != nullptr && e->history_.size() == 2);
        if (e != nullptr && e->history_.size() == 2) {
            CHECK(e->history_[0] == 60.f && e->history_[1] == 30.f);
        }
        CHECK(pc.GetEntry("mem")->history_.size() == 2);

        // The copy constructor takes the name, the three values and the history.
        PerfCounters::CounterEntry copy(*e);
        CHECK(copy.name_ == "fps" && copy.value_ == 30.f && copy.history_.size() == 2);

        // Switching off stops the samples again.
        DebugSwitches::s_inst.SetSwitch("EnablePerfCounters", false);
        pc.Update(1.f);
        CHECK(pc.GetEntry("fps")->history_.size() == 2);
        DebugSwitches::s_inst.SetSwitch("EnablePerfCounters", true);

        // Draw() with the stand-in driver above: it must reach the real body (the driver, the renderer
        // manager, the target stack and the renderer creation) and return. The renderer type 4 of the
        // manager's table is 0xffff after construction, so the createMaterialRenderer stand-in must run.
        glitch::SCreationParameters parameters{};
        glitch::IDevice device(parameters);
        TestDriver driver(&device);
        glitch::video::CMaterialRendererManager rendererManager(&driver);
        // The driver owns the manager it built (state flag 0x10), and ~IVideoDriver deletes it: keep that pointer and
        // put it back before the stack manager below goes away, or the destructor would delete a stack object.
        glitch::video::CMaterialRendererManager* const ownedManager = driver.m_materialRendererManager;
        driver.m_materialRendererManager = &rendererManager;
        // Seed the renderer table the way a registered renderer would: id 0 is in range, so the entry is
        // getMaterialInstance's real lookup and its cached-material path is exercised.
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer(new glitch::video::CMaterialRenderer(), true);
        CHECK(rendererManager.add("perf-test-renderer", renderer) == 0);
        rendererManager.m_materialTypeIds[4] = 0;
        // A real drawing area: CNullDriver's screen framebuffer is 0x0 in the port (null_driver.hpp), and
        // Draw() reads the top target's viewport for its width and height, so the stand-in gives it one.
        glitch::core::rect<int32_t> viewport;
        viewport.UpperLeftCorner.X = 0;
        viewport.UpperLeftCorner.Y = 0;
        viewport.LowerRightCorner.X = 800;
        viewport.LowerRightCorner.Y = 480;
        driver.m_renderTargets.back()->setViewport(viewport);
        device.videoDriver = &driver;
        ApplicationGetInstance().m_device = &device;
        pc.Draw();
        CHECK(g_createMaterialRendererCalls == 0);
        CHECK(g_setMaterialCalls == 1);
        // Renderer id 4's seeded entry is set, so getMaterialInstance allocates a material on it through
        // glitch-video's real CMaterial::allocate and caches it. Draw() hands that material to the driver
        // with technique 0 (the technique the allocation was made with) and a null attribute map.
        CHECK(!g_setMaterialWasNull);
        CHECK(g_setMaterialTechnique == 0);
        // One strip per counter - the three entries of this PerfCounters - each with the two samples its
        // history holds after the two Update calls, and the newest-sample cursor line once.
        CHECK(driver.linesCalls == 3);
        CHECK(driver.lastStripPoints == 2);
        CHECK(driver.lastStripIndices == 1);
        CHECK(driver.lineCalls == 1);
        driver.m_materialRendererManager = ownedManager;
        device.videoDriver = nullptr;  // the stack driver is the test's: ~IDevice drops its driver (as the binary does)
    }

    std::printf("%s\n", failures ? "perf_counters: FAILED" : "perf_counters: ok");
    return failures != 0;
}
