// batch v1-vendor-gameswf-gameswf_player-e0b31b-0  category=vendor-gameswf  owner=gameswf::player
//
// Gameloft functions of gameswf::player (libDungeonHunter2.so), and the player functions whose DH2 body differs from
// r1714 now that the layout is settled (upstream/gameswf-r1714/gameswf/gameswf_player.h, "// DH2:" lines). The
// upstream definitions that this file replaces are wrapped in #if 0 in upstream/gameswf-r1714/gameswf/gameswf_player.cpp:
// the constructor, the destructor, action_init, action_clear, set_as_garbage, clear_heap, clear_garbage and the
// accessors for the replaced members.
//
// Layout of the object (0xe0 bytes), from the constructor 0x76f180: +0x0c m_heap, +0x1c m_construct_stack,
// +0x2c m_permanent_strings, +0x30 m_garbage_count (1), +0x34 m_global, +0x38 m_stage, +0x40 m_start_ticks,
// +0x48 m_current_root, +0x50 m_workdir, +0x64 m_chardef_library, +0x68 m_flash_vars, +0x7c unk_7c, +0x88
// m_movieclip_ctor, +0x9c m_blend_mode_stack, +0xac m_context, +0xb0 / +0xc0 / +0xd0 the three instance pools.
//
// Not defined here: get_root, set_root, notify_key_event, get_global, get_workdir, set_workdir, get_chardef_library,
// set_flash_vars, verbose_action, verbose_parse, clear_library, create_movie, load_file and notify_key_object
// (upstream r1714 code that matches the binary), and the deleting destructor 0x771c38 (compiler-generated).

#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_root.h"
#include "gameswf/gameswf_impl.h"        // generic_character
#include "gameswf/gameswf_sprite.h"      // sprite_instance
#include "gameswf/gameswf_text.h"        // edit_text_character
#include "gameswf/gameswf_movie_def.h"   // movie_definition_sub
#include "gameswf/gameswf_as_sprite.h"   // as_global_movieclip_ctor
#include "gameswf/gameswf_as_classes/as_global.h"
#include "gameswf/gameswf_as_classes/as_sound.h"
#include "gameswf/gameswf_as_classes/as_key.h"
#include "gameswf/gameswf_as_classes/as_math.h"
#include "gameswf/gameswf_as_classes/as_mcloader.h"
#include "gameswf/gameswf_as_classes/as_netstream.h"
#include "gameswf/gameswf_as_classes/as_netconnection.h"
#include "gameswf/gameswf_as_classes/as_textformat.h"
#include "gameswf/gameswf_as_classes/as_string.h"
#include "gameswf/gameswf_as_classes/as_color.h"
#include "gameswf/gameswf_as_classes/as_date.h"
#include "gameswf/gameswf_as_classes/as_flash.h"
#include "gameswf/gameswf_as_classes/as_broadcaster.h"
#include "gameswf/gameswf_as_classes/as_selection.h"
#include "gameswf/gameswf_as_classes/as_number.h"
#include "gameswf/gameswf_as_classes/as_boolean.h"
#include "vendor-gameswf/as_stage.hpp"
#include "base/tu_timer.h"
#include "base/tu_random.h"

