// Batch v1-vendor-gameswf-render_handler_glitch-fd003c-2: render_handler_glitch, part 3 of 3 (10 functions), and
// render_handler_glitch::fill_style::apply (0x7d6b54), which draw_mesh_primitive calls.
//
// Layout and declarations: vendor-gameswf/include/vendor-gameswf/render_handler_glitch.hpp (shared with parts 1 and 2),
// and the float helpers in vendor-gameswf/include/vendor-gameswf/render_handler_glitch_detail.hpp (tested by
// tests/v1-vendor-gameswf-render_handler_glitch-fd003c-2_test.cpp).
//
// Written against the typed gameswf::render_cache (render_cache.hpp: entries, vertices, uvs, indices),
// gameswf::triangle_intersector::process (0x7889ec, vendor-gameswf/src/v1-vendor-gameswf-pack9-22190e-0.cpp) and the glitch
// material classes (the first render pass of the current technique, edited as BufferedRenderer::applyMaskState does).
//
// Checked against the assembly (tools/decomp_asm.py) where the pseudocode was ambiguous:
//   - BufferedRenderer::flush is flush(void) (the symbol and the call sites pass only this). The second register that
//     the pseudocode shows is a pass-through of the caller's r1 and is not an argument.
//   - the mask depth increment is single precision (__aeabi_fadd with 0x3a83126f = 0.001f).
//   - the mesh gate byte at this+0x3b7 is colour alpha of fill side 0 (m_fill_styles[0].color[3]).
//   - draw_mesh_primitive calls fill_style::apply and get_matrix in the order apply, get_matrix, then the transform.
//   - fill_style::apply is float arithmetic throughout (__aeabi_i2f, __aeabi_fdiv with 0x3f800000, fmul, fadd).
//   - draw_bitmap copies 48 staging entries into the render cache (asm 0x7d9294: bound CMP #0x480, step 0x18); see its note.
#include "vendor-gameswf/render_handler_glitch.hpp"

#include <cstdint>
#include <cstring>
#include <new>

#include "gameswf/gameswf_types.h"  // gameswf::rgba (full definition)
#include "glitch-video/material.hpp"
#include "glitch-video/tb/renderpass_srenderstate.hpp"
#include "glitch-video/texture.hpp"
#include "glitch-video/vertex_streams.hpp"
#include "vendor-gameswf/bitmap_info_ogl.hpp"
#include "vendor-gameswf/render_cache.hpp"
#include "vendor-gameswf/render_handler_glitch_detail.hpp"
#include "vendor-gameswf/triangle_intersector.hpp"

namespace glitch::video {
// 0x7d4f34 glitch::video::setColorMask(boost::intrusive_ptr<CMaterial> const&, bool, bool, bool, bool): the colour mask of the
// material's driver (the listing's clone passes alpha as true). Declared as in the game's BufferedRenderer file; the
// glitch-video batch defines it.
void setColorMask(const boost::intrusive_ptr<CMaterial>& material, bool r, bool g, bool b, bool a);
}  // namespace glitch::video

