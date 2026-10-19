// gameswf_button.h	-- Thatcher Ulrich <tu@tulrich.com> 2003

// This source code has been donated to the Public Domain.  Do
// whatever you want with it.

// SWF buttons.  Mouse-sensitive update/display, actions, etc.


#ifndef GAMESWF_BUTTON_H
#define GAMESWF_BUTTON_H


#include "gameswf/gameswf_impl.h"
#include "gameswf/gameswf_sound.h"
#include "vendor-gameswf/effect.hpp"	// DH2: gameswf::effect (blend mode and filter list), the record's filters


namespace gameswf
{
	//
	// button characters
	//
	enum mouse_state
	{
		MOUSE_UP,
		MOUSE_DOWN,
		MOUSE_OVER
	};

	// DH2: 100 bytes (0x64): the r1714 record, then the effect that read_filter_list fills (blend word +0x4c, filter array
	// DH2: +0x50, 16 bytes: the byte at +0x5c is the array's own m_borrowed) and the blend mode byte of the tag (+0x60).
	// DH2: The copy constructor (0x7c708c) copies every member (the filter array element by element, with a fresh array).
	struct button_record
	{
		bool	m_has_blend_mode;	// +0x00
		bool	m_has_filter_list;	// +0x01
		bool	m_hit_test;	// +0x02
		bool	m_down;	// +0x03
		bool	m_over;	// +0x04
		bool	m_up;	// +0x05
		int	m_character_id;	// +0x08
		character_def*	m_character_def;	// +0x0c
		int	m_button_layer;	// +0x10
		matrix	m_button_matrix;	// +0x14
		cxform	m_button_cxform;	// +0x2c
		#if 0 /* DH2: replaced by the effect and the blend mode below */
		int	m_blend_mode;
		#endif /* DH2 */
		effect	m_effect;	// DH2: +0x4c, the filter list (the blend word of the effect is not written by read)
		int	m_blend_mode;	// DH2: +0x60, the byte read when m_has_blend_mode (tag 34)

		button_record() :
			m_has_blend_mode(false), m_has_filter_list(false), m_hit_test(false), m_down(false), m_over(false), m_up(false),
			m_character_id(0), m_character_def(NULL), m_button_layer(0), m_blend_mode(0)
		{
		}
		button_record(const button_record& rec);	// DH2: 0x7c708c

		bool	read(stream* in, int tag_type, movie_definition_sub* m);	// DH2: 0x7c753c
	};


	struct button_action
	{
		enum condition
		{
			IDLE_TO_OVER_UP = 1 << 0,
			OVER_UP_TO_IDLE = 1 << 1,
			OVER_UP_TO_OVER_DOWN = 1 << 2,
			OVER_DOWN_TO_OVER_UP = 1 << 3,
			OVER_DOWN_TO_OUT_DOWN = 1 << 4,
			OUT_DOWN_TO_OVER_DOWN = 1 << 5,
			OUT_DOWN_TO_IDLE = 1 << 6,
			IDLE_TO_OVER_DOWN = 1 << 7,
			OVER_DOWN_TO_IDLE = 1 << 8,
		};
		int	m_conditions;	// +0x00
		array<action_buffer*>	m_actions;	// +0x04 (16 bytes; the element is 20 bytes)

		button_action() : m_conditions(0) {}
		~button_action();	// DH2: 0x7c7614 (D1), 0x7c7770 (D2)
		void	read(stream* in, int tag_type);	// DH2: 0x7c74c0
	};


	struct button_character_instance;

	// DH2: 0x48 bytes (operator new(0x48) in button_character_loader): the 0x20-byte character_def base, the menu flag, the
	// DH2: record array at +0x24, the action array at +0x34 and the sound table pointer at +0x44.
	struct button_character_definition : public character_def
	{
		// DH2: 36 bytes: the six flags, the in/out points, the loop count and the envelope array (16 bytes, r1714: 12).
		struct sound_info
		{
			void read(stream* in);	// DH2: 0x7c732c

			bool m_no_multiple;	// +0x00
			bool m_stop_playback;	// +0x01
			bool m_has_envelope;	// +0x02
			bool m_has_loops;	// +0x03
			bool m_has_out_point;	// +0x04
			bool m_has_in_point;	// +0x05
			Uint32 m_in_point;	// +0x08
			Uint32 m_out_point;	// +0x0c
			Uint16 m_loop_count;	// +0x10
			array<sound_envelope> m_envelopes;	// +0x14
		};

		// DH2: 44 bytes (r1714 comment: 40; the difference is the 16-byte envelope array).
		struct button_sound_info
		{
			Uint16 m_sound_id;	// +0x00
			sound_sample*	m_sam;	// +0x04
			sound_info m_sound_style;	// +0x08
		};

