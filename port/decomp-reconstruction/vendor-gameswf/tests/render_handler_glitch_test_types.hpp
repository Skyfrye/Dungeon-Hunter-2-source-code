// Test doubles for the render_handler_glitch tests (parts 1, 2 and 3 of the class). Not a test by itself.
//
// The handler sits on three things this tree does not (fully) have: the game's BufferedRenderer (game-world), the
// tesselator behind gameswf::triangle_intersector (needs GLU), and the IVideoDriver members setMaterial and the
// three-argument draw (declared in glitch-video, not defined). Each is replaced here by a recording double. The doubles are
// strong definitions: the test executables link with --allow-multiple-definition, the first definition wins, and the doubles
// must win over the real BufferedRenderer, the real triangle_intersector (it needs GLU, which is not in the tree) and the
// link stubs:
//   - BufferedRenderer: every member the handler calls records an event; queueBuffer and queueIndexedTriangles capture the
//     vertices (24 bytes each, from the first stream's buffer, as the real ones copy them) and the indices;
//   - gameswf::triangle_intersector: constructor, destructor and process; process answers with the points the test queued
//     in g_intersector.answers (one answer per call, in order) and records the two triangles it was given;
//   - IVideoDriver::setMaterial and IVideoDriver::draw (three arguments): recorded.
// bitmap_info_ogl_test_types.hpp supplies the driver, the texture and the texture manager doubles.
#pragma once

#include <cstdint>
#include <cstring>
#include <string>
#include <vector>

#include "bitmap_info_ogl_test_types.hpp"
#include "dh2/BufferedRenderer.hpp"
#include "glitch-scene-collada-gui/collada/CColladaDatabase.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/primitive_stream.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "vendor-gameswf/render_handler_glitch.hpp"
#include "vendor-gameswf/triangle_intersector.hpp"

namespace rhg_test {

using namespace glitch::video;

// One thing the handler asked of the batch renderer or the driver.
struct Event {
    enum Kind {
        BufferedCtor, Flush, SetTexture, ClearTextures, Reset, QueueBuffer, QueueIndexed, ApplyMask, EnsureCapacity,
        SetMaterial, Draw, SetTransform, SetOption, ClearBuffers, SetViewport, IntersectorProcess, SetColorMask,
    };
    Kind kind;
    int arg = 0;                    // mode, primitive, state, option, ... (see each recorder)
    int arg2 = 0;                   // second integer (index count, enable flag, vertex count, ...)
    const void* ptr = nullptr;      // texture, material, ...
    std::vector<BufferedRenderer::Vertex> vertices;  // QueueBuffer / QueueIndexed: the vertices that were queued
    std::vector<uint16_t> indices;                   // QueueIndexed: the indices that were passed
    float matrix[16] = {};          // SetTransform
};

inline std::vector<Event> g_events;

inline void note(Event::Kind kind, int arg = 0, int arg2 = 0, const void* ptr = nullptr) {
    Event e;
    e.kind = kind;
    e.arg = arg;
    e.arg2 = arg2;
    e.ptr = ptr;
    g_events.push_back(e);
}

inline int count_of(Event::Kind kind) {
    int n = 0;
    for (const Event& e : g_events) {
        if (e.kind == kind) {
            ++n;
        }
    }
    return n;
}

inline const Event* nth_of(Event::Kind kind, int index) {
    int n = 0;
    for (const Event& e : g_events) {
        if (e.kind == kind && n++ == index) {
            return &e;
        }
    }
    return nullptr;
}

// What the intersector double answers: the points of each call to process, in call order, and the pairs it was given.
struct IntersectorLog {
    int constructed = 0;
    int destroyed = 0;
    std::vector<std::vector<gameswf::point>> answers;
    int next_answer = 0;
    struct Call {
        gameswf::point a[3];
        gameswf::point b[3];
    };
    std::vector<Call> calls;
};
inline IntersectorLog g_intersector;

inline void reset_logs() {
    g_events.clear();
    g_intersector = IntersectorLog();
    bio_test::g_manager_log = bio_test::ManagerLog();
}

// A driver that also records setTransform and clearBuffers.
class RecordingDriver : public bio_test::TestDriver {
public:
    void setTransform(E_TRANSFORMATION_STATE state, const glitch::core::CMatrix4<float>& matrix) override {
        Event e;
        e.kind = Event::SetTransform;
        e.arg = state;
        std::memcpy(e.matrix, matrix.M, sizeof(e.matrix));
        g_events.push_back(e);
        bio_test::TestDriver::setTransform(state, matrix);
    }
    void clearBuffers(int32_t mask) override {
        note(Event::ClearBuffers, mask);
    }
    void setOption(uint32_t option, bool enable) override {
        note(Event::SetOption, static_cast<int>(option), enable ? 1 : 0);
        bio_test::TestDriver::setOption(option, enable);
    }
};

}  // namespace rhg_test