namespace {

using glitch::core::vector2d;
using render_handler_glitch_detail::kMaskBlendIndex;
using render_handler_glitch_detail::kQuadIndices;
using render_handler_glitch_detail::QuadPositions;

// The mask stack and the scratch points are glitch::core::vector2d<float> in the binary.
using Point = vector2d<float>;

// Primitive codes as the pseudocode passes them: 4 is the strip (draw_mesh_strip, and the strip branch of
// process_mask_intersection), 6 is the triangle list (the quads and draw_triangle_list). The enumerators are not
// recovered; the codes are the literal values from the pseudocode.
constexpr glitch::video::E_PRIMITIVE_TYPE kPrimitiveStrip = 4;
constexpr glitch::video::E_PRIMITIVE_TYPE kPrimitiveTriangles = 6;

// Applies edit to the first render pass of the material's current technique. The original reaches that pass through the
// renderer (material +0x04) technique table (+0x18, 12-byte entries, passes at entry +0x08) and edits the state words in
// place, setting the pass's change byte (+0x30) when a bit changed. Here the 32 state bytes are read into an SRenderState,
// edited, and written back with CMaterialRenderer::setRenderState, which copies only when the bytes changed and sets the
// flag. (The same helper is in the game's BufferedRenderer file.)
template <typename Edit>
void edit_first_pass(glitch::video::CMaterial& material, Edit edit) {
    glitch::video::CMaterialRenderer& renderer = *material.m_renderer;
    const int32_t technique = material.getTechnique();
    const glitch::video::SRenderPass* pass = renderer.m_techniques[technique].passes;
    glitch::video::detail::renderpass::SRenderState state;
    std::memcpy(&state, pass->stateWords, sizeof(state));
    edit(state);
    renderer.setRenderState(static_cast<uint8_t>(technique), 0, state);
}

// The batch renderer's material for the current blend slot, or slot 0 when that slot has no material.
BufferedRenderer::MaterialData& current_material(BufferedRenderer& buffered) {
    BufferedRenderer::MaterialData& slot = buffered.m_materials[buffered.m_materialIndex];
    return slot.m_material ? slot : buffered.m_materials[0];
}

}  // namespace

// 0x7d7c18 gameswf::array<gameswf::array<glitch::core::vector2d<float> > >::push_back<gameswf::array<glitch::core::vector2d<float> > >(gameswf::array<glitch::core::vector2d<float> > const&)
// Appends a copy of val to the mask stack (begin_submit_mask calls it with the new, empty run). The new slot is constructed
// in the reserved storage, which the binary also does by zeroing it and copying the points. It is a specialization of the
// member template of base/container.h, so it is defined before its first use below.
template <>
template <>
void array<array<glitch::core::vector2d<float>>>::push_back<array<glitch::core::vector2d<float>>>(
        const array<glitch::core::vector2d<float>>& val) {
    const int old_size = m_size;
    const int new_size = old_size + 1;
    if (new_size > m_buffer_size) {
        reserve(new_size + (new_size >> 1));
    }
    new (m_buffer + old_size) array<glitch::core::vector2d<float>>(val);
    m_size = new_size;
}

// 0x7d6b54 _ZNK21render_handler_glitch10fill_style5applyEPN6glitch5video12IVideoDriverER16BufferedRendererP6Vertexi
// Applies this fill side to count staging vertices. The driver argument is not used (the listing passes it on in r1 to the
// bitmap's layout call, which takes none). By the fill type:
//   1 (solid colour, set up by fill_style_color with the default bitmap): the bitmap is laid out, its texture is bound to the
//     buffer, and the u and v of every vertex are zeroed;
//   2 or 3 (bitmap fill: repeat or clamp): the bitmap is laid out and bound, its texture gets wrap mode 0 for type 2 and 2
//     for type 3, and every vertex gets u and v from its position through the bitmap matrix scaled by 1 / width and
//     1 / height: u = tx' + (a' * x + b' * y), v = ty' + (c' * x + d' * y), with the matrix entries multiplied by the
//     reciprocals first;
//   any other type: nothing but the colour.
// Every vertex then gets the fill colour as its four colour bytes (r, g, b, a at +8..+11).
void render_handler_glitch::fill_style::apply(glitch::video::IVideoDriver* driver, BufferedRenderer& buffer,
                                              Vertex* vertices, int vertex_count) const {
    (void)driver;
    ::bitmap_info_ogl* bitmap = static_cast<::bitmap_info_ogl*>(source_bitmap);
    if (unk_00 == 1) {
        bitmap->layout();
        buffer.setTexture(bitmap->m_texture);
        if (vertex_count <= 0) {
            return;
        }
        for (int i = 0; i < vertex_count; ++i) {
            vertices[i].u = 0.0f;
            vertices[i].v = 0.0f;
        }
    } else if (static_cast<unsigned int>(unk_00 - 2) > 1u) {
        if (vertex_count <= 0) {
            return;
        }
    } else {
        bitmap->layout();
        buffer.setTexture(bitmap->m_texture);
        if (bitmap->m_texture) {
            bitmap->m_texture->setWrap(unk_00 == 2 ? 0 : 2);
        }
        const float inv_width = 1.0f / static_cast<float>(source_bitmap->get_width());
        const float inv_height = 1.0f / static_cast<float>(source_bitmap->get_height());
        const float a = inv_width * bitmap_matrix.m_[0][0];
        const float b = inv_width * bitmap_matrix.m_[0][1];
        const float tx = inv_width * bitmap_matrix.m_[0][2];
        const float c = inv_height * bitmap_matrix.m_[1][0];
        const float d = inv_height * bitmap_matrix.m_[1][1];
        const float ty = inv_height * bitmap_matrix.m_[1][2];
        for (int i = 0; i < vertex_count; ++i) {
            const float x = vertices[i].x;
            const float y = vertices[i].y;
            vertices[i].u = tx + (a * x + b * y);
            vertices[i].v = ty + (c * x + d * y);
        }
    }
    if (vertex_count > 0) {
        for (int i = 0; i < vertex_count; ++i) {
            uint8_t* rgba = reinterpret_cast<uint8_t*>(&vertices[i].color);
            rgba[0] = color[0];
            rgba[1] = color[1];
            rgba[2] = color[2];
            rgba[3] = color[3];
        }
    }
}

