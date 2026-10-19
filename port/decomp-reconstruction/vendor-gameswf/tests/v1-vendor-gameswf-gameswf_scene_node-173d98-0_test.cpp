// Test for batch v1-vendor-gameswf-gameswf_scene_node-173d98-0 (gameswf::scene_node).
// Link line (run from the worktree root; the libraries are the cmake targets dh2_glitch_video, dh2_glitch_core_io,
// dh2_glitch_scene_collada_gui and dh2_core_platform, linked after the sources):
//   bash tools/trackb/check_tu.sh --test <this file> <the batch source> <test-support/dh2_test_support.cpp>
//     -Wl,--start-group libdh2_glitch_video.a libdh2_glitch_core_io.a libdh2_glitch_scene_collada_gui.a
//     libdh2_core_platform.a -Wl,--end-group
//
// The scene_node is built for real over the canonical ISceneNode, with a null-driver video driver, a mesh node that stands in for
// the parent (IMeshSceneNode), a mesh with one real CMeshBuffer (real CVertexStreams, index buffer and primitive stream), and a
// player, its context and a root that are zeroed storage (the member functions the batch calls on them are stand-ins below). Doubles for what
// the glitch libraries leave undefined: CTextureManager::addTexture (bitmap_info_ogl_test_types.hpp),
// CMaterialRenderer::getParameterID, and the seven gameswf::collect<T> bodies (they belong to the fddef6-2 batch).
//
// Covered: the constructor (base arguments, name, the reference on the parent, the driver option bit around addTexture, the
// texture name and size, the render target, the texture parameter id, the pointer position), the destructor (the texture and
// render target are released, the parent's reference is not), getBoundingBox, assign_corner_indices, collect_uvs (the index
// types, the value types, the clamp, the dequantization and the unmap), init_corners (through the constructor), get_collision_uv
// (identity and translated parent matrix, hit and miss), update_inverse_transform (changed pointer, changed matrix, unchanged,
// the identity-flag shortcut), get_world_mouse, get_local_mouse (a character without a parent) and onRegisterSceneNode
// (no child, hidden children).
//
// Not covered: the drawing loop of onRegisterSceneNode and build_dlist (they need live characters and roots), the hit branch of
// update_inverse_transform (the ray stand-in finds no ray), and init_corners with triangles (the CTriangleSelector mesh
// constructor of the glitch library collects none).

#include <cmath>
#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>

#include "bitmap_info_ogl_test_types.hpp"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_root.h"
#include "glitch-core-io/os/device.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/material_vertex_attribute_map.hpp"
#include "vendor-gameswf/gameswf_scene_node.hpp"

namespace {

int g_failures = 0;

void check(bool ok, const char* what) {
    if (!ok) {
        std::printf("FAIL: %s\n", what);
        ++g_failures;
    }
}

bool nearly(float a, float b) {
    return std::fabs(a - b) < 1e-5f;
}

using glitch::core::CMatrix4;
using glitch::core::vector3d;
using glitch::scene::CMeshBuffer;
using glitch::scene::IMesh;
using glitch::video::CMaterial;
using glitch::video::CMaterialRenderer;
using glitch::video::CPrimitiveStream;
using glitch::video::CTextureManager;
using glitch::video::CVertexStreams;
using glitch::video::IBuffer;
using glitch::video::IRenderTarget;
using glitch::video::ITexture;
using gameswf::scene_node;

// ---- the gameswf doubles --------------------------------------------------------------------------------------------

// What the collect<T> doubles saw.
struct CollectCall {
    int type = -1;  // 0 signed char, 1 unsigned char, 2 short, 3 unsigned short, 4 int, 5 unsigned int, 6 float
    unsigned int indices[6] = {};
    unsigned int count = 0;
    const glitch::video::SVertexStream* stream = nullptr;
    bool seen = false;
};
std::vector<CollectCall> g_collect_calls;

template <typename T>
void record_collect(int type, const unsigned int* indices, unsigned int count, const glitch::video::SVertexStream& stream,
                    gameswf::point* out) {
    CollectCall call;
    call.type = type;
    for (int i = 0; i < 6; ++i) {
        call.indices[i] = indices[i];
    }
    call.count = count;
    call.stream = &stream;
    call.seen = true;
    g_collect_calls.push_back(call);
    // The points the real collect writes: three per triangle. Deterministic values for the dequantization check.
    for (unsigned int k = 0; k < 3 * count; ++k) {
        out[k].m_x = 0.25f * static_cast<float>(k + 1);
        out[k].m_y = 0.5f * static_cast<float>(k + 1);
    }
}

struct RootBox {
    alignas(gameswf::root) unsigned char bytes[sizeof(gameswf::root)];
};
struct ContextBox {
    alignas(gameswf::player_context) unsigned char bytes[sizeof(gameswf::player_context)];
};
struct PlayerBox {
    alignas(gameswf::player) unsigned char bytes[sizeof(gameswf::player)];
};
struct CharacterBox {
    alignas(gameswf::character) unsigned char bytes[sizeof(gameswf::character)];
};

RootBox g_root_box;
gameswf::root* g_root = nullptr;
int g_screen_to_logical_calls = 0;
int g_get_root_calls = 0;

glitch::video::E_SHADER_PARAMETER_TYPE g_param_type_arg = -1;
std::uint16_t g_param_index_arg = 99;
std::uint16_t g_param_id_result = 0xffff;
int g_param_calls = 0;

}  // namespace