// ---- BufferedRenderer (game-world/src/g1-game-world-BufferedRenderer-ec26b3-0.cpp) ----------------------------------------
// The constructor builds the members the handler reads (everything zero, slot indices 0), the other members record.

BufferedRenderer::BufferedRenderer(glitch::video::IVideoDriver* driver)
    : unk_00(0), m_wireFrame(false), pad_05{}, m_vertexOffset(0), m_capacity(0), m_vertexStreams(), m_indexBuffer(),
      unk_18(0), m_indexCursor(0), unk_20(0), m_vertexCount(0), unk_28(1), m_primitiveType(4), m_vertexData(nullptr),
      m_indices(nullptr), m_driver(driver), m_playerContext(nullptr), m_materials{}, m_texture(), m_materialIndex(0) {
    rhg_test::note(rhg_test::Event::BufferedCtor);
}

BufferedRenderer::~BufferedRenderer() {}

void BufferedRenderer::ensureBufferCapacity(int vertexCount) {
    rhg_test::note(rhg_test::Event::EnsureCapacity, vertexCount);
}

void BufferedRenderer::flush() {
    rhg_test::note(rhg_test::Event::Flush);
}

void BufferedRenderer::setTexture(boost::intrusive_ptr<glitch::video::ITexture>& texture) {
    rhg_test::note(rhg_test::Event::SetTexture, 0, 0, texture.get());
    if (m_texture.get() != texture.get()) {
        flush();
    }
    m_texture = texture;
}

void BufferedRenderer::clearTextures() {
    rhg_test::note(rhg_test::Event::ClearTextures);
    boost::intrusive_ptr<glitch::video::ITexture> none;
    m_texture = none;
}

void BufferedRenderer::reset() {
    rhg_test::note(rhg_test::Event::Reset);
}

void BufferedRenderer::applyMaskState(int mode) {
    rhg_test::note(rhg_test::Event::ApplyMask, mode);
}

namespace {
// The vertices the stream table holds (24 bytes each, from the first stream's buffer, as the real queue functions copy them).
inline void capture_vertices(rhg_test::Event& e, const boost::intrusive_ptr<glitch::video::CVertexStreams>& streams) {
    const uint32_t count = streams->m_field08;
    const uint8_t* data = streams->m_streams[0].buffer->m_data;
    e.vertices.resize(count);
    if (count != 0) {
        std::memcpy(e.vertices.data(), data, sizeof(BufferedRenderer::Vertex) * count);
    }
}
}  // namespace

void BufferedRenderer::queueBuffer(const boost::intrusive_ptr<glitch::video::CVertexStreams>& streams,
                                                         glitch::video::E_PRIMITIVE_TYPE primitiveType) {
    rhg_test::Event e;
    e.kind = rhg_test::Event::QueueBuffer;
    e.arg = primitiveType;
    capture_vertices(e, streams);
    rhg_test::g_events.push_back(e);
}