// 0x7d81e4 _ZN21render_handler_glitch14set_blend_modeEN7gameswf10blend_mode2idE
// Switches the material slot used by the next quads. Nothing happens when the current slot is the mask slot. While
// masks are open, the buffer is flushed and the mask state cleared before the switch, and set again afterwards. The
// pseudocode's second flush argument is not an argument of BufferedRenderer::flush (see the file comment).
void render_handler_glitch::set_blend_mode(gameswf::blend_mode::id mode) {
    const int new_mode = static_cast<int>(mode);
    if (m_buffered.m_materialIndex == kMaskBlendIndex) {
        return;
    }
    int current = m_buffered.m_materialIndex;  // +0x2fc (764)
    if (m_mask_depth > 0) {                    // +0x344 (836)
        m_buffered.flush();
        m_buffered.applyMaskState(0);
        current = m_buffered.m_materialIndex;
    }
    if (current != new_mode) {
        m_buffered.flush();
    }
    m_buffered.m_materialIndex = new_mode;
    if (m_mask_depth > 0) {
        m_buffered.applyMaskState(2);
    }
}

// 0x7d825c _ZN21render_handler_glitch17begin_submit_maskEv
// Opens a mask level. The buffer is flushed (twice when the slot is not the mask slot), the slot is set to the mask
// slot, the depth goes up by one and the mask z (+0x348) by 0.001f. A new, empty mask run is pushed when the depth is
// past the end of the stack. The mask state 1 is then applied.
void render_handler_glitch::begin_submit_mask() {
    m_buffered.flush();
    if (m_buffered.m_materialIndex != kMaskBlendIndex) {
        m_buffered.flush();
    }
    m_buffered.m_materialIndex = kMaskBlendIndex;
    const int depth = m_mask_depth + 1;
    m_mask_depth = depth;
    m_mask_z = m_mask_z + 0.001f;
    if (depth > m_mask_stack.size()) {
        // The pseudocode builds a zeroed run (empty points, flag 0) and pushes it. Its zero-fill and reserve steps
        // act on an empty local array and change nothing.
        MaskRun run;
        m_mask_stack.push_back<MaskRun>(run);
    }
    m_buffered.applyMaskState(1);
}

