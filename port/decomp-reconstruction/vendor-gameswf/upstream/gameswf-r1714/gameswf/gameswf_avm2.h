// gameswf_avm2.h	-- Vitaly Alexeev <tishka92@yahoo.com>	2008

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// AVM2 implementation


#ifndef GAMESWF_AVM2_H
#define GAMESWF_AVM2_H

#include "base/weak_ptr.h"
#include "gameswf/gameswf_function.h"
#include "gameswf/gameswf_jit.h"

namespace gameswf
{
	struct abc_def;

	struct option_detail
	{
		int m_value;
		Uint8 m_kind;
	};

	// DH2: 0x34 bytes (new traits_info(), 0x34, in the readers): ref_counted +0x00, m_name +0x0c, m_kind +0x10, m_attr +0x11,
	// DH2: the trait union +0x14 (16 bytes; the slot case has m_vkind at +0x20), m_metadata +0x24 (array<int>, 16 bytes with its
	// DH2: borrowed flag at +0x30). The same as r1714; the earlier V1 header modelled the array as 12 bytes.
	// DH2: vtable off_991240: the two destructor slots (D1 0x7b9c18, D0 0x7ba5e4); read() is 0x7b8384.
	struct traits_info : public ref_counted
	{
		enum kind
		{
			Trait_Slot = 0,
			Trait_Method = 1,
			Trait_Getter = 2,
			Trait_Setter = 3,
			Trait_Class = 4,
			Trait_Function = 5,
			Trait_Const = 6
		};

		enum attr
		{
			ATTR_Final = 0x1,
			ATTR_Override = 0x2,
			ATTR_Metadata = 0x4
		};

		int m_name;
		Uint8 m_kind;
		Uint8 m_attr;

		// data
		union
		{
			struct
			{
				int m_slot_id;
				int m_type_name;
				int m_vindex;
				Uint8 m_vkind;
			} trait_slot;

			struct
			{
				int m_slot_id;
				int m_classi;
			} trait_class;

			struct
			{
				int m_slot_id;
				int m_function;
			} trait_function;
			
			struct
			{
				int m_disp_id;
				int m_method;
			} trait_method;

		};


		array<int> m_metadata;

		void	read(stream* in, abc_def* abc);

		~traits_info();	// DH2: 0x7b9c18 (D1); the body is empty, the array member and ref_counted are destroyed after it
	};

	struct except_info : public ref_counted
	{
		int m_from;
		int m_to;
		int m_target;
		int m_exc_type;
		int m_var_name;

		void	read(stream* in, abc_def* abc);
	};

	struct as_3_function : public as_function
	{
		// Unique id of a gameswf resource
		enum { m_class_id = AS_3_FUNCTION };
		virtual bool is(int class_id) const
		{
			if (m_class_id == class_id) return true;
			else return as_function::is(class_id);
		}


		enum flags 
		{
			NEED_ARGUMENTS = 0x01,
			NEED_ACTIVATION = 0x02,
			NEED_REST = 0x04,
			HAS_OPTIONAL = 0x08,
			SET_DXNS = 0x40,
			HAS_PARAM_NAMES = 0x80
		};

		// DH2: 0xbc bytes (operator new(0xbc) in abc_def::read): as_function (0x3c) + m_target +0x3c (weak, proxy +0x3c, pointer
		// DH2: +0x40), m_abc +0x44, m_return_type +0x48, m_param_type +0x4c, m_name +0x5c, m_flags +0x60, m_options +0x64, m_method
		// DH2: +0x74, m_max_stack +0x78, m_local_count +0x7c, m_init_scope_depth +0x80, m_max_scope_depth +0x84, m_code +0x88 (membuf,
		// DH2: 16 bytes), m_exception +0x98, m_trait +0xa8, m_compiled_code +0xb8 (the empty jit_function, padded to 4 bytes).
		// DH2: Every array is 16 bytes with its borrowed flag. Vtable off_991318: +0x08 is(int) 0x7c28a4, the two destructors
		// DH2: (D1 0x7c3048, D0 0x7c31bc... see the ledger) and operator() +0x64 (0x7c4130).
		weak_ptr<as_object>	m_target;	// +0x3c, the constructor points it at the function itself
		#if 0 /* DH2: the binary holds the ABC definition strongly (the constructor add_refs it, the destructor drops it) */
		weak_ptr<abc_def> m_abc;
		#endif /* DH2 */
		smart_ptr<abc_def> m_abc;	// DH2: +0x44

		// method_info
		int m_return_type;
		array<int> m_param_type;
		int m_name;
		Uint8 m_flags;
		array<option_detail> m_options;
		int m_method;	// index in method_info

		// body_info
		int m_max_stack;

		// this is the index of the highest-numbered local register plus one.	
		int m_local_count;

		int m_init_scope_depth;
		int m_max_scope_depth;
		membuf m_code;
		array<gc_ptr<except_info> > m_exception;	// +0x98 (array<smart_ptr<except_info> > in the binary)
		array<gc_ptr<traits_info> > m_trait;	// +0xa8
		jit_function m_compiled_code;	// +0xb8, empty class: JIT is off in the DH2 build

		as_3_function(abc_def* abc, int method, player* player);
		~as_3_function();	// DH2: 0x7c3048 (D1), 0x7c31bc (D2, same body); D0 0x7c32e0 is compiler-generated

		// Dispatch.
		virtual void	operator()(const fn_call& fn);

		#if 0 /* DH2: replaced by the four-argument form below (0x7c35fc); the binary has no compile(), compile_stack_resize() or get_multiname(int, vm_stack&) */
		void	execute(array<as_value>& lregister, as_environment* env, as_value* result);
		void	compile();

		void	compile_stack_resize(int count);
		#endif /* DH2 */
		void	execute(array<as_value>& lregister, array<as_value>& stack, array<as_value>& scope, as_value* result);	// DH2: 0x7c35fc
		void	read(stream* in);	// DH2: 0x7c2e50
		void	read_body(stream* in);	// DH2: 0x7c2c60

		#if 0 /* DH2: not in the binary */
		tu_string get_multiname(int index, vm_stack & stack) const;
		#endif /* DH2 */

	};

}

#endif