namespace gameswf {

// The gameswf allocator, reached by the display list arrays.
void free_internal(void* p, unsigned int) {
    std::free(p);
}
void* malloc_internal(unsigned int size, swf::MemHint) {
    return std::malloc(size);
}
void* realloc_internal(void* p, unsigned int new_size, unsigned int, swf::MemHint) {
    return std::realloc(p, new_size);
}

// Callees of build_dlist, onRegisterSceneNode and get_local_mouse. The paths that need them are not run by this test.
const cxform* character::get_world_cxform() {
    std::abort();
}
const matrix* character::get_world_matrix() {
    std::abort();
}
void matrix::transform_by_inverse(point*, const point&) const {
    std::abort();
}
void root::begin_display() {
    std::abort();
}
void root::end_display() {
    std::abort();
}
character* root::get_root_movie() {
    std::abort();
}

// The player's root and the screen-to-logical conversion of the pointer position.
root* player::get_root() {
    ++g_get_root_calls;
    return g_root;
}
float root::screen_to_logical(point& p) {
    ++g_screen_to_logical_calls;
    p.m_x += 1000.0f;
    p.m_y += 2000.0f;
    return 0.0f;
}

// gameswf::collect<T>: the bodies belong to the fddef6-2 batch; these record the call and write known points.
template <>
void collect<signed char>(const unsigned int* i, unsigned int c, const glitch::video::SVertexStream& s, point* o) {
    record_collect<signed char>(0, i, c, s, o);
}
template <>
void collect<unsigned char>(const unsigned int* i, unsigned int c, const glitch::video::SVertexStream& s, point* o) {
    record_collect<unsigned char>(1, i, c, s, o);
}
template <>
void collect<short>(const unsigned int* i, unsigned int c, const glitch::video::SVertexStream& s, point* o) {
    record_collect<short>(2, i, c, s, o);
}
template <>
void collect<unsigned short>(const unsigned int* i, unsigned int c, const glitch::video::SVertexStream& s, point* o) {
    record_collect<unsigned short>(3, i, c, s, o);
}
template <>
void collect<int>(const unsigned int* i, unsigned int c, const glitch::video::SVertexStream& s, point* o) {
    record_collect<int>(4, i, c, s, o);
}
template <>
void collect<unsigned int>(const unsigned int* i, unsigned int c, const glitch::video::SVertexStream& s, point* o) {
    record_collect<unsigned int>(5, i, c, s, o);
}
template <>
void collect<float>(const unsigned int* i, unsigned int c, const glitch::video::SVertexStream& s, point* o) {
    record_collect<float>(6, i, c, s, o);
}

}  // namespace gameswf

// CMaterialRenderer::getParameterID is declared in glitch-video and not defined there.
uint16_t glitch::video::CMaterialRenderer::getParameterID(E_SHADER_PARAMETER_TYPE type, uint16_t index) const {
    ++g_param_calls;
    g_param_type_arg = type;
    g_param_index_arg = index;
    return g_param_id_result;
}


namespace {

// ---- glitch doubles --------------------------------------------------------------------------------------------------

// The null driver, with the render target calls of onRegisterSceneNode recorded.
class SceneDriver : public bio_test::TestDriver {
public:
    void pushRenderTarget(const boost::intrusive_ptr<IRenderTarget>& target) override {
        events.push_back("push");
        pushed = target.get();
    }
    boost::intrusive_ptr<IRenderTarget> popRenderTarget() override {
        events.push_back("pop");
        return boost::intrusive_ptr<IRenderTarget>();
    }
    void clearBuffers(int32_t mask) override {
        events.push_back("clear" + std::to_string(mask));
    }
    std::vector<std::string> events;
    IRenderTarget* pushed = nullptr;
};

// An index buffer over a block the test owns.
class TestIndexBuffer : public IBuffer {
public:
    TestIndexBuffer(void* data, std::uint32_t size) : IBuffer(0, 0, size, data, 0) {}
    void bindImpl(bool) override {}
    void unbindImpl() override {}
    std::uint8_t* mapImpl(std::uint32_t) const override { return m_data; }
    void unmapImpl() const override { ++unmap_impl_calls; }
    std::uint8_t* getMappedPtr() const override { return m_data; }
    boost::intrusive_ptr<IBuffer> cloneImpl() const override { return boost::intrusive_ptr<IBuffer>(); }
    mutable int unmap_impl_calls = 0;
};

// A mesh with one buffer and an optional material.
class TestMesh : public IMesh {
public:
    boost::intrusive_ptr<IMesh> clone() const override { return boost::intrusive_ptr<IMesh>(); }
    std::uint32_t getMeshBufferCount() const override { return buffer ? 1u : 0u; }
    boost::intrusive_ptr<CMeshBuffer> getMeshBuffer(std::uint32_t) const override { return buffer; }
    boost::intrusive_ptr<CMaterial> getMaterial(std::uint32_t index) const override {
        material_index = index;
        ++material_calls;
        return material;
    }
    boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap> getMaterialVertexAttributeMap(std::uint32_t) const override {
        return boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>();
    }
    void setMaterial(std::uint32_t, const boost::intrusive_ptr<CMaterial>&,
                     const boost::intrusive_ptr<glitch::video::CMaterialVertexAttributeMap>&) override {}
    const glitch::core::aabbox3d<float>& getBoundingBox() const override { return box; }
    void setBoundingBox(const glitch::core::aabbox3d<float>&) override {}