// 0x7d8340 _ZN21render_handler_glitch12disable_maskEv
// Closes the innermost mask level: the buffer is flushed, the depth goes down by one, the mask state 0 is applied and the
// run that was closed is emptied. While a mask is still open (depth above zero), the original then edits the first render
// pass of the current slot's material in two steps around render_mask_intersection: first the mask-write state (bit 19 and
// bit 20 of the second state word set, bits 27-29 of the first word set to 3, bit 16 cleared) and the colour mask off
// (setColorMask(material, 0, 0, 0)); then, after render_mask_intersection draws the remaining mask, the mask-as-stencil
// state (bit 16 set, bits 27-29 set to 2, bit 20 cleared) and the colour mask on (1, 1, 1). Each pass edit sets the pass's
// change byte when a bit changed.
void render_handler_glitch::disable_mask() {
    m_buffered.flush();
    --m_mask_depth;
    m_buffered.applyMaskState(0);
    m_mask_stack[m_mask_depth].resize(0);
    if (m_mask_depth > 0) {
        BufferedRenderer::MaterialData& slot = current_material(m_buffered);
        using SRenderState = glitch::video::detail::renderpass::SRenderState;
        edit_first_pass(*slot.m_material, [](SRenderState& s) {
            s.m_word04 |= 0x00080000u;
            s.m_word00 = (s.m_word00 & 0xC7FFFFFFu) | 0x18000000u;
            s.m_word04 |= 0x00100000u;
            s.m_word04 &= ~0x00010000u;
        });
        glitch::video::setColorMask(slot.m_material, false, false, false, true);
        render_mask_intersection();
        edit_first_pass(*slot.m_material, [](SRenderState& s) {
            s.m_word04 |= 0x00010000u;
            s.m_word00 = (s.m_word00 & 0xC7FFFFFFu) | 0x10000000u;
            s.m_word04 &= ~0x00100000u;
        });
        glitch::video::setColorMask(slot.m_material, true, true, true, true);
    }
}

// 0x7d85bc _ZN21render_handler_glitch15end_submit_maskEv
// Closes the mask submission. The mask intersection runs first when more than one level is open. The buffer is
// flushed (twice when the slot is not zero), the slot is set to zero and the mask state 2 is applied.
void render_handler_glitch::end_submit_mask() {
    if (m_mask_depth > 1) {
        render_mask_intersection();
    }
    m_buffered.flush();
    if (m_buffered.m_materialIndex != 0) {
        m_buffered.flush();
    }
    m_buffered.m_materialIndex = 0;
    m_buffered.applyMaskState(2);
}

// 0x7d860c _ZN21render_handler_glitch25process_mask_intersectionEP6VertexiPKtiN6glitch5video16E_PRIMITIVE_TYPEE
// Turns a draw into triangle points for the mask stack. Returns false when nothing is to be done (no mask open, the slot
// is not the mask slot, or fewer than three vertices), in which case the caller draws the quads or mesh normally.
// Otherwise:
//   - the scratch points (+0x35c) get the triangle list of the draw: a strip is expanded to triangles (t, t+1, t+2), an
//     indexed list gathers its vertices through the indices, and a plain list copies its vertices;
//   - at depth 1 the scratch points are appended to the first mask run (resize, then copy) and the result is false;
//   - at depth 2 or more, each scratch triangle is intersected with every triangle of the run below it
//     (gameswf::triangle_intersector::process, 0x7889ec, scratch triangle first), and the intersection points are appended
//     to the current run as triangles (a strip of the result is expanded to a list); the result is true.
// The listing pushes three result points whenever the count is positive; a count of 1 or 2 would read past the result, and
// the tesselator never produces one, so only counts of 3 or more are pushed here.
bool render_handler_glitch::process_mask_intersection(Vertex* vertices, int vertex_count, const uint16_t* indices,
                                                      int index_count,
                                                      glitch::video::E_PRIMITIVE_TYPE primitive) {
    if (m_mask_depth <= 0 || m_buffered.m_materialIndex != kMaskBlendIndex || vertex_count <= 2) {
        return false;
    }

    m_triangle_points.resize(0);
    int triangles = 0;
    if (primitive == kPrimitiveStrip) {
        // Strip of n vertices: n - 2 triangles, (t, t + 1, t + 2) for t = 0 .. n - 3. The pseudocode writes the first
        // triangle, then one more vertex per step, which is the same sequence.
        triangles = vertex_count - 2;
        for (int t = 0; t < triangles; ++t) {
            for (int k = 0; k < 3; ++k) {
                const Vertex& corner = vertices[t + k];
                m_triangle_points.push_back(Point{corner.x, corner.y});
            }
        }
    } else if (indices != nullptr) {
        triangles = index_count / 3;
        for (int k = 0; k < index_count; ++k) {
            const Vertex& corner = vertices[indices[k]];
            m_triangle_points.push_back(Point{corner.x, corner.y});
        }
    } else {
        triangles = vertex_count / 3;
        for (int k = 0; k < vertex_count; ++k) {
            m_triangle_points.push_back(Point{vertices[k].x, vertices[k].y});
        }
    }

    const int depth = m_mask_depth;
    if (depth <= 1) {
        // First mask level: the scratch points are the region of run 0.
        MaskRun& first = m_mask_stack[depth - 1];
        const int count = m_triangle_points.size();
        if (count > 0) {
            const int old_size = first.size();
            first.resize(old_size + count);
            for (int i = 0; i < count; ++i) {
                first[old_size + i] = m_triangle_points[i];
            }
        }
        return false;
    }

    for (int t = 0; t < triangles; ++t) {
        MaskRun& current = m_mask_stack[m_mask_depth - 1];
        MaskRun& parent = m_mask_stack[m_mask_depth - 2];
        ::array<gameswf::point> out;
        gameswf::point* tri = reinterpret_cast<gameswf::point*>(&m_triangle_points[3 * t]);
        const int parent_triangles = parent.size() / 3;
        for (int u = 0; u < parent_triangles; ++u) {
            gameswf::point* parent_tri = reinterpret_cast<gameswf::point*>(&parent[3 * u]);
            m_triangle_intersector.process(tri, parent_tri, out);
            const int n = out.size();
            if (n >= 3) {
                current.push_back(Point{out[0].m_x, out[0].m_y});
                current.push_back(Point{out[1].m_x, out[1].m_y});
                current.push_back(Point{out[2].m_x, out[2].m_y});
                for (int k = 3; k < n; ++k) {
                    current.push_back(Point{out[k - 2].m_x, out[k - 2].m_y});
                    current.push_back(Point{out[k - 1].m_x, out[k - 1].m_y});
                    current.push_back(Point{out[k].m_x, out[k].m_y});
                }
            }
        }
    }
    return true;
}

