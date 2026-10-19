// as_global.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Action Script global functions implementation


#ifndef GAMESWF_AS_GLOBAL_H
#define GAMESWF_AS_GLOBAL_H

#include "gameswf/gameswf_object.h"	// DH2: makes this header self-contained (as_object, as_value, array, hash, fn_call)

namespace gameswf
{
	void	as_global_trace(const fn_call& fn);
	void	as_global_get_version(const fn_call& fn);
	void	as_global_assetpropflags(const fn_call& fn);
	void  as_global_setinterval(const fn_call& fn);
	void  as_global_clearinterval(const fn_call& fn);
	#if 0 /* DH2: not in the binary */
	void  as_global_settimeout(const fn_call& fn);
	void  as_global_cleartimeout(const fn_call& fn);
	#endif /* DH2 */
	void	as_global_update_after_event(const fn_call& fn);

	// for setInterval and setTimeout
	struct as_timer : public as_object
	{
		// DH2: 0x68 bytes: as_object (0x38), m_interval +0x38, m_this_ptr +0x3c (as_value), m_func +0x48 (as_value),
		// DH2: m_time_remainder +0x54, m_arg +0x58 (array<as_value>, 16 bytes with its borrowed flag at +0x64). r1714's m_do_once is
		// DH2: not in the binary (the byte at +0x64 is the array's flag; there is no setTimeout/clearTimeout in the build).
		// DH2: Vtable off_991058: D1 0x7a6e48 (D2 0x7a6ec4), D0 0x7a6ea8, is +0x08 (0x7a6b7c), clear_refs +0x40, advance +0x5c.
#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_timer-8a0e04-0.cpp */
		weak_ptr<as_object> m_this_ptr;
		weak_ptr<as_function> m_func;
#endif /* DH2 */
		float m_interval;	// sec. DH2: +0x38, first member after the as_object base (the constructor writes it first)
		as_value m_this_ptr;	// DH2: +0x3c, object the timer calls the function on (undefined when none)
		as_value m_func;	// DH2: +0x48, the function value called by advance()
		float m_time_remainder;	// DH2: +0x54, after m_func (declaration order follows the binary)
		array<as_value> m_arg;	// DH2: +0x58
		#if 0 /* DH2: not in the binary (the next byte, +0x64, is m_arg's borrowed flag) */
		bool m_do_once;
		#endif /* DH2 */

		// Unique id of a gameswf resource
		enum { m_class_id = AS_TIMER };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_object::is(class_id);
		}

		#if 0 /* DH2: the binary has only the five-argument constructor below */
		as_timer(player* player) :
			as_object(player),
			m_interval(0.0f),
			m_time_remainder(0.0f),
			m_do_once(false)
		{
		}
		#endif /* DH2 */

		// DH2: Gameloft constructor, C1 0x7a7064 and C2 0x7a6f24 (same body). Takes the target and the
		// function as values, the interval in milliseconds, and copies the call arguments from
		// first_arg_index on. Registers the timer with the root listeners. Body in the batch .cpp.
		as_timer(as_value& target, as_value& func, double interval_ms, const fn_call& fn, int first_arg_index);

		// DH2: complete-object destructor, D1 0x7a6e48 and D2 0x7a6ec4 (same body). The deleting
		// destructor D0 0x7a6ea8 is compiler-generated. Body in the batch .cpp.
		virtual ~as_timer();

		// DH2: 0x7a6da8. Removes the timer from the root listener list. Body in the batch .cpp.
		void clear();

		// DH2: 0x7a6b94, virtual clear_refs (vtable +0x40). Body in the batch .cpp.
		virtual void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr);

		virtual void advance(float delta_time);	// DH2: 0x7a71a4. Body in the batch .cpp (upstream definition is #if 0 in as_global.cpp)
	};


}	// end namespace gameswf


#endif // GAMESWF_AS_GLOBAL_H


// Local Variables:
// mode: C++
// c-basic-offset: 8 
// tab-width: 8
// indent-tabs-mode: t
// End:
