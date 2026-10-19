// Test for batch v1-vendor-gameswf-gameswf_button-7c6b4c-0: the event rules of
// gameswf::button_character_instance::on_event (DH2, binary 0x7c7b40). Returns non-zero on failure.
//
// Link line (run from the repository root; <this file> is this test file):
//   bash tools/trackb/check_tu.sh --test <this file>
//   (no other source is linked)
#include "vendor-gameswf/gameswf_button_dh2.hpp"

#include <cstdio>

using namespace gameswf::dh2;

static int failures = 0;

#define CHECK(cond)                                                    \
	do {                                                               \
		if (!(cond)) {                                                 \
			std::printf("FAIL line %d: %s\n", __LINE__, #cond);        \
			++failures;                                                \
		}                                                              \
	} while (0)

int main()
{
	// Event ids: PRESS 1, RELEASE 2, RELEASE_OUTSIDE 3, ROLL_OVER 4, ROLL_OUT 5, DRAG_OVER 6, DRAG_OUT 7, KEY_PRESS 8.
	// The mouse state after the event: UP 0, DOWN 1, OVER 2.
	CHECK(button_state_for_event(5) == 0);  // ROLL_OUT
	CHECK(button_state_for_event(3) == 0);  // RELEASE_OUTSIDE
	CHECK(button_state_for_event(2) == 2);  // RELEASE
	CHECK(button_state_for_event(4) == 2);  // ROLL_OVER
	CHECK(button_state_for_event(7) == 2);  // DRAG_OUT
	CHECK(button_state_for_event(1) == 1);  // PRESS
	CHECK(button_state_for_event(6) == 1);  // DRAG_OVER
	CHECK(button_state_for_event(0) == -1);  // INVALID
	CHECK(button_state_for_event(8) == -1);  // KEY_PRESS is handled before the state is looked at
	CHECK(button_state_for_event(9) == -1);  // INITIALIZE
	CHECK(button_state_for_event(21) == -1);  // KILLFOCUS
	CHECK(button_state_for_event(-1) == -1);

	// The button_action condition bit of each mouse event.
	CHECK(button_condition_for_event(4) == 1);    // IDLE_TO_OVER_UP
	CHECK(button_condition_for_event(5) == 2);    // OVER_UP_TO_IDLE
	CHECK(button_condition_for_event(1) == 4);    // OVER_UP_TO_OVER_DOWN
	CHECK(button_condition_for_event(2) == 8);    // OVER_DOWN_TO_OVER_UP
	CHECK(button_condition_for_event(7) == 16);   // OVER_DOWN_TO_OUT_DOWN
	CHECK(button_condition_for_event(6) == 32);   // OUT_DOWN_TO_OVER_DOWN
	CHECK(button_condition_for_event(3) == 64);   // OUT_DOWN_TO_IDLE
	CHECK(button_condition_for_event(8) == 0);
	CHECK(button_condition_for_event(0) == 0);

	// Every state-changing event has a condition bit, all different.
	int seen = 0;
	for (int id = 1; id <= 7; ++id) {
		const int c = button_condition_for_event(id);
		CHECK(c != 0);
		CHECK((seen & c) == 0);
		seen |= c;
	}
	CHECK(seen == 127);

	// The button sound of the event: ROLL_OUT 0, ROLL_OVER 1, PRESS 2, RELEASE 3, nothing for the others.
	CHECK(button_sound_index_for_event(5) == 0);
	CHECK(button_sound_index_for_event(4) == 1);
	CHECK(button_sound_index_for_event(1) == 2);
	CHECK(button_sound_index_for_event(2) == 3);
	CHECK(button_sound_index_for_event(3) == -1);
	CHECK(button_sound_index_for_event(6) == -1);
	CHECK(button_sound_index_for_event(7) == -1);
	CHECK(button_sound_index_for_event(0) == -1);

	// The key of a condition word: the high seven bits.
	CHECK(button_key_code_of_condition(0x0000) == 0);
	CHECK(button_key_code_of_condition(0x01FF) == 0);
	CHECK(button_key_code_of_condition(0x0200) == 1);
	CHECK(button_key_code_of_condition(0x2600) == 19);
	CHECK(button_key_code_of_condition(0xFE00) == 127);
	CHECK(button_key_code_of_condition(0xFE00 | 0x1FF) == 127);

	if (failures != 0) {
		std::printf("%d failure(s)\n", failures);
		return 1;
	}
	std::printf("button event tests passed\n");
	return 0;
}
