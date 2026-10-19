// Track B batch v1-vendor-gameswf-gameswf_character-670fee-1: gameswf::character, part 2 of 3.
//
// Gameloft (DH2) bodies for the r1714 class in
// vendor-gameswf/upstream/gameswf-r1714/gameswf/gameswf_character.h. The layout is settled in that header
// (see the DH2 comment above struct character).
//
// Rows in this batch:
//   upstream        set_userdata, set_variable (both overloads), attach_display_callback, display
//                   (inline in gameswf_character.h, assert(0) compiled out in the DH2 build) and
//                   enumerate (tail call to as_object::enumerate, gameswf_character.cpp). No body here:
//                   a second definition of an inline member would not compile.
//   reconstructed   construct, advance, goto_frame, get_world_cxform_root_change,
//                   get_world_matrix_root_change, get_world_cxform, get_world_matrix, get_root_movie,
//                   set_display_callback, do_display_callback, set_cxform, set_name, detach_scene_node,
//                   ~character (D1).
//   reconstructed   (continued) attach_scene_node, now that glitch::scene::ISceneNode is declared (canonical header): the
//                   node lookup by name (getSceneNodeFromName) and the addChild slot are real calls.
//   skipped         ~character (D0), the compiler-generated deleting destructor.
//
// Header changes (gameswf_character.h, marked DH2): the members of the DH2 layout, the virtuals in slot order,
// construct (virtual), the two *_root_change walkers, get_root_movie non-const (the mangled name has no K), the
// world transform accessors returning pointers, set_display_callback with the render_state callback.
//
// The character object needs a player and the upstream gameswf units to construct, so there is no standalone
// test for these bodies.

#include "gameswf/gameswf_character.h"

#include "vendor-gameswf/gameswf_alloc.hpp"
#include "vendor-gameswf/gameswf_scene_node.hpp"  // scene_node::m_child_list