		// DH2: 176 bytes. The destructor (0x7c72ec) releases the four envelope arrays, last first.
		struct button_sound_def
		{
			~button_sound_def();	// DH2: 0x7c72ec
			void	read(stream* in, movie_definition_sub* m);
			button_sound_info m_button_sounds[4];
		};


		bool m_menu;	// DH2: +0x20 (the constructor does not write it; read() sets it for tag 34)
		array<button_record>	m_button_records;	// +0x24
		array<button_action>	m_button_actions;	// +0x34
		button_sound_def*	m_sound;	// +0x44, allocated by read (tag 17)

		button_character_definition(player* player);	// DH2: 0x7c7a08 (C1), 0x7c7a64 (C2)
		virtual ~button_character_definition();	// DH2: +0x00 (D1 0x7c78d4, D2 0x7c797c), +0x04 (D0 0x7c7960)
		virtual character*	create_character_instance(character* parent, int id) override;	// DH2: +0x18, 0x7c86b4
		void	read(stream* in, int tag_type, movie_definition_sub* m);	// DH2: 0x7c8090
	};

	// A live button. Declared here (r1714 keeps it local to gameswf_button.cpp) because the DH2 batches share it.
	//
	// DH2: 0xc0 bytes (operator new(0xC0) in create_character_instance): the character base with the kind AS_CHARACTER (1),
	// DH2: the definition (counted), one character per button record, the two mouse flag words and the mouse state.
	// DH2: Overrides, in vtable slot order: ~ (+0x00), on_event (+0x2c), advance (+0x5c), get_topmost_mouse_entity (+0x68),
	// DH2: hit_test (+0x6c), get_mouse_state (+0x70), execute_frame_tags (+0xc8), display (+0x120), get_bound (+0x12c),
	// DH2: get_character_def (+0x130), get_root_movie (+0x134), has_keypress_event (+0x158), can_handle_mouse_event (+0x15c).
	// DH2: There is no enabled flag and no set_member/get_member/is_enabled override (r1714 has them).
	struct button_character_instance : public character
	{
		smart_ptr<button_character_definition>	m_def;	// +0xa0
		array<smart_ptr<character> >	m_record_character;	// +0xa4, one entry per record (16 bytes)

		enum mouse_flags
		{
			IDLE = 0,
			FLAG_OVER = 1,
			FLAG_DOWN = 2,
			OVER_DOWN = FLAG_OVER|FLAG_DOWN,

			// aliases
			OVER_UP = FLAG_OVER,
			OUT_DOWN = FLAG_DOWN
		};
		int	m_last_mouse_flags;	// +0xb4
		int	m_mouse_flags;	// +0xb8
		enum e_mouse_state
		{
			UP = 0,
			DOWN,
			OVER
		};
		e_mouse_state m_mouse_state;	// +0xbc

		button_character_instance(player* player, button_character_definition* def, character* parent, int id);	// DH2: 0x7c84d8
		virtual ~button_character_instance();	// DH2: +0x00 (D1 0x7c7ac0), +0x04 (D0 0x7c7b24)

		virtual bool	on_event(const event_id& id) override;	// DH2: +0x2c, 0x7c7b40
		virtual void	advance(float delta_time) override;	// DH2: +0x5c, 0x7c6f40
		virtual character*	get_topmost_mouse_entity(float x, float y) override;	// DH2: +0x68, 0x7c6e50; this or null
		virtual bool	hit_test(float x, float y) override;	// DH2: +0x6c, 0x7c6ba0
		virtual void	get_mouse_state(int* x, int* y, int* buttons) override;	// DH2: +0x70, 0x7c873c (the parent's)
		virtual	void	execute_frame_tags(int frame, bool state_only = false) override;	// DH2: +0xc8, 0x7c6dd0
		virtual void	display() override;	// DH2: +0x120, 0x7c6cec
		virtual void	get_bound(rect* bound) override;	// DH2: +0x12c, 0x7c6bcc
		virtual character_def* get_character_def() override { return m_def.get_ptr();	}	// DH2: +0x130, 0x7c6bc4
		virtual character*	get_root_movie() override;	// DH2: +0x134, 0x7c8020 (the parent's)
		virtual bool has_keypress_event() override;	// DH2: +0x158, 0x7c6b4c
		virtual bool can_handle_mouse_event() override { return true; }	// DH2: +0x15c, 0x7c6bbc
	};

};	// end namespace gameswf


#endif // GAMESWF_BUTTON_H


// Local Variables:
// mode: C++
// c-basic-offset: 8
// tab-width: 8
// indent-tabs-mode: t
// End:
