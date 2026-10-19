#include "core-platform/perf_counters.hpp"

#include "core-platform/deps/debug_switches.hpp"
#include "core-platform/memory.hpp"

#include "dh2/Application.hpp"           // dword_99F73C is Application::m_device (+0x10)
#include "glitch-core-io/os/device.hpp"  // IDevice::videoDriver (+0x10)
#include "glitch-video/material.hpp"
#include "glitch-video/material_renderer_manager.hpp"
#include "glitch-video/video_driver.hpp"

namespace {

// The original's node block, taken in the constructor (0x3e84 bytes).
constexpr unsigned kNodeBlockSize = 0x3e84;

// Capacity the constructor reserves for the history (10000 floats, from the .clone.4
// reserve specialisation at 0x311018).
constexpr std::size_t kHistoryReserve = 10000;

// The bar palette the original keeps in .rodata (PerfCounters::Draw::C.1814, 21 bytes: seven
// component0/component1/component2 triples, the seventh sharing its last byte with the alpha
// store that follows). Entries past the seventh are white.
constexpr std::uint8_t kBarPalette[21] = {
    0xff, 0x00, 0x00, 0x00, 0xff, 0x00, 0x00, 0x00, 0xff, 0xff, 0xff,
    0x00, 0xff, 0x00, 0xff, 0x80, 0x00, 0x80, 0x00, 0x80, 0xff,
};

// The three scratch buffers the original keeps as file-scope statics (s_posArray 0x99f704,
// s_colArray 0x99f710, s_idxArray 0x99f71c, with their finish and end words). They are
// cleared before each counter is laid out and reused for the next one.
std::vector<glitch::core::position2d<int>> s_posArray;
std::vector<glitch::video::SColor> s_colArray;
std::vector<std::uint16_t> s_idxArray;

// Every counter entry point checks the same debug switch, after reloading the switch file.
bool perfCountersEnabled() {
    DebugSwitches::s_inst.load();
    return DebugSwitches::s_inst.GetSwitch("EnablePerfCounters");
}

// One bar colour: the palette triple plus the 0x80 alpha byte the listing stores at byte 3.
glitch::video::SColor BarColor(int index) {
    glitch::video::SColor color;
    if (index <= 6) {
        color.setComponent(0, kBarPalette[index * 3]);
        color.setComponent(1, kBarPalette[index * 3 + 1]);
        color.setComponent(2, kBarPalette[index * 3 + 2]);
    } else {
        color.setComponent(0, 0xff);
        color.setComponent(1, 0xff);
        color.setComponent(2, 0xff);
    }
    color.setComponent(3, 0x80);
    return color;
}

}  // namespace

// 0x311730 PerfCounters::CounterEntry::CounterEntry(PerfCounters::CounterEntry const&)
PerfCounters::CounterEntry::CounterEntry(const CounterEntry& other)
    : name_(other.name_),
      value_(other.value_),
      extra1_(other.extra1_),
      extra2_(other.extra2_),
      history_(other.history_) {}

// 0x3110c4 / 0x311118 _ZN12PerfCountersC2Ev / _ZN12PerfCountersC1Ev
// The listing zeroes time_ and the sample count (+0x4), makes the entry list empty, and
// calls std::vector<float>::reserve on the history. The reserve call is the .clone.4
// specialisation (0x311018), which reserves the constant 10000 floats when the capacity is
// smaller. The 0x3e84-byte node block comes from operator new[](size, hint 0), which
// forwards to GlitchAlloc and then CustomAlloc (memory.cpp).
PerfCounters::PerfCounters() : buffer_(CustomAlloc(kNodeBlockSize)) {
    history_.reserve(kHistoryReserve);
}

// 0x3115c4 / 0x311620 _ZN12PerfCountersD1Ev / _ZN12PerfCountersD2Ev
// Frees the node block, as the listing does; the entries and the history are released
// by the member destructors (the listing clears the list and frees the history storage).
PerfCounters::~PerfCounters() {
    if (buffer_ != nullptr) {
        CustomFree(buffer_);
    }
}

