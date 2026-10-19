// DH2: event rules of gameswf::button_character_instance::on_event (binary 0x7c7b40, Gameloft), as pure code.
//
// The batch body (src/v1-vendor-gameswf-gameswf_button-7c6b4c-0.cpp) uses these helpers; the batch test
// (tests/v1-vendor-gameswf-gameswf_button-7c6b4c-0_test.cpp) checks them without any gameswf type. Event ids are the
// values of gameswf::event_id::id_code (PRESS 1, RELEASE 2, RELEASE_OUTSIDE 3, ROLL_OVER 4, ROLL_OUT 5, DRAG_OVER 6,
// DRAG_OUT 7, KEY_PRESS 8); the body static_asserts them against the enum.
#ifndef VENDOR_GAMESWF_BUTTON_DH2_HPP
#define VENDOR_GAMESWF_BUTTON_DH2_HPP

namespace gameswf {
namespace dh2 {

// The mouse state of the button after an event (button_character_instance::e_mouse_state: UP 0, DOWN 1, OVER 2), or -1
// for an event that does not change it (on_event returns false for those). The binary tests the event against bit masks:
// 0x94 (RELEASE, ROLL_OVER, DRAG_OUT) gives OVER, 0x28 (RELEASE_OUTSIDE, ROLL_OUT) gives UP and 0x42 (PRESS, DRAG_OVER)
// gives DOWN.
inline int button_state_for_event(int event_id)
{
	if (event_id < 0 || event_id > 7)
	{
		return -1;
	}
	const int bit = 1 << event_id;
	if (bit & 0x94)
	{
		return 2;
	}
	if (bit & 0x28)
	{
		return 0;
	}
	if (bit & 0x42)
	{
		return 1;
	}
	return -1;
}

// The condition bit of button_action that the event stands for: IDLE_TO_OVER_UP 1 (ROLL_OVER), OVER_UP_TO_IDLE 2 (ROLL_OUT),
// OVER_UP_TO_OVER_DOWN 4 (PRESS), OVER_DOWN_TO_OVER_UP 8 (RELEASE), OVER_DOWN_TO_OUT_DOWN 16 (DRAG_OUT),
// OUT_DOWN_TO_OVER_DOWN 32 (DRAG_OVER), OUT_DOWN_TO_IDLE 64 (RELEASE_OUTSIDE); 0 for any other event.
inline int button_condition_for_event(int event_id)
{
	switch (event_id)
	{
		case 4: return 1;
		case 5: return 2;
		case 1: return 4;
		case 2: return 8;
		case 7: return 16;
		case 6: return 32;
		case 3: return 64;
		default: return 0;
	}
}

// The index of the button sound (button_sound_def::m_button_sounds) the event plays: 0 for ROLL_OUT, 1 for ROLL_OVER, 2 for
// PRESS, 3 for RELEASE; -1 for the other events.
inline int button_sound_index_for_event(int event_id)
{
	switch (event_id)
	{
		case 5: return 0;
		case 4: return 1;
		case 1: return 2;
		case 2: return 3;
		default: return -1;
	}
}

// The key of a button action's condition word (CondKeyPress, the top seven bits): 0 means no key.
inline int button_key_code_of_condition(int conditions)
{
	return (conditions & 0xFE00) >> 9;
}

}  // namespace dh2
}  // namespace gameswf

#endif  // VENDOR_GAMESWF_BUTTON_DH2_HPP
