// gameswf_styles.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Fill and line style types.


#ifndef GAMESWF_STYLES_H
#define GAMESWF_STYLES_H


#include "gameswf/gameswf_impl.h"


namespace gameswf
{
	struct stream;


	struct gradient_record
	// DH2: 5 bytes in the binary (array<gradient_record> stride; fill_style copies one record with a 5-byte memcpy).
	{
		gradient_record();
		void	read(stream* in, int tag_type);

	//data:
		Uint8	m_ratio;	// +0x00
		rgba	m_color;	// +0x01
	};

	struct base_fill_style
	// DH2: vtable of 20 bytes (D1 +0x00, D0 +0x04, apply +0x08). The binary's apply takes no blend mode.
	{
		virtual ~base_fill_style() {}
		#if 0 /* DH2: the binary's apply is apply(int, float) const (vtable +0x08, fill_style 0x7848c0) */
		virtual void apply(int fill_side, float ratio, render_handler::bitmap_blend_mode bm) const = 0;
		#endif /* DH2 */
		virtual void apply(int fill_side, float ratio) const = 0;	// DH2: +0x08
	};

	struct fill_style : public base_fill_style
	// For the interior of outline shapes.
	// DH2: 84 bytes (array<fill_style> stride, copy constructor 0x761878), ARM32 offsets in the member comments.
	{
		fill_style();
		fill_style(const fill_style& other);	// DH2: explicit copy, 0x761878
		virtual ~fill_style();
		fill_style& operator=(const fill_style& other);	// DH2: 0x77a780

		void	read(stream* in, int tag_type, movie_definition_sub* m);
		rgba	sample_gradient(int ratio) const;
		gameswf::bitmap_info*	create_gradient_bitmap() const;
		#if 0 /* DH2: the binary's apply takes no blend mode (0x7848c0) */
		virtual void	apply(int fill_side, float ratio, render_handler::bitmap_blend_mode bm) const;
		#endif /* DH2 */
		virtual void	apply(int fill_side, float ratio) const;	// DH2: +0x08, 0x7848c0, body in vendor-gameswf/src/v1-vendor-gameswf-pack4-6d36ef-0.cpp

		rgba	get_color() const { return m_color; }
		void	set_color(rgba new_color) { m_color = new_color; }
		int	    get_type() const { return m_type; }
#if 0 /* DH2: the binary's fill_style has no m_blend_mode (+0x30 is the array's trailing byte) */
		void    set_blend_mode(Uint8 bm) {m_blend_mode = bm;}
#endif /* DH2 */

		// For shape morphing
		void	set_lerp(const fill_style& a, const fill_style& b, float t);

	private:
		friend struct morph2_character_def;
		friend struct canvas;

		int	m_type;	// +0x04
		// DH2: no m_blend_mode in the binary. Its byte at +0x30 is the trailing byte of m_gradients (16-byte array).
		rgba	m_color;	// +0x08
		matrix	m_gradient_matrix;	// +0x0c (6 floats)
		array<gradient_record>	m_gradients;	// +0x24 (buffer, size, capacity, borrowed byte at +0x30)
		gc_ptr<gameswf::bitmap_info>	m_gradient_bitmap_info;	// +0x34
		gc_ptr<bitmap_character_def>	m_bitmap_character;	// +0x38
		matrix	m_bitmap_matrix;	// +0x3c
	};


	struct morph_fill_style : public base_fill_style
	{
		morph_fill_style();
		morph_fill_style(stream* in, movie_definition_sub* m);
		virtual ~morph_fill_style();
		
		void read(stream* in, movie_definition_sub* m);
		rgba sample_gradient(int ratio, float morph);
		bitmap_info* create_gradient_bitmap(float morph) const;
		virtual void apply(int fill_side, float morph) const;	// DH2: no blend mode (base_fill_style::apply is apply(int, float))
		rgba get_color(float morph) const;
		void set_colors(rgba new_color_orig, rgba new_color_target);
	private:
		int m_type;
		rgba m_color[2];
		matrix m_gradient_matrix[2];
		array<gradient_record> m_gradients[2];
		gc_ptr<bitmap_info> m_gradient_bitmap_info[2];
		gc_ptr<bitmap_character_def> m_bitmap_character;
		matrix m_bitmap_matrix[2];
	};

	struct base_line_style
	{
		virtual ~base_line_style() {}
		virtual void apply(float ratio) const = 0;
	};

	struct line_style : public base_line_style
	// For the outside of outline shapes, or just bare lines.
	// DH2: 108 bytes (array<line_style> stride; line_style::line_style 0x784b20, push_back<line_style> 0x7619b8),
	// DH2: unchanged from r1714 apart from the sizes of its members. ARM32 offsets in the member comments.
	{
		line_style();
		virtual ~line_style() {}
		void	read(stream* in, int tag_type, movie_definition_sub* m);
		virtual void	apply(float ratio) const;

		Uint16	get_width() const { return m_width; }
		const rgba&	get_color() const { return m_color; }

	private:
		friend struct morph2_character_def;
		friend struct canvas;

		Uint16	m_width;	// +0x04, in TWIPS
		rgba	m_color;	// +0x06
		fill_style m_fill_style;	// +0x0c
		Uint8 m_start_capstyle;	// +0x60
		Uint8 m_joinstyle;	// +0x61
		bool m_has_fill_flag;	// +0x62
		bool m_no_hscale_flag;	// +0x63
		bool m_no_vscale_flag;	// +0x64
		bool m_pixelhinting_flag;	// +0x65
		bool m_noclose;	// +0x66
		Uint8 m_end_capstyle;	// +0x67
		Uint16 m_miter_limit_factor;	// +0x68
	};

	struct morph_line_style : public base_line_style
	{
		morph_line_style();
		morph_line_style(stream* in);
		virtual ~morph_line_style() {}

		void read(stream* in);
		virtual void apply(float morph) const;

	private:
		Uint16 m_width[2];
		rgba   m_color[2];
	};
}

// DH2: 0x7619b8, the one instance of the member template array<T>::push_back<U> (base/container.h) that the binary has for
// DH2: line_style. Declared here, after line_style is complete, so every translation unit that pushes a line_style sees the
// DH2: specialization before it could instantiate the generic member; the body is in
// DH2: vendor-gameswf/src/v1-vendor-gameswf-pack4-6d36ef-0.cpp.
template <>
template <>
void array<gameswf::line_style>::push_back<gameswf::line_style>(const gameswf::line_style& val);


#endif // GAMESWF_STYLES_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