// 0x7d8df4 _ZN21render_handler_glitch11draw_bitmapERKN7gameswf6matrixEPNS0_11bitmap_infoERKNS0_4rectES8_NS0_4rgbaE
// Draws one bitmap quad. Nothing is drawn when the colour's alpha is zero. Otherwise the four corners come
// from the matrix and the coordinate rect (quad_positions), the texture coordinates from the uv rect, and every
// staging entry gets the current depth and the colour. The quad is snapped to whole pixels when the byte at +0x04
// is set. The bitmap is laid out (virtual layout), its texture gets wrap mode 1 and is bound to the buffer, the quad is
// handed to process_mask_intersection and, when that returns false, to queueIndexedTriangles. With a render cache set
// (set_render_cache), the quad is then recorded in it: six indices (0, 1, 2, 1, 2, 3, relative to the entry's vertices) at the
// end of the index array, four positions and four uv pairs at the ends of the vertex and uv arrays, and one entry
// {bitmap, the red byte of the colour, vertex base, 4, index base, 6}.
// The copy into the cache: the listing's loop (asm 0x7d9294..0x7d92cc: counter step 0x18, bound CMP #0x480) copies 48
// staging entries to the cache, although only four were appended to the vertex and uv arrays (the arrays are reserved for
// four more elements). That is a memory overrun of the cache arrays in the original (the writes past the four appended
// entries land in unreserved memory), which the port does not reproduce: this body copies the four entries of the quad.
void render_handler_glitch::draw_bitmap(const gameswf::matrix& m, gameswf::bitmap_info* bi,
                                        const gameswf::rect& coords, const gameswf::rect& uv_coords,
                                        gameswf::rgba color) {
    if (color.m_a == 0) {
        return;
    }
    const float rect[4] = {coords.m_x_min, coords.m_x_max, coords.m_y_min, coords.m_y_max};
    const float uv[4] = {uv_coords.m_x_min, uv_coords.m_x_max, uv_coords.m_y_min, uv_coords.m_y_max};
    const float mat[6] = {m.m_[0][0], m.m_[0][1], m.m_[0][2], m.m_[1][0], m.m_[1][1], m.m_[1][2]};
    const QuadPositions quad = render_handler_glitch_detail::quad_positions(mat, rect);

    bi->layout();
    ::bitmap_info_ogl* ogl = static_cast<::bitmap_info_ogl*>(bi);
    if (ogl->m_texture) {
        ogl->m_texture->setWrap(1);
    }
    m_buffered.setTexture(ogl->m_texture);

    Vertex* staging = reinterpret_cast<Vertex*>(m_vertices);
    const float depth = m_mask_z;
    staging[0].u = uv[0];
    staging[0].v = uv[2];
    staging[1].u = uv[1];
    staging[1].v = uv[2];
    staging[2].u = uv[0];
    staging[2].v = uv[3];
    staging[3].u = uv[1];
    staging[3].v = uv[3];

    // The packed colour is the rgba word the pseudocode passes as a6 (the bytes r, g, b, a in memory order).
    uint32_t packed = 0;
    std::memcpy(&packed, &color, sizeof(packed));
    for (int i = 0; i < 4; ++i) {
        staging[i].x = quad.x[i];
        staging[i].y = quad.y[i];
        staging[i].z = depth;
        staging[i].color = packed;
        if (unk_04 != 0) {
            staging[i].x = render_handler_glitch_detail::snap_to_pixel(staging[i].x);
            staging[i].y = render_handler_glitch_detail::snap_to_pixel(staging[i].y);
        }
    }

    m_vertex_streams->m_field08 = 4;
    const bool masked = process_mask_intersection(staging, 4, kQuadIndices, 6, kPrimitiveTriangles);
    if (!masked) {
        m_buffered.queueIndexedTriangles(m_vertex_streams, kQuadIndices, 6);
    }

    if (m_render_cache != nullptr) {
        gameswf::render_cache& cache = *m_render_cache;
        const int index_base = cache.m_indices.size();
        const int vertex_base = cache.m_vertices.size();
        cache.m_indices.resize(index_base + 6);
        std::memcpy(cache.m_indices.begin() + index_base, kQuadIndices, sizeof(kQuadIndices));
        cache.m_vertices.resize(vertex_base + 4);
        cache.m_uvs.resize(cache.m_uvs.size() + 4);  // the uv pairs go to the same base as the positions
        for (int i = 0; i < 4; ++i) {
            glitch::core::vector3d<float>& position = cache.m_vertices[vertex_base + i];
            position.X = staging[i].x;
            position.Y = staging[i].y;
            position.Z = staging[i].z;
            glitch::core::vector2d<float>& texcoord = cache.m_uvs[vertex_base + i];
            texcoord.X = staging[i].u;
            texcoord.Y = staging[i].v;
        }
        gameswf::render_cache::entry entry;
        entry.m_bitmap = bi;
        entry.m_color = packed & 0xffu;
        entry.m_vertex_base = vertex_base;
        entry.m_vertex_count = 4;
        entry.m_index_base = index_base;
        entry.m_index_count = 6;
        const int entry_count = cache.m_entries.size();
        cache.m_entries.resize(entry_count + 1);
        cache.m_entries[entry_count] = entry;
    }
}

