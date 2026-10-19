// Batch v1-vendor-gameswf-gameswf_dlist-d5206d-2: gameswf::display_list (DH2), the display list of sprite_instance.
//
// Part 3 of the sprite_instance batch (d5206d): the list lives at sprite_instance +0xa8, 20 bytes: the array of
// display_object_info (a single smart_ptr<character> each, 16 bytes with the array's borrowed flag) and the name table that
// maps a child's name pointer to the child (hash<stringi_pointer, character*>, +0x10).
//
// The DH2 list differs from r1714 (gameswf_dlist.cpp) in: the transform arguments of add, move and replace are optional
// pointers into the characters' pointer members (character.h), the name table, remove() hands an instance nobody else holds
// to the player's pool, advance() goes through the player's construct stack and skips children that do not need advancing,
// display() skips zero-alpha children and keeps the active blend mode across a mask, and construct() is new.
//
// Not rebuilt here (they stay r1714 code, unchanged in the binary): find_display_index, get_display_index,
// get_character_at_depth, get_character_by_name, get_character_by_ptr, get_highest_depth, clear_refs, dump,
// swap_characters, change_character_depth, clear_unaffected, clear, and display_object_info::compare. They are
// ledgered upstream. remove_display_object(character*) is v1-vendor-gameswf-pack0-157e56-0.cpp's.

#include <cstdio>
#include <new>

#include "gameswf/gameswf_dlist.h"
#include "gameswf/gameswf_player.h"
#include "gameswf/gameswf_root.h"

