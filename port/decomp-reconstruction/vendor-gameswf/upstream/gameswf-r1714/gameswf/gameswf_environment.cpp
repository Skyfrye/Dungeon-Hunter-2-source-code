// gameswf_value.cpp	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

#include "base/tu_file.h"
#include "gameswf/gameswf.h"
#include "gameswf/gameswf_value.h"
#include "gameswf/gameswf_character.h"
#include "gameswf/gameswf_sprite.h"
#include "gameswf/gameswf_log.h"
#include "gameswf/gameswf_function.h"
#include "gameswf/gameswf_render.h"
#include "gameswf/gameswf_as_classes/as_loadvars.h"

#if TU_CONFIG_LINK_TO_LIB3DS == 1
	#include "extensions/lib3ds/gameswf_3ds_inst.h"
#endif
#include "vendor-gameswf/gameswf_dh2_runtime.hpp"	// DH2: s_texture_loader_callback
#include "vendor-gameswf/player_context.hpp"	// DH2: player::m_context, the video driver
#include "glitch-video/video_driver.hpp"	// DH2: the driver and its texture manager (load_file)
#include "glitch-video/texture_manager.hpp"

namespace gameswf
{
	// misc
	// DH2: the binary's file types (get_file_type 0x7cd620): .swf is 1, .jpg is 2, .3ds is 3 and everything else (a texture file
	// DH2: such as a png) is 0. There is no URL type and no text type (r1714 had TXT and URL).
	enum file_type
	{
		UNKNOWN,
		SWF,
		JPG,
		X3DS
	};

	// static
	file_type get_file_type(const char* url)
	{
		tu_string fn = url;
		if (fn.size() < 5)	// At least 5 symbols
		{
			return UNKNOWN;
		}

		tu_string fn_ext = fn.utf8_substring(fn.size() - 4, fn.size());
		if (tu_string::stricmp(fn_ext.c_str(), ".swf") == 0)
		{
			return SWF;
		}
		if (tu_string::stricmp(fn_ext.c_str(), ".jpg") == 0)
		{
			return JPG;
		}
		if (tu_string::stricmp(fn_ext.c_str(), ".3ds") == 0)
		{
			return X3DS;
		}
		return UNKNOWN;
	}

	// static
	tu_string get_full_url(const tu_string& workdir, const char* url)
	{
		 tu_string fn;

		// is path relative ?
		if (url[1] == ':' || url[0] == '/')
		{
			// path like c:\my.swf or /home/my.swf is absolute (DH2: 0x7cd230, no "http://" test)
			fn = "";
		}
		else
		{
			fn = workdir;
		}
		fn += url;

		return fn;
	}

	// static
	const char*	next_slash_or_dot(const char* word)
	// Search for next '.' or '/' character in this word.  Return
	// a pointer to it, or to NULL if it wasn't found.
	{
		for (const char* p = word; *p; p++)
		{
			if (*p == '.' && p[1] == '.')
			{
				p++;
			}
			else if (*p == '.' || *p == '/')
			{
				return p;
			}
		}

		return NULL;
	}

	#if 0 /* DH2: vm_stack is not part of the DH2 environment (the environment holds a plain array<as_value>); the AVM2 scope stack is not in the binary */
	void vm_stack::resize(int new_size)
	{
		assert(new_size <= ::array<as_value>::size());

		if (new_size < m_stack_size)
		{
			drop(m_stack_size - new_size);
		}
		m_stack_size = new_size; 
	}

	as_value&	vm_stack::pop()
	{
		if (m_stack_size > 0)
		{
			m_stack_size--;
			return (*this)[m_stack_size];
		}

		// empty stack
		static as_value undefined;
		return undefined; 
	}

	void	vm_stack::drop(int count)
	{
		m_stack_size -= count;
		if (m_stack_size < 0)
		{
			m_stack_size = 0;
		}

		// clear refs to avoid memory leaks
		for (int i = m_stack_size, n = ::array<as_value>::size(); i < n; i++)
		{
			(*this)[i].set_undefined();
			if (--count == 0)
			{
				break;
			}
		}
	}

