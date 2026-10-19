// gameswf::html_reader (Gameloft; not in upstream GameSWF r1714). Binary: parse_tag 0x78e060, parse 0x78e354.
//
// The class is the HTML reader for edit_text fields. edit_text_character::format_text (0x78efb8) builds it on the
// stack as an empty array (buffer, size, capacity, borrowed byte: 16 bytes), calls parse(edit_text_character*) on it
// and, when parse returns, resizes the array to 0 and reserves 0 (the array's own destructor). parse pushes a
// text_attributes for the field's own attributes first and then one more for every opening tag that changes them
// (<font>, <b>, <i>, <u>); a closing tag pops one. So the reader is one array<text_attributes> at +0x00, and the
// binary's parse_tag ignores its this pointer.
//
// Bodies: parse_tag in vendor-gameswf/src/v1-vendor-gameswf-pack10-9a32ad-0.cpp, parse in
// vendor-gameswf/src/v1-vendor-gameswf-gameswf_edit_text_character-77beb0-1.cpp.

#ifndef VENDOR_GAMESWF_HTML_READER_HPP
#define VENDOR_GAMESWF_HTML_READER_HPP

#include "base/container.h"                    // stringi_hash<>, tu_string, tu_stringi (global in upstream)
#include "vendor-gameswf/gameswf_hash_dh2.hpp"  // the DH2 hash<tu_stringi, tu_string>::set_raw_capacity specialization
#include "gameswf/gameswf_text.h"               // edit_text_character::text_attributes

namespace gameswf {

struct html_reader {
	array<edit_text_character::text_attributes> m_stack;	// +0x00: the stack of attributes, the top one is the current run's

	// 0x78e060 gameswf::html_reader::parse_tag(gameswf::stringi_hash<gameswf::tu_string>&, char const*)
	// Reads one tag body (the text between '<' and '>', without them) into attrs: "name" is the tag name, and every
	// name='value' or name="value" pair adds one entry. Returns 0 for a closing tag ('/' first) or an unmatched quote,
	// and 1 otherwise. The binary ignores its this pointer, so this is a non-static member with no state.
	int parse_tag(stringi_hash<tu_string>& attrs, const char* tag);

	// 0x78e354 gameswf::html_reader::parse(gameswf::edit_text_character*)
	// Appends the text of ch (its m_text, read as HTML) to ch with append_text and append_image, tag by tag.
	void parse(edit_text_character* ch);
};

}  // namespace gameswf

#endif  // VENDOR_GAMESWF_HTML_READER_HPP
