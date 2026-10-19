// array.h	-- Thatcher Ulrich <tu@tulrich.com> 2003, Vitaly Alexeev <tishka92@yahoo.com>	2007

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Action Script Array implementation code for the gameswf SWF player library.


#ifndef GAMESWF_AS_ARRAY_H
#define GAMESWF_AS_ARRAY_H

#include "gameswf/gameswf_action.h"	// for as_object
#include "gameswf/gameswf_function.h"

namespace gameswf
{

	// constructor of an Array object
	void	as_global_array_ctor(const fn_call& fn);

	// this is an Array object
	// DH2: 0x5c bytes: as_object (0x38) + m_string_value +0x38 (tu_string, 20 bytes; the to_string() cache) + m_array +0x4c
	// DH2: (array<as_value>, 16 bytes with its borrowed flag at +0x58). Vtable off_990b18 (108 bytes): is +0x08, to_string +0x0c,
	// DH2: set_member(name) +0x1c, get_member(name) +0x20, set_member(int) +0x24, get_member(int) +0x28, enumerate +0x30,
	// DH2: clear_refs +0x40, this_alive +0x44. The constructor registers no per-instance methods: they are in the builtin table 7.
	struct as_array : public as_object
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_ARRAY };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_object::is(class_id);
		}

		exported_module virtual bool	get_member(const tu_stringi& name, as_value* val);	// DH2: +0x20, 0x7984b8
		exported_module virtual bool	set_member(const tu_stringi& name, const as_value& val);	// DH2: +0x1c, 0x79844c
		exported_module virtual int	set_member(int id, const as_value& val);	// DH2: +0x24, 0x798108; the element at id, growing the array
		exported_module virtual int	get_member(int id, as_value* val);	// DH2: +0x28, 0x798174; the element at id
		virtual void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr);	// DH2: +0x40, 0x7982ec

		exported_module as_array(player* player);	// DH2: 0x79855c (C1), 0x798608 (C2)
		exported_module virtual const char* to_string();	// DH2: +0x0c, 0x798adc
		exported_module void push(const as_value& val) { m_array.push_back(val); }
		exported_module void remove(int index) { m_array.remove(index); }
		exported_module void insert(int index, const as_value& val)	{ m_array.insert(index, val); }
		#if 0 /* DH2: not in the binary: Array.sort (as_array_sort, 0x79b124) sorts the elements with std::sort */
		exported_module void sort(int options, as_function* compare_function);
		#endif /* DH2 */
		exported_module int size() const { return m_array.size(); }
		exported_module void resize(int size) { m_array.resize(size); }
		exported_module bool	is_index(const tu_stringi& name);	// DH2: 0x79806c, non-const member; the binary never reads this
		exported_module void	pop(as_value* val);	// DH2: 0x7980cc
		exported_module virtual void	enumerate(as_environment* env);	// DH2: +0x30, 0x798bc8 (the binary returns int from a push_back; void here)
		exported_module virtual void	this_alive();	// DH2: +0x44, 0x79839c

		tu_string m_string_value;	// +0x38
		array<as_value> m_array;	// +0x4c
	};

	// this is "_global.Array" object
	struct as_global_array : public as_c_function
	{
		enum option
		{
			CASEINSENSITIVE = 1,
			DESCENDING = 2,
			UNIQUESORT = 4,
			RETURNINDEXEDARRAY = 8,
			NUMERIC = 16
		};

		as_global_array(player* player);
	};

}	// end namespace gameswf


#endif // GAMESWF_AS_ARRAY_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
