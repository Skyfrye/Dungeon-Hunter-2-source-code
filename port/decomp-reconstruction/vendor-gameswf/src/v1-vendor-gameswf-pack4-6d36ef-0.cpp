// Batch v1-vendor-gameswf-pack4-6d36ef-0 (vendor-gameswf). Owners: gameswf::fill_style, gameswf::line_style,
// gameswf::array<line_style>, gameswf::morph2_character_def, gameswf::movie_def_impl. The ledger part file
// ledger.d/gameswf-core-moviedef.csv holds the status and notes of each row.
//
// Contents, in file order:
//   array<T>::push_back<U> (0x7619b8 for U = line_style; array is global, as in base/container.h). The member
//     template is declared in base/container.h (DH2) and defined below. The batch test instantiates it for a
//     counting element type. gameswf::dh2::array_push_* (include/vendor-gameswf/gameswf_array_grow_dh2_helpers.hpp).
//   fill_style: default and copy constructors, assignment, destructor, apply (0x7848c0) and read (0x784da4).
//   line_style::apply (0x7843b0).
//   morph2_character_def: constructor and destructor (the shapes are heap objects).
//   movie_def_impl: constructor, destructor, read, read_tags, has_init_actions, get_labeled_frame, add_init_action,
//     add_frame_name, export_resource.
//
// Skipped (compiler-generated deleting destructors, emitted from delete): 0x784d4c fill_style D0,
//   0x762184 morph2_character_def D0, 0x7663b8 movie_def_impl D0.
//
// Upstream definitions this file replaces are wrapped in #if 0 /* DH2 */ in:
//   upstream/gameswf-r1714/gameswf/gameswf_styles.cpp     (fill_style ctor, dtor, apply, read; line_style::apply)
//   upstream/gameswf-r1714/gameswf/gameswf_morph2.cpp     (morph2_character_def ctor and dtor)
//   upstream/gameswf-r1714/gameswf/gameswf_movie_def.cpp  (movie_def_impl ctor, dtor, read, read_tags, get_labeled_frame,
//                                                          add_init_action, add_frame_name, export_resource)
//
// Layouts. 32-bit offsets are comments only; members are declared in the owner headers with // DH2 comments.
//   fill_style (84 bytes in the binary): vptr +0x00, int m_type +0x04, rgba m_color +0x08, matrix m_gradient_matrix
//     +0x0c, array<gradient_record> m_gradients +0x24, smart_ptr m_gradient_bitmap_info +0x34, smart_ptr
//     m_bitmap_character +0x38, matrix m_bitmap_matrix +0x3c. No m_blend_mode: the byte at +0x30 is the trailing
//     byte (the borrowed flag) of the 16-byte array.
//   line_style (108 bytes): vptr +0x00, Uint16 m_width +0x04, rgba m_color +0x06, fill_style m_fill_style +0x0c, the
//     capstyle / join / flag bytes +0x60..+0x67, Uint16 m_miter_limit_factor +0x68.
//   morph2_character_def (0xa4 bytes): shape_character_def base (0x88 bytes), then heap shapes m_shape1 +0x88 and
//     m_shape2 +0x8c (operator new 0x88 each), unsigned m_offset +0x90, int m_fill_style_count +0x94, int
//     m_line_style_count +0x98, float m_last_ratio +0x9c, mesh_set* m_mesh +0xa0.
//   movie_def_impl (0x128 bytes): see gameswf_movie_def.h. movie_definition_sub is 0x44 bytes (stream sound fields
//     +0x20..+0x2e, the two per-depth tables +0x30 and +0x34, frame count +0x38, loading frame +0x3c, empty
//     tu_condition +0x40, break-loading flag +0x41).

#include "base/container.h"                      // gameswf::array<T> (compiles on its own in this tree)
#include "base/tu_file.h"
#include "base/zlib_adapter.h"
#include "vendor-gameswf/gameswf_alloc.hpp"      // gameswf::free_internal, operator new(size, MemHint)
#include "vendor-gameswf/gameswf_dh2_runtime.hpp"  // gameswf::destruct<T>
#include "vendor-gameswf/gameswf_array_grow_dh2_helpers.hpp"
#include "vendor-gameswf/tu_file_callbacks.hpp"  // gameswf::get_buffered_file
#include "vendor-gameswf/image_io.hpp"           // gameswf::create_rgba
#include "vendor-gameswf/image_rgba.hpp"

#include <cstring>
#include <new>

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_render.h"
#include "gameswf/gameswf_stream.h"
#include "gameswf/gameswf_styles.h"
#include "gameswf/gameswf_shape.h"
#include "gameswf/gameswf_morph2.h"
#include "gameswf/gameswf_movie_def.h"
#include "gameswf/gameswf_font.h"   // movie_def_impl::m_fonts holds smart pointers to font
#include "gameswf/gameswf_sound.h"  // and to sound_sample

// array<> is in the global namespace (base/container.h). Its push_back<U> member template is defined in the header
// (DH2, shared with the other element types); this unit emits the strong line_style symbol.