void BufferedRenderer::queueIndexedTriangles(
    const boost::intrusive_ptr<glitch::video::CVertexStreams>& streams, const uint16_t* indices, int indexCount) {
    rhg_test::Event e;
    e.kind = rhg_test::Event::QueueIndexed;
    e.arg = indexCount;
    capture_vertices(e, streams);
    e.indices.assign(indices, indices + indexCount);
    rhg_test::g_events.push_back(e);
}

// ---- IVideoDriver members that glitch-video declares and does not define ---------------------------------------------------
namespace glitch::video {

void IVideoDriver::setMaterial(const boost::intrusive_ptr<CMaterial>& material,
                                                     const boost::intrusive_ptr<CVertexAttributeMap>* attributes) {
    rhg_test::note(rhg_test::Event::SetMaterial, attributes != nullptr ? 1 : 0, 0, material.get());
}

// glitch::video::setColorMask (0x7d4f34, declared by the callers): arg is the mask bits r = 1, g = 2, b = 4, a = 8.
void setColorMask(const boost::intrusive_ptr<CMaterial>& material, bool r, bool g, bool b, bool a) {
    rhg_test::note(rhg_test::Event::SetColorMask, (r ? 1 : 0) | (g ? 2 : 0) | (b ? 4 : 0) | (a ? 8 : 0), 0, material.get());
}

void IVideoDriver::draw(const boost::intrusive_ptr<const CVertexStreams>& streams,
                                              const CPrimitiveStream& primitives, CDriverBinding** binding) {
    rhg_test::Event e;
    e.kind = rhg_test::Event::Draw;
    e.arg = primitives.m_primitiveType;
    e.arg2 = static_cast<int>(primitives.m_count);
    e.ptr = binding;
    const uint32_t count = streams->m_field08;
    const uint8_t* data = streams->m_streams[0].buffer->m_data;
    e.vertices.resize(count);
    if (count != 0) {
        std::memcpy(e.vertices.data(), data, sizeof(BufferedRenderer::Vertex) * count);
    }
    e.indices = {static_cast<uint16_t>(primitives.m_indexType), static_cast<uint16_t>(primitives.m_vertexStart),
                 static_cast<uint16_t>(primitives.m_vertexEnd)};
    rhg_test::g_events.push_back(e);
}

}  // namespace glitch::video

// ---- gameswf::triangle_intersector (vendor-gameswf/src/v1-vendor-gameswf-pack9-22190e-0.cpp) ----------------------------------
gameswf::triangle_intersector::triangle_intersector() : m_acc(nullptr) {
    ++rhg_test::g_intersector.constructed;
}

gameswf::triangle_intersector::~triangle_intersector() {
    ++rhg_test::g_intersector.destroyed;
}

void gameswf::triangle_intersector::process(point* a, point* b, array<point>& out) {
    rhg_test::IntersectorLog& log = rhg_test::g_intersector;
    rhg_test::IntersectorLog::Call call;
    for (int i = 0; i < 3; ++i) {
        call.a[i] = a[i];
        call.b[i] = b[i];
    }
    log.calls.push_back(call);
    rhg_test::note(rhg_test::Event::IntersectorProcess);
    out.resize(0);
    if (log.next_answer < static_cast<int>(log.answers.size())) {
        for (const gameswf::point& p : log.answers[log.next_answer]) {
            out.push_back(p);
        }
    }
    ++log.next_answer;
}

// ---- the blend-mode materials of the constructor ---------------------------------------------------------------------------
// The constructor opens "gameswf_effects.bdae" with glitch::collada::CColladaDatabase and asks BufferedRenderer for seven
// materials; the doubles stand in for both (the database has no file here and the real BufferedRenderer is replaced above).
void BufferedRenderer::createBlendModeMaterial(boost::intrusive_ptr<glitch::video::CMaterialRenderer>, int, const char*) {}

namespace glitch::collada {
CColladaDatabase::CColladaDatabase(const char*, CColladaFactory*) {}
glitch::video::CMaterialRenderer* CColladaDatabase::constructEffect(glitch::video::IVideoDriver*, const char*,
                                                                    CRootSceneNode*) const {
    return nullptr;
}
}  // namespace glitch::collada