    boost::intrusive_ptr<CMeshBuffer> buffer;
    boost::intrusive_ptr<CMaterial> material;
    glitch::core::aabbox3d<float> box;
    mutable std::uint32_t material_index = 99;
    mutable int material_calls = 0;
};

// The parent: a mesh scene node over a TestMesh, with a name of its own (getUID).
class TestMeshNode : public glitch::scene::IMeshSceneNode {
public:
    explicit TestMeshNode(const boost::intrusive_ptr<TestMesh>& m)
        : glitch::scene::IMeshSceneNode(-1, vector3d<float>{0.f, 0.f, 0.f}, glitch::core::quaternion{0.f, 0.f, 0.f, 1.f},
                                        vector3d<float>{1.f, 1.f, 1.f}),
          mesh(m) {}
    void render(void*) override {}
    const glitch::core::aabbox3d<float>& getBoundingBox() const override { return box; }
    void setMesh(const boost::intrusive_ptr<IMesh>& m) override { mesh = boost::intrusive_ptr<TestMesh>(static_cast<TestMesh*>(m.get()), true); }
    boost::intrusive_ptr<IMesh> getMesh() const override {
        ++get_mesh_calls;
        // The one-argument intrusive_ptr constructor takes over a reference (TRACK-B decision 1), so the caller gets its own
        // use with the two-argument form.
        return boost::intrusive_ptr<IMesh>(mesh.get(), true);
    }
    const char* getUID() const override { return "uid-123"; }

    boost::intrusive_ptr<TestMesh> mesh;
    glitch::core::aabbox3d<float> box;
    mutable int get_mesh_calls = 0;
};

// The block the scene_node is built over: a driver, a texture manager, a context and player, a parent and its mesh.
struct Rig {
    SceneDriver driver;
    CTextureManager manager;
    // update_inverse_transform casts its ray through driver -> device -> scene manager -> collision manager (0x777350). The
    // collision manager is the real one with no scene manager of its own, so getRayFromScreenCoordinates returns the
    // all-zero ray (0x6c59c0) and get_collision_uv decides it misses.
    glitch::SCreationParameters device_parameters{};
    glitch::IDevice device{device_parameters};
    alignas(16) unsigned char scene_manager_bytes[sizeof(glitch::scene::CSceneManager)] = {};
    glitch::scene::CSceneCollisionManager collision_manager{nullptr, nullptr};
    ContextBox context_box;
    PlayerBox player_box;
    boost::intrusive_ptr<TestMesh> mesh;
    TestMeshNode* parent = nullptr;
    std::uint16_t index_data16[6] = {5, 4, 3, 2, 1, 0};
    TestIndexBuffer* index_buffer = nullptr;

