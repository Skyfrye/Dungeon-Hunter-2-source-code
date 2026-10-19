// v1-vendor-gameswf-gameswf_character-670fee-2.cpp
//
// Track B batch v1-vendor-gameswf-gameswf_character-670fee-2: gameswf::character, part 3 of 3.
// Gameloft (DH2) bodies for the r1714 class in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_character.h.
//
// The DH2 character does not match the r1714 layout. Its local colour transform, matrix and
// effect are pointers that default to shared identities (+0x48, +0x4c, +0x50), the custom block
// sits at +0x54, and the world caches are inline (+0x58 cxform, +0x78 matrix). The layout is settled in
// gameswf_character.h; every function of this part is written against it.
//
// Rows in this batch that need no body here:
//   0x754d70 get_mouse_state   upstream (inline virtual in gameswf_character.h, slot 0x70)
//   0x7804d4 get_parent        upstream (inline in gameswf_character.h, weak_ptr::get_ptr)
//
// The character object needs a player and the upstream gameswf units to construct, so there is no standalone
// test for the bodies of this part.

#include "gameswf/gameswf_character.h"

#include <cfloat>

#include "vendor-gameswf/gameswf_scene_node.hpp"  // scene_node::get_world_mouse

namespace gameswf
{

namespace
{

// The binary's range test on float results (tu_float::operator=): a value outside [-FLT_MAX, FLT_MAX], and NaN,
// becomes 0.
inline float float_or_zero(float v)
{
	return (v >= -FLT_MAX && v <= FLT_MAX) ? v : 0.0f;
}

}  // namespace

// 0x754824 _ZN7gameswf9character14get_drag_stateEPNS0_10drag_stateE
// The parent's virtual slot 0xdc fills *ds and its return value is passed back. The chain ends
// at a sprite_instance (0x77e02c), which overrides the slot. The binary has no null check on the
// parent, and neither does this body: a parentless character reaches this only when it does not
// override the slot.
int character::get_drag_state(drag_state* ds)
{
	character* parent = get_parent();	// dead parent link cleared by the weak_ptr check (+0x3c/+0x40)
	return parent->get_drag_state(ds);
}

// 0x7750e8 _ZN7gameswf9character19notify_need_advanceEv
// Sets the need-advance flag (+0x9d) on this character, then on each live ancestor. A dead parent link is
// released and cleared by the weak_ptr check (get_parent).
void character::notify_need_advance()
{
	m_need_advance = true;
	character* node = this;
	while (character* parent = node->get_parent())
	{
		parent->m_need_advance = true;
		node = parent;
	}
}

// 0x754a1c _ZN7gameswf9characterC1EPNS_6playerEPS0_ii
// 0x754b28 _ZN7gameswf9characterC2EPNS_6playerEPS0_ii (same body)
// as_object(player), then the DH2 members: m_id (+0x38), the weak parent (+0x3c/+0x40), the empty name (+0x44),
// the identity pointers (+0x48 cxform, +0x4c matrix, +0x50 effect), no custom block (+0x54), the identity world
// colour transform (+0x58) and matrix (+0x78) from their default constructors, ratio, depth and clip depth zero
// (+0x90..+0x96), the kind byte (+0x98) and the flag bytes: both world transforms dirty (+0x99, +0x9a), visible
// (+0x9b), no mouse handler (+0x9c), advance needed (+0x9d).
character::character(player* p, character* parent, int id, int kind) :
	as_object(p),
	m_id(id),
	m_name(&s_empty_name),
	m_local_cxform(&cxform::identity),
	m_local_matrix(&matrix::identity),
	m_effect(&effect::identity),
	m_custom(nullptr),
	m_ratio(0.0f),
	m_depth(0),
	m_clip_depth(0),
	m_kind(static_cast<signed char>(kind)),
	m_matrix_changed(true),
	m_cxform_changed(true),
	m_visible(true),
	m_has_mouse_handler(false),
	m_need_advance(true)
{
	m_parent = parent;
}

// 0x754c34 _ZN7gameswf9character19update_world_matrixEv
// Virtual slot 0x118. If the parent link is live, the world matrix (+0x78) takes the parent's world matrix (the
// DH2 get_world_matrix returns a pointer); otherwise it is the identity. Then it is concatenated with the local
// matrix (+0x4c) and the changed flag (+0x99) is cleared. The binary returns the result of concatenate in r0.
void character::update_world_matrix()
{
	character* parent = get_parent();	// a dead link is released and cleared, as in the binary
	if (parent != nullptr)
	{
		m_world_matrix = *parent->get_world_matrix();
	}
	else
	{
		m_world_matrix.set_identity();
	}
	m_world_matrix.concatenate(*m_local_matrix);
	m_matrix_changed = false;
}

// 0x75488c _ZN7gameswf9character19update_world_cxformEv
// Virtual slot 0x11c. If the parent link is live, the world colour transform (+0x58) takes the parent's;
// otherwise it is the identity (multiply 1, add 0 per channel). Then it is concatenated with the local colour
// transform (+0x48), unless that points at cxform::identity, and the changed flag (+0x9a) is cleared.
void character::update_world_cxform()
{
	character* parent = get_parent();
	if (parent != nullptr)
	{
		m_world_cxform = *parent->get_world_cxform();
	}
	else
	{
		for (int i = 0; i < 4; ++i)
		{
			m_world_cxform.m_[i][0] = 1.0f;
			m_world_cxform.m_[i][1] = 0.0f;
		}
	}
	if (m_local_cxform != &cxform::identity)
	{
		m_world_cxform.concatenate(*m_local_cxform);
	}
	m_cxform_changed = false;
}

// 0x754958 _ZN7gameswf9character7recycleEPS0_i
// Virtual slot 0x64. Resets a pooled instance: ratio, depth and clip depth to zero, id and parent set, the name back
// to the empty interned name, the local matrix and colour transform back to the shared identities (dirty flag
// set when they change), the effect back to effect::identity, and the flag bytes as the constructor leaves them
// (+0x99, +0x9a, +0x9b, +0x9d set, +0x9c cleared). The kind byte (+0x98), the custom block and the world caches
// are kept.
void character::recycle(character* parent, int id)
{
	m_ratio = 0.0f;
	m_id = id;
	m_depth = 0;
	m_clip_depth = 0;
	m_parent = parent;
	set_name(s_empty_name);
	if (m_local_matrix != &matrix::identity)
	{
		m_local_matrix = &matrix::identity;
		m_matrix_changed = true;
	}
	if (m_local_cxform != &cxform::identity)
	{
		m_local_cxform = &cxform::identity;
		m_cxform_changed = true;
	}
	if (m_effect != &effect::identity)
	{
		m_effect = &effect::identity;
	}
	m_matrix_changed = true;
	m_visible = true;
	m_has_mouse_handler = false;
	m_need_advance = true;
	m_cxform_changed = true;
}

// 0x755cf8 _ZN7gameswf9character10set_effectERKNS_6effectE
// Binary: creates the custom block if absent, copies the effect's blend mode to custom+0x38, resizes the filter
// array at custom+0x3c to the source count and copies the 44-byte elements, then points the effect pointer
// (+0x50) at custom+0x38.
void character::set_effect(const effect& fx)
{
	custom* c = ensure_custom();
	c->m_effect.m_blend_mode = fx.m_blend_mode;
	c->m_effect.m_filters.resize(fx.m_filters.size());
	for (int i = 0; i < c->m_effect.m_filters.size(); ++i)
	{
		c->m_effect.m_filters[i] = fx.m_filters[i];
	}
	m_effect = &m_custom->m_effect;
}

// 0x75e3a8 _ZN7gameswf9character13do_mouse_dragEv
// One step of a mouse drag. The drag state comes from the parent chain (slot 0xdc). If this character is not the
// drag target the query result is returned. Otherwise: the need-advance flag is set, the mouse position is read from
// the root movie (slots 0x134 and 0x70) and, when this character or an ancestor draws through a scene node
// (custom+0x68), replaced by that node's world mouse. The position is scaled to twips (x 20). Two branches follow:
//   lock-centred: the position is mapped through the inverse of the parent's world matrix and becomes the
//     translation of the character's matrix;
//   free: the first step stores the grab offset (position minus the matrix translation) in the drag state and
//     writes the state back (slot 0xe0); every step then sets the translation to position minus the offset.
// With a bound rectangle (x20) the translation is clamped. Each translation is passed through the float range test
// before and after the clamp. The result goes back through set_matrix. The binary maps the position through the
// character's own inverse world matrix as well, and never uses the result; that call has no side effect and is not
// written.
int character::do_mouse_drag()
{
	drag_state ds;
	const int result = get_drag_state(&ds);
	character* target = ds.m_character;
	if (target != this)
	{
		return result;
	}

	target->m_need_advance = true;
	int mouse_x = 0;
	int mouse_y = 0;
	int buttons = 0;
	target->get_root_movie()->get_mouse_state(&mouse_x, &mouse_y, &buttons);

	// The scene node of this character or of the nearest ancestor that has one maps the pointer into the node.
	for (character* node_owner = target; node_owner != nullptr; node_owner = node_owner->get_parent())
	{
		if (node_owner->m_custom != nullptr && node_owner->m_custom->m_scene_node != nullptr)
		{
			node_owner->m_custom->m_scene_node->get_world_mouse(mouse_x, mouse_y);
			break;
		}
	}

	const float pointer_x = static_cast<float>(mouse_x) * 20.0f;
	const float pointer_y = static_cast<float>(mouse_y) * 20.0f;

	matrix result_matrix = *target->m_local_matrix;
	float new_x;
	float new_y;
	if (ds.m_lock_center)
	{
		matrix parent_world;
		character* parent = target->get_parent();
		if (parent != nullptr)
		{
			parent_world = *parent->get_world_matrix();
		}
		point local;
		parent_world.transform_by_inverse(&local, point(pointer_x, pointer_y));
		new_x = float_or_zero(local.m_x);
		new_y = float_or_zero(local.m_y);
	}
	else
	{
		if (!ds.m_dragging)
		{
			ds.m_offset_x = pointer_x - target->m_local_matrix->m_[0][2];
			ds.m_offset_y = pointer_y - target->m_local_matrix->m_[1][2];
			ds.m_dragging = true;
			set_drag_state(ds);
		}
		new_x = float_or_zero(pointer_x - ds.m_offset_x);
		new_y = float_or_zero(pointer_y - ds.m_offset_y);
	}

	if (ds.m_bound)
	{
		if (ds.m_bound_x1 * 20.0f <= new_x)
		{
			new_x = ds.m_bound_x1 * 20.0f;
		}
		if (ds.m_bound_x0 * 20.0f >= new_x)
		{
			new_x = ds.m_bound_x0 * 20.0f;
		}
		new_x = float_or_zero(new_x);
		if (ds.m_bound_y1 * 20.0f <= new_y)
		{
			new_y = ds.m_bound_y1 * 20.0f;
		}
		if (ds.m_bound_y0 * 20.0f >= new_y)
		{
			new_y = ds.m_bound_y0 * 20.0f;
		}
		new_y = float_or_zero(new_y);
	}

	result_matrix.m_[0][2] = new_x;
	result_matrix.m_[1][2] = new_y;
	target->set_matrix(result_matrix);
	return 0;
}

}  // namespace gameswf