// 0x7619b8 _ZN7gameswf5arrayINS_10line_styleEE9push_backIS1_EEvRKT_
// 0x7619b8 void gameswf::array<gameswf::line_style>::push_back<gameswf::line_style>(gameswf::line_style const&)
// Member template declared in base/container.h (DH2). The binary copy-constructs the new slot in place: it does
// not default-construct and assign, as the upstream push_back does through resize(). The binary calls reserve
// only when the new count is above the buffer size, with new_size + new_size / 2 (gameswf::dh2::array_push_*).
// The parameter is const U& (the binary mangles it as RKT_, the function template's first parameter), so it is
// declared with U, not with T: a const T& signature mangles as RKS1_ and does not match 0x7619b8. The line_style
// case is the explicit specialization below. The batch test instantiates the generic definition for a counting
// element type.
// Explicit specialization for line_style, not an explicit instantiation: the upstream non-template
// push_back(const T&) has the same parameter type, so `template void ...::push_back<line_style>(const line_style&)`
// is ambiguous (GCC). The specialization emits the strong symbol of 0x7619b8, with the body of the generic
// definition in base/container.h.
template <>
template <>
void array<gameswf::line_style>::push_back<gameswf::line_style>(const gameswf::line_style& val)
{
	int new_size = m_size + 1;
	if (gameswf::dh2::array_push_needs_reserve(new_size, m_buffer_size))
	{
		reserve(gameswf::dh2::array_push_reserve_size(new_size));
	}
	new (m_buffer + m_size) gameswf::line_style(val);	// copy-construct into the open slot
	m_size = new_size;
}