    // attribute_mask 3: the position stream and one more (the texture coordinates), count0c 1.
    explicit Rig(bool with_material = false, bool with_buffer = true) {
        bio_test::g_manager_log = bio_test::ManagerLog();
        g_collect_calls.clear();
        g_param_calls = 0;
        g_param_id_result = 0xffff;
        driver.m_textureManager = &manager;
        reinterpret_cast<glitch::scene::CSceneManager*>(scene_manager_bytes)->collisionManager = &collision_manager;
        device.sceneManager = reinterpret_cast<glitch::scene::ISceneManager*>(scene_manager_bytes);
        driver.m_device = &device;
        std::memset(context_box.bytes, 0, sizeof(context_box.bytes));
        reinterpret_cast<gameswf::player_context*>(context_box.bytes)->m_video_driver = &driver;
        std::memset(player_box.bytes, 0, sizeof(player_box.bytes));
        std::memset(g_root_box.bytes, 0, sizeof(g_root_box.bytes));
        g_root = reinterpret_cast<gameswf::root*>(g_root_box.bytes);
        reinterpret_cast<gameswf::player*>(player_box.bytes)->m_context = reinterpret_cast<gameswf::player_context*>(context_box.bytes);

        mesh = boost::intrusive_ptr<TestMesh>(new TestMesh, true);
        if (with_buffer) {
            CPrimitiveStream stream;
            index_buffer = new TestIndexBuffer(index_data16, sizeof(index_data16));
            stream.m_indexBuffer = boost::intrusive_ptr<IBuffer>(index_buffer, true);
            stream.m_count = 6;
            stream.m_indexType = 1;
            mesh->buffer = boost::intrusive_ptr<CMeshBuffer>(new CMeshBuffer(3, stream, false), true);
            CVertexStreams* streams = mesh->buffer->vertexStreams.get();
            streams->m_streams[1].field0a = 6;
            streams->m_streams[1].field0c = 2;
            streams->m_quantization[2] = vector3d<float>{2.f, 4.f, 1.f};   // scale of the texture coordinates
            streams->m_quantization[3] = vector3d<float>{1.f, -1.f, 0.f};  // offset
        }
        if (with_material) {
            mesh->material = boost::intrusive_ptr<CMaterial>(new CMaterial, true);
            mesh->material->m_renderer = boost::intrusive_ptr<CMaterialRenderer>(new CMaterialRenderer, true);
        }
        parent = new TestMeshNode(mesh);
    }
    ~Rig() {
        // The scene_node's constructor takes a reference on the parent and never gives it back.
        delete parent;
        device.sceneManager = nullptr;  // ~IDevice drops the scene manager, which is a byte block here
    }
    gameswf::player* player() { return reinterpret_cast<gameswf::player*>(player_box.bytes); }
    CVertexStreams* streams() { return mesh->buffer->vertexStreams.get(); }
};

// ---- the tests --------------------------------------------------------------------------------------------------------

void test_assign_corner_indices() {
    {
        const float uv[] = {
            0.1f, 0.2f,   // j0: u low,  v low   -> corner[1]
            0.1f, 0.9f,   // j1: u low,  v high  -> corner[0]
            0.9f, 0.2f,   // j2: u high, v low   -> corner[3]
            0.9f, 0.9f,   // j3: u high, v high  -> corner[2]
            0.5f, 0.5f,   // j4: u == 0.5 counts as high, v == 0.5 counts as low -> corner[3]
        };
        std::uint16_t corner[4] = {0xAAAA, 0xBBBB, 0xCCCC, 0xDDDD};
        scene_node::assign_corner_indices(uv, 5, corner);
        check(corner[0] == 1, "corner[0] is point 1 (u low, v high)");
        check(corner[1] == 0, "corner[1] is point 0 (u low, v low)");
        check(corner[2] == 3, "corner[2] is point 3 (u high, v high)");
        check(corner[3] == 4, "corner[3] is point 4 (boundary, last write wins)");
    }
    {
        // A NaN u is not below 0.5, so it takes the high-u branch.
        const float nanU = std::nanf("");
        const float uv[] = {nanU, 0.2f};
        std::uint16_t corner[4] = {0, 0, 0, 0};
        scene_node::assign_corner_indices(uv, 1, corner);
        check(corner[3] == 0 && corner[0] == 0 && corner[1] == 0 && corner[2] == 0,
              "NaN u writes index 0 into the high-u low-v slot only");
    }
    {
        // Count zero writes nothing; a partial count writes only its own points and keeps the other slots.
        std::uint16_t corner[4] = {7, 8, 9, 10};
        const float uv[] = {0.1f, 0.2f, 0.9f, 0.9f};
        scene_node::assign_corner_indices(uv, 0, corner);
        check(corner[0] == 7 && corner[1] == 8 && corner[2] == 9 && corner[3] == 10, "count 0 changes nothing");
        scene_node::assign_corner_indices(uv, 1, corner);
        check(corner[1] == 0 && corner[0] == 7 && corner[2] == 9 && corner[3] == 10,
              "count 1 writes only the slot of point 0");
    }
}

void test_constructor() {
    Rig rig(/*with_material=*/true);
    ITexture* made = nullptr;
    const int parent_count_before = rig.parent->referenceCounter;
    g_param_id_result = 0xffff;  // a real texture parameter id would reach CMaterial::parameters.setParameter, which the bare CMaterial double cannot take
    {
        scene_node* node = new scene_node(rig.player(), rig.parent, glitch::core::dimension2d<int>{320, 480});

        // The base: id -1, the name, identity placement.
        check(node->getID() == -1, "ISceneNode id is -1");
        check(std::string(node->getName()) == "gameswf_render_node", "name is NODE_NAME");
        check(std::string(scene_node::NODE_NAME) == "gameswf_render_node", "NODE_NAME text");
        check(nearly(node->getScale().X, 1.f) && nearly(node->getScale().Y, 1.f) && nearly(node->getScale().Z, 1.f),
              "scale is (1,1,1)");
        check(nearly(node->getPosition().X, 0.f) && nearly(node->getPosition().Z, 0.f), "position is (0,0,0)");
        check(nearly(node->getRotation().W, 1.f) && nearly(node->getRotation().X, 0.f), "rotation is the identity");

        // The members.
        check(node->m_parent == rig.parent, "m_parent is the parent");
        check(node->m_player == rig.player(), "m_player is the player");
        check(rig.parent->referenceCounter == parent_count_before + 1, "the parent got one more reference");
        check(node->m_last_pointer_x == -1.f && node->m_last_pointer_y == -1.f, "pointer position starts at -1");
        check(node->m_mouse_x == 0.f && node->m_mouse_y == 0.f, "mouse position starts at 0");
        check(node->m_parent_transform.flag, "parent transform starts as the identity (flag set)");
        check(nearly(node->m_parent_transform.M[0], 1.f) && nearly(node->m_parent_transform.M[15], 1.f) &&
                  nearly(node->m_parent_transform.M[12], 0.f),
              "parent transform starts as the identity");
        check(node->m_child_list.size() == 0 && node->m_display_list.size() == 0, "the arrays start empty");

        // The texture: option bit 0x10 off around addTexture (the null driver starts with it on), the size and name.
        const bio_test::ManagerLog& log = bio_test::g_manager_log;
        check(log.addTargetCalls == 1, "addTexture(size, ...) called once");
        check(log.targetSize.Width == 320 && log.targetSize.Height == 480, "texture size is the argument");
        check(log.targetName == "uid-123", "texture name is the parent's getUID()");
        check(log.targetFormat == 14 && log.targetFlag == true, "format 14, flag set");
        check(node->m_texture.get() == log.lastTexture && log.lastTexture != nullptr, "m_texture is the made texture");
        made = log.lastTexture;
        check(rig.driver.optionCalls.size() == 2, "two setOption calls");
        check(rig.driver.optionCalls.size() == 2 && rig.driver.optionCalls[0].option == 16 &&
                  rig.driver.optionCalls[0].enable == false && rig.driver.optionCalls[1].option == 16 &&
                  rig.driver.optionCalls[1].enable == true,
              "option 16 off, then back on");

        // The render target of the texture.
        check(rig.driver.renderTargetCalls == 1 && rig.driver.lastRenderTargetTexture == made &&
                  rig.driver.lastRenderTargetFlags == 0,
              "createRenderTarget(texture, 0)");
        check(node->m_render_target.get() != nullptr, "m_render_target is set");

        // The mesh: getMesh is asked in init_corners (twice) and for the material.
        check(rig.parent->get_mesh_calls == 3, "getMesh three times (two in init_corners, one for the material)");
        check(rig.mesh->material_calls == 1 && rig.mesh->material_index == 0, "material 0 asked once");
        check(g_param_calls == 1 && g_param_type_arg == 2 && g_param_index_arg == 0, "getParameterID(2, 0)");
        check(node->m_texture_param_id == 0xffff, "m_texture_param_id is the renderer answer");

        // init_corners: the selector holds no triangles here, so collect_uvs runs with 0 points.
        check(g_collect_calls.size() == 1 && g_collect_calls[0].count == 0, "collect runs once, with 0 triangles");
        check(node->m_corner[0] == 0 && node->m_corner[1] == 0 && node->m_corner[2] == 0 && node->m_corner[3] == 0,
              "no corner assigned");
        check(rig.index_buffer->m_mapCount13 == 0, "the index buffer is unmapped again");

        // The texture is held by the manager's use and the node's.
        check(made->referenceCounter == 2, "texture count: manager + node");
        delete node;
    }
    // The destructor released the texture and the render target; the parent keeps the extra reference.
    check(made->referenceCounter == 1, "texture released by the destructor");
    check(rig.parent->referenceCounter == parent_count_before + 1, "the parent's extra reference is not given back");
    made->drop();
}

void test_constructor_no_material_and_no_param() {
    {
        Rig rig;  // the mesh has no material
        scene_node node(rig.player(), rig.parent, glitch::core::dimension2d<int>{16, 16});
        check(rig.mesh->material_calls == 1, "material asked");
        check(g_param_calls == 0, "no material: no getParameterID");
        check(node.m_texture_param_id == 0xffff, "no material: parameter id stays 0xffff");
        bio_test::g_manager_log.lastTexture->drop();
    }
    {
        Rig rig(/*with_material=*/true);  // the renderer has no texture parameter: getParameterID answers 0xffff
        g_param_id_result = 0xffff;
        scene_node node(rig.player(), rig.parent, glitch::core::dimension2d<int>{16, 16});
        check(g_param_calls == 1, "getParameterID asked");
        check(node.m_texture_param_id == 0xffff, "parameter id 0xffff is kept");
        bio_test::g_manager_log.lastTexture->drop();
    }
}

void test_bounding_box() {
    Rig rig;
    scene_node node(rig.player(), rig.parent, glitch::core::dimension2d<int>{8, 8});
    const glitch::core::aabbox3d<float>& box = node.getBoundingBox();
    check(&box == &node.m_bounding_box, "getBoundingBox returns the member");
    check(nearly(box.MinEdge.X, -1.f) && nearly(box.MinEdge.Y, -1.f) && nearly(box.MinEdge.Z, -1.f),
          "bounding box MinEdge is (-1,-1,-1)");
    check(nearly(box.MaxEdge.X, 1.f) && nearly(box.MaxEdge.Y, 1.f) && nearly(box.MaxEdge.Z, 1.f),
          "bounding box MaxEdge is (1,1,1)");
    bio_test::g_manager_log.lastTexture->drop();
}

// A scene_node whose constructor has run, with the texture reference given back at the end.
struct NodeRig {
    Rig rig;
    scene_node* node;
    explicit NodeRig(bool with_buffer = true) : rig(false, with_buffer) {
        node = new scene_node(rig.player(), rig.parent, glitch::core::dimension2d<int>{64, 64});
        g_collect_calls.clear();
        rig.driver.events.clear();
    }
    ~NodeRig() {
        ITexture* made = bio_test::g_manager_log.lastTexture;
        delete node;
        made->drop();
    }
};

void test_collect_uvs() {
    // 16-bit indices, float stream: the call, the indices, the dequantization and the unmap.
    {
        NodeRig n;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.size() == 1, "one collect call");
        const CollectCall& c = g_collect_calls[0];
        check(c.type == 6, "value type 6 selects collect<float>");
        check(c.count == 2, "count / 3 = 2 triangles");
        check(c.indices[0] == 5 && c.indices[1] == 4 && c.indices[2] == 3 && c.indices[3] == 2 && c.indices[4] == 1 &&
                  c.indices[5] == 0,
              "indices are the buffer's, read as 16-bit values");
        check(c.stream == &n.rig.streams()->m_streams[1], "the stream is entry 1");
        // Points k = 0..5: x = 0.25 (k + 1), y = 0.5 (k + 1); dequantized with scale (2, 4) and offset (1, -1).
        bool ok = true;
        for (int k = 0; k < 6; ++k) {
            ok = ok && nearly(uv[k].m_x, 2.f * (0.25f * (k + 1)) + 1.f) && nearly(uv[k].m_y, 4.f * (0.5f * (k + 1)) - 1.f);
        }
        check(ok, "the uv are scaled and offset by the second quantization record");
        check(n.rig.index_buffer->m_mapCount13 == 0, "the index buffer is unmapped");
    }
    // The count is clamped to the buffer's element count (3 here).
    {
        NodeRig n;
        n.rig.mesh->buffer->primitiveStream.m_count = 3;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.size() == 1 && g_collect_calls[0].count == 1, "clamped to 3 indices: one triangle");
        check(g_collect_calls[0].indices[0] == 5 && g_collect_calls[0].indices[2] == 3, "first three indices");
        // The dequantization runs over the clamped count (3 points), not 6.
        check(nearly(uv[2].m_x, 2.f * 0.75f + 1.f) && uv[3].m_x == 0.f, "only 3 points are dequantized");
    }
    // 32-bit and 8-bit indices.
    {
        NodeRig n;
        std::uint32_t data32[6] = {100000, 2, 3, 4, 5, 6};
        TestIndexBuffer* buf = new TestIndexBuffer(data32, sizeof(data32));
        n.rig.mesh->buffer->primitiveStream.m_indexBuffer = boost::intrusive_ptr<IBuffer>(buf, true);
        n.rig.mesh->buffer->primitiveStream.m_indexType = 2;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.size() == 1 && g_collect_calls[0].indices[0] == 100000 && g_collect_calls[0].indices[5] == 6,
              "32-bit indices");
    }
    {
        NodeRig n;
        std::uint8_t data8[6] = {9, 8, 7, 6, 5, 255};
        TestIndexBuffer* buf = new TestIndexBuffer(data8, sizeof(data8));
        n.rig.mesh->buffer->primitiveStream.m_indexBuffer = boost::intrusive_ptr<IBuffer>(buf, true);
        n.rig.mesh->buffer->primitiveStream.m_indexType = 0;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.size() == 1 && g_collect_calls[0].indices[0] == 9 && g_collect_calls[0].indices[5] == 255,
              "8-bit indices");
    }
    // The value type picks the collect<T>.
    for (int type = 0; type <= 6; ++type) {
        NodeRig n;
        n.rig.streams()->m_streams[1].field0a = static_cast<std::uint16_t>(type);
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.size() == 1 && g_collect_calls[0].type == type, "value type selects the collect<T>");
    }
    // An unknown value type collects nothing but the dequantization still runs (over zeroed uv).
    {
        NodeRig n;
        n.rig.streams()->m_streams[1].field0a = 7;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.empty(), "value type 7: no collect");
        check(nearly(uv[0].m_x, 1.f) && nearly(uv[0].m_y, -1.f), "value type 7: the offset is added to the zero uv");
        check(n.rig.index_buffer->m_mapCount13 == 0, "value type 7: the index buffer is unmapped");
    }
    // Two components are required.
    {
        NodeRig n;
        n.rig.streams()->m_streams[1].field0c = 3;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.empty() && uv[0].m_x == 0.f, "three components: nothing collected or scaled");
        check(n.rig.index_buffer->m_mapCount13 == 0, "three components: the index buffer is unmapped");
    }
    // A zero scale skips the dequantization.
    {
        NodeRig n;
        n.rig.streams()->m_quantization[2] = vector3d<float>{0.f, 4.f, 1.f};
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.size() == 1 && nearly(uv[0].m_x, 0.25f) && nearly(uv[0].m_y, 0.5f), "zero x scale: raw uv");
        n.rig.streams()->m_quantization[2] = vector3d<float>{2.f, 0.f, 1.f};
        gameswf::point uv2[6] = {};
        g_collect_calls.clear();
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv2, 6);
        check(g_collect_calls.size() == 1 && nearly(uv2[0].m_x, 0.25f) && nearly(uv2[0].m_y, 0.5f), "zero y scale: raw uv");
    }
    // The early exits: no mesh buffer, a zero count0c, no index buffer. The index buffer is never mapped.
    {
        NodeRig n;
        n.rig.mesh->buffer = nullptr;  // getMeshBufferCount is 0
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.empty(), "no mesh buffer: nothing");
    }
    {
        NodeRig n;
        n.rig.streams()->m_count0c = 0;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.empty() && n.rig.index_buffer->m_mapCount13 == 0, "count0c 0: nothing, no map");
    }
    {
        NodeRig n;
        n.rig.mesh->buffer->primitiveStream.m_indexBuffer = nullptr;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(g_collect_calls.empty(), "no index buffer: nothing");
    }
    // The unmap callback of the index buffer runs when the buffer asks for it (flag 0x20).
    {
        NodeRig n;
        n.rig.index_buffer->m_flags12 |= IBuffer::kFlagUnmapCallback;
        gameswf::point uv[6] = {};
        n.node->collect_uvs(boost::intrusive_ptr<const IMesh>(n.rig.mesh.get(), true), uv, 6);
        check(n.rig.index_buffer->unmap_impl_calls == 1, "unmapImpl runs once");
    }
}

