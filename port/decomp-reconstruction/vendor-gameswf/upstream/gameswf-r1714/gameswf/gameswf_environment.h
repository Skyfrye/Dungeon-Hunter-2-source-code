// gameswf_environment.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// ActionScript "environment", essentially VM state?

#ifndef GAMESWF_ENVIRONMENT_H
#define GAMESWF_ENVIRONMENT_H

#include "base/weak_ptr.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_value.h"

namespace gameswf
{

	#define GLOBAL_REGISTER_COUNT 4

	struct character;
	struct sprite_instance;
	struct as_object;

	exported_module tu_string get_full_url(const tu_string& workdir, const char* url);

	//
	// with_stack_entry
	//
	// The "with" stack is for Pascal-like with-scoping.

	struct with_stack_entry
	{
		gc_ptr<as_object>	m_object;
		int	m_block_end_pc;
		
		with_stack_entry() :
			m_object(NULL),
			m_block_end_pc(0)
		{
		}

		with_stack_entry(as_object* obj, int end)	:
			m_object(obj),
			m_block_end_pc(end)
		{
		}
	};

	#if 0 /* DH2: the DH2 environment holds a plain array<as_value> for its value stack (no logical stack size), see as_environment below */
	// stack access/manipulation
	// @@ TODO do more checking on these
	struct vm_stack : private ::array<as_value>
	{
		vm_stack() :
			m_stack_size(0)
		{
		}

		inline as_value&	operator[](int index) 
		{
//			assert(index >= 0 && index < m_stack_size);
			return ::array<as_value>::operator[](index);
		}

		inline const as_value&	operator[](int index) const 
		{
//			assert(index >= 0 && index < m_stack_size);
			return ::array<as_value>::operator[](index);
		}

		void reset(const as_value& val)
		{
			(*this)[m_stack_size] = val;
		}

		void reset(const char* val)
		{
			(*this)[m_stack_size].set_string(val);
		}

		void reset(const wchar_t* val)
		{
			(*this)[m_stack_size] = as_value(val);
		}

		void reset(bool val)
		{
			(*this)[m_stack_size].set_bool(val);
		}

		void reset(int val)
		{
			(*this)[m_stack_size].set_int(val);
		}

		void reset(float val)
		{
			(*this)[m_stack_size].set_double(val);
		}

		void reset(double val)
		{
			(*this)[m_stack_size].set_double(val);
		}

		void reset(as_object* val)
		{
			(*this)[m_stack_size].set_as_object(val);
		}

		template<class T>
		void	push(T val) 
		{
			if (m_stack_size < ::array<as_value>::size())
			{
				// this reduces NEW operators
//				(*this)[m_stack_size] = as_value(val);
				reset(val);
			}
			else
			{
				push_back(as_value(val)); 
			}
			m_stack_size++;
		}

		as_value&	pop();
		exported_module void	drop(int count);
		as_value&	top(int dist) { return (*this)[m_stack_size - 1 - dist]; }
		as_value&	bottom(int index) { return (*this)[index]; }
		inline int	get_top_index() const { return m_stack_size - 1; }
		inline int	size() const { return m_stack_size; }
		void resize(int new_size);
		void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr);

		// return object that contains the property
		as_object* find_property(const char* name);

		// get value of property
		bool get_property(const char* name, as_value* val);

	private:

