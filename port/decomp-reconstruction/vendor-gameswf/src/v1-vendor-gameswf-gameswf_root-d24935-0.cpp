// Batch v1-vendor-gameswf-gameswf_root-d24935-0: gameswf::root (DH2 layout, see
// vendor-gameswf/include/vendor-gameswf/gameswf_root.hpp). The two copies of ~root (0x774ebc, 0x774fc4) and of
// the constructor (0x775da0, 0x775f70) have identical bodies and share one definition each. Status per function is in
// ledger.d/gameswf-core-player.csv.
//
// The root functions of the binary that match r1714 (the accessors that forward to the movie or to its definition) are
// defined in upstream/gameswf-r1714/gameswf/gameswf_root.cpp. The ones below differ from r1714 and are wrapped in
// #if 0 there.
//
// Render handler. root drives the handler through s_render_handler (gameswf.h): get_orientation (vtable +0xac),
// set_cursor (+0x98), begin_display (+0x28), end_display (+0x2c), set_blend_mode (+0x30) and set_context (+0x48) are
// all members of gameswf::render_handler (DH2 vtable).

#include "vendor-gameswf/gameswf_root.hpp"
#include "vendor-gameswf/gameswf_root_transform.hpp"

#include <cmath>

#include "base/tu_random.h"
#include "gameswf/gameswf_action.h"     // event_id (upstream)
#include "gameswf/gameswf_character.h"  // character (upstream)
#include "gameswf/gameswf_movie_def.h"  // movie_def_impl (upstream)
#include "gameswf/gameswf_player.h"     // player (upstream)
#include "gameswf/gameswf_sprite.h"     // sprite_instance (upstream)
#include "gameswf/gameswf_root.h"       // gameswf_engine_mutex() (upstream; the struct root there is #if 0)

