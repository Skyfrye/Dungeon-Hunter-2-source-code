// as_point.h	-- Julien Hamaide <julien.hamaide@gmail.com>	2008

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.


#ifndef GAMESWF_AS_MATRIX_H
#define GAMESWF_AS_MATRIX_H

#include "gameswf/gameswf_action.h"	// for as_object
#include "gameswf/gameswf_character.h"

namespace gameswf
{

	void	as_global_matrix_ctor(const fn_call& fn);

	// DH2: built-in methods that the constructor registers (defined in as_matrix.cpp)
	void	as_matrix_translate(const fn_call& fn);	// DH2
	void	as_matrix_rotate(const fn_call& fn);	// DH2
	void	as_matrix_scale(const fn_call& fn);	// DH2
	void	as_matrix_concat(const fn_call& fn);	// DH2
	void	as_matrix_clone(const fn_call& fn);	// DH2
	void	as_matrix_invert(const fn_call& fn);	// DH2
	void	as_matrix_transformPoint(const fn_call& fn);	// DH2

	struct as_matrix : public as_object
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_MATRIX };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_object::is(class_id);
		}

#if 0 /* DH2: replaced by the two-argument constructor below */
		as_matrix(player* player);
#endif
		// DH2: 0x7a179c (C1) and 0x7a1ea0 (C2). m is copied (six floats) when not NULL, else identity.
		// The default argument keeps the one-argument calls in as_matrix.cpp valid.
		as_matrix(player* player, const matrix* m = NULL);	// DH2

		matrix m_matrix;
	};

}	// end namespace gameswf


#endif // GAMESWF_AS_MATRIX_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