		int m_stack_size;
	};

	#endif /* DH2 */

	// DH2: the environment of the DH2 binary, 0x6c bytes (ARM32 offsets in comments). The value stack is a plain
	// DH2: array (r1714 derives from vm_stack, which adds a logical stack size, and keeps an AVM2 scope stack
	// DH2: and a gc_ptr target). Constructor 0x75eb4c, destructor 0x75e03c.
	struct as_environment
	{
		::array<as_value>	m_stack;	// +0x00 value stack (r1714: the vm_stack base), 16 bytes
		as_value	m_global_register[GLOBAL_REGISTER_COUNT];	// +0x10, 4 * 12 bytes
		::array<as_value>	m_local_register;	// +0x40 function2 uses this
		#if 0 /* DH2: replaced by smart_ptr below (no gc_object base in the DH2 ref_counted) */
		gc_ptr<as_object>	m_target;
		#endif /* DH2 */
		smart_ptr<as_object>	m_target;	// +0x50

		// For local vars.  Use empty names to separate frames.
		struct frame_slot
		{
			tu_string	m_name;		// +0x00, 20 bytes
			as_value	m_value;	// +0x14, 12 bytes

			frame_slot() {}
			frame_slot(const tu_string& name, const as_value& val) : m_name(name), m_value(val) {}
		};	// 32 bytes
		::array<frame_slot>	m_local_frames;	// +0x54

		weak_ptr<player> m_player;	// +0x64 proxy, +0x68 pointer

		exported_module as_environment(player* player);	// DH2: 0x75eb4c
		exported_module ~as_environment();	// DH2: 0x75e03c

		bool	set_member(const tu_stringi& name, const as_value& val);	// DH2: 0x7cce6c
		bool	get_member(const tu_stringi& name, as_value* val);	// DH2: 0x7cce98

		// Stack access, over m_stack. In r1714 these are the vm_stack members.
		template<class T>
		void	push(T val) { m_stack.push_back(as_value(val)); }
		as_value	pop();	// DH2: 0x7997c4, returns the value (r1714: a reference into the stack)
		void	drop(int count) { m_stack.resize(m_stack.size() - count); }
		as_value&	top(int dist) { return m_stack[m_stack.size() - 1 - dist]; }
		as_value&	bottom(int index) { return m_stack[index]; }
		int	get_top_index() const { return m_stack.size() - 1; }
		int	size() const { return m_stack.size(); }
		void	resize(int new_size) { m_stack.resize(new_size); }

		int get_stack_size() const { return size(); }
		void set_stack_size(int n) { resize(n); }

		character*	get_target() const;	// DH2: 0x7ccec4
		void set_target(character* target);	// DH2: 0x7ccecc
		void set_target(as_value& target, character* original_target);	// DH2: 0x7cd934

		// DH2: the binary takes an optional out pointer as the third argument. When the name is found in the
		// DH2: with stack, *with_index is the index of the entry (get_variable_raw 0x7cdf2c, get_variable 0x7ce120).
		as_value	get_variable(const tu_string& varname, const ::array<with_stack_entry>& with_stack, int* with_index = NULL) const;
		// no path stuff:
		as_value	get_variable_raw(const tu_string& varname, const ::array<with_stack_entry>& with_stack, int* with_index = NULL) const;

		void	set_variable(const tu_string& path, const as_value& val, const ::array<with_stack_entry>& with_stack);	// DH2: 0x7cd7a8
		// no path stuff:
		void	set_variable_raw(const tu_string& path, const as_value& val, const ::array<with_stack_entry>& with_stack);	// DH2: 0x7cd508

		void	set_local(const tu_string& varname, const as_value& val);	// DH2: 0x7cd4bc
		void	add_local(const tu_string& varname, const as_value& val);	// DH2: 0x7cd3c4, when you know it doesn't exist.
		void	declare_local(const tu_string& varname);	// DH2: 0x7cd46c, Declare varname; undefined unless it already exists.

		// Parameter/local stack frame management.
		int	get_local_frame_top() const { return m_local_frames.size(); }
		void	set_local_frame_top(int t) { assert(t <= m_local_frames.size()); m_local_frames.resize(t); }
		void	add_frame_barrier();	// DH2: 0x7d2b94

		// Local registers.
		void	add_local_registers(int register_count)
		{
			// Flash 8 can have zero register (+1 for zero)
			m_local_register.resize(m_local_register.size() + register_count + 1);
		}
		void	drop_local_registers(int register_count)
		{
			// Flash 8 can have zero register (-1 for zero)
			m_local_register.resize(m_local_register.size() - register_count - 1);
		}

		as_value* get_register(int reg);
		void set_register(int reg, const as_value& val);

		// may be used in outside of class instance
		static bool	parse_path(const tu_string& var_path, tu_string* path, tu_string* var);	// DH2: 0x7cd130

		// Internal.
		int	find_local(const tu_string& varname, bool ignore_barrier) const;	// DH2: 0x7cd2c0
		character* load_file(const char* url, const as_value& target);	// DH2: 0x7cdaac, 2 arguments (r1714: a method flag)
		as_object*	find_target(const as_value& target) const;	// DH2: 0x7cd120
		as_object*	find_target(const char* path) const;	// DH2: 0x7cd110
		void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr);	// DH2: 0x7cced4
		player* get_player() const;	// DH2: 0x7bc1dc
		root* get_root() const;	// DH2: 0x7cda54

		private:

		as_value*	local_register_ptr(int reg);

	};


	// Parameters/environment for C functions callable from ActionScript.
	struct fn_call
	{
		as_value* result;
		as_object* this_ptr;
		const as_value& this_value;	// Number or String or Boolean value
		as_environment* env;
		int nargs;
		int first_arg_bottom_index;
		const char* name;	// DH2: +0x18, a debug label ("get", "set", "timer", "???", a member name); nothing reads it

		fn_call(as_value* res_in, const as_value& this_in, as_environment* env_in, int nargs_in, int first_in, const char* name_in = "???") :
			result(res_in),
			this_value(this_in),
			env(env_in),
			nargs(nargs_in),
			first_arg_bottom_index(first_in),
			name(name_in)	// DH2: the binary passes a label at every construction site; the default is for the r1714 call sites
		{
			this_ptr = this_in.to_object();
		}

		as_value& arg(int n) const
		// Access a particular argument.
		{
			assert(n < nargs);
			return env->bottom(first_arg_bottom_index - n);
		}

		exported_module player* get_player() const;
		exported_module root* get_root() const;
	};

}

// DH2: as_environment holds smart_ptr<as_object> members whose inline members need the complete type. In r1714 the
// DH2: tu_gc pointer deferred that to the end of the translation unit; this include (a cycle with gameswf_object.h,
// DH2: which includes this header first) makes the header usable on its own.
#include "gameswf/gameswf_object.h"

#endif
