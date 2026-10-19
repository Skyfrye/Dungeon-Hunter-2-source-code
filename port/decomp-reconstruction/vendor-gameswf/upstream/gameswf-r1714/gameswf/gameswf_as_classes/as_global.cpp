// as_global.h	-- Thatcher Ulrich <tu@tulrich.com> 2003
// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// Action Script global functions implementation

#include "gameswf/gameswf_action.h"	// for as_object
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_root.h"
#include "as_global.h"

namespace gameswf
{

	//
	// Built-in objects
	//

	// DH2: 0x79ec04. The text of the first argument comes from to_string(tu_string&), which converts undefined, numbers,
	// DH2: booleans and objects; there is no assert on the argument count and no special case for undefined.
	void	as_global_trace(const fn_call& fn)
	{
		tu_string buf;
		log_msg("%s\n", fn.arg(0).to_string(buf).c_str());
	}

	// setInterval(functionReference:Function, interval:Number, [param1:Object, param2, ..., paramN]) : Number
	// setInterval(objectReference:Object, methodName:String, interval:Number, [param1:Object, param2, ..., paramN]) : Number
	// DH2: 0x79ecd0. With a function as the first argument the timer has no target (the this value stays undefined); with an
	// DH2: object the method is looked up on it (get_member, vtable +0x20; the binary does not test the object) and the
	// DH2: object is the target. The timer is built with the five-argument constructor, which adds it to the root listener.
	// DH2: Without a function and an interval argument the result is null.
	void  as_global_setinterval(const fn_call& fn)
	{
		as_value this_value;
		as_value function;
		int first_arg_index;
		if (fn.arg(0).is_function())
		{
			function = fn.arg(0);
			first_arg_index = 1;
		}
		else
		{
			this_value = fn.arg(0);
			as_value method_name;
			method_name = fn.arg(1);
			this_value.to_object()->get_member(method_name.to_tu_string(), &function);
			first_arg_index = 2;
		}

		as_timer* t = NULL;
		if (function.is_function() && fn.nargs > first_arg_index)
		{
			as_value interval;
			interval = fn.arg(first_arg_index);
			t = new as_timer(this_value, function, interval.to_number(), fn, first_arg_index + 1);
		}
		fn.result->set_as_object(t);
	}

#if 0 /* DH2: not in the binary (no setTimeout and clearTimeout; as_timer has no m_do_once) */
	// setTimeout(functionReference:Function, interval:Number, [param1:Object, param2, ..., paramN]) : Number
	// setTimeout(objectReference:Object, methodName:String, interval:Number, [param1:Object, param2, ..., paramN]) : Number
	void  as_global_settimeout(const fn_call& fn)
	{
		// create interval timer
		as_global_setinterval(fn);
		as_timer* t = cast_to<as_timer>(fn.result->to_object());

		if (t)
		{
			t->m_do_once = true;
		}
	}
#endif /* DH2 */

	// DH2: 0x79e738. With exactly one argument that is an as_timer object (class id 37), the timer removes itself from the
	// DH2: root listener (as_timer::clear).
	void  as_global_clearinterval(const fn_call& fn)
	{
		if (fn.nargs == 1)
		{
			as_timer* t = cast_to<as_timer>(fn.arg(0).to_object());
			if (t)
			{
				t->clear();
			}
		}
	}

	void	as_global_update_after_event(const fn_call& fn)
	{
		// isn't required for gameswf
	}
	
	void	as_global_assetpropflags(const fn_call& fn)
	// Undocumented ASSetPropFlags function
	// Works only for as_object for now
	{
		int version = fn.get_player()->get_root()->get_movie_version();

		// Check the arguments
		assert(fn.nargs == 3 || fn.nargs == 4);
		assert((version == 5) ? (fn.nargs == 3) : true);

		// object
		as_object* obj = fn.arg(0).to_object();
		if (obj == NULL)
		{
			log_error("error: assetpropflags for NULL object\n");
			return;
		}

		// The second argument is a list of child names,
		// may be in the form array(like ["abc", "def", "ggggg"]) or in the form a string(like "abc, def, ggggg")
		// the NULL second parameter means that assetpropflags is applied to all children
		as_object* props = fn.arg(1).to_object();

		int as_prop_flags_mask = 7; // DONT_ENUM | DONT_DELETE | READ_ONLY;

		// a number which represents three bitwise flags which
		// are used to determine whether the list of child names should be hidden,
		// un-hidden, protected from over-write, un-protected from over-write,
		// protected from deletion and un-protected from deletion
		int true_flags = fn.arg(2).to_int() & as_prop_flags_mask;

		// Is another integer bitmask that works like true_flags,
		// except it sets the attributes to false. The
		// false_flags bitmask is applied before true_flags is applied

		// ASSetPropFlags was exposed in Flash 5, however the fourth argument 'false_flags'
		// was not required as it always defaulted to the value '~0'. 
		int false_flags = (fn.nargs == 3 ? 
				 (version == 5 ? ~0 : 0) : fn.arg(3).to_int()) & as_prop_flags_mask;

		// Evan: it seems that if true_flags == 0 and false_flags == 0, this function
		// acts as if the parameters where (object, null, 0x1, 0) ...
		if (false_flags == 0 && true_flags == 0)
		{
			props = NULL;
			false_flags = 0;
			true_flags = 0x1;
		}

		if (props == NULL)
		{
			// Takes all members of the object and sets its property flags
			for (stringi_hash<as_value>::const_iterator it = obj->m_members.begin(); 
				it != obj->m_members.end(); ++it)
			{
				const as_value& val = it->second;
				int flags = val.get_flags();
				flags = flags & (~false_flags);
				flags |= true_flags;
				val.set_flags(flags);
			}
		}
		else
		{
			// Takes all string type prop and sets property flags of obj[prop]
			for (stringi_hash<as_value>::const_iterator it = props->m_members.begin(); 
				it != props->m_members.end(); ++it)
			{
				const as_value& key = it->second;
				if (key.is_string())
				{
					stringi_hash<as_value>::iterator obj_it = obj->m_members.find(key.to_tu_string());
					if (obj_it != obj->m_members.end())
					{
						const as_value& val = obj_it->second;
						int flags = val.get_flags();
						flags = flags & (~false_flags);
						flags |= true_flags;
						val.set_flags(flags);
					}
				}
			}
		}
	}

	// getVersion() : String
	void	as_global_get_version(const fn_call& fn)
	// Returns a string containing Flash Player version and platform information.
	{
		fn.result->set_tu_string(get_gameswf_version());
	}


#if 0 /* DH2: replaced by vendor-gameswf/src/v1-vendor-gameswf-gameswf_as_timer-8a0e04-0.cpp */
	void as_timer::advance(float delta_time)
	{
		assert(m_func != NULL);

		m_time_remainder += delta_time;
		if (m_time_remainder >= m_interval)
		{
			m_time_remainder = fmod(m_time_remainder - m_interval, m_interval);

			as_environment env(m_func->get_player());
			int n = m_arg.size();
			{
				for (int i = 0; i < n; i++)
				{
					env.push(m_arg[i]);
				}
			}

			// keep alive
			gc_ptr<as_object> obj = m_this_ptr.get_ptr();
			as_value callback(m_func.get_ptr());

			call_method(callback, &env, obj.get_ptr(), n, env.get_top_index());

			if (m_do_once)
			{
				m_func->get_root()->remove_listener(this);
			}
		}
	}
#endif /* DH2 */


};