// 0x312584 _ZN12PerfCounters8GetEntryERKSs
// Verified against the listing: an existing name returns its entry; otherwise a new entry is
// appended at the back of the list (the listing inserts at the sentinel) carrying the name, and
// its history is resized to count + 1 with a zero and then fill-assigned count zeros, so it ends
// up holding one zero per Update call (count is this+4, which history_.size() mirrors). The
// listing writes no value, extra1 or extra2 to the new entry: the member initialisers keep those
// zero here, where the original leaves the three words as the constructor left them, and
// SetCounterValue writes them before anything reads them.
PerfCounters::CounterEntry* PerfCounters::GetEntry(const std::string& name) {
    for (CounterEntry& entry : entries_) {
        if (entry.name_ == name) {
            return &entry;
        }
    }
    entries_.emplace_back();
    CounterEntry& created = entries_.back();
    created.name_ = name;
    const std::size_t count = history_.size();
    created.history_.resize(count + 1, 0.0f);
    created.history_.assign(count, 0.0f);
    return &created;
}

// 0x312734 _ZN12PerfCounters15SetCounterValueERKSsfff
// Gated by the EnablePerfCounters switch. Sets value_, extra1_ and extra2_ on the entry
// for name, creating it when missing (GetEntry does that).
void PerfCounters::SetCounterValue(const std::string& name, float value, float extra1, float extra2) {
    if (!perfCountersEnabled()) {
        return;
    }
    CounterEntry* entry = GetEntry(name);
    entry->value_ = value;
    entry->extra1_ = extra1;
    entry->extra2_ = extra2;
}

// 0x31177c _ZN12PerfCounters6UpdateEf
// While the switch is on, each counter appends its current value to its history, this
// object appends its own time to its history, and the time advances by dt.
void PerfCounters::Update(float dt) {
    if (!perfCountersEnabled()) {
        return;
    }
    for (CounterEntry& entry : entries_) {
        entry.history_.push_back(entry.value_);
    }
    history_.push_back(time_);
    time_ = time_ + dt;
}

// 0x311914 _ZN12PerfCounters4DrawEv
// Verified against the listing, which is fully reproduced: gated by the EnablePerfCounters
// switch and a non-empty entry list; the video driver is ApplicationGetInstance().m_device
// ->videoDriver (hex dword_99F73C + 0x10); renderer id 4 of the material renderer manager's
// per-type table (manager +0x34 = m_materialTypeIds[4]) is created by
// createMaterialRenderer(type 4) when it is 0xffff, getMaterialInstance(id, true) gives the
// material, setMaterial takes it with its technique (0xff without one) and a null attribute
// map; the bar area is the current render target's viewport (the last of the driver's target
// stack, rect at +0x14); the background rectangle is (0.2*0.5*width, height - 0.75*0.5*height)
// to (1.8*0.5*width, height - 0.2*0.5*height) filled with four copies of the third palette
// colour; each counter then draws its newest 1000 samples as a line strip in the colour of its
// palette index (white past seven), x from the sample number and y from the sample's position
// between extra1_ and extra2_, through draw2DLines; and a final draw2DLine marks the newest
// sample's x. Deviations (named): the original computes an unused per-counter spacing
// (Vector3D(1.6, 0, 0) / (count - 1) at 0x311ab8, result never read) and walks the entry list
// once more with an empty loop, both dropped; the vector growth is push_back instead of the
// inlined allocator calls.
void PerfCounters::Draw() {
    if (!perfCountersEnabled() || entries_.empty()) {
        return;
    }

    glitch::video::IVideoDriver* const driver = ApplicationGetInstance().m_device->videoDriver;
    glitch::video::CMaterialRendererManager* const manager = driver->m_materialRendererManager;  // +0xdc

    uint16_t rendererId = manager->m_materialTypeIds[4];  // original +0x2c + 2*4
    if (rendererId == 0xffffu) {
        rendererId = manager->createMaterialRenderer(static_cast<glitch::video::E_MATERIAL_TYPE>(4));
    }
    const boost::intrusive_ptr<glitch::video::CMaterial> material = manager->getMaterialInstance(rendererId, true);
    driver->setMaterial(material, material ? static_cast<std::uint8_t>(material->getTechnique()) : 0xffu, nullptr);

    // The current render target is the last entry of the driver's target stack; its viewport
    // (original +0x14: left, top, right, bottom) gives the drawing area.
    const glitch::core::rect<std::int32_t> viewport = driver->m_renderTargets.back()->viewport();
    const float width = static_cast<float>(viewport.LowerRightCorner.X - viewport.UpperLeftCorner.X);
    const float height = static_cast<float>(viewport.LowerRightCorner.Y - viewport.UpperLeftCorner.Y);

    // The x window: sampleCount / 1000 whole windows of 1000 samples, and how much of the newest
    // one is filled. sampleCount is this+4, the Update count that history_.size() mirrors.
    const int sampleCount = static_cast<int>(history_.size());
    const int windowBase = 1000 * (sampleCount / 1000);
    const int windowFill = sampleCount - windowBase;

    glitch::core::rect<std::int32_t> background;
    background.UpperLeftCorner.X = static_cast<int>(width * 0.2f * 0.5f);
    background.UpperLeftCorner.Y = static_cast<int>(height + (height * 0.75f) * -0.5f);
    background.LowerRightCorner.X = static_cast<int>(width * 1.8f * 0.5f);
    background.LowerRightCorner.Y = static_cast<int>(height + (height * 0.2f) * -0.5f);
    const glitch::video::SColor backgroundColors[4] = {BarColor(2), BarColor(2), BarColor(2), BarColor(2)};
    driver->draw2DRectangle(background, background, backgroundColors, nullptr);

    int entryIndex = 0;
    for (const CounterEntry& entry : entries_) {
        const glitch::video::SColor color = BarColor(entryIndex);
        const float range = entry.extra2_ - entry.extra1_;  // node +0x28 minus node +0x24
        ++entryIndex;

        s_posArray.clear();
        s_colArray.clear();
        s_idxArray.clear();

        // One sample per iteration: the x comes from the sample number in the window, the y from
        // the sample's place between the entry's two values. While the newest window is not full
        // the samples are read from the previous window; with no previous window the loop stops.
        int samples = 0;
        int windowStep = windowBase;
        do {
            int index = windowStep;
            if (windowFill <= samples) {
                if (windowBase <= 0) {
                    break;
                }
                index = windowStep - 1000;
            }
            ++samples;
            const float sample = static_cast<float>(samples);
            const int x = static_cast<int>(width * ((sample * 0.0016f - 0.8f) * 0.5f + 0.5f));
            const float normalized = (entry.history_[index] - entry.extra1_) / range;
            const int y = static_cast<int>(height * (0.5f - (normalized * 0.55f - 0.8f) * 0.5f));
            s_posArray.push_back(glitch::core::position2d<int>{x, y});
            s_colArray.push_back(color);
            ++windowStep;
        } while (samples != 1000);

        // Two indices per sample: 0, then the line strip 1,1,2,2,...,samples-1,samples.
        for (int i = 0; i < 2 * samples; ++i) {
            s_idxArray.push_back(static_cast<std::uint16_t>((i + 1) >> 1));
        }
        if (s_posArray.size() > 1) {
            driver->draw2DLines(s_posArray.data(), s_idxArray.data(), s_colArray.data(),
                                static_cast<std::uint32_t>(s_posArray.size()),
                                static_cast<std::uint32_t>(samples - 1));
        }
    }

    // The newest sample's x, as a line across the bar area's height.
    const float cursor = static_cast<float>(windowFill) * 0.0016f - 0.8f + 1.0f;
    glitch::core::position2d<std::int32_t> cursorTop;
    glitch::core::position2d<std::int32_t> cursorBottom;
    cursorTop.X = static_cast<int>(width * cursor * 0.5f);
    cursorTop.Y = static_cast<int>(height + (height * 0.2f) * -0.5f);
    cursorBottom.X = static_cast<int>(cursor * width * 0.5f);
    cursorBottom.Y = static_cast<int>(height + (height * 0.75f) * -0.5f);
    driver->draw2DLine(cursorTop, cursorBottom, glitch::video::SColor{0xffffffffu});
}

// Not in the original (see the header).
PerfCounters::CounterEntry& PerfCounters::AddEntry(const std::string& name) {
    entries_.emplace_back();
    entries_.back().name_ = name;
    return entries_.back();
}