namespace gameswf
{

// Upstream rows, no body here:
//   0x752d38 set_userdata(void*)                       inline virtual, assert(0) compiled out
//   0x752d3c set_variable(char const*, char const*)    inline virtual, assert(0) compiled out
//   0x752d40 set_variable(char const*, wchar_t const*) inline virtual, assert(0) compiled out
//   0x752d54 attach_display_callback(...)              inline virtual, assert(0) compiled out
//   0x752d58 display()                                 inline virtual {}
//   0x753260 enumerate(as_environment*)                gameswf_character.cpp, tail call to as_object::enumerate

// 0x752d84 _ZN7gameswf9character9constructEv
// Virtual (the character vtable at 0x98fb38 holds it). The binary body is bx lr.
void character::construct()
{
}

// 0x752d88 _ZN7gameswf9character7advanceEf
// Binary: clears the need-advance byte (+0x9d) and returns. The Hex-Rays int return is the reused this register.
void character::advance(float delta_time)
{
	m_need_advance = false;
}

// 0x752d94 _ZN7gameswf9character10goto_frameEi
// Binary: mov r0, #0. The base class never moves a frame; sprite_instance overrides it and returns 1 when the
// frame moved.
int character::goto_frame(int target_frame)
{
	return 0;
}

// 0x753e34 _ZN7gameswf9character28get_world_cxform_root_changeEv
// Walks the parent chain from this. The result is the topmost character, this included, whose
// cxform changed flag (+0x9a) is set, or NULL when none is set. The binary tests the parent link
// (+0x3c proxy, +0x40 pointer) in the loop. A dead link is dropped by the weak_ptr check here, and the
// walk ends at the same character as the binary does. The binary's own null test on this is not
// reproduced: a non-static member function is never called on NULL.
character* character::get_world_cxform_root_change()
{
	character* root = m_cxform_changed ? this : nullptr;
	character* node = this;
	character* parent = node->m_parent.get_ptr();
	while (parent != nullptr)
	{
		node = parent;
		if (node->m_cxform_changed)
		{
			root = node;
		}
		parent = node->m_parent.get_ptr();
	}
	return root;
}

// 0x753ee8 _ZN7gameswf9character28get_world_matrix_root_changeEv
// Same walk as get_world_cxform_root_change, on the matrix changed flag (+0x99).
character* character::get_world_matrix_root_change()
{
	character* root = m_matrix_changed ? this : nullptr;
	character* node = this;
	character* parent = node->m_parent.get_ptr();
	while (parent != nullptr)
	{
		node = parent;
		if (node->m_matrix_changed)
		{
			root = node;
		}
		parent = node->m_parent.get_ptr();
	}
	return root;
}

// 0x753ec0 _ZN7gameswf9character16get_world_cxformEv
// Refreshes the cached world colour transform when this character or an ancestor has the changed flag set (the
// topmost such character is updated through vtable +0x11c, and its update walks down through the parents), then
// returns the address of the cache at +0x58.
const cxform* character::get_world_cxform()
{
	character* changed = get_world_cxform_root_change();
	if (changed != nullptr)
	{
		changed->update_world_cxform();
	}
	return &m_world_cxform;
}

// 0x753f74 _ZN7gameswf9character16get_world_matrixEv
// Same as get_world_cxform for the world matrix (vtable +0x118, cache at +0x78).
const matrix* character::get_world_matrix()
{
	character* changed = get_world_matrix_root_change();
	if (changed != nullptr)
	{
		changed->update_world_matrix();
	}
	return &m_world_matrix;
}

// 0x7547b4 _ZN7gameswf9character14get_root_movieEv
// Forwards to the parent through the weak link (+0x3c/+0x40, virtual slot 0x134). When the parent
// has died, the weak_ptr check clears the link and the call goes through a NULL parent, as it does
// in the binary (its tail at 0x754804).
character* character::get_root_movie()
{
	return m_parent->get_root_movie();
}

// 0x7531e4 _ZN7gameswf9character17detach_scene_nodeEv
// Binary: with a custom block that has a scene node (custom+0x68), removes this character from the node's child
// array (scene_node +0x238, count +0x23c) by identity (slot 0 first, then slots 1..count-1; the first match is
// removed with array::remove), then clears custom+0x68. Without a match the node pointer is cleared all the same.
// The Hex-Rays return is a leftover register; the source is void.
void character::detach_scene_node()
{
	if (m_custom == nullptr)
	{
		return;
	}
	scene_node* node = m_custom->m_scene_node;
	if (node == nullptr)
	{
		return;
	}
	if (node->m_child_list.size() > 0)
	{
		for (int i = 0; i < node->m_child_list.size(); ++i)
		{
			if (node->m_child_list[i] == this)
			{
				node->m_child_list.remove(i);
				break;
			}
		}
	}
	m_custom->m_scene_node = nullptr;
}

// 0x753508 _ZN7gameswf9character20set_display_callbackEPFvRNS_12render_stateEPvES3_
// Binary: creates the custom block if absent, stores the callback at custom+0x60 and the user pointer at
// custom+0x64.
void character::set_display_callback(void (*callback)(render_state&, void*), void* user_ptr)
{
	custom* c = ensure_custom();
	c->m_display_callback = callback;
	m_custom->m_display_callback_user_ptr = user_ptr;
}

// 0x753f9c _ZN7gameswf9character19do_display_callbackEv
// Binary: calls the render handler's slot +0xb0 (begin_display_callback), builds a render_state from this, the world
// matrix and the world colour transform, calls custom+0x60 with the state and custom+0x64 (there is no null test on
// the custom block or the callback: callers reach this only for characters that registered one), then calls slot
// +0xb4 (end_display_callback) and returns its register. The source returns void.
void character::do_display_callback()
{
	s_render_handler->begin_display_callback();
	render_state state;
	state.m_character = this;
	state.m_matrix = *get_world_matrix();
	state.m_cxform = *get_world_cxform();
	m_custom->m_display_callback(state, m_custom->m_display_callback_user_ptr);
	s_render_handler->end_display_callback();
}

// 0x75355c _ZN7gameswf9character10set_cxformERKNS_6cxformE
// Binary: creates the custom block if absent, copies the argument's eight floats to custom+0x00, points the local
// colour transform pointer (+0x48) at them and sets the changed flag (+0x9a). The Hex-Rays int return is a
// leftover register.
void character::set_cxform(const cxform& cx)
{
	custom* c = ensure_custom();
	c->m_cxform = cx;
	m_local_cxform = &m_custom->m_cxform;
	m_cxform_changed = true;
}

// 0x7535b8 _ZN7gameswf9character8set_nameERKNS_9tu_stringE
// Binary: an argument with the interned bit (byte +0x13 & 1) is kept by address (+0x44). Any other string is
// copied into the custom block's name (custom+0x4c, tu_string::operator=) and +0x44 points at that copy.
void character::set_name(const tu_string& name)
{
	if (name.is_interned())
	{
		m_name = &name;
	}
	else
	{
		custom* c = ensure_custom();
		c->m_name = name;
		m_name = &m_custom->m_name;
	}
}

// 0x753470 _ZN7gameswf9characterD1Ev
// 0x75dd74 _ZN7gameswf9characterD2Ev (same effect: the base-object destructor calls destruct<custom>)
// Binary: the vptr is set, the custom block is destroyed (custom::~custom, then free_internal) when present, the
// parent proxy is released (the member destructor of m_parent) and as_object::~as_object runs.
character::~character()
{
	if (m_custom != nullptr)
	{
		m_custom->~custom();
		free_internal(m_custom, 0);
		m_custom = nullptr;
	}
}

// 0x7534ec _ZN7gameswf9characterD0Ev
// SKIPPED. Compiler-generated deleting destructor. It runs D1 (above) and then calls LC_API_FREE_0
// (operator delete).

// 0x753c10 _ZN7gameswf9character17attach_scene_nodeEPN6glitch5scene10ISceneNodeENS1_4core11dimension2dIiEEb
// Draws this character through a gameswf::scene_node on the glitch scene node `parent`. Creates the custom block if absent. Looks
// a node named scene_node::NODE_NAME up in the parent's subtree (ISceneNode::getSceneNodeFromName, 0x5984f4). When one exists and
// `reset` is set, its child array is emptied (size 0, capacity kept). When none exists a new gameswf::scene_node is built from
// (the player of this character, parent, size) in operator new(0x270, hint 0) and added to the parent through ISceneNode K 0x5c
// (addChild). Then custom+0x68 is set to the node and this character is appended to the node's child array (+0x238), growing the
// capacity by 1.5x when full (array::push_back). The player is the character's weak player pointer (+0x2c/+0x30), read only on
// the path that makes the node.
void character::attach_scene_node(glitch::scene::ISceneNode* parent, glitch::core::dimension2d<int> size, bool reset)
{
	ensure_custom();
	scene_node* node = static_cast<scene_node*>(parent->getSceneNodeFromName(scene_node::NODE_NAME));
	if (node != nullptr)
	{
		if (reset)
		{
			node->m_child_list.resize(0);
		}
	}
	else
	{
		node = new (swf::MEM_UNRECOVERED) scene_node(get_player(), parent, size);
		parent->addChild(node);
	}
	m_custom->m_scene_node = node;
	node->m_child_list.push_back(this);
}

}  // namespace gameswf
