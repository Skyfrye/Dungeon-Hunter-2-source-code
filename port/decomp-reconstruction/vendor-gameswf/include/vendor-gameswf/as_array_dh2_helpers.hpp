// Pure helper for gameswf::as_array::is_index (0x79806c): the text test on the array index string.
//
// The member itself cannot be compiled in this tree yet (gameswf_as_classes/as_array.h needs gameswf_action.h).
// The member body in vendor-gameswf/src/v1-vendor-gameswf-pack11-4edfaf-0.cpp calls this function, and the
// batch test compiles this header on its own (tests/v1-vendor-gameswf-pack11-4edfaf-0_test.cpp).

#pragma once

namespace gameswf {
namespace dh2 {

inline bool is_decimal_digit(char c) {
	return c >= '0' && c <= '9';
}

// The binary: an empty string is an index. Otherwise the first byte must be a digit, and every byte after it up to
// the terminator must be a digit. Any other byte gives false. The binary's test is (unsigned char)(c - 48) <= 9,
// which is the same range.
inline bool as_array_is_index_text(const char* text) {
	if (*text == '\0') {
		return true;
	}
	if (!is_decimal_digit(text[0])) {
		return false;
	}
	for (const char* p = text + 1; *p != '\0'; ++p) {
		if (!is_decimal_digit(*p)) {
			return false;
		}
	}
	return true;
}

}  // namespace dh2
}  // namespace gameswf