// The node with a translated parent matrix and corner points of a unit quad.
void setup_quad(scene_node& node) {
    // One triangle in the z = 0 plane (0,0,0), (1,0,0), (0,1,0) with the corner points
    // P1 = (0,0,0) at index 1, P2 = (1,0,0) at index 3, P3 = (0,1,0) at index 0. The uv of a hit (x, y) is (x, y).
    node.m_triangles[0].A = vector3d<float>{0.f, 0.f, 0.f};
    node.m_triangles[0].B = vector3d<float>{1.f, 0.f, 0.f};
    node.m_triangles[0].C = vector3d<float>{0.f, 1.f, 0.f};
    node.m_corner_points[0] = vector3d<float>{0.f, 1.f, 0.f};   // P3
    node.m_corner_points[1] = vector3d<float>{0.f, 0.f, 0.f};   // P1
    node.m_corner_points[3] = vector3d<float>{1.f, 0.f, 0.f};   // P2
    node.m_corner[0] = 0;
    node.m_corner[1] = 1;
    node.m_corner[3] = 3;
}

void test_get_collision_uv() {
    {
        NodeRig n;
        setup_quad(*n.node);
        n.rig.parent->absoluteTransform = CMatrix4<float>(CMatrix4<float>::EM4CONST_IDENTITY);

        glitch::core::line3d<float> ray{vector3d<float>{0.25f, 0.5f, 1.f}, vector3d<float>{0.25f, 0.5f, -1.f}};
        gameswf::point uv(0.f, 0.f);
        check(n.node->get_collision_uv(ray, uv), "ray through the triangle hits");
        check(nearly(uv.m_x, 0.25f) && nearly(uv.m_y, 0.5f), "uv of the hit is (0.25, 0.5)");

        // A ray that passes beside the triangle (x = 2) misses and leaves the uv alone.
        glitch::core::line3d<float> miss{vector3d<float>{2.f, 0.5f, 1.f}, vector3d<float>{2.f, 0.5f, -1.f}};
        gameswf::point untouched(9.f, 9.f);
        check(!n.node->get_collision_uv(miss, untouched), "ray beside the triangle misses");
        check(untouched.m_x == 9.f && untouched.m_y == 9.f, "a miss leaves the uv unchanged");
    }
    {
        // The parent's absolute matrix places the quad: translated by (5, 6, 7) and scaled by 2 in x and y. The triangle
        // goes to (5,6,7), (7,6,7), (5,8,7); a ray at the world point of local (0.25, 0.5) hits, and the uv is the same.
        NodeRig n;
        setup_quad(*n.node);
        CMatrix4<float> m(CMatrix4<float>::EM4CONST_IDENTITY);
        m.M[0] = 2.f;
        m.M[5] = 2.f;
        m.M[12] = 5.f;
        m.M[13] = 6.f;
        m.M[14] = 7.f;
        m.flag = false;
        n.rig.parent->absoluteTransform = m;
        glitch::core::line3d<float> ray{vector3d<float>{5.5f, 7.f, 8.f}, vector3d<float>{5.5f, 7.f, 6.f}};
        gameswf::point uv(0.f, 0.f);
        check(n.node->get_collision_uv(ray, uv), "translated and scaled parent: the ray hits");
        check(nearly(uv.m_x, 0.25f) && nearly(uv.m_y, 0.5f), "translated and scaled parent: the uv is (0.25, 0.5)");
        // The same ray without the parent matrix misses.
        n.rig.parent->absoluteTransform = CMatrix4<float>(CMatrix4<float>::EM4CONST_IDENTITY);
        gameswf::point other(9.f, 9.f);
        check(!n.node->get_collision_uv(ray, other), "identity parent: the translated ray misses");
    }
    {
        // parentTransform is the parent's absolute matrix with its flag.
        NodeRig n;
        CMatrix4<float> m(CMatrix4<float>::EM4CONST_IDENTITY);
        m.M[12] = 3.f;
        m.flag = false;
        n.rig.parent->absoluteTransform = m;
        const CMatrix4<float> copy = n.node->parentTransform();
        check(nearly(copy.M[12], 3.f) && !copy.flag, "parentTransform copies the matrix and the flag");
    }
}