namespace gameswf {

namespace {

// render_handler slot +0xac, get_orientation(): the binary tests the result for 0 and then for 2.
bool landscape_orientation()
{
	const int orientation = s_render_handler->get_orientation();
	return orientation == 0 || orientation == 2;
}

// Movie frame rect of the definition (m_frame_size, binary def +0xb4: x_min, x_max, y_min, y_max).
dh2::root_frame_twips frame_rect(const movie_def_impl* def)
{
	const rect& r = def->m_frame_size;
	return dh2::root_frame_twips{r.m_x_min, r.m_x_max, r.m_y_min, r.m_y_max};
}

dh2::root_display_bounds display_bounds(const root* r)
{
	return dh2::root_display_bounds{r->m_display_x, r->m_display_y, r->m_display_width, r->m_display_height};
}

}  // namespace

// 0x775da0 gameswf::root::root(gameswf::player*, gameswf::movie_def_impl*)
// 0x775f70 gameswf::root::root(gameswf::player*, gameswf::movie_def_impl*)   (second copy, same body)
// The display bounds (+0x24..+0x30) are not written by the binary's constructor: it leaves them unset and
// set_display_bounds compares against them before its first write. They start at zero here.
root::root(player* p, movie_def_impl* def) :
	m_def(def),	// +0x0c, adds a reference
	m_movie(NULL),	// +0x10
	m_viewport_x0(0),	// +0x14
	m_viewport_y0(0),	// +0x18
	m_viewport_width(1),	// +0x1c
	m_viewport_height(1),	// +0x20
	m_display_x(0),	// +0x24
	m_display_y(0),	// +0x28
	m_display_width(0),	// +0x2c
	m_display_height(0),	// +0x30
	m_pixel_scale(1.0f),	// +0x34
	m_background_color(0, 0, 0, 255),	// +0x38
	m_mouse_x(0),	// +0x3c
	m_mouse_y(0),	// +0x40
	m_mouse_buttons(0),	// +0x44
	m_pointer_x(0.0f),	// +0x48
	m_pointer_y(0.0f),	// +0x4c
	m_active_controller(0),	// +0x50
	m_userdata(NULL),	// +0x54
	m_on_event_load_called(false),	// +0x84
	m_shift_key_state(false),	// +0x85
	m_flushing_buffered_text(false),	// +0x86
	unk_87(false),	// +0x87
	m_current_active_entity(NULL),	// +0x88
	m_time_remainder(1.0f),	// +0x8c: the first time we need advance() and then display() certainly
	m_frame_time(1.0f),	// +0x90
	m_garbage_timer(0.0f),	// +0x94
	m_player(p)	// +0xc8 weak reference to the player
{
	set_display_viewport(0, 0, static_cast<int>(m_def->get_width_pixels()),
	                     static_cast<int>(m_def->get_height_pixels()));
	m_frame_time = 1.0f / get_frame_rate();	// +0x90
	p->set_root(this);
}

// 0x774ebc gameswf::root::~root()
// 0x774fc4 gameswf::root::~root()   (second copy, same body)
// The binary first lets go of the movie and the definition; then it releases the proxy of the player, the two
// listener arrays, the buffered text and the remaining counted members, in reverse member order, which the member
// destructors do after this body.
root::~root()
{
	m_movie = NULL;	// +0x10
	m_def = NULL;	// +0x0c
}

// 0x774128 gameswf::root::notify_mouse_state(int, int, int)
// The binary returns this in r0 and stores only the three fields (no mouse listener call in DH2).
void root::notify_mouse_state(int x, int y, int buttons)
{
	m_mouse_x = x;
	m_mouse_y = y;
	m_mouse_buttons = buttons;
}

// 0x774154 gameswf::root::get_root_movie(void)
// The binary symbol is not const; r1714 had a const member.
character* root::get_root_movie()
{
	return m_movie.get_ptr();
}

// 0x77415c gameswf::root::stop_drag(void)
// Clears the dragged character only; the flags and the bounds are left as they are (r1714 reset them all).
void root::stop_drag()
{
	m_drag_state.m_character = NULL;	// +0x58
}

// 0x7742f4 gameswf::root::goto_labeled_frame(gameswf::tu_stringi const&)
// The definition's get_labeled_frame (vtable +0x60). The r1714 message for an unknown label is not in the binary.
bool root::goto_labeled_frame(const tu_stringi& label)
{
	int target_frame = -1;
	if (m_def->get_labeled_frame(label, &target_frame))
	{
		goto_frame(target_frame);
		return true;
	}
	return false;
}

// 0x774298 gameswf::root::end_display(void)
// Ends the frame on the render handler, then detaches the player context from it.
void root::end_display()
{
	if (s_render_handler)
	{
		s_render_handler->end_display();	// vtable +0x2c
		if (s_render_handler)
		{
			s_render_handler->set_context(NULL);	// vtable +0x48
		}
	}
}

// 0x773dc0 gameswf::root::screen_to_logical(gameswf::point&)
float root::screen_to_logical(point& p)
{
	float x = p.m_x;
	float y = p.m_y;
	dh2::root_screen_to_logical(landscape_orientation(), frame_rect(m_def.get_ptr()), display_bounds(this), x, y);
	p.m_x = x;
	p.m_y = y;
	return y;
}

// 0x773f50 gameswf::root::logical_to_screen(gameswf::point&)
float root::logical_to_screen(point& p)
{
	float x = p.m_x;
	float y = p.m_y;
	dh2::root_logical_to_screen(landscape_orientation(), frame_rect(m_def.get_ptr()), display_bounds(this),
	                            m_viewport_width, m_viewport_height, x, y);
	p.m_x = x;
	p.m_y = y;
	return y;
}

// 0x774544 gameswf::root::notify_key_event(gameswf::player*, gameswf::key::code, bool)
// The Key object is updated, and a key press is passed to the keypress listeners (event 8, KEY_PRESS, with the code).
// r1714 also tracked the shift key and moved the focus on TAB; the DH2 build does neither.
void root::notify_key_event(player* p, key::code k, bool down)
{
	// multithread plugins can call gameswf core therefore we should use the gameswf mutex
	gameswf_engine_mutex().lock();

	p->notify_key_object(k, down);
	if (down)
	{
		m_keypress_listener.notify(event_id(event_id::KEY_PRESS, k));
	}

	gameswf_engine_mutex().unlock();
}

// 0x7748b8 gameswf::root::flush_buffered_text(void)
void root::flush_buffered_text()
{
	if (m_buffered_text.size() > 0)
	{
		m_flushing_buffered_text = true;                        // +0x86
		for (int i = 0; i < m_buffered_text.size(); ++i)
		{
			m_buffered_text[i]->display();                       // character vptr +0x120
		}
		m_flushing_buffered_text = false;
		// The binary calls the array's resize as a clone with a constant size: the call empties the array.
		m_buffered_text.resize(0);
	}
}

// 0x774918 gameswf::root::set_active_entity(gameswf::character*)
// The binary re-reads the current entity after add_ref, so the else branch is not reached in practice;
// it is kept because it is in the binary.
void root::set_active_entity(character* ch)
{
	character* prev = m_current_active_entity.get_ptr();
	if (prev)
	{
		prev->add_ref();
		if (prev == m_current_active_entity.get_ptr())
		{
			m_current_active_entity = ch;
		}
		else
		{
			character* now = m_current_active_entity.get_ptr();
			if (now)
			{
				now->on_event(event_id(event_id::KILLFOCUS));
				m_current_active_entity = NULL;
			}
			if (prev->on_event(event_id(event_id::SETFOCUS)))
			{
				m_current_active_entity = prev;
			}
			m_current_active_entity = ch;
		}
		prev->drop_ref();
	}
	else
	{
		m_current_active_entity = ch;
	}
}

// 0x774a04 gameswf::root::generate_mouse_button_events(gameswf::mouse_button_state*)
// Turns the mouse state of one frame into button events. The DH2 form differs from r1714: there are no mouse listener
// notifications, the cursor is set through the render handler first, a release (button up after down) clears the
// "down" state and falls into the "up" half of the same call, which rolls the entity out and over before it handles a
// press, and the release event depends on the inside flag instead of on the topmost entity. The pointer position
// is not part of the state any more, so there is no MOUSE_MOVE here.
void root::generate_mouse_button_events(mouse_button_state* ms)
{
	smart_ptr<character> active_entity = ms->m_active_entity;	// entity that currently owns the mouse pointer
	smart_ptr<character> topmost_entity = ms->m_topmost_entity;	// what's underneath the mouse right now

	// set cursor as passive/active object (render handler vtable +0x98)
	if (s_render_handler)
	{
		if (active_entity != NULL && active_entity->can_handle_mouse_event())
		{
			s_render_handler->set_cursor(render_handler::ACTIVE_CURSOR);
		}
		else
		{
			s_render_handler->set_cursor(render_handler::SYSTEM_CURSOR);
		}
	}

	if (ms->m_mouse_button_state_last)
	{
		// Mouse button was down.

		// Handle trackAsMenu dragOver
		if (active_entity == NULL || active_entity->get_track_as_menu())
		{
			if (topmost_entity != NULL && topmost_entity != active_entity && topmost_entity->get_track_as_menu())
			{
				// Transfer to topmost entity, dragOver
				active_entity = topmost_entity;
				active_entity->on_event(event_id(event_id::DRAG_OVER));
				ms->m_mouse_inside_entity_last = true;
			}
		}

		// Handle onDragOut, onDragOver
		if (!ms->m_mouse_inside_entity_last)
		{
			if (topmost_entity == active_entity)
			{
				// onDragOver
				if (topmost_entity != NULL)
				{
					topmost_entity->on_event(event_id(event_id::DRAG_OVER));
				}
				ms->m_mouse_inside_entity_last = true;
			}
		}
		else if (active_entity != topmost_entity)
		{
			// onDragOut
			if (active_entity != NULL)
			{
				active_entity->on_event(event_id(event_id::DRAG_OUT));
			}
			ms->m_mouse_inside_entity_last = false;
		}

		// Handle onRelease, onReleaseOutside
		if (!ms->m_mouse_button_state_current)
		{
			ms->m_mouse_button_state_last = false;
			if (active_entity != NULL)
			{
				if (ms->m_mouse_inside_entity_last)
				{
					// onRelease
					active_entity->on_event(event_id(event_id::RELEASE));
				}
				else if (!active_entity->get_track_as_menu())
				{
					// onReleaseOutside
					active_entity->on_event(event_id(event_id::RELEASE_OUTSIDE));
				}
			}
		}
	}

	if (!ms->m_mouse_button_state_last)
	{
		// Mouse button was up (or was released just now).

		// New active entity is whatever is below the mouse right now.
		if (topmost_entity != active_entity)
		{
			// onRollOut
			if (active_entity != NULL)
			{
				active_entity->on_event(event_id(event_id::ROLL_OUT));
			}

			active_entity = topmost_entity;

			// onRollOver
			if (active_entity != NULL)
			{
				active_entity->on_event(event_id(event_id::ROLL_OVER));
			}

			ms->m_mouse_inside_entity_last = true;
		}

		// mouse button press
		if (ms->m_mouse_button_state_current)
		{
			// set/kill focus
			// It's another entity ?
			if (m_current_active_entity != active_entity)
			{
				// First to clean focus
				if (m_current_active_entity != NULL)
				{
					m_current_active_entity->on_event(event_id(event_id::KILLFOCUS));
					m_current_active_entity = NULL;
				}

				// Then to set focus
				if (active_entity != NULL)
				{
					if (active_entity->on_event(event_id(event_id::SETFOCUS)))
					{
						m_current_active_entity = active_entity;
					}
				}
			}

			// onPress
			if (active_entity != NULL)
			{
				active_entity->on_event(event_id(event_id::PRESS));
			}
			ms->m_mouse_button_state_last = true;
			ms->m_mouse_inside_entity_last = true;
		}
	}

	// Write the (possibly modified) pointers back into the state struct.
	ms->m_active_entity = active_entity;
	ms->m_topmost_entity = topmost_entity;
}

// 0x775154 gameswf::root::start_drag(gameswf::character*, bool, bool, gameswf::rect&)
// The bound rect is copied in the binary's order: x_min, y_min, x_max, y_max (rect words 0, 2, 1, 3).
void root::start_drag(character* ch, bool lock_center, bool bound, rect& r)
{
	if (m_drag_state.m_character)
	{
		stop_drag();
	}
	m_drag_state.m_lock_center = lock_center;	// +0x5d
	m_drag_state.m_bound = bound;	// +0x5e
	m_drag_state.m_character = ch;	// +0x58, no reference is taken
	m_drag_state.m_bound_x0 = r.m_x_min;	// +0x60
	m_drag_state.m_bound_y0 = r.m_y_min;	// +0x64
	m_drag_state.m_bound_x1 = r.m_x_max;	// +0x68
	m_drag_state.m_bound_y1 = r.m_y_max;	// +0x6c
	m_drag_state.m_dragging = false;	// +0x5c
	ch->notify_need_advance();
}

// 0x7751bc gameswf::root::begin_display(void)
// The frame corners go to screen space; the render handler is told the blend mode 0, the player's context and then the
// frame (background colour, viewport, the two corners as x0, x1, y0, y1). The player is read through its weak pointer;
// a dead player is not handled (the binary reads the context through a null pointer then).
void root::begin_display()
{
	const dh2::root_frame_twips f = frame_rect(m_def.get_ptr());
	point p0;
	p0.m_x = f.x_min;
	p0.m_y = f.y_min;
	logical_to_screen(p0);
	point p1;
	p1.m_x = f.x_max;
	p1.m_y = f.y_max;
	logical_to_screen(p1);

	if (s_render_handler)
	{
		s_render_handler->set_blend_mode(static_cast<blend_mode::id>(0));	// vtable +0x30
	}
	player* pl = m_player.get_ptr();
	if (s_render_handler)
	{
		s_render_handler->set_context(pl->m_context);	// vtable +0x48, player +0xac
		if (s_render_handler)
		{
			s_render_handler->begin_display(m_background_color, m_viewport_x0, m_viewport_y0, m_viewport_width,
			                                m_viewport_height, p0.m_x, p1.m_x, p0.m_y, p1.m_y);	// vtable +0x28
		}
	}
}

// 0x775304 gameswf::root::advance(float, bool)
// Advances the listeners, the frame accumulator and the garbage timer. When a frame is due: the Flash vars of the
// player are applied once (before the load event), the init actions and the construct pass run on the first frame,
// the movie advances by the frame time (fixed_step: one step per due frame) or by delta_time, and the load event
// (event 10) is sent once. Every two seconds of garbage timer the player marks everything as garbage, the listeners and
// the movie mark themselves alive and the player clears the rest. The init actions are called through the
// sprite cast only when the movie is a sprite; the binary calls them with a null object for another movie type.
void root::advance(float delta_time, bool fixed_step)
{
	gameswf_engine_mutex().lock();
	m_listener.advance(delta_time);	// +0xb8
	m_time_remainder += delta_time;	// +0x8c
	m_garbage_timer -= delta_time;	// +0x94
	if (m_time_remainder >= m_frame_time)
	{
		tu_random::next_random();	// binary: result discarded

		if (!m_on_event_load_called)
		{
			set_flash_vars(m_player.get_ptr()->m_flash_vars);	// player +0x68
		}

		do
		{
			if (m_frame_time > m_time_remainder)
			{
				break;
			}
			if (!m_on_event_load_called)
			{
				sprite_instance* sprite = m_movie->is(2) ? static_cast<sprite_instance*>(m_movie.get_ptr()) : NULL;
				if (sprite)
				{
					sprite->do_init_actions();
				}
				m_movie->construct();	// character vptr +0x148
			}
			const float step = fixed_step ? m_frame_time : delta_time;
			m_movie->advance(step);	// character vptr +0x5c
			if (!m_on_event_load_called)
			{
				m_on_event_load_called = true;
				m_movie->on_event(event_id(event_id::LOAD));	// event 10
			}
			m_time_remainder -= m_frame_time;
		} while (fixed_step);

		if (m_garbage_timer <= 0.0f)
		{
			m_player.get_ptr()->set_as_garbage();	// binary: called unconditionally
			m_listener.alive();	// +0xb8
			m_movie->this_alive();	// character vptr +0x44
			m_player.get_ptr()->clear_garbage();
			m_garbage_timer = 2.0f;	// binary: 0x40000000
		}
		m_time_remainder = std::fmod(m_time_remainder, m_frame_time);
	}
	gameswf_engine_mutex().unlock();
}

// 0x775574 gameswf::root::display(void)
// A hidden movie draws nothing. A movie that has not loaded yet is advanced once first (one second, not fixed).
// Then: the frame is begun, the movie draws itself, buffered text is flushed, the frame ends.
void root::display()
{
	if (m_movie->m_visible)
	{
		if (!m_on_event_load_called)
		{
			advance(1.0f, m_on_event_load_called);
		}
		begin_display();
		if (m_movie != NULL)
		{
			m_movie->display();	// character vptr +0x120
		}
		flush_buffered_text();
		end_display();
	}
}

// 0x7755f4 gameswf::root::set_display_bounds(int, int, int, int, gameswf::scale_mode)
// Fits the display rectangle to the movie's aspect ratio (mode 1 and 2 crop one axis, otherwise it is taken as given),
// stores it when it changed, and recomputes the pixel scale. When the player is alive it also publishes the viewport
// in logical units as the object Viewport {xMin, yMin, xMax, yMax} on the global object (player +0x34).
void root::set_display_bounds(int x, int y, int w, int h, scale_mode mode)
{
	const bool landscape = landscape_orientation();
	const dh2::root_frame_twips f = frame_rect(m_def.get_ptr());
	const float frame_w = (f.x_max - f.x_min) / 20.0f;
	const float frame_h = (f.y_max - f.y_min) / 20.0f;

	const float ratio_h = landscape ? static_cast<float>(h) / frame_h : static_cast<float>(h) / frame_w;
	const float ratio_w = landscape ? static_cast<float>(w) / frame_w : static_cast<float>(w) / frame_h;
	const float ratio = ratio_h / ratio_w;

	int new_x = x;
	int new_y = y;
	int new_w = w;
	int new_h = h;

	const int mode_value = static_cast<int>(mode);
	bool crop_height = false;   // binary LABEL_30: the height follows the aspect ratio
	bool crop_width = false;    // binary fall-through: the width follows the aspect ratio
	if (mode_value == 1)
	{
		if (ratio < 1.0f)
		{
			crop_height = true;
		}
		else
		{
			crop_width = true;
		}
	}
	else if (mode_value == 2)
	{
		if (ratio >= 1.0f)
		{
			crop_height = true;
		}
		else
		{
			crop_width = true;
		}
	}

	if (crop_height)
	{
		new_h = static_cast<int>(static_cast<float>(h) / ratio);
		new_y = y - (new_h - h) / 2;
	}
	else if (crop_width)
	{
		const int width_delta = static_cast<int>(static_cast<float>(w) * ratio) - w;
		new_w = static_cast<int>(static_cast<float>(w) * ratio);
		new_x = x - width_delta / 2;
	}

	if (new_x == m_display_x && new_y == m_display_y && new_w == m_display_width && new_h == m_display_height)
	{
		return;
	}
	m_display_x = new_x;
	m_display_y = new_y;
	m_display_width = new_w;
	m_display_height = new_h;

	const float px_w = landscape ? static_cast<float>(new_w) / frame_w : static_cast<float>(new_w) / frame_h;
	const float px_h = landscape ? static_cast<float>(new_h) / frame_h : static_cast<float>(new_h) / frame_w;
	m_pixel_scale = (px_w >= px_h) ? px_w : px_h;

	// "Viewport": the viewport rectangle (origin and far corner) mapped to logical coordinates.
	if (m_player.get_ptr())
	{
		point corner_min;
		corner_min.m_x = 0.0f;
		corner_min.m_y = 0.0f;
		point corner_max;
		corner_max.m_x = static_cast<float>(m_viewport_x0) + static_cast<float>(m_viewport_width);
		corner_max.m_y = static_cast<float>(m_viewport_y0) + static_cast<float>(m_viewport_height);
		screen_to_logical(corner_min);
		screen_to_logical(corner_max);

		player* pl = m_player.get_ptr();
		as_object* viewport = new as_object(pl);
		as_value number;
		number.set_double(corner_min.m_x);
		viewport->set_member("xMin", number);
		number.set_double(corner_min.m_y);
		viewport->set_member("yMin", number);
		number.set_double(corner_max.m_x);
		viewport->set_member("xMax", number);
		number.set_double(corner_max.m_y);
		viewport->set_member("yMax", number);

		as_value viewport_value(viewport);
		m_player.get_ptr()->get_global()->set_member("Viewport", viewport_value);	// player +0x34, vtable +0x1c
	}
}

// 0x775d38 gameswf::root::set_display_viewport(int, int, int, int)
// Stores the viewport when it changed and refits the display rectangle to it (scale mode 0).
void root::set_display_viewport(int x0, int y0, int w, int h)
{
	if (m_viewport_x0 != x0 || m_viewport_y0 != y0 || m_viewport_width != w || m_viewport_height != h)
	{
		m_viewport_height = h;
		m_viewport_x0 = x0;
		m_viewport_y0 = y0;
		m_viewport_width = w;
		set_display_bounds(x0, y0, w, h, static_cast<scale_mode>(0));
	}
}

}  // namespace gameswf
