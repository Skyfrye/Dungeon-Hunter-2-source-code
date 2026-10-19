// gameswf_function.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// ActionScript function.

#ifndef GAMESWF_FUNCTION_H
#define GAMESWF_FUNCTION_H

#include "gameswf/gameswf.h"
#include "gameswf/gameswf_environment.h"
#include "gameswf/gameswf_object.h"
#include "gameswf/gameswf_action.h"

#include "base/container.h"
#include "base/weak_ptr.h"

namespace gameswf
{
	struct as_environment;
	struct as_object;

	struct as_function : public as_object
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_FUNCTION };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_object::is(class_id);
		}

		// DH2: binary +0x38, the object behind the "prototype" name. The destructor releases it after the vptr is
		// DH2: reset to the as_function vtable.
		smart_ptr<as_object> m_prototype;

		as_function(player* player) :	
			as_object(player)
		{
		}
		virtual ~as_function();	// DH2: 0x7c2fc4 (D1), 0x7c316c (D0 is compiler-generated); the empty body releases m_prototype

		#if 0 /* DH2: the binary names this virtual _typeof (+0x18) */
		virtual const char*	type_of() { return "function"; }
		#endif /* DH2 */
		virtual const char*	_typeof();	// DH2: 0x7c2894, returns "function"
		virtual const char*	to_string()	// DH2: 0x7c2a58
		{
			// NOT THREAD SAFE!!!
			static char buffer[50];
			snprintf(buffer, 50, "<function 0x%p>", this);
			return buffer; 
		}
		virtual void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr);	// DH2: 0x7c28c8
		virtual bool get_member(const tu_stringi& name, as_value* val);	// DH2: 0x7c2990
		virtual bool set_member(const tu_stringi& name, const as_value& val);	// DH2: 0x7c29f0
		using as_object::get_member;	// DH2: keeps the integer-id overloads visible
		using as_object::set_member;
		virtual void this_alive();	// DH2: 0x7c40a4

		// Dispatch.
		virtual void	operator()(const fn_call& fn) = 0;	// DH2: +0x64

	};
		
	// DH2: 0x40 bytes: as_function (0x3c, m_prototype +0x38) + m_func +0x3c. The constructor (0x7d28b4 C1, 0x7d291c C2) stores the function
	// DH2: and a new as_object as the prototype; the destructor (D1 0x7d2c44, D0 0x7d2984) has only the inlined as_function release.
	// DH2: Vtable off_991698 (the slots of as_function, then operator() +0x64 = 0x7d281c). Bodies: pack21-d2e85b-0.cpp and below.
	struct as_c_function : public as_function
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_C_FUNCTION };
		virtual bool is(int class_id) const	// DH2: 0x7d27d4
		{
			if (m_class_id == class_id) return true;
			else return as_function::is(class_id);
		}

		as_c_function(player* player, as_c_function_ptr func);	// DH2: 0x7d28b4
		~as_c_function();	// DH2: 0x7d2c44; the empty body releases nothing itself, ~as_function drops the prototype

		// Dispatch.
		virtual void	operator()(const fn_call& fn);	// DH2: 0x7d281c, calls m_func when set

		as_c_function_ptr m_func;	// +0x3c
	};

	// DH2: 0x7c bytes (operator new(0x7c) in action_buffer::execute for DefineFunction). as_function (0x3c) + m_action_buffer +0x3c
	// DH2: (12 bytes), m_with_stack +0x48 (array, 16 bytes), m_start_pc +0x58, m_length +0x5c, m_args +0x60 (array of arg_spec,
	// DH2: 16 bytes), m_is_function2 +0x70, m_local_register_count +0x71,
	// DH2: m_function2_flags +0x72, m_target +0x74 (weak, proxy +0x74, pointer +0x78). The same members in the same order as r1714;
	// DH2: the binary's constructor registers no "call" method per instance (get_member asks the builtin table 5 instead).
	// DH2: Vtable off_991628: is +0x08 (0x7d27f8), get_member +0x20 (0x7d2878), operator() +0x64 (0x7d2fe8).
	struct as_s_function : public as_function
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_S_FUNCTION };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_function::is(class_id);
		}

		action_buffer	m_action_buffer;

		array<with_stack_entry>	m_with_stack;	// initial with-stack on function entry.
		int	m_start_pc;
		int	m_length;
		struct arg_spec
		{
			int	m_register;
			tu_string	m_name;
		};
		array<arg_spec>	m_args;
		bool	m_is_function2;
		uint8	m_local_register_count;
		uint16	m_function2_flags;	// used by function2 to control implicit arg register assignments

		// if function has been declared in moviclip then we should use its environment
		// And for this purpose it is necessary to keep target that has created 'this'
		// testcase:
		// _root.myclip.onEnterFrame = _root.myfunc;
		// myfunc should use _root environment
		weak_ptr<as_object>	m_target;

		as_s_function(player* player,
			const action_buffer* ab, int start, const array<with_stack_entry>& with_stack);	// DH2: 0x7d2e38 (C1), 0x7d2f10 (C2); body in pack21-d2e85b-0.cpp
		~as_s_function();	// DH2: 0x7d2c8c (D1), 0x7d2d70 (D2); D0 0x7d2d54. Body in pack21-d2e85b-0.cpp
		// DH2: 0x7d2878 get_member(name, val) tries the builtin table (id 5) before the inherited lookup. Body in
		// vendor-gameswf/src/v1-vendor-gameswf-pack21-d2e85b-0.cpp.
		bool get_member(const tu_stringi& name, as_value* val) override;
		using as_function::get_member;  // DH2: keeps the inherited overloads (get_member(int, ...)) visible

		void	set_is_function2() { m_is_function2 = true; }
		void	set_local_register_count(uint8 ct) { assert(m_is_function2); m_local_register_count = ct; }
		void	set_function2_flags(uint16 flags) { assert(m_is_function2); m_function2_flags = flags; }

		void	add_arg(int arg_register, const char* name)
		{
			assert(arg_register == 0 || m_is_function2 == true);
			m_args.resize(m_args.size() + 1);
			m_args.back().m_register = arg_register;
			m_args.back().m_name = name;
		}

		void	set_length(int len) { assert(len >= 0); m_length = len; }
		void set_target(as_object* target)
		{
			m_target = target;
		}

		// Dispatch.
		virtual void	operator()(const fn_call& fn);	// DH2: 0x7d2fe8 (gameswf_function.cpp)

	};

}

#endif