// 0x7d93ac _ZN21render_handler_glitch4drawEPN7gameswf12render_cacheE
// Replays a render cache. For each entry: the entry's bitmap texture is bound to the buffer; while a mask is open (the depth
// read once at the start) the cache's vertices of the entry get the current mask z as their z; the staging buffer is grown
// to the entry's vertex count; the low byte of each staging colour (the red byte) is set from the entry's colour; the
// streams get the entry's vertex count; the entry's indices (index base into the cache's index array) go through
// process_mask_intersection with the triangle-list primitive, and when that returns false, into queueIndexedTriangles.
// The staging positions and uvs are not copied from the cache (the listing and the assembly at 0x7d93ac have no such loop),
// so the replay draws whatever positions the staging buffer holds; this is how the original behaves.
void render_handler_glitch::draw(gameswf::render_cache* cache) {
    const int depth = m_mask_depth;
    for (int i = 0; i < cache->m_entries.size(); ++i) {
        gameswf::render_cache::entry& entry = cache->m_entries[i];
        m_buffered.setTexture(static_cast<::bitmap_info_ogl*>(entry.m_bitmap)->m_texture);
        if (depth > 0) {
            for (int k = 0; k < entry.m_vertex_count; ++k) {
                cache->m_vertices[k + entry.m_vertex_base].Z = m_mask_z;
            }
        }
        ensureBufferCapacity(entry.m_vertex_count);
        Vertex* staging = reinterpret_cast<Vertex*>(m_vertices);
        for (int k = 0; k < entry.m_vertex_count; ++k) {
            reinterpret_cast<uint8_t*>(&staging[k].color)[0] = static_cast<uint8_t>(entry.m_color);
        }
        m_vertex_streams->m_field08 = static_cast<uint32_t>(entry.m_vertex_count);
        const uint16_t* indices = cache->m_indices.begin() + entry.m_index_base;
        if (!process_mask_intersection(staging, entry.m_vertex_count, indices, entry.m_index_count, kPrimitiveTriangles)) {
            m_buffered.queueIndexedTriangles(m_vertex_streams, indices, entry.m_index_count);
        }
    }
}