namespace gameswf
{

// 0x7562e8 _ZN7gameswf12display_list6removeEi
// Removes the character at index: its children are cleared, KILLFOCUS and UNLOAD are sent, its depth is zeroed (it is no
// longer alive), its keypress listener and its entry in the name table go, and it leaves the array. A character that nobody
// but this function (and at most one other holder) still references is handed to the player's pool of unused instances.
void display_list::remove(int index)
{
	character* ch = m_display_object_array[index].m_character.get_ptr();

	ch->clear_display_objects();	// vtable +0xa4: indirect onUnload and killFocus of the children
	ch->on_event(event_id(event_id::KILLFOCUS));
	ch->on_event(event_id(event_id::UNLOAD));
	ch->m_depth = 0;	// it isn't alive any more

	// remove this character from the listener
	remove_keypress_listener(ch);

	smart_ptr<character> hold(ch);
	m_name_table.erase(stringi_pointer{ &ch->get_name() });

	m_display_object_array[index].set_character(nullptr);
	m_display_object_array.remove(index);

	if (ch->get_ref_count() <= 2)
	{
		ch->get_player()->notify_unused_instance(ch);
	}
}

// 0x756588 _ZN7gameswf12display_list18add_display_objectEPNS_9characterEibPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
// Inserts the character at the depth (before any character that already has it). With replace_if_depth_is_occupied the
// character at that depth is removed first. The character takes the pointers it is given (identity objects for null) and
// marks the world transforms stale when they changed; a non-empty name is entered in the name table unless it is already
// there. Last the character's frame 0 runs and the keypress listener is set.
void display_list::add_display_object(character* ch, int depth, bool replace_if_depth_is_occupied, const cxform* color_xform,
	const matrix* mat, const effect* fx, float ratio, Uint16 clip_depth)
{
	int size = m_display_object_array.size();
	int index = find_display_index(depth);

	if (replace_if_depth_is_occupied)
	{
		// Eliminate an existing object if it's in the way.
		if (index >= 0 && index < size && depth == m_display_object_array[index].m_character->get_depth())
		{
			remove(index);
		}
	}

	smart_ptr<character> hold(ch);
	ch->m_depth = static_cast<Uint16>(depth);
	hold->m_depth = static_cast<Uint16>(depth);

	const cxform* cx = color_xform ? color_xform : &cxform::identity;
	if (cx != hold->m_local_cxform)
	{
		hold->m_cxform_changed = true;
		hold->m_local_cxform = cx;
	}
	const matrix* mt = mat ? mat : &matrix::identity;
	if (mt != hold->m_local_matrix)
	{
		hold->m_matrix_changed = true;
		hold->m_local_matrix = mt;
	}
	hold->m_ratio = ratio;
	hold->m_clip_depth = clip_depth;
	const effect* e = fx ? fx : &effect::identity;
	if (e != hold->m_effect)
	{
		hold->m_effect = e;
	}

	// Insert into the display list...
	display_object_info di;
	di.set_character(hold.get_ptr());
	m_display_object_array.insert(index, di);

	const tu_string* name = hold->m_name;
	if (name->length() > 0)
	{
		character* existing = nullptr;
		if (!m_name_table.get(stringi_pointer{ name }, &existing))
		{
			m_name_table.add(stringi_pointer{ name }, hold.get_ptr());
		}
	}

	ch->execute_frame_tags(0, false);	// vtable +0xc8
	add_keypress_listener(ch);
}

// 0x755c0c _ZN7gameswf12display_list19move_display_objectEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
// Updates the transform properties of the object at the depth. A null pointer keeps the property; a pointer that differs from
// the character's replaces it (and marks the world transform stale). The ratio is always set; the clip depth is not changed.
void display_list::move_display_object(int depth, const cxform* color_xform, const matrix* mat, const effect* fx, float ratio,
	Uint16 clip_depth)
{
	int size = m_display_object_array.size();
	if (size <= 0)
	{
		log_error("error: move_display_object() -- no objects on display list\n");
		return;
	}

	int index = find_display_index(depth);
	if (index < 0 || index >= size)
	{
		return;
	}

	character* ch = m_display_object_array[index].m_character.get_ptr();
	if (ch->get_depth() != depth)
	{
		log_error("error: move_display_object() -- no object at depth %d\n", depth);
		return;
	}

	if (ch->get_accept_anim_moves())	// vtable +0x150: false after ActionScript has moved the character
	{
		if (color_xform && color_xform != ch->m_local_cxform)
		{
			ch->m_local_cxform = color_xform;
			ch->m_cxform_changed = true;
		}
		if (mat && mat != ch->m_local_matrix)
		{
			ch->m_local_matrix = mat;
			ch->m_matrix_changed = true;
		}
		if (fx && fx != ch->m_effect)
		{
			ch->m_effect = fx;
		}
		ch->m_ratio = ratio;
	}
}

// 0x7567cc _ZN7gameswf12display_list22replace_display_objectEPNS_9characterEiPKNS_6cxformEPKNS_6matrixEPKNS_6effectEft
// Puts a new character at the depth, replacing any character there. A null transform pointer keeps the old character's
// property: copies of its colour transform, matrix and effect are taken first when the old character owns them (they point
// into its custom block, which dies with it), and the new character takes the copy (set_*) or shares the pointer.
void display_list::replace_display_object(character* ch, int depth, const cxform* color_xform, const matrix* mat,
	const effect* fx, float ratio, Uint16 clip_depth)
{
	int size = m_display_object_array.size();
	int index = find_display_index(depth);
	if (index >= size || index < 0)
	{
		add_display_object(ch, depth, true, color_xform, mat, fx, ratio, clip_depth);
		return;
	}

	character* old_ch = m_display_object_array[index].m_character.get_ptr();

	matrix old_matrix = *old_ch->m_local_matrix;
	cxform old_cxform = *old_ch->m_local_cxform;
	effect old_effect;
	old_effect.m_blend_mode = old_ch->m_effect->m_blend_mode;
	old_effect.m_filters = old_ch->m_effect->m_filters;

	const matrix* keep_matrix = old_ch->m_local_matrix;
	const cxform* keep_cxform = old_ch->m_local_cxform;
	const effect* keep_effect = old_ch->m_effect;
	if (old_ch->m_custom != nullptr)
	{
		if (keep_matrix == &old_ch->m_custom->m_matrix)
		{
			keep_matrix = &old_matrix;
		}
		if (keep_cxform == &old_ch->m_custom->m_cxform)
		{
			keep_cxform = &old_cxform;
		}
		if (keep_effect == &old_ch->m_custom->m_effect)
		{
			keep_effect = &old_effect;
		}
	}

	add_display_object(ch, depth, true, color_xform, mat, fx, ratio, clip_depth);

	if (!color_xform)
	{
		if (keep_cxform == &old_cxform)
		{
			ch->set_cxform(*keep_cxform);
		}
		else if (keep_cxform != ch->m_local_cxform)
		{
			ch->m_local_cxform = keep_cxform;
			ch->m_cxform_changed = true;
		}
	}
	if (!mat)
	{
		if (keep_matrix == &old_matrix)
		{
			ch->set_matrix(*keep_matrix);
		}
		else if (keep_matrix != ch->m_local_matrix)
		{
			ch->m_local_matrix = keep_matrix;
			ch->m_matrix_changed = true;
		}
	}
	if (!fx)
	{
		if (keep_effect == &old_effect)
		{
			ch->set_effect(*keep_effect);
		}
		else if (keep_effect != ch->m_effect)
		{
			ch->m_effect = keep_effect;
		}
	}
}

// 0x7564ac _ZN7gameswf12display_list21remove_display_objectEii
// Removes the object at the depth; with an id, only the object with that id at that depth (the search moves on through the
// objects at the same depth). An id that is not there is logged (r1714 returns silently).
void display_list::remove_display_object(int depth, int id)
{
	int size = m_display_object_array.size();
	if (size > 0)
	{
		int index = find_display_index(depth);
		if (index < size && index >= 0)
		{
			character* ch = m_display_object_array[index].m_character.get_ptr();
			if (depth == ch->get_depth())
			{
				if (id != -1)
				{
					// Caller specifies a specific id; scan forward til we find it.
					while (id != ch->get_id())
					{
						index++;
						if (index < size)
						{
							ch = m_display_object_array[index].m_character.get_ptr();
							if (depth == ch->get_depth())
							{
								continue;
							}
						}
						log_error("remove_display_object: no character at depth %d with id %d\n", depth, id);
						return;
					}
				}
				remove(index);
			}
		}
	}
}

// 0x755f58 _ZN7gameswf12display_list23get_character_by_name_iERKNS_10tu_stringiE
// The first child with this name (case-insensitive, through the name table), or null.
character* display_list::get_character_by_name_i(const tu_stringi& name)
{
	character* ch = nullptr;
	if (m_name_table.get(stringi_pointer{ &name.to_tu_string() }, &ch))
	{
		return ch;
	}
	return nullptr;
}

// 0x755bb0 _ZN7gameswf12display_list21add_keypress_listenerEPNS_9characterE
void display_list::add_keypress_listener(character* ch)
{
	// has the character a keypress event?
	if (ch->has_keypress_event())	// vtable +0x158
	{
		if (ch->get_root())	// vtable +0x54
		{
			ch->get_root()->add_keypress_listener(ch);
		}
	}
}

// 0x755b68 _ZN7gameswf12display_list24remove_keypress_listenerEPNS_9characterE
void display_list::remove_keypress_listener(character* ch)
{
	if (ch)
	{
		if (ch->get_root())
		{
			ch->get_root()->remove_keypress_listener(ch);
		}
	}
}

// 0x755908 _ZN7gameswf12display_list7advanceEf
// Advances the children. They are pushed on the player's construct stack, last first, and taken off one by one so a child
// that removes others cannot invalidate the walk. A child is advanced only when its need-advance flag is set; the result is
// the OR of the flags those children have after advancing.
int display_list::advance(float delta_time)
{
	if (m_display_object_array.size() <= 0)
	{
		return 0;
	}

	player* p = m_display_object_array[0].m_character->get_player();
	int n = m_display_object_array.size();
	for (int i = n - 1; i >= 0; i--)
	{
		p->m_construct_stack.push_back(m_display_object_array[i].m_character);
	}

	int result = 0;
	for (int k = 0; k < n; k++)
	{
		character* ch = p->m_construct_stack[p->m_construct_stack.size() - 1].get_ptr();
		if (ch && ch->m_need_advance)
		{
			ch->advance(delta_time);	// vtable +0x5c
			result |= ch->m_need_advance;
		}
		p->m_construct_stack.resize(p->m_construct_stack.size() - 1);
	}
	return result;
}

// 0x755a10 _ZN7gameswf12display_list9constructEv
// Calls construct() on every child (r1714 has no such step), through the player's construct stack as advance() does.
void display_list::construct()
{
	if (m_display_object_array.size() > 0)
	{
		player* p = m_display_object_array[0].m_character->get_player();
		int n = m_display_object_array.size();
		for (int i = n - 1; i >= 0; i--)
		{
			p->m_construct_stack.push_back(m_display_object_array[i].m_character);
		}

		for (int k = 0; k < n; k++)
		{
			character* ch = p->m_construct_stack[p->m_construct_stack.size() - 1].get_ptr();
			if (ch)
			{
				ch->construct();	// vtable +0x148
			}
			p->m_construct_stack.resize(p->m_construct_stack.size() - 1);
		}
	}
}

// 0x7552ac _ZN7gameswf12display_list7displayEv
// Displays the children, lower depths first. Invisible children and children whose colour transform leaves no alpha (the
// alpha multiplier and offset are both zero) are skipped. A child with a clip depth is a mask: it is drawn between
// begin_submit_mask and end_submit_mask, afterwards the blend mode that was active is set again, and the mask is switched
// off when a child above its clip depth comes (or at the end).
void display_list::display()
{
	bool masked = false;
	int highest_masked_layer = 0;
	int active_blend_mode = 0;

	for (int i = 0; i < m_display_object_array.size(); i++)
	{
		character* ch = m_display_object_array[i].m_character.get_ptr();

		if (ch->get_visible() == false)
		{
			// Don't display.
			continue;
		}

		const cxform* cx = ch->m_local_cxform;
		if (cx->m_[3][0] == 0.0f && cx->m_[3][1] == 0.0f)
		{
			// Fully transparent.
			continue;
		}

		// check whether a previous mask should be disabled
		if (masked)
		{
			if (ch->get_depth() > highest_masked_layer)
			{
				masked = false;
				if (s_render_handler)
				{
					s_render_handler->disable_mask();
				}
			}
		}

		// check whether this object should become mask
		if (ch->get_clip_depth() > 0)
		{
			player* p = ch->get_player();
			active_blend_mode = p->m_blend_mode_stack.size() > 0 ? p->m_blend_mode_stack[p->m_blend_mode_stack.size() - 1] : 0;
			if (s_render_handler)
			{
				s_render_handler->begin_submit_mask();
			}
		}

		ch->display();	// vtable +0x120

		// if this object should have become a mask, inform the renderer that it now has all information about it
		if (ch->get_clip_depth() > 0)
		{
			if (s_render_handler)
			{
				s_render_handler->end_submit_mask();
			}
			highest_masked_layer = ch->get_clip_depth();
			if (active_blend_mode && s_render_handler)
			{
				s_render_handler->set_blend_mode(static_cast<blend_mode::id>(active_blend_mode));
			}
			masked = true;
		}
	}

	if (masked)
	{
		// If a mask masks the scene all the way up to the highest layer, it will not be disabled at the end of drawing
		// the display list, so disable it manually.
		if (s_render_handler)
		{
			s_render_handler->disable_mask();
		}
	}
}

// 0x77f288 _ZN7gameswf12display_listD1Ev
// D1. The binary clears the name table first, then releases the characters and the array buffer: the member destructors,
// in reverse declaration order, do the same.
display_list::~display_list()
{
}

}  // namespace gameswf