	void vm_stack::clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr)
	{
		for (int i = 0; i < ::array<as_value>::size(); i++)
		{
			as_object* obj = (*this)[i].to_object();
			if (obj)
			{
				if (obj == this_ptr)
				{
					(*this)[i].set_undefined();
				}
				else
				{
					obj->clear_refs(visited_objects, this_ptr);
				}
			}
		}
	}

	as_object* vm_stack::find_property(const char* name)
	{
		for (int i = size() - 1; i >= 0; i--)
		{
			as_value val;
			if ((*this)[i].find_property_owner(name, &val))
			{
				return val.to_object();
			}
		}
		return NULL;
	}

	bool vm_stack::get_property(const char* name, as_value* val)
	{
		for (int i = size() - 1; i >= 0; i--)
		{
			if ((*this)[i].find_property(name, val))
			{
				return true;
			}
		}
		return false;
	}

	as_environment::as_environment(player* player) :
		m_player(player)
	{
		if (player->get_root()->is_avm2())
		{
			// push '_global' into scope
			m_scope.push(player->get_global());

			// get flash package
	//		as_value val;
	//		get_global()->get_member("flash", &val);
	//		as_object* flash = val.to_object();
	//		assert(flash);

			// push 'Events'  into scope
	//		flash->get_member("Events", &val);
	//		scope.push(val);
		}

	}

	as_environment::~as_environment()
	{
	}

	#endif /* DH2 */

	// DH2: 0x75eb4c. Every member starts empty (the value stack, the four global registers, the local registers, no target, no
	// DH2: frames) and the player is held weakly. r1714 pushed _global onto an AVM2 scope stack for AVM2 movies; there is none here.
	as_environment::as_environment(player* player) :
		m_player(player)
	{
	}

	// DH2: 0x75e03c. The members release themselves in reverse order, as the binary does: the weak player, the frames (each slot's
	// DH2: value and name), the target, the local registers, the global registers and the stack.
	as_environment::~as_environment()
	{
	}

	// Implementation of:
	//
	// loadVariables(url:String, target:Object, [method:String]) : Void
	// loadMovie(url:String, target:Object, [method:String]) : Void
	// loadMovie(url:String, target:String, [method:String]) : Void
	// unloadMovie(target:MovieClip) : Void
	// unloadMovie(target:String) : Void
	//
	// url=="" means that the load_file() works as unloadMovie(target)
	// TODO: implement [method]
	// DH2: 0x7cdaac, two arguments (r1714 had a send-method argument and loaded text files, URLs and jpg files; the binary
	// DH2: loads swf files into the target, reports jpg and 3ds files as unsupported and takes any other file for a texture).
	character* as_environment::load_file(const char* url, const as_value& target_value)
	{
		character* target = cast_to<character>(find_target(target_value));
		if (target == NULL)
		{
			return NULL;
		}

		// is unloadMovie() ?
		if (url[0] == 0)
		{
			character* parent = target->get_parent();
			if (parent)
			{
				parent->remove_display_object(target);
			}
			else	// target is _root, unloadMovie(_root)
			{
				target->clear_display_objects();
			}
			return NULL;
		}

		// is path relative ?
		tu_string file_name = get_full_url(get_player()->get_workdir(), url);
		switch (get_file_type(file_name.c_str()))
		{
			case JPG:
				log_error("gameswf is not linked to jpeglib -- can't load jpeg image data!\n");
				return NULL;

			case X3DS:
				log_error("gameswf is not linked to lib3ds -- can't load 3DS file\n");
				return NULL;

			case SWF:
			{
				movie_definition*	md = get_player()->create_movie(file_name.c_str());
				if (md)
				{
					return target->replace_me(md);
				}
				return NULL;
			}

			default:
				break;
		}

		// Any other file is a texture. The loader callback of the game gets the first try (name, 0, 0); without one, or when it gives
		// nothing, the video driver's texture manager loads it. The texture becomes a bitmap character that takes the place of the
		// target in its parent (the target must have a parent: _root cannot be replaced).
		character* parent = target->get_parent();
		if (parent == NULL)
		{
			log_error("character can't replace _root\n");
			return NULL;
		}
		glitch::video::ITexture* texture = NULL;
		if (s_texture_loader_callback)
		{
			texture = s_texture_loader_callback(file_name.c_str(), 0, 0);
		}
		if (texture == NULL)
		{
			boost::intrusive_ptr<glitch::video::ITexture> loaded =
				get_player()->m_context->m_video_driver->m_textureManager->getTexture(file_name.c_str(), static_cast<const char*>(NULL));
			if (!loaded)
			{
				return NULL;
			}
			texture = loaded.get();	// the manager keeps the texture; the local reference is dropped as in the binary
		}
		bitmap_info* bi = s_render_handler->create_bitmap_info_texture(texture);
		bitmap_character* bitmap = new (swf::MEM_UNRECOVERED) bitmap_character(get_player(), bi, NULL);
		character* replacement = get_player()->create_generic_character(bitmap, parent, 0);
		replacement->m_parent = parent;
		parent->replace_display_object(replacement, target->get_name().c_str(), target->get_depth(), NULL, NULL, NULL,
			target->get_ratio(), target->get_clip_depth());
		return replacement;
	}


	as_value	as_environment::get_variable(const tu_string& varname, const ::array<with_stack_entry>& with_stack, int* with_index) const
	// Return the value of the given var, if it's defined. DH2: 0x7ce120, the with index of a plain name is reported through with_index.
	{
		// Path lookup rigamarole.
		tu_string	path;
		tu_string	var;
		if (parse_path(varname, &path, &var))
		{
			// @@ Use with_stack here too???  Need to test.
			as_object*	target = find_target(path.c_str());
			if (target == NULL)
			{
				target = get_player()->get_global()->find_target(path.c_str());
			}
			as_value	val;
			if (target)
			{
				target->get_member(var, &val);
			}
			return val;
		}
		return get_variable_raw(varname, with_stack, with_index);
	}


	as_value	as_environment::get_variable_raw(
		const tu_string& varname,
		const ::array<with_stack_entry>& with_stack,
		int* with_index) const
	// varname must be a plain variable name; no path parsing. DH2: 0x7cdf2c. The search order is the with-stack (last entry first,
	// DH2: its index goes to *with_index), the locals, the members of the target, then this / _root / _level0 / _global / _stage,
	// DH2: and any other name is looked up in _global.
	{
		as_value	val;

		// First check the with-stack.
		for (int i = with_stack.size() - 1; i >= 0; i--)
		{
			as_object*	obj = with_stack[i].m_object.get_ptr();
			if (obj && obj->get_member(varname, &val))
			{
				// Found the var in this context.
				if (with_index)
				{
					*with_index = i;
				}
				return val;
			}
		}

		// Then check locals.
		int	local_index = find_local(varname, true);
		if (local_index >= 0)
		{
			return m_local_frames[local_index].m_value;
		}

		// Check movie members.
		if (m_target != NULL && m_target->get_member(varname, &val))
		{
			return val;
		}

		// Check this, _root, _level0, _global, _stage
		as_standard_member	varname_id = get_standard_member(varname);
		switch (varname_id)
		{
			case MTHIS:
				val.set_as_object(get_target());
				break;

			case M_ROOT:
			case M_LEVEL0:
				val.set_as_object(get_root()->get_root_movie());
				break;

			case M_GLOBAL:
				val.set_as_object(get_player()->get_global());
				break;

			case M_STAGE:
				val.set_as_object(get_player()->get_stage());
				break;

			default:
				// check _global.member
				get_player()->get_global()->get_member(varname, &val);
				break;
		}
		return val;
	}


	character*	as_environment::get_target() const
	{
		return cast_to<character>(m_target.get_ptr());
	}

	void as_environment::set_target(character* target)
	{
		m_target = target;
	}

	void as_environment::set_target(as_value& target, character* original_target)
	{
		if (target.is_string())
		{
			tu_string path = target.to_tu_string();
			IF_VERBOSE_ACTION(log_msg("-------------- ActionSetTarget2: %s", path.c_str()));
			if (path.size() > 0)
			{
				character* tar = cast_to<character>(find_target(path.c_str()));
				if (tar)
				{
					set_target(tar);
					return;
				}
			}
			else
			{
				set_target(original_target);
				return;
			}
		}
		else
		if (target.is_object())
		{
			IF_VERBOSE_ACTION(log_msg("-------------- ActionSetTarget2: %s", target.to_string()));
			character* tar = cast_to<character>(find_target(target));
			if (tar)
			{
				set_target(tar);
				return;
			}
		}
		IF_VERBOSE_ACTION(log_msg("can't set target %s\n", target.to_string()));
	}

	void	as_environment::set_variable(
		const tu_string& varname,
		const as_value& val,
		const ::array<with_stack_entry>& with_stack)
	// Given a path to variable, set its value.
	{
		IF_VERBOSE_ACTION(log_msg("-------------- %s = %s\n", varname.c_str(), val.to_string()));//xxxxxxxxxx

		// Path lookup rigamarole.
		character*	target = get_target();
		tu_string	path;
		tu_string	var;
		if (parse_path(varname, &path, &var))
		{
			target = cast_to<character>(find_target(path.c_str()));
			if (target)
			{
				target->set_member(var, val);
			}
		}
		else
		{
			set_variable_raw(varname, val, with_stack);
		}
	}


	void	as_environment::set_variable_raw(
		const tu_string& varname,
		const as_value& val,
		const ::array<with_stack_entry>& with_stack)
	// No path rigamarole.
	{
		// Check the with-stack.
		for (int i = with_stack.size() - 1; i >= 0; i--)
		{
			as_object*	obj = with_stack[i].m_object.get_ptr();
			as_value unused;
			if (obj && obj->get_member(varname, &unused))
			{
				// This object has the member; so set it here.
				obj->set_member(varname, val);
				return;
			}
		}

		// Check locals.
		int	local_index = find_local(varname, true);
		if (local_index >= 0)
		{
			// Set local var.
			m_local_frames[local_index].m_value = val;
			return;
		}

		if (m_target != NULL)
		{
			m_target->set_member(varname, val);
		}
		else
		{
			// assume local var
			// This case happens for example so
			// class myclass
			// {
			//		function myfunc()
			//		{
			//			for (i=0;...)		should be for (var i=0; ...)
			//			{
			//			}
			//		}
			//	}
			add_local(varname, val);
			IF_VERBOSE_ACTION(log_error("can't set_variable_raw %s=%s, target is NULL, it's assumed as local\n",
				varname.c_str(), val.to_string()));
			IF_VERBOSE_ACTION(log_error("probably you forgot to declare variable '%s'\n", varname.c_str()));

		}
	}


	void	as_environment::set_local(const tu_string& varname, const as_value& val)
	// Set/initialize the value of the local variable.
	{
		// Is it in the current frame already?
		int	index = find_local(varname, false);
		if (index < 0)
		{
			// Not in frame; create a new local var.
			add_local(varname, val);
		}
		else
		{
			// In frame already; modify existing var.
			m_local_frames[index].m_value = val;
		}
	}

	
	void	as_environment::add_local(const tu_string& varname, const as_value& val)
	// Add a local var with the given name and value to our
	// current local frame.  Use this when you know the var
	// doesn't exist yet, since it's faster than set_local();
	// e.g. when setting up args for a function.
	{
		assert(varname.length() > 0);
		m_local_frames.push_back(frame_slot(varname, val));
	}


	void	as_environment::declare_local(const tu_string& varname)
	// Create the specified local var if it doesn't exist already.
	{
		// Is it in the current frame already?
		int	index = find_local(varname, false);
		if (index < 0)
		{
			// Not in frame; create a new local var.
			add_local(varname, as_value());
		}
		else
		{
			// In frame already; don't mess with it.
		}
	}

	// DH2: 0x7d2b94. A frame barrier is a slot with an empty name and an undefined value; find_local stops at it.
	void as_environment::add_frame_barrier()
	{
		m_local_frames.push_back(frame_slot());
	}

	as_value* as_environment::get_register(int reg)
	{
		as_value* val = local_register_ptr(reg);
		IF_VERBOSE_ACTION(log_msg("-------------- get_register(%d): %s at %p\n", 
			reg, val->to_string(), val->to_object()));
		return val;
	}

	void as_environment::set_register(int reg, const as_value& val)
	{
		IF_VERBOSE_ACTION(log_msg("-------------- set_register(%d): %s at %p\n",
			reg, val.to_string(), val.to_object()));
		*local_register_ptr(reg) = val;
	}

	as_value*	as_environment::local_register_ptr(int reg)
	// Return a pointer to the specified local register.
	// Local registers are numbered starting with 1.
	//
	// Return value will never be NULL.  If reg is out of bounds,
	// we log an error, but still return a valid pointer (to
	// global reg[0]).  So the behavior is a bit undefined, but
	// not dangerous.
	{
		// We index the registers from the end of the register
		// array, so we don't have to keep base/frame
		// pointers.

		assert(reg >=0 && reg <= m_local_register.size());

		// Flash 8 can have zero register (-1 for zero)
		return &m_local_register[m_local_register.size() - reg - 1];
	}


	int	as_environment::find_local(const tu_string& varname, bool ignore_barrier) const
	// Search the active frame for the named var; return its index
	// in the m_local_frames stack if found.
	// 
	// Otherwise return -1.
	// set_local should use "ignore_barrier=false"
	// get_variable should use "ignore_barrier=true"
	{
		// Linear search sucks, but is probably fine for
		// typical use of local vars in script.  There could
		// be pathological breakdowns if a function has tons
		// of locals though.  The ActionScript bytecode does
		// not help us much by using strings to index locals.

		for (int i = m_local_frames.size() - 1; i >= 0; i--)
		{
			const frame_slot&	slot = m_local_frames[i];
			if (slot.m_name.length() == 0 && ignore_barrier == false)
			{
				// End of local frame; stop looking.
				return -1;
			}
			else
			if (slot.m_name == varname)
			{
				// Found it.
				return i;
			}
		}
		return -1;
	}


	// Should be highly optimized !!!
	bool	as_environment::parse_path(const tu_string& var_path, tu_string* path, tu_string* var)
	// See if the given variable name is actually a sprite path
	// followed by a variable name.  These come in the format:
	//
	// 	/path/to/some/sprite/:varname
	//
	// (or same thing, without the last '/')
	//
	// or
	//	path.to.some.var
	//
	// If that's the format, puts the path part (no colon or
	// trailing slash) in *path, and the varname part (no color)
	// in *var and returns true.
	//
	// If no colon, returns false and leaves *path & *var alone.
	{
		// Search for colon.
		const char* colon = strrchr(var_path.c_str(), ':');
		if (colon)
		{
			// Make the subparts.
			*var = colon + 1;

			// delete prev '/' if it is not first character
			if (colon > var_path.c_str() + 1 && *(colon - 1) == '/')
			{
				colon--;
			}
			*path = var_path;
			path->resize(int(colon - var_path.c_str()));
			return true;
		}
		else
		{
			// Is there a dot?  Find the last one, if any.
			colon = strrchr(var_path.c_str(), '.');
			if (colon)
			{
				// Make the subparts.
				*var = colon + 1;
				*path = var_path;
				path->resize(int(colon - var_path.c_str()));
				return true;
			}
		}
		return false;
	}

	// DH2: 0x7cd120. The binary has no fallback to the argument: without a target the result is null.
	as_object*	as_environment::find_target(const as_value& target) const
	{
		if (m_target != NULL)
		{
			return m_target->find_target(target);
		}
		return NULL;
	}

	// DH2: 0x7cd110.
	as_object*	as_environment::find_target(const char* path) const
	{
		if (m_target != NULL)
		{
			return m_target->find_target(path);
		}
		return NULL;
	}

	bool	as_environment::set_member(const tu_stringi& name, const as_value& val)
	{
		if (m_target != NULL)
		{
			return m_target->set_member(name, val);
		}
		return false;
	}

	bool	as_environment::get_member(const tu_stringi& name, as_value* val)
	{
		if (m_target != NULL)
		{
			return m_target->get_member(name, val);
		}
		return false;
	}

	// DH2: 0x7cced4. The order is the target, the local frames, the value stack, the global registers, the local registers.
	void as_environment::clear_refs(hash<as_object*, bool>* visited_objects, as_object* this_ptr)
	{
		// target
		if (m_target.get_ptr() == this_ptr)
		{
			m_target = NULL;
		}

		// local vars
		for (int i = 0, n = m_local_frames.size(); i < n; i++)
		{
			as_object* obj = m_local_frames[i].m_value.to_object();
			if (obj)
			{
				if (obj == this_ptr)
				{
					m_local_frames[i].m_value.set_undefined();
				}
				else
				{
					obj->clear_refs(visited_objects, this_ptr);
				}
			}
		}

		// clear refs to 'this_ptr' from stack
		for (int i = 0, n = m_stack.size(); i < n; i++)
		{
			as_object* obj = m_stack[i].to_object();
			if (obj)
			{
				if (obj == this_ptr)
				{
					m_stack[i].set_undefined();
				}
				else
				{
					obj->clear_refs(visited_objects, this_ptr);
				}
			}
		}

		// global register
		for (int i = 0, n = GLOBAL_REGISTER_COUNT; i < n; i++)
		{
			as_object* obj = m_global_register[i].to_object();
			if (obj)
			{
				if (obj == this_ptr)
				{
					m_global_register[i].set_undefined();
				}
				else
				{
					obj->clear_refs(visited_objects, this_ptr);
				}
			}
		}

		// local register
		for (int i = 0, n = m_local_register.size(); i < n; i++)
		{
			as_object* obj = m_local_register[i].to_object();
			if (obj)
			{
				if (obj == this_ptr)
				{
					m_local_register[i].set_undefined();
				}
				else
				{
					obj->clear_refs(visited_objects, this_ptr);
				}
			}
		}
	}

	#if 0 /* DH2: defined by vendor-gameswf/src/v1-vendor-gameswf-pack3-a95b99-0.cpp (0x7bc1dc) */
	player* as_environment::get_player() const
	{
		return m_player.get_ptr();
	}
	#endif /* DH2 */

	root* as_environment::get_root() const
	{
		return m_player->get_root();
	}

	//  fn_call 

	player* fn_call::get_player() const
	{
		assert(env);
		return env->get_player();
	}

	root* fn_call::get_root() const
	{
		assert(env);
		return env->get_player()->get_root();
	}

}
