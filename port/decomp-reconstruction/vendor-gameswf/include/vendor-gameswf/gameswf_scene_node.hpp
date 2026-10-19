// gameswf::scene_node (Gameloft, not in upstream GameSWF r1714).
//
// A scene node that draws the display list of one or more characters into a texture and shows that texture on a mesh
// node of the glitch scene (the node a flash movie is rendered onto). The class derives from glitch::scene::ISceneNode
// (canonical, glitch-scene-collada-gui/scene/ISceneNode.hpp, which includes the virtual IReferenceCounted base).
//
// Layout of the DH2 object, 32-bit offsets (comments only; the code uses the named members):
//   +0x000 .. +0x12f  glitch::scene::ISceneNode (vptr at +0x00)
//   +0x130 ISceneNode*                  m_parent               the mesh node that shows the texture; the constructor
//                                                              takes a reference on it that D1 does not give back
//   +0x134 intrusive_ptr<ITexture>      m_texture              render texture, made by CTextureManager::addTexture
//   +0x138 intrusive_ptr<IRenderTarget> m_render_target        driver->createRenderTarget(m_texture, 0)
//   +0x13c uint16                       m_texture_param_id     material parameter id of the texture, 0xffff when none
//   +0x140 triangle3d<float>[2]         m_triangles            2 * 36 bytes from CTriangleSelector::getTriangles
//   +0x188 vector3d<float>[6]           m_corner_points        3 per triangle (72 bytes)
//   +0x1d0 uint16[4]                    m_corner               indices into m_corner_points (see assign_corner_indices)
//   +0x1d8 CMatrix4<float>              m_parent_transform     65 bytes, flag byte at +0x218
//   +0x21c aabbox3d<float>              m_bounding_box         (-1,-1,-1) .. (1,1,1)
//   +0x234 player*                      m_player
//   +0x238 array<character*>            m_child_list           16 bytes in the binary (data, size, capacity, borrowed flag
//                                                              at +0x244)
//   +0x248 array<character*>            m_display_list         16 bytes (flag at +0x254)
//   +0x258 float                        m_last_pointer_x       root pointer position at the last update (-1 until set)
//   +0x25c float                        m_last_pointer_y
//   +0x260 float                        m_mouse_x              pointer position in logical pixels (update_inverse_transform)
//   +0x264 float                        m_mouse_y
//   +0x268 glitch::IReferenceCounted    virtual base of ISceneNode (vptr, count 1 from the complete-object constructor)
// The object is 0x270 bytes (attach_scene_node allocates operator new(0x270)). The host object is larger (pointers are
// 8 bytes and the arrays are 24 bytes); the offsets are the contract of the binary, not of sizeof.
//
// The vtable overrides ~scene_node (D1 0x776244, D0 0x776354), onRegisterSceneNode (0x776390), render (0x776140) and
// getBoundingBox (0x776144); every other slot is ISceneNode's.
//
// Bodies and status of each row: vendor-gameswf/src/v1-vendor-gameswf-gameswf_scene_node-173d98-0.cpp

#pragma once

#include <cstdint>

#include "base/container.h"                          // ::array (upstream, as texture_cache.hpp uses it)
#include "gameswf/gameswf.h"                         // player, character, root, point, matrix (upstream)
#include "glitch-core-io/boost/intrusive_ptr.hpp"    // boost::intrusive_ptr (counting form, canonical)
#include "glitch-scene-collada-gui/scene/ISceneNode.hpp"
#include "glitch-video/render_target.hpp"            // glitch::video::IRenderTarget
#include "glitch-video/texture.hpp"                  // glitch::video::ITexture

namespace glitch::scene {
class IMesh;
}  // namespace glitch::scene

namespace glitch::video {
struct SVertexStream;
}  // namespace glitch::video

namespace gameswf {

// gameswf::collect<T>(indices, count, stream, out): defined in v1-vendor-gameswf-gameswf-fddef6-2.cpp (explicit
// specializations for the seven component types collect_uvs dispatches on). Declared here for scene_node::collect_uvs.
template <typename T>
void collect(const unsigned int* indices, unsigned int count, const glitch::video::SVertexStream& stream, point* out);
template <>
void collect<signed char>(const unsigned int*, unsigned int, const glitch::video::SVertexStream&, point*);
template <>
void collect<unsigned char>(const unsigned int*, unsigned int, const glitch::video::SVertexStream&, point*);
template <>
void collect<short>(const unsigned int*, unsigned int, const glitch::video::SVertexStream&, point*);
template <>
void collect<unsigned short>(const unsigned int*, unsigned int, const glitch::video::SVertexStream&, point*);
template <>
void collect<int>(const unsigned int*, unsigned int, const glitch::video::SVertexStream&, point*);
template <>
void collect<unsigned int>(const unsigned int*, unsigned int, const glitch::video::SVertexStream&, point*);
template <>
void collect<float>(const unsigned int*, unsigned int, const glitch::video::SVertexStream&, point*);

class scene_node : public glitch::scene::ISceneNode {
public:
    // The name given to the node (setName in the constructor): "gameswf_render_node". attach_scene_node looks a node up
    // by this name (ISceneNode::getSceneNodeFromName) before it makes a new one. The binary's data symbol
    // gameswf::scene_node::NODE_NAME is a char pointer.
    static const char* NODE_NAME;