// 0x7d94f8 _ZN21render_handler_glitch19draw_mesh_primitiveEiPKviPKti
// Draws a mesh given as (x, y) pairs. Nothing is done unless fill side 0's colour alpha is non-zero. The staging buffer
// is grown to count + 2; each entry takes x and y from the input and the current depth as z. Fill side 0 applies its
// state to the staging entries, the matrix is taken from m_matrix, and the entries are transformed by it (x, y, z).
// The result then goes through process_mask_intersection and, when that returns false, to queueBuffer (no indices, or
// no index count) or to queueIndexedTriangles.
void render_handler_glitch::draw_mesh_primitive(glitch::video::E_PRIMITIVE_TYPE primitive, const void* coords,
                                                int vertex_count, const uint16_t* indices, int index_count) {
    // The gate is the byte at this+0x3b7, which is colour alpha of fill side 0 (m_fill_styles[0].color[3]).
    if (m_fill_styles[0].color[3] == 0) {
        return;
    }
    ensureBufferCapacity(vertex_count + 2);

    Vertex* staging = reinterpret_cast<Vertex*>(m_vertices);
    const float* input = static_cast<const float*>(coords);
    for (int i = 0; i < vertex_count; ++i) {
        staging[i].x = input[2 * i];
        staging[i].y = input[2 * i + 1];
        staging[i].z = m_mask_z;
    }

    m_fill_styles[0].apply(m_driver, m_buffered, staging, vertex_count);
    const glitch::core::CMatrix4<float> world = get_matrix(m_matrix);
    for (int i = 0; i < vertex_count; ++i) {
        render_handler_glitch_detail::transform_xyz(world.M, staging[i].x, staging[i].y, staging[i].z);
    }

    m_vertex_streams->m_field08 = static_cast<uint32_t>(vertex_count);
    if (!process_mask_intersection(staging, vertex_count, indices, index_count, primitive)) {
        const bool plain = (indices == nullptr) || (index_count == 0);
        if (plain) {
            m_buffered.queueBuffer(m_vertex_streams, primitive);
        } else {
            m_buffered.queueIndexedTriangles(m_vertex_streams, indices, index_count);
        }
    }
}

// 0x7d9734 _ZN21render_handler_glitch18draw_triangle_listEPKviPKti
// Triangle list with indices: draw_mesh_primitive with the triangle-list primitive.
void render_handler_glitch::draw_triangle_list(const void* coords, int vertex_count, const uint16_t* indices,
                                               int index_count) {
    draw_mesh_primitive(kPrimitiveTriangles, coords, vertex_count, indices, index_count);
}

// 0x7d9764 _ZN21render_handler_glitch15draw_mesh_stripEPKvi
// Triangle strip without indices: draw_mesh_primitive with the strip primitive and no index buffer.
void render_handler_glitch::draw_mesh_strip(const void* coords, int vertex_count) {
    draw_mesh_primitive(kPrimitiveStrip, coords, vertex_count, nullptr, 0);
}
