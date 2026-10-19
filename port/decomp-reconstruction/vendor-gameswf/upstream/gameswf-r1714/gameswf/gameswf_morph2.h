// gameswf_morph2.h -- Mike Shaver <shaver@off.net> 2003, , Vitalij Alexeev <tishka92@mail.ru> 2004.

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

#ifndef GAMESWF_MORPH2_H
#define GAMESWF_MORPH2_H

#include "gameswf/gameswf_shape.h"


namespace gameswf
{
	struct morph2_character_def : public shape_character_def
	{
		morph2_character_def(player* player);
		virtual ~morph2_character_def();
		void	read(stream* in, int tag_type, bool with_style, movie_definition_sub* m);
		virtual void	display(character* inst);
		void lerp_matrix(matrix& t, const matrix& m1, const matrix& m2, const float ratio);

	private:
		// DH2: the fill-style part of a morph record, the same parse twice in the binary (fill style table, tag-84 line styles
		// DH2: with a fill); body in vendor-gameswf/src/v1-vendor-gameswf-pack4-6d36ef-0.cpp, called by read().
		static void read_morph_fill_style(stream* in, int tag_type, movie_definition_sub* md, fill_style* fs1, fill_style* fs2, bool store);

		#if 0 /* DH2: the binary holds both shapes as heap objects (operator new(0x88) each) and orders the members differently */
		shape_character_def m_shape1;
		shape_character_def m_shape2;
		unsigned int m_offset;
		float m_last_ratio;
		mesh_set*	m_mesh;
		#endif /* DH2 */
		// DH2: 0xa4 bytes (define_shape_morph_loader 0x75f950 calls operator new(0xA4)); shape_character_def is the first 0x88.
		shape_character_def* m_shape1;	// DH2: +0x88 (operator new(0x88) in the constructor)
		shape_character_def* m_shape2;	// DH2: +0x8c
		unsigned int m_offset;	// DH2: +0x90, the u32 that read() takes after the bounds (0x762308); the constructor does not write it
		int m_fill_style_count;	// DH2: +0x94, a member in the binary (read() keeps the count of fill styles here; r1714 has a local)
		int m_line_style_count;	// DH2: +0x98, as +0x94 for the line styles
		float m_last_ratio;	// DH2: +0x9c, -1.0f from the constructor
		mesh_set*	m_mesh;	// DH2: +0xa0, written 0 by the constructor; display() frees and rebuilds it when the ratio changes
	};
}


#endif // GAMESWF_MORPH2_H

// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
