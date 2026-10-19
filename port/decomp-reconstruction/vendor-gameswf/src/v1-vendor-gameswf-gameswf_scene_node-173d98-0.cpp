// Track B batch v1-vendor-gameswf-gameswf_scene_node-173d98-0: gameswf::scene_node (Gameloft class, 14 rows).
//
// The class and its layout are in vendor-gameswf/include/vendor-gameswf/gameswf_scene_node.hpp. gameswf::scene_node derives
// from the canonical glitch::scene::ISceneNode (glitch-scene-collada-gui/scene/ISceneNode.hpp) and overrides ~scene_node,
// onRegisterSceneNode, render and getBoundingBox; every other virtual slot is the base class's.
//
// Rows in this batch:
//   reconstructed   render (empty), getBoundingBox, build_dlist, ~scene_node (D1), onRegisterSceneNode, get_collision_uv,
//                   get_local_mouse, get_world_mouse, collect_uvs, init_corners.
//   partial         update_inverse_transform (0x777350): everything is written except the ray through the pointer, which the
//                   binary casts with the scene collision manager (getRayFromScreenCoordinates). The chain to it is not declared
//                   in the tree: glitch::IDevice has no scene manager member (it is at +0x1c in the binary), the manager's
//                   collision manager (+0x2c, CSceneManager::collisionManager) is typed to a class without the interface, and
//                   that interface (vtable +0x14) is not declared. scene_node::screen_ray stands in for the chain and finds no
//                   ray, so the pointer is treated as outside the node (the binary's miss result).
//                   scene_node C1 (0x778840): written except the last step, material->setParameter<intrusive_ptr<ITexture>>
//                   (id, 0, m_texture). The binary calls IMaterialParameters<CMaterial, ...>::setParameter<T>(id, index, T
//                   const&) on the CMaterial; glitch-video keeps IMaterialParameters as a separate object that nothing links to
//                   a CMaterial (material.hpp), so there is nothing to call. Everything else of the constructor is in place.
//   skipped         ~scene_node D0 (compiler-generated deleting destructor: D1, then the free), scene_node C2
//                   (base-object constructor the compiler emits for the same source constructor as C1; the
//                   virtual base is set up only by C1, and C1 carries the body).
//
// Not in the binary (split out for testing): gameswf::scene_node::assign_corner_indices, the classification tail of
// init_corners; scene_node::parentTransform; scene_node::screen_ray. Its test is
// tests/v1-vendor-gameswf-gameswf_scene_node-173d98-0_test.cpp.
//
// Layout requests of the earlier version of this batch, and what became of them:
//   L1  scene_node vtable: closed. The class derives from ISceneNode.
//   L2  ISceneNode (304-byte base): closed. The canonical header has the layout, the vtable and the constructor. The slot
//       K 0x38 is getAbsoluteTransformation, K 0x54 is getUID, K 0x5c is addChild.
//   L3  gameswf::character: settled (gameswf_character.h): m_visible +0x9b, m_parent weak pointer +0x3c, m_custom +0x54
//       with custom::m_scene_node at +0x68, get_world_cxform() (the alpha multiplier m_[3][0] at cxform +0x18 is tested by
//       build_dlist), sprite_instance::m_display_list +0xa8 with its size at +0xac.
//   L4  settled with L3: character::custom::m_scene_node (+0x68) is the owner scene_node.
//   L5  gameswf::root: settled (gameswf_root.hpp). Floats +0x48 and +0x4c are m_pointer_x and m_pointer_y (the screen
//       position of the pointer; nothing in gameswf writes them), ints +0x1c and +0x20 are m_viewport_width and
//       m_viewport_height (the scale of the uv in update_inverse_transform).
//   L6  gameswf::player: settled (gameswf_player.h, player_context.hpp). player +0xac is m_context, context +0x28 is
//       m_video_driver (glitch::video::IVideoDriver*). The driver calls the batch makes: createRenderTarget (+0x84),
//       pushRenderTarget (+0x8c), popRenderTarget (+0x90), setOption (+0xa0), clearBuffers (+0xa8), all declared in
//       video_driver.hpp. The camera/collision chain of update_inverse_transform is not (see above).
//   L7  CTextureManager::addTexture(size, name, format, flag) is declared and not defined in glitch-video (a test double
//       stands in); CMaterialRenderer::getParameterID(type, index) is declared and not defined (same). The material
//       parameter setter is the open gate above.
//   L8  CTriangleSelector: declared. Its mesh constructor (0x595ec8) is partial in glitch-scene-collada-gui (the triangles of
//       the mesh buffers are not collected), so a selector built from a mesh holds no triangles there yet.
//   L9  IMesh (K 0x10 getMeshBufferCount, K 0x14 getMeshBuffer, K 0x18 getMaterial), IMeshSceneNode (K 0xf8 getMesh),
//       CMeshBuffer (+0x14 vertex streams, +0x18 primitive stream), CVertexStreams (m_streams, m_quantization, m_count0c),
//       IBuffer::map/unmap: closed.
//   L10 gameswf::collect<T>: declared in the header (the bodies are in the fddef6-2 batch).
//   L11 NODE_NAME: closed. The binary's pointer reads "gameswf_render_node" (IDA shows the string at the load).
//   L12 The ISceneNode base constructor arguments: id -1, position (0,0,0), rotation (0,0,0,1), scale (1,1,1). Closed.
//
// Notes on the Hex-Rays signatures: the mangled names carry no return types, so the return types are taken from
// the pseudocode. Where the pseudocode returns a register left over from a tail call (update_inverse_transform
// returns the memcpy result, build_dlist returns the reused this, collect_uvs returns a float in r0), the source is void.

