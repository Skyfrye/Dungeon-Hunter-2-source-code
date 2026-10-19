// gameswf_object.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// A generic bag of attributes.	 Base-class for ActionScript
// script-defined objects.

#ifndef GAMESWF_OBJECT_H
#define GAMESWF_OBJECT_H

#include "gameswf/gameswf_value.h"
#include "gameswf/gameswf_environment.h"
#include "gameswf/gameswf_types.h"
#include "gameswf/gameswf_player.h"
#include "base/container.h"
#include "base/weak_ptr.h"
#include "base/tu_loadlib.h"

namespace gameswf
{
	exported_module void	as_object_addproperty(const fn_call& fn);
	exported_module void	as_object_registerclass( const fn_call& fn );
	exported_module void	as_object_hasownproperty(const fn_call& fn);
	exported_module void	as_object_watch(const fn_call& fn);
	exported_module void	as_object_unwatch(const fn_call& fn);
	exported_module void	as_object_dump(const fn_call& fn);
	exported_module void	as_global_object_ctor(const fn_call& fn);

	// flash9
	exported_module void	as_object_add_event_listener(const fn_call& fn);

	struct instance_info;

	// DH2: layout of the DH2 binary (ARM32 offsets in comments), 0x38 bytes. Settled from the constructor
	// DH2: 0x76b820, the destructor 0x769a9c and this_alive 0x76c518; vtable 108 bytes (27 slots), declared below
	// DH2: in slot order. The AVM2 members of r1714 (m_instance, find_property, alive, set_instance) are not in
	// DH2: the binary and are under #if 0.
	struct as_object : public as_object_interface
	{
		// Unique id of a gameswf resource
		enum	{ m_class_id = AS_OBJECT };
		exported_module virtual bool is(int class_id) const	// DH2: +0x08, 0x768b44
		{
			return m_class_id == class_id;
		}

		// +0x00 vptr, +0x04 m_ref_count, +0x08 m_weak_proxy (ref_counted)
		stringi_hash<as_value>	m_members;	// +0x0c, one table pointer

		// DH2: the constructor function of the object (as_value, 12 bytes). set_ctor (0x768d08) assigns it,
		// DH2: get_ctor (0x768d10) copies it when it is a function. r1714 keeps it in m_members as
		// DH2: "__constructor__"; the binary has a field.
		as_value m_ctor;	// +0x10, name from set_ctor/get_ctor

		// It is used to register an event handler to be invoked when
		// a specified property of object changes.
		// TODO: create container based on stringi_hash<as_value>
		// watch should be coomon
		struct as_watch
		{
			as_watch() :	m_func(NULL)
			{
			}

			as_function* m_func;
			as_value m_user_data;
		};

		// primitive data type has no dynamic members
		stringi_hash<as_watch>*	m_watch;	// +0x1c

		// it's used for passing new created object pointer to constructors chain
		weak_ptr<as_object> m_this_ptr;	// +0x20 proxy, +0x24 pointer

		// We can place reference to __proto__ into members but it's used very often
		// so for optimization we place it into instance
		#if 0 /* DH2: replaced by smart_ptr below (the DH2 ref_counted has no gc_object base) */
		gc_ptr<as_object> m_proto;	// for optimization
		#endif /* DH2 */
		smart_ptr<as_object> m_proto;	// DH2: +0x28, set_ref in create_proto 0x76b8b0, drop_ref in the destructors

		// pointer to owner
		weak_ptr<player> m_player;	// +0x2c proxy, +0x30 pointer

		#if 0 /* DH2: the binary has no AVM2 instance link; +0x34 is the alive stamp below */
		weak_ptr<instance_info> m_instance;
		#endif /* DH2 */
		int m_alive_stamp;	// DH2: +0x34, the value of player::m_garbage_count at the last this_alive() visit

		exported_module as_object(player* player);
		exported_module virtual ~as_object();	// DH2: +0x00 (D1) and +0x04 (D0)
		
		exported_module virtual const char*	to_string() { return "[object Object]"; }	// DH2: +0x0c, 0x752bf4
		exported_module virtual double	to_number();	// DH2: +0x10, 0x768e98
		exported_module virtual bool to_bool() { return true; }	// DH2: +0x14, 0x752c04
		#if 0 /* DH2: the binary names this virtual _typeof (+0x18) */
		exported_module virtual const char*	type_of() { return "object"; }
		#endif /* DH2 */
		exported_module virtual const char*	_typeof();	// DH2: +0x18, 0x752c0c

		exported_module void	builtin_member(const tu_stringi& name, const as_value& val); 
		exported_module void	call_watcher(const tu_stringi& name, const as_value& old_val, as_value* new_val);
		exported_module virtual bool	set_member(const tu_stringi& name, const as_value& val);	// DH2: +0x1c, 0x76c1e0
		exported_module virtual bool	get_member(const tu_stringi& name, as_value* val);	// DH2: +0x20, 0x769154
		exported_module virtual int	set_member(int id, const as_value& val);	// DH2: +0x24, 0x768b78, returns 0
		exported_module virtual int	get_member(int id, as_value* val);	// DH2: +0x28, 0x768b80, returns 0
		exported_module virtual bool	on_event(const event_id& id);	// DH2: +0x2c, 0x76b694
		exported_module virtual	void enumerate(as_environment* env);	// DH2: +0x30, 0x76aca0
		exported_module virtual as_object* get_proto() const;	// DH2: +0x34, 0x768b70
		exported_module virtual bool watch(const tu_string& name, as_function* callback, const as_value& user_data);	// DH2: +0x38, 0x76c0f4
		exported_module virtual bool unwatch(const tu_string& name);	// DH2: +0x3c, 0x76bf8c
		exported_module virtual void clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr);	// DH2: +0x40, 0x769db0
		exported_module virtual void this_alive();	// DH2: +0x44, 0x76c518
		exported_module virtual void copy_to(as_object* target);	// DH2: +0x48, 0x76aea0
		exported_module virtual void dump(tu_string& tabs);	// DH2: +0x4c, 0x76a8a8
		exported_module virtual void dump();	// DH2: +0x50, 0x769c60
		exported_module virtual root* get_root() const;	// DH2: +0x54, 0x76b4ac
		exported_module	virtual as_environment*	get_environment() { return 0; }	// DH2: +0x58, 0x752c1c
		exported_module virtual void advance(float delta_time);	// DH2: +0x5c, 0x768b50, empty in the binary
		exported_module virtual void notify_set_member(const tu_stringi& name, const as_value& val);	// DH2: +0x60, 0x752c24, empty

		#if 0 /* DH2: not in the binary (AVM2) */
		exported_module virtual bool	find_property( const tu_stringi & name, as_value * val );
		exported_module virtual void alive() {}
		#endif /* DH2 */
		exported_module as_object* find_target(const as_value& target);	// DH2: 0x76b45c
		exported_module as_object* find_target(const char* path);	// DH2: binary overload 0x76b284 (defined by its own batch)

		player* get_player() const { return m_player.get_ptr(); }
		bool	is_instance_of(const as_function* constructor) const;
		as_object* get_global() const;

		// get/set constructor of object
		bool get_ctor(as_value* val) const;	// DH2: 0x768d10, copies m_ctor when it is a function
		void set_ctor(const as_value& val);	// DH2: 0x768d08, assigns m_ctor
		#if 0 /* DH2: not in the binary (AVM2) */
		void set_instance(instance_info * info);
		#endif /* DH2 */

		as_object* create_proto(const as_value& constructor);

	};

}

#endif