    // 0x778840 (C1, complete object) and 0x778c58 (C2, base object; the compiler emits it for the same source
    // constructor because the class has a virtual base). Body in the .cpp; partial (the texture is not bound to the
    // material).
    scene_node(gameswf::player* player, glitch::scene::ISceneNode* parent, glitch::core::dimension2d<int> size);
    // 0x776244 (D1). 0x776354 (D0, deleting destructor) is compiler-generated and not declared here.
    ~scene_node() override;

    // 0x776140 render(void*) (K 0x1c). Empty in the binary.
    void render(void* state) override;
    // 0x776144 getBoundingBox() const (K 0x30). Returns the box at +0x21c.
    const glitch::core::aabbox3d<float>& getBoundingBox() const override;
    // 0x776390 onRegisterSceneNode() (K 0x10). Returns 0 or 1 (Hex-Rays int).
    int onRegisterSceneNode() override;

    // 0x77616c build_dlist(character*). The binary's int return is the reused this register; the source is void.
    void build_dlist(gameswf::character* c);
    // 0x776564 get_collision_uv(line3d<float>&, point&). Returns 0 or 1 (Hex-Rays int).
    bool get_collision_uv(glitch::core::line3d<float>& ray, gameswf::point& uv);
    // 0x777350 update_inverse_transform(). Hex-Rays returns the memcpy result from a tail call; the source is void.
    void update_inverse_transform();
    // 0x777514 get_local_mouse(character*, float&, float&).
    void get_local_mouse(gameswf::character* c, float& x, float& y);
    // 0x7775c4 get_world_mouse(int&, int&). Returns the y value, as the binary does.
    int get_world_mouse(int& x, int& y);
    // 0x77825c collect_uvs(boost::intrusive_ptr<IMesh const> const&, point*, unsigned int). The Hex-Rays float result is
    // a register residue; the source is void. At most six indices are read into a local array of six, as in the binary.
    void collect_uvs(const boost::intrusive_ptr<const glitch::scene::IMesh>& mesh, gameswf::point* uv, unsigned int count);
    // 0x7785b0 init_corners().
    void init_corners();

    // Not in the binary (split out of init_corners for testing). Given the uv of up to six corner points
    // (x, y pairs, count points), stores the index of each point in corner[] (see the .cpp for the mapping).
    static void assign_corner_indices(const float* uv, unsigned int count, std::uint16_t corner[4]);

    // Not in the binary: the absolute transform of the parent node (ISceneNode K 0x38, read inline by
    // get_collision_uv and update_inverse_transform), copied with its flag byte.
    glitch::core::CMatrix4<float> parentTransform() const;

    // Not in the binary: the ray through the pointer position (x, y), which update_inverse_transform casts with the scene
    // collision manager (device scene manager +0x2c, vtable +0x14 getRayFromScreenCoordinates).
    bool screen_ray(int x, int y, glitch::core::line3d<float>& ray) const;

    // ---- layout (32-bit offsets in comments) ----
    glitch::scene::ISceneNode* m_parent = nullptr;          // +0x130 parent node; the ctor takes a reference on it, D1 does not drop it
    boost::intrusive_ptr<glitch::video::ITexture> m_texture;            // +0x134 texture created by addTexture
    boost::intrusive_ptr<glitch::video::IRenderTarget> m_render_target; // +0x138 render target of m_texture (driver vtable +0x84)
    std::uint16_t m_texture_param_id = 0xffff;              // +0x13c material parameter id of the texture, 0xffff when none
    glitch::core::triangle3d<float> m_triangles[2] = {};     // +0x140 triangles from CTriangleSelector::getTriangles (max 2)
    glitch::core::vector3d<float> m_corner_points[6] = {};   // +0x188 corner points, 3 per triangle (copied from m_triangles)
    std::uint16_t m_corner[4] = {};                         // +0x1d0 indices into m_corner_points: [0] 464, [1] 466, [2] 468, [3] 470
    glitch::core::CMatrix4<float> m_parent_transform{       // +0x1d8 copy of the parent's matrix (65 bytes, flag at +0x218)
        glitch::core::CMatrix4<float>::EM4CONST_IDENTITY};
    glitch::core::aabbox3d<float> m_bounding_box{           // +0x21c MinEdge (-1,-1,-1), MaxEdge (1,1,1) from the ctor
        glitch::core::vector3d<float>{-1.f, -1.f, -1.f}, glitch::core::vector3d<float>{1.f, 1.f, 1.f}};
    gameswf::player* m_player = nullptr;                    // +0x234 player that owns the node
    ::array<gameswf::character*> m_child_list;              // +0x238 child characters (data, count, capacity, flag at +0x244)
    ::array<gameswf::character*> m_display_list;            // +0x248 display list built by build_dlist (flag at +0x254)
    float m_last_pointer_x = -1.f;                          // +0x258 root::m_pointer_x (root +0x48) at the last update (-1 until set)
    float m_last_pointer_y = -1.f;                          // +0x25c root::m_pointer_y (root +0x4c) at the last update (-1 until set)
    float m_mouse_x = 0.f;                                  // +0x260 pointer x in logical pixels, from update_inverse_transform
    float m_mouse_y = 0.f;                                  // +0x264 pointer y in logical pixels, from update_inverse_transform
};

}  // namespace gameswf