void test_update_inverse_transform() {
    // The pointer position changes: the stand-in ray finds nothing, so the mouse position is -100000 in x and y; the matrix
    // and the position are saved.
    {
        NodeRig n;
        reinterpret_cast<gameswf::root*>(g_root_box.bytes)->m_pointer_x = 10.f;
        reinterpret_cast<gameswf::root*>(g_root_box.bytes)->m_pointer_y = 20.f;
        CMatrix4<float> m(CMatrix4<float>::EM4CONST_IDENTITY);
        m.M[12] = 5.f;
        m.M[13] = 6.f;
        m.M[14] = 7.f;
        m.flag = false;
        n.rig.parent->absoluteTransform = m;
        n.node->m_mouse_x = 7.f;
        n.node->m_mouse_y = 8.f;
        n.node->update_inverse_transform();
        check(n.node->m_mouse_x == -100000.f && n.node->m_mouse_y == -100000.f, "pointer moved: mouse is -100000");
        check(n.node->m_last_pointer_x == 10.f && n.node->m_last_pointer_y == 20.f, "pointer position saved");
        check(nearly(n.node->m_parent_transform.M[12], 5.f) && nearly(n.node->m_parent_transform.M[13], 6.f) &&
                  nearly(n.node->m_parent_transform.M[14], 7.f) && !n.node->m_parent_transform.flag,
              "the parent matrix is copied, with its flag");

        // Nothing changed: the mouse position is left alone.
        n.node->m_mouse_x = 7.f;
        n.node->m_mouse_y = 8.f;
        n.node->update_inverse_transform();
        check(n.node->m_mouse_x == 7.f && n.node->m_mouse_y == 8.f, "unchanged pointer and matrix: mouse is kept");

        // The matrix changed (one element): the position is recomputed.
        CMatrix4<float> m2 = m;
        m2.M[13] = 6.5f;
        n.rig.parent->absoluteTransform = m2;
        n.node->update_inverse_transform();
        check(n.node->m_mouse_x == -100000.f && n.node->m_mouse_y == -100000.f, "matrix changed: mouse is recomputed");
        check(nearly(n.node->m_parent_transform.M[13], 6.5f), "the new matrix is saved");

        // Only the pointer's y changed.
        n.node->m_mouse_x = 1.f;
        reinterpret_cast<gameswf::root*>(g_root_box.bytes)->m_pointer_y = 21.f;
        n.node->update_inverse_transform();
        check(n.node->m_mouse_x == -100000.f && n.node->m_last_pointer_y == 21.f, "pointer y changed: recomputed");
    }
    // The CMatrix4 equality shortcut: when both flags say identity, the elements are not compared.
    {
        NodeRig n;
        reinterpret_cast<gameswf::root*>(g_root_box.bytes)->m_pointer_x = 0.f;
        reinterpret_cast<gameswf::root*>(g_root_box.bytes)->m_pointer_y = 0.f;
        n.node->m_last_pointer_x = 0.f;
        n.node->m_last_pointer_y = 0.f;
        // The parent's matrix is built from its translation, rotation and scale by its constructor, which leaves the
        // identity flag clear; the flag is set here so that both flags say identity.
        n.rig.parent->absoluteTransform.flag = true;
        n.rig.parent->absoluteTransform.M[0] = 3.f;  // flag set on both
        n.node->m_mouse_x = 4.f;
        n.node->update_inverse_transform();
        check(n.node->m_mouse_x == 4.f, "both identity flags: no recompute even though an element differs");
        check(nearly(n.node->m_parent_transform.M[0], 3.f), "the matrix is copied all the same");
    }
}