namespace gameswf
{

// Defined in vendor-gameswf/src/v1-vendor-gameswf-gameswf-fddef6-3.cpp (not declared in a header of the tree).
as_c_function* array_init(player* p);
void as_global_get_active_controller(const fn_call& fn);

namespace
{

// The binary's three steps for a C function member: set_as_c_function on a value, builtin_member, drop_refs.
void builtin_c_function(as_object* obj, const char* name, void (*func)(const fn_call& fn))
{
	as_value v;
	v.set_as_c_function(func);
	obj->builtin_member(name, v);
}

}	// namespace

// 0x76f180 _ZN7gameswf6playerC1EPNS_14player_contextE
// 0x76f3a0 _ZN7gameswf6playerC2EPNS_14player_contextE (same body)
// The members are built in declaration order by the member initialisers: the heap, construct stack and pools are
// empty arrays, the cache and the library are empty tables, m_workdir and m_flash_vars are empty strings, the two
// as_values are undefined, m_garbage_count is 1. Then, in the order of the binary: the global object, the stage and an
// unnamed plain object (unk_7c), the MovieClip constructor, action_init, registration in the context, the random
// warm-up. The random loop is the r1714 one (the low byte of the system time says how many numbers to discard).
player::player(player_context* context) :
	m_garbage_count(1),	// +0x30
	m_start_ticks(0),	// +0x40, set by action_init
	m_render_fx(nullptr),	// +0x94
	unk_98(false),	// +0x98
	m_context(context)	// +0xac
{
	m_global = new as_object(this);	// +0x34
	m_stage = new as_stage(this);	// +0x38
	unk_7c.set_as_object(new as_object(this));	// +0x7c
	m_movieclip_ctor.set_as_c_function(as_global_movieclip_ctor);	// +0x88

	action_init();

	m_context->m_players.push_back(this);	// context +0x14

	// set startup random position
	Uint64 t = tu_timer::get_systime();
	t &= 0xFF;	// truncate
	for (unsigned int i = 0; i < t; i++)
	{
		tu_random::next_random();
	}
}

// 0x7719fc _ZN7gameswf6playerD1Ev
// 0x771c54 _ZN7gameswf6playerD2Ev (same body)
// The body is the part of the binary up to action_clear. What follows in the binary is the release of the members in
// reverse order (the three pools, the blend mode stack, the two as_values, the strings, the library, the root proxy,
// the stage, the global object, the cache, the construct stack, the heap), which the member destructors do in the same
// order, and then ~ref_counted.
player::~player()
{
	clear_unused_instances();	// +0xb0, +0xc0, +0xd0

	m_current_root = NULL;
	m_global = NULL;

	// take this player out of the context's list
	array<player*>& players = m_context->m_players;
	for (int i = 0, n = players.size(); i < n; i++)
	{
		if (players[i] == this)
		{
			players.remove(i);
			break;
		}
	}

	clear_heap();

	gameswf_engine_mutex().lock();
	clear_library();
	gameswf_engine_mutex().unlock();

	action_clear();
}

// 0x76c7d8 _ZN7gameswf6player12action_clearEv
void player::action_clear()
{
}

// 0x76c7e4 _ZNK7gameswf6player9get_stageEv
as_object* player::get_stage() const
{
	return m_stage.get_ptr();	// +0x38
}

// 0x76c808 _ZN7gameswf6player14set_as_garbageEv
void player::set_as_garbage()
{
	++m_garbage_count;	// +0x30
}

// 0x76d3d0 _ZN7gameswf6player10clear_heapEv
// Every object that is referenced from somewhere else than the heap (count above one) breaks its references; then
// the heap lets go of everything. The size is read again after each call because clear_refs can change the array.
void player::clear_heap()
{
	for (int i = 0; i < m_heap.size(); ++i)	// +0x0c
	{
		as_object* obj = m_heap[i].get_ptr();
		if (obj && obj->get_ref_count() > 1)
		{
			hash<as_object*, bool> visited_objects;
			obj->clear_refs(&visited_objects, obj);	// vtable +0x40
			visited_objects.clear();
		}
	}
	m_heap.resize(0);
}

// 0x76d2f8 _ZN7gameswf6player13clear_garbageEv
// Marks the global object alive (this_alive, vtable +0x44), then walks the heap from the end to the start. An object
// whose alive stamp is not the current garbage count is garbage: if somebody else still holds it (count above one) its
// references are broken, then the slot takes the last element of the heap and the last element is removed.
void player::clear_garbage()
{
	get_global()->this_alive();

	const int count = m_heap.size();
	for (int index = count - 1; index >= 0; --index)
	{
		as_object* obj = m_heap[index].get_ptr();
		if (obj == NULL || obj->m_alive_stamp == m_garbage_count)
		{
			continue;
		}
		if (obj->get_ref_count() > 1)
		{
			hash<as_object*, bool> visited_objects;
			obj->clear_refs(&visited_objects, obj);	// vtable +0x40
			visited_objects.clear();
		}
		const int last = m_heap.size() - 1;
		m_heap[index] = m_heap[last];
		m_heap.remove(last);
	}
}

// 0x76c9d8 _ZN7gameswf6player22clear_unused_instancesEv
void player::clear_unused_instances()
{
	m_unused_sprites.resize(0);	// +0xb0
	m_unused_generic_characters.resize(0);	// +0xc0
	m_unused_edit_text_characters.resize(0);	// +0xd0
}

// 0x76cb44 _ZN7gameswf6player26create_edit_text_characterEPNS_23edit_text_character_defEPNS_9characterEi
// Reuses the last object of the pool, or constructs a new one. A reused object whose count is one (the pool held the
// only reference) is put back into the heap, because the heap lost it when it was recycled. Its alive stamp becomes the
// current garbage count.
edit_text_character* player::create_edit_text_character(edit_text_character_def* def, character* parent, int id)
{
	int count = m_unused_edit_text_characters.size();	// +0xd4
	edit_text_character* obj;
	if (count <= 0)
	{
		obj = new edit_text_character(this, parent, def, id);
	}
	else
	{
		obj = static_cast<edit_text_character*>(m_unused_edit_text_characters[count - 1].get_ptr());	// +0xd0
		obj->m_def = def;	// +0xa0
		obj->recycle(parent, id);	// vtable +0x64
		if (obj->get_ref_count() == 1)
		{
			m_heap.push_back(smart_ptr<as_object>(obj));	// +0x0c
		}
		obj->m_alive_stamp = m_garbage_count;	// +0x34 <- player +0x30
		m_unused_edit_text_characters.resize(m_unused_edit_text_characters.size() - 1);
	}
	return obj;
}

// 0x76cc00 _ZN7gameswf6player24create_generic_characterEPNS_13character_defEPNS_9characterEi
// Same shape as create_edit_text_character, with the generic character pool (+0xc0, count +0xc4).
generic_character* player::create_generic_character(character_def* def, character* parent, int id)
{
	int count = m_unused_generic_characters.size();	// +0xc4
	generic_character* obj;
	if (count <= 0)
	{
		obj = new generic_character(this, def, parent, id);
	}
	else
	{
		obj = static_cast<generic_character*>(m_unused_generic_characters[count - 1].get_ptr());	// +0xc0
		obj->m_def = def;	// +0xa0
		obj->recycle(parent, id);	// vtable +0x64
		if (obj->get_ref_count() == 1)
		{
			m_heap.push_back(smart_ptr<as_object>(obj));	// +0x0c
		}
		obj->m_alive_stamp = m_garbage_count;	// +0x34 <- player +0x30
		m_unused_generic_characters.resize(m_unused_generic_characters.size() - 1);
	}
	return obj;
}

// 0x76ccf0 _ZN7gameswf6player22create_sprite_instanceEPNS_20movie_definition_subEPNS_4rootEPNS_9characterEi
// Same shape, with the sprite pool (+0xb0, count +0xb4). The root is stored before the definition.
sprite_instance* player::create_sprite_instance(movie_definition_sub* def, root* r, character* parent, int id)
{
	int count = m_unused_sprites.size();	// +0xb4
	sprite_instance* obj;
	if (count <= 0)
	{
		obj = new sprite_instance(this, def, r, parent, id);
	}
	else
	{
		obj = static_cast<sprite_instance*>(m_unused_sprites[count - 1].get_ptr());	// +0xb0
		obj->m_root = r;	// +0xa4
		obj->m_def = def;	// +0xa0
		obj->recycle(parent, id);	// vtable +0x64
		if (obj->get_ref_count() == 1)
		{
			m_heap.push_back(smart_ptr<as_object>(obj));	// +0x0c
		}
		obj->m_alive_stamp = m_garbage_count;	// +0x34 <- player +0x30
		m_unused_sprites.resize(m_unused_sprites.size() - 1);
	}
	return obj;
}

// 0x773268 _ZN7gameswf6player22notify_unused_instanceEPNS_9characterE
// Takes a character back into the pool of its kind (the kind byte at +0x98: 3 generic character, 32 edit text, 2
// sprite; any other kind is ignored). A generic character lets go of its definition, an edit text character gets an
// empty text. The recycled object then drops its members and breaks its references. The binary does not check
// the result of is() before it writes through the casts; this version skips the write for a failed cast (unreachable
// when the kind byte matches the class id).
void player::notify_unused_instance(character* ch)
{
	ch->detach_weak_proxy();
	switch (ch->m_kind)
	{
	case 3:
	{
		generic_character* obj = ch->is(3) ? static_cast<generic_character*>(ch) : nullptr;
		if (obj)
		{
			obj->m_def = nullptr;	// +0xa0
		}
		m_unused_generic_characters.push_back(smart_ptr<character>(ch));	// +0xc0
		break;
	}
	case 32:
	{
		edit_text_character* obj = ch->is(32) ? static_cast<edit_text_character*>(ch) : nullptr;
		if (obj)
		{
			obj->set_text_value(tu_string(""), false);
		}
		m_unused_edit_text_characters.push_back(smart_ptr<character>(ch));	// +0xd0
		break;
	}
	case 2:
		m_unused_sprites.push_back(smart_ptr<character>(ch));	// +0xb0
		break;
	default:
		return;
	}
	ch->m_members.clear();	// +0x0c, as_object member hash
	hash<as_object*, bool> visited;
	ch->clear_refs(&visited, ch);	// vtable +0x40
	visited.clear();
}

// 0x76e104 _ZN7gameswf6player11action_initEv
// DH2 builds the global object differently from r1714: the start time for the timer opcode is taken first, the global
// object gets the current garbage stamp (it is created before the first garbage pass), the member table is presized,
// and the set of built-ins is the one below (no SharedObject, Mouse, Capabilities, XMLSocket, LoadVars, setTimeout,
// clearTimeout or updateAfterEvent; String is the plain C constructor; Array comes from array_init; $version is the
// interned string "gameSWF"; getActiveController is new).
void player::action_init()
{
	m_start_ticks = tu_timer::get_ticks();	// +0x40
	m_global->m_alive_stamp = m_garbage_count;	// global +0x34 <- +0x30

	// The binary sets the capacity of the table to max(entry count, 32) * 3 / 2, which is 48 for the empty table.
	m_global->m_members.set_capacity(32);

	builtin_c_function(m_global.get_ptr(), "trace", as_global_trace);
	builtin_c_function(m_global.get_ptr(), "Object", as_global_object_ctor);
	builtin_c_function(m_global.get_ptr(), "Sound", as_global_sound_ctor);
	m_global->builtin_member("Array", as_value(array_init(this)));
	builtin_c_function(m_global.get_ptr(), "MovieClip", as_global_movieclip_ctor);
	builtin_c_function(m_global.get_ptr(), "TextField", as_global_textfield_ctor);
	builtin_c_function(m_global.get_ptr(), "TextFormat", as_global_textformat_ctor);
	builtin_c_function(m_global.get_ptr(), "MovieClipLoader", as_global_mcloader_ctor);
	builtin_c_function(m_global.get_ptr(), "String", as_global_string_ctor);
	builtin_c_function(m_global.get_ptr(), "Number", as_global_number_ctor);
	builtin_c_function(m_global.get_ptr(), "Boolean", as_global_boolean_ctor);
	builtin_c_function(m_global.get_ptr(), "Color", as_global_color_ctor);
	builtin_c_function(m_global.get_ptr(), "Date", as_global_date_ctor);
	m_global->builtin_member("Selection", as_value(selection_init(this)));
	builtin_c_function(m_global.get_ptr(), "ASSetPropFlags", as_global_assetpropflags);
	builtin_c_function(m_global.get_ptr(), "NetStream", as_global_netstream_ctor);
	builtin_c_function(m_global.get_ptr(), "NetConnection", as_global_netconnection_ctor);
	m_global->builtin_member("math", as_value(math_init(this)));
	m_global->builtin_member("Key", as_value(key_init(this)));
	m_global->builtin_member("AsBroadcaster", as_value(broadcaster_init(this)));
	m_global->builtin_member("flash", as_value(flash_init(this)));
	builtin_c_function(m_global.get_ptr(), "setInterval", as_global_setinterval);
	builtin_c_function(m_global.get_ptr(), "clearInterval", as_global_clearinterval);
	builtin_c_function(m_global.get_ptr(), "getVersion", as_global_get_version);
	builtin_c_function(m_global.get_ptr(), "parseFloat", as_global_parse_float);
	builtin_c_function(m_global.get_ptr(), "parseInt", as_global_parse_int);
	builtin_c_function(m_global.get_ptr(), "isNaN", as_global_isnan);

	// $version is the interned "gameSWF": the value points at the cache's string instead of copying it.
	as_value version;
	version.set_tu_string(*m_permanent_strings.get(tu_string("gameSWF")));
	m_global->builtin_member("$version", version);

	builtin_c_function(m_global.get_ptr(), "getActiveController", as_global_get_active_controller);
}

}	// namespace gameswf