#include <algorithm>
#include <cstring>
#include <limits>

#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_sprite.h"
#include "glitch-scene-collada-gui/scene/CMeshBuffer.hpp"
#include "glitch-core-io/os/device.hpp"                              // IDevice::sceneManager (the collision manager chain)
#include "glitch-scene-collada-gui/scene/CMeshSceneNode.hpp"
#include "glitch-scene-collada-gui/scene/CSceneCollisionManager.hpp"
#include "glitch-scene-collada-gui/scene/CSceneManager.hpp"
#include "glitch-scene-collada-gui/scene/CTriangleSelector.hpp"
#include "glitch-scene-collada-gui/scene/IMesh.hpp"
#include "glitch-video/material.hpp"
#include "glitch-video/texture_manager.hpp"
#include "glitch-video/video_driver.hpp"
#include "vendor-gameswf/gameswf_scene_node.hpp"

namespace gameswf {

namespace {

// glitch::video::getIndexTypeSize(E_INDEX_TYPE)::sizes, 12 bytes at 0x99b5d8 in the ELF: {1, 2, 4}.
constexpr std::uint32_t kIndexTypeSizes[3] = {1, 2, 4};

}  // namespace

// gameswf::scene_node::NODE_NAME: a char pointer in the binary, "gameswf_render_node".
const char* scene_node::NODE_NAME = "gameswf_render_node";

// ---------------------------------------------------------------------------------------------------------------
// 0x776140 _ZN7gameswf10scene_node6renderEPv
// Empty in the binary (ISceneNode K 0x1c).
void scene_node::render(void* /*state*/) {
}

// ---------------------------------------------------------------------------------------------------------------
// 0x776144 _ZNK7gameswf10scene_node14getBoundingBoxEv
// Returns the address of the box at this+0x21c (540). The mangled name has no return type; Hex-Rays shows char*.
const glitch::core::aabbox3d<float>& scene_node::getBoundingBox() const {
    return m_bounding_box;
}

// ---------------------------------------------------------------------------------------------------------------
// 0x77616c _ZN7gameswf10scene_node11build_dlistEPNS_9characterE
// Collects the visible characters of a tree that are drawn through this node. A hidden character, or one whose world
// colour transform has a negative alpha multiplier (cxform +0x18), ends the walk of its subtree. A character whose
// custom block names this node as its owner is appended to m_display_list. A sprite (class id 2) passes each of the
// characters of its display list on. The Hex-Rays int return is a leftover register; the source is void.
void scene_node::build_dlist(gameswf::character* c) {
    if (!c->m_visible) {
        return;
    }
    if (!(c->get_world_cxform()->m_[3][0] >= 0.0f)) {
        return;
    }
    if (gameswf::character::custom* custom = c->m_custom) {
        if (custom->m_scene_node == this) {
            m_display_list.push_back(c);
        }
    }
    if (c->is(gameswf::AS_SPRITE)) {
        gameswf::sprite_instance* sprite = static_cast<gameswf::sprite_instance*>(c);
        for (int i = 0; i < sprite->m_display_list.size(); ++i) {
            build_dlist(sprite->m_display_list.get_character(i));
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------
// 0x776244 _ZN7gameswf10scene_nodeD1Ev
// The binary empties m_display_list and m_child_list (size 0 and reserve(0)), drops m_render_target (+0x138) and m_texture
// (+0x134), then runs the ISceneNode destructor. These are the destructors of the members, which run in reverse order
// of declaration (m_display_list, m_child_list, m_render_target, m_texture), and of the base. m_parent is not given back.
scene_node::~scene_node() {
}

// ---------------------------------------------------------------------------------------------------------------
// 0x776390 _ZN7gameswf10scene_node19onRegisterSceneNodeEv
// Returns 0 when there is no child or none of the children is visible. Otherwise the display list is rebuilt: with a
// single child it is that child, else build_dlist runs over the root movie of the player. Then the driver (player context
// +0x28) pushes the render target of the node (vtable +0x8c) and clears the buffers (+0xa8, mask 1). Each character of the
// display list is drawn on its own: its owner pointer (custom +0x68) is cleared for the call, the root of the character
// begins a display, the character displays itself, the root ends the display, and the owner is put back. Finally the driver
// pops the render target (+0x90) and the returned pointer is dropped. Returns 1.
int scene_node::onRegisterSceneNode() {
    if (m_child_list.size() <= 0) {
        return 0;
    }
    bool any_visible = false;
    for (int i = 0; i < m_child_list.size(); ++i) {
        any_visible = any_visible || m_child_list[i]->m_visible;
    }
    if (!any_visible) {
        return 0;
    }

    m_display_list.resize(0);
    if (m_child_list.size() == 1) {
        m_display_list.push_back(m_child_list[0]);
    } else {
        gameswf::root* root = m_player->get_root();
        build_dlist(root->get_root_movie());
    }

    glitch::video::IVideoDriver* driver = m_player->m_context->m_video_driver;
    driver->pushRenderTarget(m_render_target);
    driver->clearBuffers(1);
    for (int i = 0; i < m_display_list.size(); ++i) {
        gameswf::character* c = m_display_list[i];
        gameswf::character::custom* custom = c->m_custom;
        gameswf::scene_node* owner = custom->m_scene_node;
        custom->m_scene_node = nullptr;
        c->get_root()->begin_display();
        c->display();
        c->get_root()->end_display();
        custom->m_scene_node = owner;
    }
    boost::intrusive_ptr<glitch::video::IRenderTarget> popped = driver->popRenderTarget();
    return 1;
}

// ---------------------------------------------------------------------------------------------------------------
// Not in the binary: the parent node's absolute transform (ISceneNode K 0x38, getAbsoluteTransformation) copied with its
// flag byte; get_collision_uv copies 0x41 bytes of it, update_inverse_transform copies them into m_parent_transform.
glitch::core::CMatrix4<float> scene_node::parentTransform() const {
    return m_parent->getAbsoluteTransformation();
}

// ---------------------------------------------------------------------------------------------------------------
// 0x776564 _ZN7gameswf10scene_node16get_collision_uvERN6glitch4core6line3dIfEERNS_5pointE
// Maps a ray to the uv of the node's quad. The parent's absolute matrix (K 0x38 of m_parent, copied with its flag) takes the
// two triangles of m_triangles to world space; the nearest triangle that the segment hits (box test, then the line
// intersection) gives the hit point; the hit point goes back through the inverse matrix, and its position relative to the
// corner points m_corner[1] (origin), m_corner[3] (u axis) and m_corner[0] (v axis) gives the uv.
bool scene_node::get_collision_uv(glitch::core::line3d<float>& ray, gameswf::point& uv) {
    // The parent matrix (65 bytes, flag last) is copied to a local and used for the two triangles.
    glitch::core::CMatrix4<float> m = parentTransform();

    // Each vertex: x' = M0 x + M4 y + M8 z + M12, y' = M1 x + M5 y + M9 z + M13, z' = M2 x + M6 y + M10 z + M14.
    auto transform = [&m](const glitch::core::vector3d<float>& p) {
        glitch::core::vector3d<float> r;
        r.X = m.M[12] + (((m.M[0] * p.X) + (m.M[4] * p.Y)) + (m.M[8] * p.Z));
        r.Y = m.M[13] + (((m.M[1] * p.X) + (m.M[5] * p.Y)) + (m.M[9] * p.Z));
        r.Z = m.M[14] + (((m.M[2] * p.X) + (m.M[6] * p.Y)) + (m.M[10] * p.Z));
        return r;
    };
    glitch::core::triangle3d<float> world[2];
    for (int i = 0; i < 2; ++i) {
        world[i].A = transform(m_triangles[i].A);
        world[i].B = transform(m_triangles[i].B);
        world[i].C = transform(m_triangles[i].C);
    }

    // Ray direction (end - start), normalised. The segment's squared length and its bounding box.
    glitch::core::vector3d<float> dir{ray.end.X - ray.start.X, ray.end.Y - ray.start.Y, ray.end.Z - ray.start.Z};
    dir.normalize();

    const glitch::core::vector3d<float>& start = ray.start;
    const glitch::core::vector3d<float>& end = ray.end;
    const float segLen2 = (((start.X - end.X) * (start.X - end.X)) + ((start.Y - end.Y) * (start.Y - end.Y)))
                          + ((start.Z - end.Z) * (start.Z - end.Z));

    float bx0 = start.X, bx1 = end.X;
    if (bx0 >= bx1) std::swap(bx0, bx1);
    float by0 = start.Y, by1 = end.Y;
    if (by0 >= by1) std::swap(by0, by1);
    float bz0 = start.Z, bz1 = end.Z;
    if (bz0 >= bz1) std::swap(bz0, bz1);

    auto dist2 = [](const glitch::core::vector3d<float>& a, const glitch::core::vector3d<float>& b) {
        const float dx = a.X - b.X;
        const float dy = a.Y - b.Y;
        const float dz = a.Z - b.Z;
        return ((dx * dx) + (dy * dy)) + (dz * dz);
    };

    glitch::core::vector3d<float> hit{0.f, 0.f, 0.f};
    float best = std::numeric_limits<float>::max();
    bool found = false;
    for (int i = 0; i < 2; ++i) {
        const glitch::core::triangle3d<float>& tri = world[i];
        const bool xOverlap = (tri.A.X >= bx0 || tri.B.X >= bx0 || tri.C.X >= bx0) &&
                              (bx1 >= tri.A.X || tri.B.X <= bx1 || tri.C.X <= bx1);
        const bool yOverlap = (tri.A.Y >= by0 || tri.B.Y >= by0 || tri.C.Y >= by0) &&
                              (by1 >= tri.A.Y || tri.B.Y <= by1 || tri.C.Y <= by1);
        const bool zOverlap = (tri.A.Z >= bz0 || tri.B.Z >= bz0 || tri.C.Z >= bz0) &&
                              (bz1 >= tri.A.Z || tri.B.Z <= bz1 || tri.C.Z <= bz1);
        if (!(xOverlap && yOverlap && zOverlap)) continue;

        // The binary runs the intersection when the best distance is above any corner's distance to the start.
        if (best > dist2(start, tri.A) || best > dist2(start, tri.B) || best > dist2(start, tri.C)) {
            if (tri.getIntersectionWithLine(start, dir, hit)) {
                const float d = dist2(hit, start);
                if (segLen2 > d && segLen2 > dist2(hit, end) && best > d) {
                    best = d;
                    found = true;
                }
            }
        }
    }
    if (!found) {
        return false;
    }

    // Map the hit point into the parent's space with the inverse matrix.
    m.makeInverse();
    const float hx = hit.X;
    const float hy = hit.Y;
    const float hz = hit.Z;
    const float ly = (((hx * m.M[1]) + (hy * m.M[5])) + (hz * m.M[9])) + m.M[13];
    const float lz0 = (hx * m.M[2]) + (hy * m.M[6]);
    const float lx = (((hx * m.M[0]) + (hy * m.M[4])) + (hz * m.M[8])) + m.M[12];
    const float lz = (lz0 + (hz * m.M[10])) + m.M[14];

    // Edges from corner 1 (index [466]) to corner 3 ([470]) and corner 0 ([464]).
    const glitch::core::vector3d<float>& p1 = m_corner_points[m_corner[1]];
    const glitch::core::vector3d<float>& p2 = m_corner_points[m_corner[3]];
    const glitch::core::vector3d<float>& p3 = m_corner_points[m_corner[0]];
    const float d1x = p2.X - p1.X;
    const float d1y = p2.Y - p1.Y;
    const float d1z = p2.Z - p1.Z;
    const float d2x = p3.X - p1.X;
    const float d2y = p3.Y - p1.Y;
    const float d2z = p3.Z - p1.Z;
    const float qx = lx - p1.X;
    const float qy = ly - p1.Y;
    const float qz = lz - p1.Z;
    uv.m_x = (((d1x * qx) + (d1y * qy)) + (d1z * qz)) / (((d1x * d1x) + (d1y * d1y)) + (d1z * d1z));
    uv.m_y = (((d2x * qx) + (d2y * qy)) + (d2z * qz)) / (((d2x * d2x) + (d2y * d2y)) + (d2z * d2z));
    return true;
}

// ---------------------------------------------------------------------------------------------------------------
// Not in the binary: the ray that update_inverse_transform casts through the pointer. The binary takes the video driver
// (player context +0x28), its device (driver +0xd4, m_device), the device's scene manager (+0x1c), the manager's collision
// manager (+0x2c) and calls the collision manager's vtable +0x14 (getRayFromScreenCoordinates(position2d<int> const&,
// ICameraSceneNode* = 0)) with the pointer position truncated to ints and a null camera; the line3d comes back through the
// result pointer. The call always yields a ray (get_collision_uv decides whether it hits the node).
bool scene_node::screen_ray(int x, int y, glitch::core::line3d<float>& ray) const {
    glitch::IDevice* device = m_player->m_context->m_video_driver->m_device;
    // The device keeps its scene manager as the interface pointer (ISceneManager is only forward-declared in the tree); the
    // object is the CSceneManager whose collisionManager is at +0x2c.
    glitch::scene::CSceneManager* manager = reinterpret_cast<glitch::scene::CSceneManager*>(device->sceneManager);
    glitch::core::position2d<std::int32_t> position;
    position.X = x;
    position.Y = y;
    ray = manager->collisionManager->getRayFromScreenCoordinates(position, nullptr);
    return true;
}

// ---------------------------------------------------------------------------------------------------------------
// 0x777350 _ZN7gameswf10scene_node24update_inverse_transformEv
// The root's pointer position (root +0x48, +0x4c) is compared with the position of the last update
// (m_last_pointer_x/y), and so is the parent's absolute matrix (CMatrix4 equality: equal when both flags say identity,
// otherwise all 16 elements equal) with m_parent_transform. When anything changed a ray is cast through the pointer
// (screen_ray); with a hit, get_collision_uv gives the uv, which is scaled by the root's viewport width and height (root
// +0x1c, +0x20) and converted with root::screen_to_logical into m_mouse_x/y; with no hit the mouse position is -100000.0
// (the bit pattern -943501312) in x and y. Every path ends by copying the parent matrix into m_parent_transform and the
// pointer position into m_last_pointer_x/y.
void scene_node::update_inverse_transform() {
    gameswf::root* root = m_player->get_root();
    const float pointer_x = root->m_pointer_x;
    const float pointer_y = root->m_pointer_y;

    bool changed = (m_last_pointer_x != pointer_x) || (m_last_pointer_y != pointer_y);
    if (!changed) {
        const glitch::core::CMatrix4<float>& parent = m_parent->getAbsoluteTransformation();
        if (!parent.flag || !m_parent_transform.flag) {
            for (int i = 0; i < 16; ++i) {
                if (!(parent.M[i] == m_parent_transform.M[i])) {
                    changed = true;
                    break;
                }
            }
        }
    }

    if (changed) {
        glitch::core::line3d<float> ray;
        gameswf::point uv(0.0f, 0.0f);
        if (screen_ray(static_cast<int>(pointer_x), static_cast<int>(pointer_y), ray) && get_collision_uv(ray, uv)) {
            const float u = uv.m_x * static_cast<float>(m_player->get_root()->m_viewport_width);
            const float v = uv.m_y * static_cast<float>(m_player->get_root()->m_viewport_height);
            gameswf::point mouse(u, v);
            m_player->get_root()->screen_to_logical(mouse);
            m_mouse_x = mouse.m_x;
            m_mouse_y = mouse.m_y;
        } else {
            m_mouse_x = -100000.0f;
            m_mouse_y = -100000.0f;
        }
    }

    m_parent_transform = m_parent->getAbsoluteTransformation();
    m_last_pointer_x = pointer_x;
    m_last_pointer_y = pointer_y;
}

// ---------------------------------------------------------------------------------------------------------------
// 0x777514 _ZN7gameswf10scene_node15get_local_mouseEPNS_9characterERfS3_
// Updates the inverse transform, converts the pointer position in logical pixels to twips (times 20) and, when the character
// has a parent (the weak pointer at +0x3c), maps it through the inverse of the parent's world matrix into the parent's space.
void scene_node::get_local_mouse(gameswf::character* c, float& x, float& y) {
    update_inverse_transform();
    gameswf::point twips;
    twips.m_x = m_mouse_x * 20.0f;
    twips.m_y = m_mouse_y * 20.0f;
    gameswf::point local = twips;
    if (gameswf::character* parent = c->get_parent()) {
        parent->get_world_matrix()->transform_by_inverse(&local, twips);
    }
    x = local.m_x;
    y = local.m_y;
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7775c4 _ZN7gameswf10scene_node15get_world_mouseERiS1_
// Updates the inverse transform, then returns the mouse position in pixels, truncated to int. The binary returns
// the y value (the last stored result).
int scene_node::get_world_mouse(int& x, int& y) {
    update_inverse_transform();
    x = static_cast<int>(m_mouse_x);
    const int result = static_cast<int>(m_mouse_y);
    y = result;
    return result;
}

// ---------------------------------------------------------------------------------------------------------------
// 0x77825c _ZN7gameswf10scene_node11collect_uvsERKN5boost13intrusive_ptrIKN6glitch5scene5IMeshEEEPNS_5pointEj
// Reads the uv of the first mesh buffer's triangles into uv[]. Nothing happens when the mesh has no buffer, the vertex stream
// table's count (+0x0c) is zero, the buffer has no index buffer, or the index buffer cannot be read-mapped. The count is
// clamped to the buffer's element count (primitive stream +0x08). The first count indices are read from the start of the
// mapped index buffer (the stream's byte offset is not added), by the index type size (1, 2 or 4 bytes), into a local array of
// six; the caller never passes more than six (the original has no bound either). When the second vertex stream (entry 1, the
// texture coordinates) has two components, gameswf::collect<T> runs over it with count / 3 triangles, T chosen by the stream's
// value type (0 signed char, 1 unsigned char, 2 short, 3 unsigned short, 4 int, 5 unsigned int, 6 float); the uv are then
// dequantized with the second record of the table's trailing block (scale at m_quantization[2], offset at [3]) when both scales
// are nonzero. The index buffer's map is released at the end. The mesh buffer reference of getMeshBuffer is dropped at once, as
// in the binary (the mesh keeps it alive).
void scene_node::collect_uvs(const boost::intrusive_ptr<const glitch::scene::IMesh>& mesh, gameswf::point* uv,
                             unsigned int count) {
    if (mesh->getMeshBufferCount() == 0) {
        return;
    }
    glitch::scene::CMeshBuffer* buffer = mesh->getMeshBuffer(0).get();
    const unsigned int element_count = buffer->primitiveStream.m_count;
    glitch::video::CVertexStreams* streams = buffer->vertexStreams.get();
    if (streams->m_count0c == 0) {
        return;
    }
    const glitch::video::IBuffer* index_buffer = buffer->primitiveStream.m_indexBuffer.get();
    if (index_buffer == nullptr) {
        return;
    }
    const std::uint8_t* mapped = index_buffer->map(1);
    if (mapped == nullptr) {
        return;
    }

    if (static_cast<int>(count) >= static_cast<int>(element_count)) {
        count = element_count;
    }
    const std::uint16_t index_type = buffer->primitiveStream.m_indexType;
    const std::uint32_t index_size = index_type < 3 ? kIndexTypeSizes[index_type] : 0;
    unsigned int indices[6] = {};
    const std::uint8_t* cursor = mapped;
    for (unsigned int k = 0; k < count; ++k) {
        if (index_size == 2) {
            std::uint16_t value;
            std::memcpy(&value, cursor, sizeof value);
            indices[k] = value;
        } else if (index_size == 4) {
            std::uint32_t value;
            std::memcpy(&value, cursor, sizeof value);
            indices[k] = value;
        } else if (index_size == 1) {
            indices[k] = *cursor;
        }
        cursor += index_size;
    }

    // Entry 1 of the stream table is at +0x24; the port's table has the entries in a vector.
    if (streams->m_streams.size() > 1) {
        const glitch::video::SVertexStream& stream = streams->m_streams[1];
        if (stream.field0c == 2) {
            switch (stream.field0a) {
                case 0:
                    collect<signed char>(indices, count / 3, stream, uv);
                    break;
                case 1:
                    collect<unsigned char>(indices, count / 3, stream, uv);
                    break;
                case 2:
                    collect<short>(indices, count / 3, stream, uv);
                    break;
                case 3:
                    collect<unsigned short>(indices, count / 3, stream, uv);
                    break;
                case 4:
                    collect<int>(indices, count / 3, stream, uv);
                    break;
                case 5:
                    collect<unsigned int>(indices, count / 3, stream, uv);
                    break;
                case 6:
                    collect<float>(indices, count / 3, stream, uv);
                    break;
                default:
                    break;
            }
            // The trailing block: record 1 holds the scale (vector3d) and then the offset (vector3d) of the texture
            // coordinates. count0c is not zero, so the block has at least two records.
            const glitch::core::vector3d<float>& scale = streams->m_quantization[2];
            const glitch::core::vector3d<float>& offset = streams->m_quantization[3];
            if (scale.X != 0.0f && scale.Y != 0.0f) {
                for (unsigned int i = 0; i < count; ++i) {
                    uv[i].m_x = (scale.X * uv[i].m_x) + offset.X;
                    uv[i].m_y = (scale.Y * uv[i].m_y) + offset.Y;
                }
            }
        }
    }
    index_buffer->unmap();
}

// ---------------------------------------------------------------------------------------------------------------
// 0x7785b0 _ZN7gameswf10scene_node12init_cornersEv
// Finds which corner point is which corner of the quad. The parent (a mesh node, IMeshSceneNode K 0xf8 getMesh) gives its mesh;
// a CTriangleSelector over the mesh (no node, not baked) gives up to two triangles into m_triangles
// (getTriangles(m_triangles, 2, &count, null)); triangle i is copied to m_corner_points[3 * i .. 3 * i + 2]. The uv of the
// 3 * count corner points come from collect_uvs over a second getMesh() call, and assign_corner_indices (the tail of the
// binary's function) stores in m_corner[] the index of the point in each quadrant of the uv square. The selector is a local
// object; its destructor frees the triangle list.
void scene_node::init_corners() {
    glitch::scene::IMeshSceneNode* mesh_node = static_cast<glitch::scene::IMeshSceneNode*>(m_parent);
    glitch::scene::CTriangleSelector selector(boost::intrusive_ptr<const glitch::scene::IMesh>(mesh_node->getMesh()), nullptr,
                                              false);
    int triangle_count = 0;
    selector.getTriangles(m_triangles, 2, triangle_count, nullptr);
    for (int i = 0; i < triangle_count; ++i) {
        m_corner_points[3 * i] = m_triangles[i].A;
        m_corner_points[3 * i + 1] = m_triangles[i].B;
        m_corner_points[3 * i + 2] = m_triangles[i].C;
    }

    const unsigned int point_count = 3u * static_cast<unsigned int>(triangle_count);
    gameswf::point uv[6];
    for (gameswf::point& p : uv) {
        p.m_x = 0.0f;
        p.m_y = 0.0f;
    }
    collect_uvs(boost::intrusive_ptr<const glitch::scene::IMesh>(mesh_node->getMesh()), uv, point_count);

    float uv_floats[12];
    for (int i = 0; i < 6; ++i) {
        uv_floats[2 * i] = uv[i].m_x;
        uv_floats[2 * i + 1] = uv[i].m_y;
    }
    assign_corner_indices(uv_floats, point_count, m_corner);
}

// ---------------------------------------------------------------------------------------------------------------
// Not in the binary: the tail of init_corners (0x7785b0), split out so it can be tested. For each corner point j
// (uv[2j] = u, uv[2j+1] = v), the binary stores j in one of four slots of corner[]:
//   u <  0.5, v <= 0.5 -> corner[1]   (offset +0x1d2, i.e. 466)
//   u <  0.5, v >  0.5 -> corner[0]   (offset +0x1d0, i.e. 464)
//   u >= 0.5, v <= 0.5 -> corner[3]   (offset +0x1d6, i.e. 470)
//   u >= 0.5, v >  0.5 -> corner[2]   (offset +0x1d4, i.e. 468)
// Other slots keep their value. A NaN u takes the u >= 0.5 branch, as the binary's "u < 0.5" compare does.
void scene_node::assign_corner_indices(const float* uv, unsigned int count, std::uint16_t corner[4]) {
    for (unsigned int j = 0; j < count; ++j) {
        const float u = uv[2 * j];
        const float v = uv[2 * j + 1];
        const bool uLow = u < 0.5f;
        const bool vLow = v <= 0.5f;
        if (uLow) {
            corner[vLow ? 1 : 0] = static_cast<std::uint16_t>(j);
        } else {
            corner[vLow ? 3 : 2] = static_cast<std::uint16_t>(j);
        }
    }
}

// ---------------------------------------------------------------------------------------------------------------
// 0x778840 _ZN7gameswf10scene_nodeC1EPNS_6playerEPN6glitch5scene10ISceneNodeENS3_4core11dimension2dIiEE
// In the binary's order: the virtual base (count 1) and the ISceneNode constructor (id -1, position 0, rotation (0,0,0,1),
// scale 1); the members (zero, identity matrix with its flag, box (-1,-1,-1)..(1,1,1), texture parameter id 0xffff, player);
// setName(NODE_NAME); a reference on the parent (the binary increments the count inline; D1 does not drop it);
// init_corners(); then the video driver (player context +0x28): its option bit 0x10 is saved and cleared, the texture is made
// with CTextureManager::addTexture(size, parent->getUID() [K 0x54], 14, true), the option bit is put back, and the render
// target of the texture is made (driver K 0x84, flags 0). Then the parent's mesh (IMeshSceneNode K 0xf8) is asked for material 0
// (IMesh K 0x18) and the mesh released; with a material, the parameter id of the first texture parameter of its renderer
// (CMaterialRenderer::getParameterID(2, 0)) is kept in m_texture_param_id and, unless it is 0xffff, the texture is set as the
// parameter value (IMaterialParameters<CMaterial>::setParameter<intrusive_ptr<ITexture>>). The last pointer position (+0x258, +0x25c) is set to -1.
scene_node::scene_node(gameswf::player* player, glitch::scene::ISceneNode* parent, glitch::core::dimension2d<int> size)
    : glitch::scene::ISceneNode(-1, glitch::core::vector3d<float>{0.f, 0.f, 0.f},
                                glitch::core::quaternion{0.f, 0.f, 0.f, 1.f},
                                glitch::core::vector3d<float>{1.f, 1.f, 1.f}),
      m_parent(parent),
      m_player(player) {
    ISceneNode::setName(NODE_NAME);
    ++m_parent->referenceCounter;  // the binary's inline grab of the parent
    init_corners();

    glitch::video::IVideoDriver* driver = m_player->m_context->m_video_driver;
    const unsigned int saved_options = driver->m_options;
    driver->setOption(16, false);
    glitch::video::CTextureManager* manager = driver->m_textureManager;
    m_texture = manager->addTexture(size, parent->getUID(), 14, true);
    driver->setOption(16, ((saved_options >> 4) & 1) != 0);
    m_render_target = driver->createRenderTarget(m_texture, 0);

    boost::intrusive_ptr<glitch::scene::IMesh> mesh = static_cast<glitch::scene::IMeshSceneNode*>(m_parent)->getMesh();
    boost::intrusive_ptr<glitch::video::CMaterial> material = mesh->getMaterial(0);
    mesh = nullptr;
    if (material) {
        boost::intrusive_ptr<glitch::video::CMaterialRenderer> renderer = material->m_renderer;
        m_texture_param_id = renderer->getParameterID(2, 0);
        if (m_texture_param_id != 0xffff) {
            material->parameters.setParameter<boost::intrusive_ptr<glitch::video::ITexture>>(m_texture_param_id, 0, m_texture);
        }
    }
    m_last_pointer_y = -1.0f;
    m_last_pointer_x = -1.0f;
}

// 0x778c58 _ZN7gameswf10scene_nodeC2EPNS_6playerEPN6glitch5scene10ISceneNodeENS3_4core11dimension2dIiEE
// SKIPPED: the base-object constructor the compiler emits for the same source constructor as C1 (the class has a
// virtual base at +0x268, which only the complete-object constructor sets up). The behaviour is C1's.

// 0x776354 _ZN7gameswf10scene_nodeD0Ev
// SKIPPED: the compiler-generated deleting destructor. It calls D1 and then frees the object.

}  // namespace gameswf