void test_world_and_local_mouse() {
    NodeRig n;
    reinterpret_cast<gameswf::root*>(g_root_box.bytes)->m_pointer_x = 0.f;
    reinterpret_cast<gameswf::root*>(g_root_box.bytes)->m_pointer_y = 0.f;
    n.node->m_last_pointer_x = 0.f;
    n.node->m_last_pointer_y = 0.f;
    n.node->m_mouse_x = 12.7f;
    n.node->m_mouse_y = -3.2f;
    int x = 0;
    int y = 0;
    const int result = n.node->get_world_mouse(x, y);
    check(x == 12, "get_world_mouse x truncates 12.7 to 12");
    check(y == -3 && result == -3, "get_world_mouse y truncates -3.2 to -3 and returns it");

    // A character without a parent: the position in twips (times 20) is returned as it is.
    CharacterBox box;
    std::memset(box.bytes, 0, sizeof(box.bytes));
    gameswf::character* c = reinterpret_cast<gameswf::character*>(box.bytes);
    float lx = 0.f;
    float ly = 0.f;
    n.node->get_local_mouse(c, lx, ly);
    check(nearly(lx, 254.f) && nearly(ly, -64.f), "get_local_mouse: no parent, twips = mouse * 20");
}

void test_on_register_scene_node() {
    NodeRig n;
    // No child: nothing to draw.
    check(n.node->onRegisterSceneNode() == 0, "no child: onRegisterSceneNode returns 0");
    check(n.rig.driver.events.empty(), "no child: no driver call");

    // Children that are all hidden: nothing to draw either.
    CharacterBox a;
    CharacterBox b;
    std::memset(a.bytes, 0, sizeof(a.bytes));
    std::memset(b.bytes, 0, sizeof(b.bytes));
    n.node->m_child_list.push_back(reinterpret_cast<gameswf::character*>(a.bytes));
    n.node->m_child_list.push_back(reinterpret_cast<gameswf::character*>(b.bytes));
    check(n.node->onRegisterSceneNode() == 0, "hidden children: onRegisterSceneNode returns 0");
    check(n.rig.driver.events.empty(), "hidden children: no driver call");
    check(n.node->m_display_list.size() == 0, "hidden children: the display list is untouched");
    n.node->m_child_list.resize(0);
}

}  // namespace

int main() {
    std::setvbuf(stdout, nullptr, _IONBF, 0);
    test_assign_corner_indices();
    std::printf("step: constructor\n");
    test_constructor();
    test_constructor_no_material_and_no_param();
    test_bounding_box();
    test_collect_uvs();
    test_get_collision_uv();
    test_update_inverse_transform();
    test_world_and_local_mouse();
    test_on_register_scene_node();

    if (g_failures == 0) {
        std::printf("scene_node test: all checks passed\n");
        return 0;
    }
    std::printf("scene_node test: %d failure(s)\n", g_failures);
    return 1;
}