namespace gameswf
{


// 0x761878 _ZN7gameswf10fill_styleC1ERKS0_
// 0x761878 gameswf::fill_style::fill_style(gameswf::fill_style const&)
// Explicit copy (the upstream class has none). Copies type, color and gradient matrix, resizes the gradient array
// to the source count and copies each 5-byte gradient_record (binary: memcpy of 5 bytes), then takes references to
// the bitmap info and the bitmap character, and copies the bitmap matrix. The trailing byte of the array (+0x30) is
// the array's borrowed flag: the binary zeroes it and the array constructor does the same.
fill_style::fill_style(const fill_style& other)
	: base_fill_style()
{
	m_type = other.m_type;
	m_color = other.m_color;
	m_gradient_matrix = other.m_gradient_matrix;

	m_gradients.resize(other.m_gradients.size());
	for (int i = 0; i < m_gradients.size(); i++)
	{
		std::memcpy(&m_gradients[i], &other.m_gradients[i], sizeof(gradient_record));
	}

	m_gradient_bitmap_info = other.m_gradient_bitmap_info;	// add_ref through gc_ptr copy
	m_bitmap_character = other.m_bitmap_character;
	m_bitmap_matrix = other.m_bitmap_matrix;
}

// 0x77a780 _ZN7gameswf10fill_styleaSERKS0_
// 0x77a780 gameswf::fill_style::operator=(gameswf::fill_style const&)
// The same copy as the copy constructor, into an existing object. Returns *this. The binary does not test for
// self-assignment; the copy is the same bytes, so memmove is used to keep it defined.
fill_style& fill_style::operator=(const fill_style& other)
{
	m_type = other.m_type;
	m_color = other.m_color;
	m_gradient_matrix = other.m_gradient_matrix;

	m_gradients.resize(other.m_gradients.size());
	for (int i = 0; i < m_gradients.size(); i++)
	{
		std::memmove(&m_gradients[i], &other.m_gradients[i], sizeof(gradient_record));
	}

	m_gradient_bitmap_info = other.m_gradient_bitmap_info;	// set_ref
	m_bitmap_character = other.m_bitmap_character;
	m_bitmap_matrix = other.m_bitmap_matrix;
	return *this;
}

// 0x784a20 _ZN7gameswf10fill_styleD2Ev
// 0x784cac _ZN7gameswf10fill_styleD1Ev (identical body)
// The binary releases m_bitmap_character (+0x38), then m_gradient_bitmap_info (+0x34), then clears the gradient
// array (resize 0, reserve 0). Member destruction in reverse declaration order gives the same sequence, so the
// explicit releases below are redundant but reproduce the binary's order; the member destructors that run after the
// body find null pointers. The vptr reset is the compiler's.
fill_style::~fill_style()
{
	m_bitmap_character = nullptr;
	m_gradient_bitmap_info = nullptr;
	m_gradients.resize(0);
	m_gradients.reserve(0);
}

// 0x784a8c _ZN7gameswf10fill_styleC1Ev
// 0x784c18 _ZN7gameswf10fill_styleC2Ev (identical body)
// Default values the binary writes: type 0, color white and opaque (bytes 0xff), gradient matrix and bitmap
// matrix identity, empty gradient array (+0x24..+0x30 zero), null bitmap references.
fill_style::fill_style()
	: m_type(0)
{
	m_color.set(255, 255, 255, 255);	// +0x08, the binary stores four 0xff bytes
	m_gradient_matrix.set_identity();	// +0x0c
	m_gradient_bitmap_info = nullptr;	// +0x34
	m_bitmap_character = nullptr;		// +0x38
	m_bitmap_matrix.set_identity();		// +0x3c
}

// 0x7846b8 _ZNK7gameswf10fill_style22create_gradient_bitmapEv
// 0x7846b8 gameswf::fill_style::create_gradient_bitmap() const
// Makes a bitmap_info for the gradient. A linear gradient (type 0x10) is a 256 x 1 image whose pixel i is the color sampled
// at ratio i. A radial gradient (type 0x12) is a 64 x 64 image whose pixel (column x, row y) is the color sampled at
// floor(255.5 * distance from the center), the center at (height - 1) / 2 with each offset divided by that radius, clamped to
// 255. Any other type gives no image: the render factory is called with null and the null is destroyed. The image is a
// gameswf::image_rgba made by gameswf::create_rgba (r1714: image::rgba), handed to render::create_bitmap_info_rgba and
// destroyed with destruct<image_rgba>.
bitmap_info* fill_style::create_gradient_bitmap() const
{
	image_rgba* im = NULL;

	if (m_type == 0x10)
	{
		// Linear gradient.
		im = create_rgba(256, 1);

		for (int i = 0; i < im->m_width; i++)
		{
			rgba	sample = sample_gradient(i);
			im->set_pixel(i, 0, sample.m_r, sample.m_g, sample.m_b, sample.m_a);
		}
	}
	else if (m_type == 0x12)
	{
		// Radial gradient.
		im = create_rgba(64, 64);

		for (int j = 0; j < im->m_height; j++)
		{
			for (int i = 0; i < im->m_width; i++)
			{
				float	radius = (im->m_height - 1) / 2.0f;
				float	y = (j - radius) / radius;
				float	x = (i - radius) / radius;
				int	ratio = (int) floorf(255.5f * sqrt(x * x + y * y));
				if (ratio > 255)
				{
					ratio = 255;
				}
				rgba	sample = sample_gradient( ratio );
				im->set_pixel(i, j, sample.m_r, sample.m_g, sample.m_b, sample.m_a);
			}
		}
	}

	bitmap_info*	bi = render::create_bitmap_info_rgba(im);
	destruct<image_rgba>(im);

	return bi;
}

// 0x7848c0 _ZNK7gameswf10fill_style5applyEif
// 0x7848c0 gameswf::fill_style::apply(int, float) const
// Pushes the style into the render handler (the binary calls the handler directly, there is no gameswf::render
// forwarder and no blend mode). Solid fill: fill_style_color(fill_side, m_color). Gradient types 0x10 and 0x12: the
// gradient bitmap is made on first use (also when a morph reset it) and set with m_gradient_matrix and clamp wrap.
// Every other type: the bitmap character's bitmap with m_bitmap_matrix; the wrap is repeat for type 0x42 and clamp
// for every other type (the binary computes the wrap argument as m_type != 0x42). The ratio is not used.
void fill_style::apply(int fill_side, float ratio) const
{
	(void) ratio;
	if (m_type == 0x00)
	{
		// 0x00: solid fill
		if (s_render_handler != NULL)
		{
			s_render_handler->fill_style_color(fill_side, m_color);
		}
	}
	else if (m_type == 0x10 || m_type == 0x12)
	{
		// 0x10: linear gradient fill
		// 0x12: radial gradient fill
		if (m_gradient_bitmap_info == NULL)
		{
			// This can happen when morphing gradient styles.
			fill_style* this_non_const = const_cast<fill_style*>(this);
			this_non_const->m_gradient_bitmap_info = create_gradient_bitmap();
		}

		if (m_gradient_bitmap_info != NULL)
		{
			if (s_render_handler != NULL)
			{
				s_render_handler->fill_style_bitmap(fill_side, m_gradient_bitmap_info.get_ptr(), m_gradient_matrix,
					render_handler::WRAP_CLAMP);
			}
		}
	}
	else if (m_bitmap_character != NULL)
	{
		bitmap_info* bi = m_bitmap_character->get_bitmap_info();
		if (bi != NULL)
		{
			if (s_render_handler != NULL)
			{
				s_render_handler->fill_style_bitmap(fill_side, bi, m_bitmap_matrix,
					m_type != 0x42 ? render_handler::WRAP_CLAMP : render_handler::WRAP_REPEAT);
			}
		}
	}
}

// 0x784da4 _ZN7gameswf10fill_style4readEPNS_6streamEiPNS_20movie_definition_subE
// 0x784da4 gameswf::fill_style::read(gameswf::stream*, int, gameswf::movie_definition_sub*)
// The upstream read, except for the focal gradient (type 0x13): the binary reads the gradient count (low four bits
// of a byte), then a ratio byte and an rgba color per gradient, then one byte, with no matrix before it and no
// 16-bit fixed value after it. Any other type is ignored (no assert). The gradient types are as upstream: the matrix
// is built the same way, up to fifteen gradient records are read, the first color becomes m_color, and the bitmap is
// made with create_gradient_bitmap when the movie loads bitmaps, else as an empty bitmap_info; either way the movie
// is told about it.
void fill_style::read(stream* in, int tag_type, movie_definition_sub* md)
{
	m_type = in->read_u8();

	if (m_type == 0x00)
	{
		// 0x00: solid fill
		if (tag_type <= 22) {
			m_color.read_rgb(in);
		} else {
			m_color.read_rgba(in);
		}
	}
	else if (m_type == 0x10 || m_type == 0x12)
	{
		// 0x10: linear gradient fill
		// 0x12: radial gradient fill

		matrix	input_matrix;
		input_matrix.read(in);

		if (m_type == 0x10)
		{
			m_gradient_matrix.set_identity();
			m_gradient_matrix.concatenate_translation(128.f, 0.f);
			m_gradient_matrix.concatenate_scale(1.0f / 128.0f);
		}
		else
		{
			m_gradient_matrix.set_identity();
			m_gradient_matrix.concatenate_translation(32.f, 32.f);
			m_gradient_matrix.concatenate_scale(1.0f / 512.0f);
		}

		matrix	m;
		m.set_inverse(input_matrix);
		m_gradient_matrix.concatenate(m);

		// GRADIENT
		// SWF 8 and later supports up to 15 gradient control points
		int num_gradients = in->read_u8() & 0x0F;

		m_gradients.resize(num_gradients);
		for (int i = 0; i < num_gradients; i++)
		{
			m_gradients[i].read(in, tag_type);
		}

		// @@ hack.
		if (num_gradients > 0)
		{
			m_color = m_gradients[0].m_color;
		}

		if (md->get_create_bitmaps() == DO_LOAD_BITMAPS)
		{
			m_gradient_bitmap_info = create_gradient_bitmap();
		}
		else
		{
			m_gradient_bitmap_info = render::create_bitmap_info_empty();
		}

		// Make sure our movie_def_impl knows about this bitmap.
		md->add_bitmap_info(m_gradient_bitmap_info.get_ptr());
	}
	else if (m_type == 0x13)
	{
		// DH2: focal gradient, parsed but not used. Not the Flash 8 layout: no matrix is read first, the count byte
		// is followed by (ratio byte, rgba) pairs, and the record ends with a single byte.
		int num_gradients = in->read_u8() & 0x0F;

		for (int i = 0; i < num_gradients; i++)
		{
			in->read_u8();
			rgba color;
			color.read_rgba(in);
		}

		in->read_u8();
	}
	else if (m_type >= 0x40 && m_type <= 0x43)
	{
		// 0x40: tiled bitmap fill
		// 0x41: clipped bitmap fill
		// 0x42: non-smoothed repeating bitmap, Flash 8, TODO
		// 0x43: non-smoothed clipped bitmap, Flash 8, TODO

		int	bitmap_char_id = in->read_u16();

		// Look up the bitmap character.
		m_bitmap_character = md->get_bitmap_character(bitmap_char_id);

		matrix	m;
		m.read(in);

		// For some reason, it looks like they store the inverse of the
		// TWIPS-to-texcoords matrix.
		m_bitmap_matrix.set_inverse(m);
	}
}

// 0x7843b0 _ZNK7gameswf10line_style5applyEf
// 0x7843b0 gameswf::line_style::apply(float) const
// Sets the line color and width on the render handler (the binary calls the handler directly). The ratio is not used.
void line_style::apply(float ratio) const
{
	(void) ratio;
	if (s_render_handler != NULL)
	{
		s_render_handler->line_style_color(m_color);
		if (s_render_handler != NULL)
		{
			s_render_handler->line_style_width(static_cast<float>(m_width));
		}
	}
}

// 0x7621f0 _ZN7gameswf20morph2_character_defC1EPNS_6playerE
// 0x76227c _ZN7gameswf20morph2_character_defC2EPNS_6playerE (identical body)
// Base shape_character_def(player) first. Then the binary writes -1.0f to m_last_ratio (+0x9c), the morph vtable at +0
// and the second-base vtable at +0x20 (the compiler's), and 0 to m_mesh (+0xa0). Two shapes are allocated with
// operator new(0x88, MemHint 0) and constructed in place: the first goes to m_shape1 (+0x88), the second to m_shape2
// (+0x8c). The allocation is sizeof(shape_character_def): 0x88 in the binary, larger on a 64-bit host. m_offset
// (+0x90) and the two counts (+0x94, +0x98) are not written, as in the binary.
morph2_character_def::morph2_character_def(player* p)
	: shape_character_def(p)
{
	m_last_ratio = -1.0f;	// +0x9c
	m_mesh = nullptr;		// +0xa0

	void* mem1 = operator new(sizeof(shape_character_def), static_cast<swf::MemHint>(0));
	m_shape1 = new (mem1) shape_character_def(p);	// +0x88

	void* mem2 = operator new(sizeof(shape_character_def), static_cast<swf::MemHint>(0));
	m_shape2 = new (mem2) shape_character_def(p);	// +0x8c
}

// 0x76212c _ZN7gameswf20morph2_character_defD1Ev
// 0x7621a0 _ZN7gameswf20morph2_character_defD2Ev (identical body)
// Destroys the second shape (+0x8c) and then the first (+0x88) through gameswf::destruct<shape_character_def>, as
// the binary does. The shape_character_def base destructor runs after the body. m_mesh (+0xa0) is not released here,
// as in the binary.
morph2_character_def::~morph2_character_def()
{
	destruct<shape_character_def>(m_shape2);
	destruct<shape_character_def>(m_shape1);
}

// 0x761b9c _ZN7gameswf20morph2_character_def7displayEPNS_9characterE
// 0x761b9c gameswf::morph2_character_def::display(gameswf::character*)
// Interpolates the two shapes by the instance's ratio (character +0x90) into this shape's own bound, fill styles,
// line styles and paths, exactly as the r1714 version, then draws through a mesh_set cached for that ratio: when
// m_last_ratio (+0x9c) differs, the old mesh_set (+0xa0) is destroyed and freed with free_internal (r1714: delete) and
// a new one is built over the second-base subobject (+0x20) with tolerance (20 / max scale / parent pixel scale) * 0.75.
// The mesh_set is displayed with the world matrix and colour transform of the instance through the four-argument
// mesh_set::display (no blend mode).
void morph2_character_def::display(character* inst)
{
	int i;
	float ratio = inst->m_ratio;

	// bounds
	rect	new_bound;
	new_bound.set_lerp(m_shape1->get_bound_local(), m_shape2->get_bound_local(), ratio);
	set_bound(new_bound);

	// fill styles
	for (i=0; i < m_fill_styles.size(); i++)
	{
		fill_style* fs = &m_fill_styles[i];

		const fill_style& fs1 = m_shape1->get_fill_styles()[i];
		const fill_style& fs2 = m_shape2->get_fill_styles()[i];

		fs->set_lerp(fs1, fs2, ratio);
	}

	// line styles
	for (i = 0; i < m_line_styles.size(); i++)
	{
		line_style& ls = m_line_styles[i];
		const line_style& ls1 = m_shape1->get_line_styles()[i];
		const line_style& ls2 = m_shape2->get_line_styles()[i];
		ls.m_width = (Uint16)frnd(flerp(ls1.get_width(), ls2.get_width(), ratio));
		ls.m_color.set_lerp(ls1.get_color(), ls2.get_color(), ratio);
	}

	// shape
	int k = 0, n = 0;
	for (i = 0; i < m_paths.size(); i++)
	{
		path& p = m_paths[i];
		const path& p1 = m_shape1->get_paths()[i];

		// Swap fill styles -- for some reason, morph
		// shapes seem to be defined with their fill
		// styles backwards!
		p.m_fill0 = p1.m_fill1;
		p.m_fill1 = p1.m_fill0;

		p.m_line = p1.m_line;

		p.m_ax = flerp(p1.m_ax, m_shape2->get_paths()[n].m_ax, ratio);
		p.m_ay = flerp(p1.m_ay, m_shape2->get_paths()[n].m_ay, ratio);

		//  edges;
		int len = p1.m_edges.size();
		p.m_edges.resize(len);

		for (int j = 0; j < p.m_edges.size(); j++)
		{
			p.m_edges[j].m_cx = flerp(p1.m_edges[j].m_cx, m_shape2->get_paths()[n].m_edges[k].m_cx, ratio);
			p.m_edges[j].m_cy = flerp(p1.m_edges[j].m_cy, m_shape2->get_paths()[n].m_edges[k].m_cy, ratio);
			p.m_edges[j].m_ax = flerp(p1.m_edges[j].m_ax, m_shape2->get_paths()[n].m_edges[k].m_ax, ratio);
			p.m_edges[j].m_ay = flerp(p1.m_edges[j].m_ay, m_shape2->get_paths()[n].m_edges[k].m_ay, ratio);
			k++;
			if (m_shape2->get_paths()[n].m_edges.size() <= k)
			{
				k = 0;
				n++;
			}
		}
	}

	//  display
	const matrix* mat = inst->get_world_matrix();
	const cxform* cx = inst->get_world_cxform();
	float max_scale = mat->get_max_scale();
	float pixel_scale = inst->get_parent()->get_pixel_scale();

	if (ratio != m_last_ratio)
	{
		if (m_mesh != NULL)
		{
			m_mesh->~mesh_set();
			free_internal(m_mesh, 0);
		}
		m_last_ratio = ratio;
		void* mem = operator new(sizeof(mesh_set), static_cast<swf::MemHint>(0));
		m_mesh = new (mem) mesh_set(this, (20.0f / max_scale / pixel_scale) * 0.75f);
	}
	m_mesh->display(*mat, *cx, m_fill_styles, m_line_styles);
}

// The body of the fill-style part of a morph record, shared by the fill style table and the line styles that carry a
// fill (tag 84). The binary has the same parse twice, inline. Reads the type byte and what follows for the start style
// fs1 and the end style fs2. A gradient reads two matrices, builds both gradient matrices, reads a gradient count
// byte (no mask), and then one record for each style per index. A bitmap fill (type 0x40 or 0x41 only) reads the
// bitmap character id and two matrices; the fill style table stores the bitmap character and the inverted matrices
// (store = true), the line style path drops them. Any other type reads nothing. The 0x40 test is `type - 64 <= 1`.
void morph2_character_def::read_morph_fill_style(stream* in, int tag_type, movie_definition_sub* md, fill_style* fs1, fill_style* fs2, bool store)
{
	int type = in->read_u8();
	fs1->m_type = type;
	fs2->m_type = type;

	if (type == 0x00)
	{
		fs1->m_color.read_rgba(in);
		fs2->m_color.read_rgba(in);
	}
	else if (type == 0x10 || type == 0x12)
	{
		matrix	input_matrix1, input_matrix2;

		input_matrix1.read(in);
		input_matrix2.read(in);

		fs1->m_gradient_matrix.set_identity();
		fs2->m_gradient_matrix.set_identity();
		if (type == 0x10)
		{
			fs1->m_gradient_matrix.concatenate_translation(128.f, 0.f);
			fs1->m_gradient_matrix.concatenate_scale(1.0f / 128.0f);
			fs2->m_gradient_matrix.concatenate_translation(128.f, 0.f);
			fs2->m_gradient_matrix.concatenate_scale(1.0f / 128.0f);
		}
		else
		{
			fs1->m_gradient_matrix.concatenate_translation(32.f, 32.f);
			fs1->m_gradient_matrix.concatenate_scale(1.0f / 512.0f);
			fs2->m_gradient_matrix.concatenate_translation(32.f, 32.f);
			fs2->m_gradient_matrix.concatenate_scale(1.0f / 512.0f);
		}

		matrix	m1, m2;
		m1.set_inverse(input_matrix1);
		fs1->m_gradient_matrix.concatenate(m1);
		m2.set_inverse(input_matrix2);
		fs2->m_gradient_matrix.concatenate(m2);

		// GRADIENT
		int	num_gradients = in->read_u8();

		fs1->m_gradients.resize(num_gradients);
		fs2->m_gradients.resize(num_gradients);

		for (int j = 0; j < num_gradients; j++)
		{
			fs1->m_gradients[j].read(in, tag_type);
			fs2->m_gradients[j].read(in, tag_type);
		}

		// @@ hack.
		if (num_gradients > 0)
		{
			fs1->m_color = fs1->m_gradients[0].m_color;
			fs2->m_color = fs2->m_gradients[0].m_color;
		}
	}
	else if (type == 0x40 || type == 0x41)
	{
		int	bitmap_char_id = in->read_u16();

		// Look up the bitmap character.
		fs1->m_bitmap_character = md->get_bitmap_character(bitmap_char_id);
		fs2->m_bitmap_character = fs1->m_bitmap_character;

		matrix	m1, m2;
		m1.read(in);
		m2.read(in);

		if (store)
		{
			// For some reason, it looks like they store the inverse of the
			// TWIPS-to-texcoords matrix.
			fs1->m_bitmap_matrix.set_inverse(m1);
			fs2->m_bitmap_matrix.set_inverse(m2);
		}
	}
}

// 0x762308 _ZN7gameswf20morph2_character_def4readEPNS_6streamEibPNS_20movie_definition_subE
// 0x762308 gameswf::morph2_character_def::read(gameswf::stream*, int, bool, gameswf::movie_definition_sub*)
// The r1714 parse with these DH2 differences: the offset word, the fill style count and the line style count are kept
// in members (+0x90, +0x94, +0x98) and the loops test the members; the morph fill style parse is shared by the two
// places (read_morph_fill_style) and only knows types 0, 0x10, 0x12, 0x40 and 0x41, with no assert for others and no
// mask on the gradient count; a DefineMorphShape2 (tag 84) line style without a fill reads its start and end colors
// into the two line styles (r1714 reads them into locals and drops them). Bounds go through set_bound on the two heap
// shapes; for tag 84 the two edge bounds are read and dropped, six reserved bits are skipped, and the two stroke
// flags are stored on this shape (+0x74, +0x75). The two shapes then read their paths (the second after align), and this
// shape's tables are sized from the first shape: fill styles with their gradient counts, line styles, paths with their
// edge counts.
void morph2_character_def::read(stream* in, int tag_type, bool with_style, movie_definition_sub* md)
{
	(void) with_style;

	rect	bound1, bound2;
	bound1.read(in);
	bound2.read(in);
	m_shape1->set_bound(bound1);
	m_shape2->set_bound(bound2);

	if (tag_type == 84)
	{
		rect edge_bound1, edge_bound2;

		edge_bound1.read(in);
		edge_bound2.read(in);

		in->read_uint(6);	// reserved

		m_uses_nonscaling_strokes = in->read_uint(1) == 1;
		m_uses_scaling_strokes = in->read_uint(1) == 1;
	}

	m_offset = in->read_u32();

	m_fill_style_count = in->read_variable_count();
	int i;
	for (i = 0; i < m_fill_style_count; i++)
	{
		fill_style fs1, fs2;

		read_morph_fill_style(in, tag_type, md, &fs1, &fs2, true);

		m_shape1->m_fill_styles.push_back<fill_style>(fs1);
		m_shape2->m_fill_styles.push_back<fill_style>(fs2);
	}

	m_line_style_count = in->read_variable_count();

	if (tag_type == 46)
	{
		for (i = 0; i < m_line_style_count; i++)
		{
			line_style ls1, ls2;
			ls1.m_width = in->read_u16();
			ls2.m_width = in->read_u16();
			ls1.m_color.read(in, tag_type);
			ls2.m_color.read(in, tag_type);
			m_shape1->m_line_styles.push_back<line_style>(ls1);
			m_shape2->m_line_styles.push_back<line_style>(ls2);
		}
	}
	else
	if (tag_type == 84)
	{
		for (i = 0; i < m_line_style_count; i++)
		{
			line_style ls1, ls2;

			ls1.m_width = in->read_u16();
			ls2.m_width = in->read_u16();
			in->read_uint(2);	// start cap style
			int join_style = in->read_uint(2);
			int has_fill_flag = in->read_uint(1);
			in->read_uint(1);	// no h scale
			in->read_uint(1);	// no v scale
			in->read_uint(1);	// pixel hinting
			in->read_uint(1);	// reserved
			in->read_uint(1);	// no close
			in->read_uint(2);	// end cap style

			if (join_style == 2)
			{
				in->read_u16();	// miter limit factor, 8.8 fixed point
			}

			if (has_fill_flag == 0)
			{
				ls1.m_color.read(in, tag_type);
				ls2.m_color.read(in, tag_type);
			}
			else
			{
				fill_style fs1, fs2;
				read_morph_fill_style(in, tag_type, md, &fs1, &fs2, false);
			}

			m_shape1->m_line_styles.push_back<line_style>(ls1);
			m_shape2->m_line_styles.push_back<line_style>(ls2);
		}
	}

	m_shape1->read(in, tag_type, false, md);
	in->align();
	m_shape2->read(in, tag_type, false, md);

	// setup array size
	m_fill_styles.resize(m_shape1->m_fill_styles.size());
	for (i = 0; i < m_fill_styles.size(); i++)
	{
		fill_style& fs = m_fill_styles[i];
		fill_style& fs1 = m_shape1->m_fill_styles[i];
		fs.m_gradients.resize(fs1.m_gradients.size());
	}
	m_line_styles.resize(m_shape1->m_line_styles.size());
	m_paths.resize(m_shape1->m_paths.size());

	for (i = 0; i < m_paths.size(); i++)
	{
		path& p = m_paths[i];
		path& p1 = m_shape1->m_paths[i];
		p.m_edges.resize(p1.m_edges.size());
	}
}

// 0x7636b4 _ZN7gameswf14movie_def_impl16has_init_actionsEv
// 0x7636b4 gameswf::movie_def_impl::has_init_actions()
// Non-const and virtual (declared so in gameswf_movie_def.h, DH2 comment): the binary's symbol is
// _ZN...16has_init_actionsEv (no const), and the function is stored at vtable 0x990048 +0x88 (0x9900d0), the same
// slot as sprite_definition::has_init_actions. Returns the byte at +0xec (236) as an int. The member is declared bool,
// so the value is 0 or 1 here; the binary returns the raw byte, and the only writers store 0 and 1.
int movie_def_impl::has_init_actions()
{
	return m_has_init_actions;
}

// 0x764da0 _ZN7gameswf14movie_def_impl17get_labeled_frameERKNS_10tu_stringiEPi
// 0x764da0 gameswf::movie_def_impl::get_labeled_frame(gameswf::tu_stringi const&, int*)
// The binary looks the label up in m_named_frames (+0x74) with find_index on the address of the label (the table key is
// a stringi_pointer, one pointer to a tu_string), returns 0 when the label is absent, and otherwise stores the entry's
// int value when frame_number is non-null and returns 1. hash::get does the same find and store.
bool movie_def_impl::get_labeled_frame(const tu_stringi& label, int* frame_number)
{
	stringi_pointer key = { &label.to_tu_string() };	// the tu_stringi starts with its tu_string: the binary passes the label's address
	return m_named_frames.get(key, frame_number);
}

// 0x7644b8 _ZN7gameswf14movie_def_impl15add_init_actionEiPNS_11execute_tagE
// 0x7644b8 gameswf::movie_def_impl::add_init_action(int, gameswf::execute_tag*)
// Appends the tag to the init-action list of the frame being loaded (m_init_action_list, +0x64, indexed by the loading
// frame at +0x3c, no range check) and sets has_init_actions (+0xec). The sprite id is not used. The upstream version
// has no flag.
void movie_def_impl::add_init_action(int sprite_id, execute_tag* e)
{
	(void) sprite_id;
	m_init_action_list[get_loading_frame()].push_back(e);
	m_has_init_actions = true;
}

// 0x768a5c _ZN7gameswf14movie_def_impl14add_frame_nameEPKc
// 0x768a5c gameswf::movie_def_impl::add_frame_name(char const*)
// Labels the frame being loaded. The name is interned through the player's permanent_string_cache (player +0x2c) and
// the table m_named_frames (+0x74) keeps the interned pointer; the binary adds the entry (hash::add) with the loading
// frame (+0x3c) as the value, with no check for an earlier assignment of the same label, so a repeated label is
// added a second time and the first entry is the one that get_labeled_frame finds. The vendored hash::add asserts that its
// key is new (the assert is compiled out of the binary), and shipped menus do repeat a label, so a label that is already
// in the table is left alone here: the duplicate entry the binary adds is never found, because lookups return the first one,
// so the observable table is the same. The case-insensitive comparison of the key finds the earlier label.
void movie_def_impl::add_frame_name(const char* name)
{
	permanent_string* interned = get_player()->m_permanent_strings.get(tu_string(name));
	stringi_pointer key = { interned };
	if (m_named_frames.get(key, NULL))
	{
		return;
	}
	m_named_frames.add(key, get_loading_frame());	// stores 0-based frame #
}

// 0x765ec8 _ZN7gameswf14movie_def_implC1EPNS_6playerENS_19create_bitmaps_flagENS_23create_font_shapes_flagE
// 0x76603c _ZN7gameswf14movie_def_implC2EPNS_6playerENS_19create_bitmaps_flagENS_23create_font_shapes_flagE
// The movie_definition_sub constructor is inlined into it: character_def(player) first, then stream sound id and start
// -1 (+0x20, +0x28), format 0 (+0x24), the three flash9 flag bytes 0 (+0x2c..+0x2e), the two per-depth tables 0 (+0x30,
// +0x34), frame count and loading frame 0 (+0x38, +0x3c), break-loading 0 (+0x41). Then the movie_def_impl members: the
// four id tables, the playlist, the init-action list, the name and export tables, the import arrays and the bitmap
// list all empty (+0x44..+0xa8), the create flags (+0xac, +0xb0), frame rate 30.0f (+0xc4), version, loaded length,
// jpeg input, stream, file end, zlib and origin pointers 0 (+0xc8..+0xe0), thread and cached instance 0 (+0xe4,
// +0xe8), has-init-actions 0 (+0xec), the unique id (+0xf0: the context's counter at player +0xac, +0x24, read and then
// incremented), four words 0 (+0xf4..+0x100), the abc name as an empty tu_string (+0x104), the abc and the three
// flash9 string tables 0 (+0x118..+0x124). The frame size rect (+0xb4) is not written by the binary; the host rect
// constructor zeroes it.
movie_def_impl::movie_def_impl(player* p, create_bitmaps_flag cbf, create_font_shapes_flag cfs)
	: movie_definition_sub(p),
	  m_create_bitmaps(cbf),
	  m_create_font_shapes(cfs),
	  m_frame_rate(30.0f),
	  m_version(0),
	  m_loaded_length(0),
	  m_jpeg_in(0),
	  m_str(NULL),
	  m_file_end_pos(0),
	  m_zlib_in(NULL),
	  m_origin_in(NULL),
	  m_thread(NULL),
	  m_has_init_actions(false),
	  m_unique_id(0),
	  unk_f4(0),
	  unk_f8(0),
	  unk_fc(0),
	  unk_100(0)
{
	m_unique_id = p->m_context->unk_24++;	// +0xf0
}

// 0x7661b0 _ZN7gameswf14movie_def_implD1Ev
// 0x7663d4 _ZN7gameswf14movie_def_implD2Ev (identical body)
// Sets the break-loading flag, frees the thread object (+0xe4) when there is one (the binary calls free_internal on it;
// in the single-thread build wait() has no effect), then destroys every tag of the playlist (+0x54) and of the
// init-action list (+0x64) with destruct<execute_tag>, in that order. The compiler then destroys the members in
// reverse order, which is the binary's order (the three string tables, the abc, the abc name, the cached instance, the
// bitmap list, the import arrays, the export and name tables, the init-action list, the playlist, the id tables), and
// the movie_definition_sub destructor sets break-loading again, deletes the stream sound and clears the two per-depth
// tables. The upstream destructor asserts that the jpeg input was released; the binary has no such check.
movie_def_impl::~movie_def_impl()
{
	break_loading();
	if (m_thread != NULL)
	{
		m_thread->wait();
		free_internal(m_thread, 0);
	}

	// Release our playlist data.
	for (int i = 0, n = m_playlist.size(); i < n; i++)
	{
		for (int j = 0, m = m_playlist[i].size(); j < m; j++)
		{
			destruct<execute_tag>(m_playlist[i][j]);
		}
	}

	// Release init action data.
	for (int i = 0, n = m_init_action_list.size(); i < n; i++)
	{
		for (int j = 0, m = m_init_action_list[i].size(); j < m; j++)
		{
			destruct<execute_tag>(m_init_action_list[i][j]);
		}
	}
}

// 0x765c88 _ZN7gameswf14movie_def_impl4readEPNS_7tu_fileE
// 0x765c88 gameswf::movie_def_impl::read(gameswf::tu_file*)
// Reads the SWF header: keeps the input as m_origin_in (+0xe0), takes the start position, the 4-byte signature word
// and the file length, stores the end position (+0xd8) and the version (+0xc8, the signature's top byte), clears
// m_zlib_in, and logs an error and returns when the three signature bytes are not FWS or CWS. A compressed file ('C')
// is read through zlib_adapter::make_inflater and its end position becomes the length minus 8; an uncompressed file
// is read through get_buffered_file. Either wrapper is stored in m_zlib_in (+0xdc) and the stream (operator new 0x2c,
// constructor with the compressed flag) in m_str (+0xd4). The frame rectangle (+0xb4), the frame rate (a 16-bit
// value / 256, +0xc4) and the frame count (+0x38, 1 when 0) follow, the playlist and the init-action list are sized
// to the frame count through the virtual get_frame_count, and read_tags runs directly: this build never starts a
// loader thread (the upstream player check for a separate thread is not in the binary).
void movie_def_impl::read(tu_file* in)
{
	m_origin_in = in;
	Uint32	file_start_pos = in->get_position();
	Uint32	header = in->read_le32();
	Uint32	file_length = in->read_le32();
	m_file_end_pos = file_start_pos + file_length;

	m_version = (header >> 24) & 255;
	bool	valid = (header & 0x0FFFFFF) == 0x00535746 || (header & 0x0FFFFFF) == 0x00535743;
	m_zlib_in = NULL;
	if (!valid)
	{
		// ERROR
		log_error("gameswf::movie_def_impl::read() -- file does not start with a SWF header!\n");
		return;
	}
	bool	compressed = (header & 255) == 'C';

	tu_file*	source;
	if (compressed)
	{
		// Uncompress the input as we read it.
		source = zlib_adapter::make_inflater(in);
		m_file_end_pos = file_length - 8;
	}
	else
	{
		source = get_buffered_file(in);
	}
	m_zlib_in = source;

	m_str = new (static_cast<swf::MemHint>(0)) stream(source, compressed);

	m_frame_size.read(m_str);
	m_frame_rate = m_str->read_u16() * (1.0f / 256.0f);

	set_frame_count(m_str->read_u16());

	m_playlist.resize(get_frame_count());
	m_init_action_list.resize(get_frame_count());

	read_tags();
}

// 0x765af4 _ZN7gameswf14movie_def_impl9read_tagsEv
// 0x765af4 gameswf::movie_def_impl::read_tags()
// The tag loop: while the stream position is below the end position and loading has not been broken, open the tag.
// Tag 1 (show frame) advances the loading frame (inc_loading_frame, which asks is_multithread through the vtable and
// signals the empty condition); any other tag runs its registered loader, or logs "no tag loader for type". After
// close_tag, an end tag (0) that is not at the end of the file stops the loop with a warning, and each pass stores
// the stream position in m_loaded_length. Afterwards the jpeg input is destroyed and cleared, and the zlib / buffered
// wrapper (+0xdc), the stream (+0xd4) and the origin file (+0xe0) are destroyed and freed with free_internal; the
// binary does not clear those three pointers.
void movie_def_impl::read_tags()
{
	while ((Uint32) m_str->get_position() < m_file_end_pos && get_break_loading() == false)
	{
		int	tag_type = m_str->open_tag();
		loader_function	lf = NULL;
		if (tag_type == 1)
		{
			// show frame tag -- advance to the next frame.
			inc_loading_frame();
		}
		else
		if (get_tag_loader(tag_type, &lf))
		{
			// call the tag loader.	 The tag loader should add
			// characters or tags to the movie data structure.
			(*lf)(m_str, tag_type, this);
		}
		else
		{
			// no tag loader for this tag type.
			log_msg("*** no tag loader for type %d\n", tag_type);
		}

		m_str->close_tag();

		if (tag_type == 0)
		{
			if ((unsigned int) m_str->get_position() != m_file_end_pos)
			{
				// Safety break, so we don't read past the end of the
				// movie.
				log_msg("warning: hit stream-end tag, but not at the "
					"end of the file yet; stopping for safety\n");
				break;
			}
		}

		m_loaded_length = m_str->get_position();
	}

	if (m_jpeg_in)
	{
		destruct<jpeg::input>(m_jpeg_in);
		m_jpeg_in = NULL;
	}

	if (m_zlib_in)
	{
		// Done with the zlib_adapter (or the buffered file).
		m_zlib_in->~tu_file();
		free_internal(m_zlib_in, 0);
	}

	if (m_str)
	{
		m_str->~stream();
		free_internal(m_str, 0);
	}

	if (m_origin_in)
	{
		m_origin_in->~tu_file();
		free_internal(m_origin_in, 0);
	}
}

// 0x7689b0 _ZN7gameswf14movie_def_impl15export_resourceERKNS_9tu_stringEPNS_13character_defE
// 0x7689b0 gameswf::movie_def_impl::export_resource(gameswf::tu_string const&, gameswf::character_def*)
// The binary takes a counted reference to res, stores it in the export table (+0x78) under a copy of the symbol, and
// drops its temporary reference and frees the key copy when it owns heap text. m_exports.set does the same reference
// handling, so it is the body here. The upstream definition (gameswf_movie_def.cpp) is the same call.
void movie_def_impl::export_resource(const tu_string& symbol, character_def* res)
{
	m_exports.set(symbol, res);
}


}  // namespace gameswf
